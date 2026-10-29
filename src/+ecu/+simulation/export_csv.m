function export_csv(run,path)
%EXPORT_CSV Export scalar controller channels only, with matching clocks.
output = table();
for index = 1:numel(run.signals)
    signal = run.signals(index);
    if signal.rate ~= "controller" || size(signal.values,1) ~= 1
        continue;
    end
    if isempty(output)
        output.time_s = signal.time_s.';
    else
        assert(isequal(output.time_s,signal.time_s.'), ...
            'Scalar controller channels have different clocks; CSV export refused.');
    end
    name = matlab.lang.makeValidName(char(signal.id));
    assert(~ismember(name,output.Properties.VariableNames),'CSV name collision: %s',name);
    output.(name) = signal.values.';
end
writetable(output,path);
end
