function instance = normalize_obstacle_names(instance)
%NORMALIZE_OBSTACLE_NAMES Give array labels a fixed code-generation type.
% Call during scenario preparation, outside generated controller code.
width = 32;
for k = 1:numel(instance.obstacles)
    label = char(instance.obstacles(k).name);
    assert(isrow(label) && numel(label) <= width, ...
        'ecu:ObstacleName', 'Obstacle names must contain at most 32 characters.');
    name = repmat(' ', 1, width);
    name(1:numel(label)) = label;
    instance.obstacles(k).name = name;
end
end
