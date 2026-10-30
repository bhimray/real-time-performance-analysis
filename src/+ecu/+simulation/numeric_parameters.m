function output = numeric_parameters(input)
%NUMERIC_PARAMETERS Copy numeric/logical parameter data, excluding metadata.
% Preparation-time only: never call recursively inside generated code.
assert(isstruct(input), 'ecu:ParameterStructure', 'Expected a structure.');
output = input;
names = fieldnames(input);
for k = 1:numel(names)
    name = names{k};
    values = {input.(name)};
    if all(cellfun(@(v) isnumeric(v) || islogical(v), values))
        continue;
    elseif all(cellfun(@isstruct, values))
        for j = 1:numel(input)
            output(j).(name) = ecu.simulation.numeric_parameters(input(j).(name));
        end
    else
        output = rmfield(output, name);
    end
end
end
