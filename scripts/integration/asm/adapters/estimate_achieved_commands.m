function [achieved, diagnostics] = estimate_achieved_commands(rawForces, measurement, options)
%ESTIMATE_ACHIEVED_COMMANDS A11 Step 1 interface specification; implementation pending.
% RAWFORCES: wheel tire forces/moments, their frames, wheel positions,
% aero/resistance terms and validity/timestamps from the active ASM variant.
% MEASUREMENT: synchronized SI vehicle measurements.
% OPTIONS: frame transforms and explicit tire-force versus net-force definition.
% ACHIEVED: u (3x1)=[Fx;Fy;Mz], timestamp_s, valid, definition_id.
% DIAGNOSTICS: frame/force-balance consistency and optional derivative estimate.
% Sum body-frame wheel forces; Mz=sum(x_i*Fy_i-y_i*Fx_i)+tire moments.
% Flat-road net diagnostic: Fx=m*(dvx-vy*r), Fy=m*(dvy+vx*r), Mz~=Iz*dr.
% Do not confuse the held NMPC request with achieved ASM forces.
%
% This scaffold deliberately raises an error. It must not command a vehicle
% or produce apparently valid zero measurements before implementation.

error('ecu:ASMAdapterNotImplemented', ...
    'estimate_achieved_commands is a Step 1 scaffold; implement and validate before use.');
end
