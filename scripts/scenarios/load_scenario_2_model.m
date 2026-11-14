projectRoot = char(currentProject().RootFolder);
caseDir = fullfile(projectRoot, 'scenarios', 'a6', 'fixed_test');

% Column 1 is selected by roadFamilyId = 1, column 2 by roadFamilyId = 2.
caseFiles = {
    fullfile(caseDir, 'F1_0001_lanes.mat')
    fullfile(caseDir, 'F2_0001_lanes.mat')
    };

controllerConfig = controller_config();

% Each column is [curvature; reference speed; emin; emax;
%                 lateral safety semi-axis; longitudinal safety semi-axis].
roadFamilyData = zeros(6, 2);

for id = 1:2
    filename = caseFiles{id};
    assert(isfile(filename), 'Missing road reference: %s', filename);

    data = load(filename, 'laneData');
    instance = data.laneData.instance;

    assert(instance.family_id == id, ...
        'The file mapped to roadFamilyId %d has the wrong family ID.', id);
    assert(abs(instance.timing.controller_period_s - controllerConfig.Ts) < 1e-12, ...
        'Scenario and controller sample times differ in %s.', filename);

    road = [
        instance.road.curvature_per_m
        instance.reference.speed_mps
        instance.road.bounds_m(:)
        instance.obstacle_geometry.safety_semi_axes_m(:)
        ];

    assert(numel(road) == 6 && all(isfinite(road)), ...
        'Invalid road data in %s.', filename);
    assert(road(2) > 0 && road(3) < road(4) && all(road(5:6) > 0), ...
        'Invalid reference speed, road bounds, or safety axes in %s.', filename);

    roadFamilyData(:, id) = road;
end

assert(abs(roadFamilyData(1, 1)) < 1e-12, ...
    'Family 1 is configured as the straight-road case.');

roadFamilyId = Simulink.Parameter(uint8(1));
roadFamilyId.DataType = 'uint8';
roadFamilyId.Min = 1;
roadFamilyId.Max = 2;
roadFamilyId.CoderInfo.StorageClass = 'ExportedGlobal';