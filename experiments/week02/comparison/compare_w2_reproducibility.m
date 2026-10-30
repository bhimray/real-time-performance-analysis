% COMPARE_W2_REPRODUCIBILITY Compare the two saved F1 instance 1 runs.
project=currentProject(); root=string(project.RootFolder);
name="F1_I0001_mu0p9_cap200_T8";
firstDirectory=fullfile(root,"results","simulink","w2",name);
secondDirectory=fullfile(root,"results","simulink","w2_2run",name);
outputDirectory=fullfile(root,"experiments","week02","comparison","results");

if ~isfolder(outputDirectory), mkdir(outputDirectory); end

tolerance=0; % Exact by default. Use 1e-12 only with documented justification.
report=ecu.comparison.compare_runs(firstDirectory,secondDirectory,Tolerance=tolerance);
writetable(report.table,fullfile(outputDirectory,"reproducibility_table.csv"));
save(fullfile(outputDirectory,"reproducibility_comparison.mat"),'report');
ecu.simulation.write_json(fullfile(outputDirectory,"reproducibility_summary.json"),rmfield(report,'table'));
disp(report.status); disp(report.table);

fid=fopen(fullfile(outputDirectory,"reproducibility_summary.md"),'w');
assert(fid>=0);
fprintf(fid,'# F1 Instance 1 Reproducibility\n\nOverall assessment: **%s**\n\n',report.status);
fprintf(fid,'Available numerical signals pass: %d. Settings match: %d. Archived provenance matches: %d.\n\n', ...
    report.numerical_pass,report.settings_match,report.provenance_match);
fprintf(fid,'Full numerical signal coverage: %d. Generated build identified in both runs: %d. Absolute tolerance: %.3g.\n\n', ...
    report.coverage_complete,report.build_identified,report.tolerance);
fprintf(fid,'Timing is descriptive and excluded from numerical pass/fail. Missing signals are not assessed. See the comparison table for mismatches and their locations.\n');
fclose(fid);

a=load(fullfile(firstDirectory,"data","run.mat"),'run');
b=load(fullfile(secondDirectory,"data","run.mat"),'run');
signals=["vehicle.lateral_error","vehicle.longitudinal_velocity", ...
    "command.candidate.Fx","command.candidate.Fy","command.candidate.Mz", ...
    "controller.solver.total_time","controller.solver.cost"];

for id=signals
    if id=="controller.solver.total_time"
        fig=ecu.comparison.plot_signal(a.run,b.run,id, ...
            Scale=1000,DisplayUnit="ms",Label="Solver execution time [ms]");
    elseif id=="controller.solver.cost"
        fig=ecu.comparison.plot_signal(a.run,b.run,id, ...
            Label="Solver objective cost");
    else
        fig=ecu.comparison.plot_signal(a.run,b.run,id);
    end
    stem=matlab.lang.makeValidName(char(id));
    exportgraphics(fig,fullfile(outputDirectory,string(stem)+".png"),'Resolution',160);
    savefig(fig,fullfile(outputDirectory,string(stem)+".fig"));
end
% To plot only one state, call plot_signal directly instead of this loop.
