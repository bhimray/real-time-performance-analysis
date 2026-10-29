function results = run_batch(plans)
%RUN_BATCH Run serially; each failure retains an independent manifest.
arguments
    plans (1,:) cell
end
results = cell(size(plans));
for index = 1:numel(plans)
    fprintf('Simulation %d of %d\n',index,numel(plans));
    results{index} = ecu.simulation.run(plans{index});
end
end
