function [signals, availability] = extract_logs(dataset, contract, stopTime)
%EXTRACT_LOGS Resolve unique Dataset/bus paths and preserve native clocks.
% Values are flattened to components x samples; dimensions retain original axes.
signals = struct('id',{},'time_s',{},'values',{},'unit',{}, ...
    'source',{},'dimensions',{},'rate',{});
availability = table(string(contract.id),false(height(contract),1), ...
    strings(height(contract),1),VariableNames={'id','available','reason'});
for index = 1:height(contract)
    row = contract(index,:);
    try
        item = resolve(dataset,string(row.source{1}));
        assert(isa(item,'timeseries'),'Leaf must be a timeseries.');
        time = double(item.Time(:).');
        data = item.Data;
        if item.IsTimeFirst
            order = [2:ndims(data),1];
            data = permute(data,order);
        end
        dimensions = size(data);
        assert(~isempty(time),'Logged signal is empty.');
        assert(mod(numel(data),numel(time)) == 0,'Data/time size mismatch.');
        values = reshape(data,[],numel(time));
        expected = row.components;
        assert(expected == 0 || size(values,1) == expected, ...
            'Expected %d components; received %d.',expected,size(values,1));
        keep = true(size(time));
        if strcmp(row.rate{1},'controller')
            keep = time >= 0 & time < stopTime - 1e-10;
        end
        % component applies to vector sources, not scalar command bus leaves.
        if row.component > 0 && size(values,1) > 1
            values = values(row.component,:);
        end
        signal = struct('id',string(row.id{1}),'time_s',time(keep), ...
            'values',values(:,keep),'unit',string(row.unit{1}), ...
            'source',string(row.source{1}),'dimensions',dimensions, ...
            'rate',string(row.rate{1}));
        signals(end+1) = signal; %#ok<AGROW>
        availability.available(index) = true;
    catch exception
        availability.reason(index) = string(exception.message);
    end
end
end

function item = resolve(item,path)
parts = split(path,'.');
for index = 1:numel(parts)
    while isa(item,'Simulink.SimulationData.Signal')
        item = item.Values;
    end
    name = char(parts(index));
    if isa(item,'Simulink.SimulationData.Dataset')
        names = string(item.getElementNames());
        assert(sum(names == name) == 1,'Missing or duplicate logging name: %s',name);
        item = item.getElement(name);
    elseif isstruct(item) && isscalar(item)
        assert(isfield(item,name),'Missing bus element: %s',name);
        item = item.(name);
    else
        error('ecu:LoggingPath','Cannot resolve logging path: %s',path);
    end
end
while isa(item,'Simulink.SimulationData.Signal')
    item = item.Values;
end
end
