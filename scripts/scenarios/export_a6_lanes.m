function files = export_a6_lanes(station, outputDirectory)
%EXPORT_A6_LANES Save instance 1 of each A6 family as MAT and CSV.
%
%   FILES = EXPORT_A6_LANES() exports 0:0.01:500 m to scenarios/a6/lanes_0p01m.
%   Length and spacing are lookup/export choices, not A6 requirements.
%
%   Pass another station vector or destination when needed. Runtime sampling
%   rejects horizons outside the exported range rather than extrapolating.

if nargin < 1
    station = (0:0.01:500).';
end

if nargin < 2
    projectRoot = char(currentProject().RootFolder);
    outputDirectory = fullfile(projectRoot, 'scenarios', 'a6', 'lanes_0p01m');
end

files = repmat(struct('mat_file', '', 'csv_file', ''), 1, 4);

for familyId = 1:4
    instance = ecu.scenario.gen_instance(familyId, 1);

    files(familyId) = ecu.scenario.save_lane_data( ...
        instance, station, outputDirectory);
end

fprintf('Lane MAT and CSV files saved in: %s\n', outputDirectory);

end
