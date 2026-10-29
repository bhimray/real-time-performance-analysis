%% gateway to buld the s-function for simulink controller model
bundle = build_controller();
sfunctionFile = build_controller_sfunction(bundle.build_dir);
disp(sfunctionFile);