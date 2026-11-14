function asm_vehicledynamics_ini (varargin)
MDL = evalin('base','MDL;','[];');


additional_loads;
aerodynamics;
body_geometry_and_mass;
brake_disc;
brake_hydraulics_basic;
manifold_pressure;
master_brake_cylinder;
sensor_position;
steering_3dof_variable;
steering_rod_back_calc;
suscommon;
suscomp_2d_front;
suscomp_2d_rear;
susforces_front;
susforces_rear;
suskin_sym;
suskin_sym_2;
tire_mode;
tire_tmeasy;
tire_tmeasy_2;
tire_tmeasy_3;
tire_tmeasy_4;
vacuum_servo;
wheel_mass_and_inertia;
assignin('base','MDL',MDL);