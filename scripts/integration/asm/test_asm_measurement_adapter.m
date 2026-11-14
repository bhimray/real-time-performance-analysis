function test_asm_measurement_adapter()
% Exercise the direct ASM measurement interface in SI units.
addpath(fullfile(fileparts(mfilename('fullpath')), 'adapters'));

measurement = asm_adapter([22; 0; 0; 0.1], [50; -0.2], [50; 0; 50; 0; 0; 0; 20]);
assert(isequal(measurement.x, [-0.2; 0; 2; 0; 0.1]));
assert(measurement.vx == 22 && measurement.s == 50);

measurement = asm_adapter([25; 2; 0.3; 0.2], [10-sin(0.2); 20+cos(0.2)], ...
    [10; 20; 80; 0.2; 0.01; 0.02; 24]);
expectedSpeedError = (25*cos(0.1) - 2*sin(0.1))/0.99 - 24;
assert(norm(measurement.x - [1; 0.08; expectedSpeedError; 2; 0.2], inf) < 1e-12);

measurement = asm_adapter([20; 0; -pi+0.01; 0], [0; 0], [0; 0; 0; pi; 0; 0; 20]);
assert(abs(measurement.x(2) - 0.01) < 1e-12);
end
