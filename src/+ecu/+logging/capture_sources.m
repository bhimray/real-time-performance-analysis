function snapshot = capture_sources(projectRoot)
%CAPTURE_SOURCES Retain the production MATLAB source used by a saved run.
%
%   A source snapshot makes an uncommitted research run recoverable even if
%   files change later. Files are read once before the controller loop.

entries = [
    dir(fullfile(projectRoot, 'src', '**', '*.m'))
    dir(fullfile(projectRoot, 'config', '**', '*.m'))
    dir(fullfile(projectRoot, 'scripts', '**', '*.m'))
    dir(fullfile(projectRoot, 'experiments', '**', '*.m'))
];

paths = sort(fullfile({entries.folder}, {entries.name}));
snapshot = struct([]);

for fileIndex = 1:numel(paths)
    path = paths{fileIndex};

    snapshot(fileIndex).file = erase(path, [projectRoot, filesep]);
    snapshot(fileIndex).sha256 = ecu.logging.file_sha256(path);
    snapshot(fileIndex).text = fileread(path);
end

end
