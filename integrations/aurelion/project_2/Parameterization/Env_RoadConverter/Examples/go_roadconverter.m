% open GUI
errstr = asm_env_roadconverter_GUI;

% load project
if (isempty(errstr))
    projectname     = 'HandlingTrack.mat';
    projectname_abs = [pwd, '\',projectname];
    GUIHandle = gcf;
    if exist(projectname_abs,'file')
        asmtool('genericgui', 'loadsettings', GUIHandle, 'all','file',projectname_abs);
        [path,name,ext]=fileparts(projectname_abs); %#ok<NASGU>
        set(GUIHandle, 'Name', ['ASM RoadConverter: ' , name]);
    end
else
    disp(errstr)
end