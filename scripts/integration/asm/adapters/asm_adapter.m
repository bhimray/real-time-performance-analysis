function measurement = asm_adapter(kinematicsSI, vehicleXY, referenceSI)
%#codegen
% Paste into the ASM_adapter MATLAB Function block.
measurement = asm_measurement_adapter(kinematicsSI, vehicleXY, referenceSI);
end
