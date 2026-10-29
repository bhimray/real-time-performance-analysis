function files = run_file_paths(directory, runId)
%RUN_FILE_PATHS Centralize names so saved data and offline plots agree.

files.run_mat = fullfile(directory, 'data', [runId, '__run.mat']);
files.controller_csv = fullfile(directory, 'data', [runId, '__controller.csv']);
files.summary_json = fullfile(directory, 'metadata', 'summary.json');
files.fingerprint_json = fullfile(directory, 'metadata', 'fingerprint.json');
files.scenario_json = fullfile(directory, 'metadata', 'scenario.json');
files.config_json = fullfile(directory, 'metadata', 'resolved_config.json');
files.channels_json = fullfile(directory, 'metadata', 'channels.json');
files.manifest_json = fullfile(directory, 'metadata', 'run_manifest.json');

end
