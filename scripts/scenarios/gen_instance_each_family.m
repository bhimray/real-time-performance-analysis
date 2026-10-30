projectRoot = char(currentProject().RootFolder);

laneDirectory = fullfile( ...
    projectRoot, 'scenarios', 'a6', 'lanes_0p01m');

station = (0:0.01:500).';

for familyId = 1:4
    for instanceId = 1:100
        instance = ecu.scenario.gen_instance(familyId, instanceId);

        ecu.scenario.save_lane_data( ...
            instance, station, laneDirectory);
    end

    fprintf('Family F%d: all 300 instances exported.\n', familyId);
end