% ANIMATE_MOTION Load/preprocess a saved run, then replay timestamped motion.
project=currentProject(); projectRoot=string(project.RootFolder);
experimentStage="w2";
runName="F4_I0001_mu0p9_cap200_T8";
runDirectory=fullfile(projectRoot,"results","simulink",experimentStage,runName);
groupsDirectory=fullfile(runDirectory,"data","groups");

%% Load only vehicle motion, commands and saved scenario/configuration
saved=load(fullfile(groupsDirectory,"vehicle.mat"),'group');
run.id=saved.group.run_id; run.signals=saved.group.signals;
state=ecu.analysis.get_signal(run,"vehicle.state");
plant=struct('time_s',state.time_s,'state',state.values);
inputs=struct('time_s',[],'values',[],'label',"Unavailable");
for kind=["applied","candidate"]
    file=fullfile(groupsDirectory,"commands_"+kind+".mat");
    if ~isfile(file), continue; end
    saved=load(file,'group');
    assert(string(saved.group.run_id)==string(run.id),'Command and vehicle run IDs differ.');
    commandRun.signals=saved.group.signals;
    a=ecu.analysis.get_signal(commandRun,"command."+kind+".Fx");
    b=ecu.analysis.get_signal(commandRun,"command."+kind+".Fy");
    c=ecu.analysis.get_signal(commandRun,"command."+kind+".Mz");
    assert(isequal(a.time_s,b.time_s,c.time_s),'Command clocks differ.');
    inputs=struct('time_s',a.time_s,'values',[a.values;b.values;c.values], ...
        'label',kind+" commands");
    break
end
saved=load(fullfile(runDirectory,"metadata","request.mat"),'plan');
instance=saved.plan.instance; config=saved.plan.config;

%% Preprocess positions and A4 flags on their actual recorded clocks
% Obstacles are prescribed scenario motion, evaluated at each plant timestamp.
obstacles=ecu.scenario.obstacle_states(instance,plant.time_s);
obstacles.safety_semi_axes_m=instance.obstacle_geometry.safety_semi_axes_m;
obstacles.collision_semi_axes_m=instance.obstacle_geometry.collision_semi_axes_m;
constraintReport=ecu.analysis.evaluate_a4_constraints(plant,inputs,instance,config);

%% Animate; change speed to 0.25 for slow motion or 2 for faster playback
animationFigure=ecu.animation.animate_trajectory( ...
    plant,obstacles,instance.road,constraintReport, ...
    PlaybackSpeed=1,FrameRate=25);
