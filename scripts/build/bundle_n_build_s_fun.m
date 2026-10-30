% Build explicitly when controller code changes; reopening needs no rebuild.
config = controller_config();
initial = ecu.control.controller_initialization(config);
bundle = build_controller(config, initial, true);
sfunctionFile = build_controller_sfunction(bundle.build_dir);
disp(sfunctionFile);
