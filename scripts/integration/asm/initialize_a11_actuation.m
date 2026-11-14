%INITIALIZE_A11_ACTUATION Run in the model/base workspace before editing ports.
% Defines configuration, Unit Delay initial conditions and named numeric buses.
% Does not initialize ASM, edit a model, enable A11 actuation, or build a solver.
a11Folder = fileparts(mfilename('fullpath'));
addpath(a11Folder,fullfile(a11Folder,'adapters'));
a11ActuationOptions = a11_actuation_config();
hold_options = a11ActuationOptions.hold;
allocation_options = a11ActuationOptions.allocation;
a11Initial = a11_actuation_initial_conditions();
a11HoldInitial = a11Initial.hold;
a11AllocationInitial = a11Initial.allocation;
A11HoldStateBus = numeric_bus(a11Initial.hold);
A11AllocationStateBus = numeric_bus(a11Initial.allocation);
A11CandidateBus = numeric_bus(a11Initial.candidate);
A11FallbackBus = numeric_bus(a11Initial.fallback);
A11ActualActuatorBus = numeric_bus(a11Initial.actual);
A11RequestBus = numeric_bus(a11Initial.request);
A11ActuationBus = numeric_bus(a11Initial.actuation);
fprintf('A11 actuation buses ready; allocator disabled pending verified configuration.\n');

function bus = numeric_bus(template)
names = fieldnames(template);
elements(1,numel(names)) = Simulink.BusElement;
for i=1:numel(names)
    value = template.(names{i});
    elements(i) = Simulink.BusElement;
    elements(i).Name = names{i};
    elements(i).Dimensions = size(value);
    elements(i).DataType = class(value);
    if islogical(value)
        elements(i).DataType = 'boolean';
    end
end
bus = Simulink.Bus;
bus.Elements = elements;
end
