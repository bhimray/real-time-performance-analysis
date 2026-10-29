function [run, bundle] = run_matlab_closed_loop( ...
    familyId, instanceId, bundle, options)
%RUN_MATLAB_CLOSED_LOOP Load an A6 reference and ecute its MATLAB closed loop.
%
%   [RUN, BUNDLE] = RUN_MATLAB_CLOSED_LOOP(1,1) builds once and runs F1/1.
%   RUN = RUN_MATLAB_CLOSED_LOOP(2,1,BUNDLE) reuses the compiled controller.
%
%   OPTIONS is optional; see ecu.experiment.run_options.
%   No S-function is built and no Simulink model is used.

%% Argument defaults and validation

arguments
    familyId (1, 1) double {mustBeMember(familyId, 1:4)} = 1
    instanceId (1, 1) double {mustBeInteger, mustBePositive} = 1
    bundle = []
    options (1, 1) struct = struct()
end

projectRoot = char(currentProject().RootFolder);

fileName = sprintf('F%d_%04d_lanes.mat', familyId, instanceId);
referenceFile = fullfile( ...
    projectRoot, 'scenarios', 'a6', 'lanes_0p01m', fileName);

laneData = ecu.scenario.load_lane_data(referenceFile);

%% Build only when the caller has not supplied a live solver bundle

if isempty(bundle)
    config = controller_config();
    instance = laneData.instance;

    initial.x0 = instance.ego.initial_state;
    initial.mu = instance.friction_coefficient;

    initial.P = ecu.scenario.prepare_horizon( ...
        instance, 0, instance.ego.initial_station_m, ...
        instance.ego.initial_longitudinal_speed_mps, [], config, laneData);

    bundle = build_controller(config, initial);
end

%% Reuse the same controller for the entire run

run = ecu.experiment.run_instance(laneData, bundle, options);

end
