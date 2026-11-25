% Convert a SCALEXIO recording. Change only the input filename for another run.
projectRoot=fileparts(fileparts(mfilename('fullpath')));
addpath(fullfile(projectRoot,'scripts'),'-begin');
inputFile=fullfile(projectRoot,'results','SCALEXIO','rec1_009.mat');
record=convert_scalexio_recording(inputFile,PredictionStep_s=0.05);

% Native controller time; no interpolation across missed real-time slots.
figure('Name','Measured lateral error');
plot(seconds(record.states.Time),record.states.lateral_error_m,'.');
xlabel('Recorded time [s]'); ylabel('Lateral error [m]'); grid on;

% Other examples:
% plot(seconds(record.commands.Time),record.commands.cmd_Fy_N)
% plot(seconds(record.solver.Time),1000*record.solver.solver_time_s)
% plot(seconds(record.signals.plant.Time),record.signals.plant.ego_vx_kph/3.6)
% record.horizon.X(:, :, k)       % reconstructed states for snapshot k
% record.horizon.P(:, :, k)       % paired solver parameters
% record.channelDictionary       % original names, paths, clocks and units
