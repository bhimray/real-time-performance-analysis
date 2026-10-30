function report = compare_runs(firstDirectory, secondDirectory, options)
%COMPARE_RUNS Compare saved canonical signals without interpolation.
arguments
    firstDirectory (1,1) string
    secondDirectory (1,1) string
    options.Tolerance (1,1) double {mustBeNonnegative,mustBeFinite} = 0
end
directories=[firstDirectory,secondDirectory]; runs=cell(1,2); plans=runs; manifests=runs;
for k=1:2
    s=load(fullfile(directories(k),'data','run.mat'),'run'); runs{k}=s.run;
    s=load(fullfile(directories(k),'metadata','request.mat'),'plan'); plans{k}=s.plan;
    manifests{k}=jsondecode(fileread(fullfile(directories(k),'metadata','manifest.json')));
    assert(strcmpi(ecu.simulation.file_hash(fullfile(directories(k),'data','run.mat')), ...
        manifests{k}.mat_sha256),'Normalized archive checksum mismatch.');
end
% Stage/output location is deliberately excluded from simulation settings.
fields={'config','instance','variables','bindings','plant_step_s','controller_period_s','replay_policy'};
settings=true;
for k=1:numel(fields)
    settings=settings && isequaln(plans{1}.(fields{k}),plans{2}.(fields{k}));
end
for field=["Model","IterationCap","StopTime"]
    settings=settings && isequaln(plans{1}.options.(field),plans{2}.options.(field));
end
% Verify archived model/dictionary/controller/model/scenario/config hashes.
fingerprints=cell(1,2);
for k=1:2
    p=manifests{k}.provenance; paths=replace(string({p.path}),"\","/");
    keep=endsWith(paths,[".slx",".sldd",".mexw64",".c",".h"]) | ...
        contains(paths,["/+control/","/+model/","/+scenario/","/config/"]);
    fingerprints{k}=sortrows(table(paths(keep).',string({p(keep).sha256}).', ...
        VariableNames={'path','sha256'}),'path');
end
report.settings_match=settings;
report.provenance_match=isequal(fingerprints{1},fingerprints{2});
report.build_identified=all(cellfun(@(m) strlength(string(m.build_directory))>0,manifests));
ids=unique([string(runs{1}.channels.id);string(runs{2}.channels.id); ...
    string({runs{1}.signals.id}).';string({runs{2}.signals.id}).']);
rows=cell(numel(ids),1);
for k=1:numel(ids)
    id=ids(k); timing=endsWith(id,"_time");
    present=cellfun(@(r) any(string({r.signals.id})==id),runs);
    row=struct('signal_id',id,'category',"numerical",'status',"NOT_ASSESSED", ...
        'clock_match',false,'shape_match',false,'exact_equal',false, ...
        'max_abs_difference',NaN,'mismatch_count',NaN,'component',NaN,'time_s',NaN,'note',"");
    if timing, row.category="timing"; end
    if ~all(present)
        row.note="Unavailable in run(s): "+strjoin(string(find(~present)),',');
        rows{k}=row; continue
    end
    a=ecu.analysis.get_signal(runs{1},id); b=ecu.analysis.get_signal(runs{2},id);
    row.clock_match=isequal(a.time_s,b.time_s);
    row.shape_match=isequal(size(a.values),size(b.values));
    row.status="FAIL";
    if ~row.clock_match || ~row.shape_match
        row.note="Clocks or array sizes differ; no resampling performed.";
        rows{k}=row; continue
    end
    av=double(a.values); bv=double(b.values);
    if contains(id,"history") && ~endsWith(id,"history_length")
        n1=ecu.analysis.get_signal(runs{1},"controller.solver.history_length");
        n2=ecu.analysis.get_signal(runs{2},"controller.solver.history_length");
        capacity=size(av,1); if contains(id,"residual_history"), capacity=capacity/4; end
        if ~isequal(n1.time_s,a.time_s) || ~isequal(n2.time_s,b.time_s) || ...
                ~isequal(n1.values,n2.values) || any(~isfinite(n1.values) | ...
                n1.values<1 | n1.values>capacity | mod(n1.values,1)~=0,'all')
            row.note="History lengths differ or are invalid."; rows{k}=row; continue
        end
        for sample=1:size(av,2)
            firstPadding=n1.values(sample)+1;
            if contains(id,"residual_history"), firstPadding=4*n1.values(sample)+1; end
            av(firstPadding:end,sample)=0; bv(firstPadding:end,sample)=0;
        end
        row.note="Only valid history records compared; padding excluded.";
    end
    if any(~isfinite(av),'all') || any(~isfinite(bv),'all')
        row.note="Nonfinite values in valid records."; rows{k}=row; continue
    end
    delta=abs(av-bv); [row.max_abs_difference,index]=max(delta,[],'all');
    [row.component,sample]=ind2sub(size(delta),index); row.time_s=a.time_s(sample);
    row.exact_equal=isequal(av,bv);
    discrete=startsWith(id,"execution.") || endsWith(id,[".status",".iterations",".history_length",".qp_history",".active"]);
    tolerance=options.Tolerance; if discrete, tolerance=0; end
    row.mismatch_count=sum(delta>tolerance,'all');
    if row.mismatch_count==0, row.status="PASS"; end
    if timing, row.status="DESCRIPTIVE"; row.note="Timing excluded from numerical reproducibility."; end
    rows{k}=row;
end
report.table=struct2table(vertcat(rows{:}));
numerical=report.table.category=="numerical";
available=numerical & report.table.status~="NOT_ASSESSED";
report.numerical_pass=any(available) && all(report.table.status(available)=="PASS");
report.coverage_complete=~any(report.table.status(numerical)=="NOT_ASSESSED");
report.tolerance=options.Tolerance;
report.directories=directories;
report.source_sha256=string({manifests{1}.mat_sha256,manifests{2}.mat_sha256});
report.status="INCOMPLETE";
if ~report.numerical_pass || ~report.settings_match || ~report.provenance_match
    report.status="FAIL";
elseif report.coverage_complete && report.build_identified
    report.status="PASS";
end
end
