function [request, nextState, diagnostics] = command_hold_and_validity( ...
    candidate, now_s, measurementValid, enabled, reset, previousState, fallback, options)
%#codegen
%COMMAND_HOLD_AND_VALIDITY Timestamped request hold; explicit external state.
% candidate: u(3x1), timestamp_s, valid, new_sample, solver_status (double).
% fallback: u(3x1), timestamp_s, valid. Caller owns fallback policy/approval.
% previousState: u(3x1), timestamp_s, initialized, last_time_s.
% request: u, timestamp_s, valid, reset, source (0 none,1 new,2 hold,3 fallback).
% Call at a fixed discrete rate, using SIMULATION time for all timestamps.
% Invalid/reset/disabled measurements never authorize a force request.

request = struct('u',NaN(3,1),'timestamp_s',NaN,'valid',false, ...
    'reset',logical(reset),'source',uint8(0));
nextState = previousState;
timeTolerance = 16*eps(max(1.0,abs(now_s))); % Timestamp subtraction roundoff only.
diagnostics = struct('age_s',Inf,'accepted_new',false, ...
    'candidate_rejected',false,'expired',false,'reason',uint8(0));
% reason: 0 issued; 1 reset/disabled/invalid measurement; 2 invalid settings/time;
% 3 no fresh request/fallback. candidate_rejected is independent of hold output.
settingsValid = isfinite(options.max_age_s) && options.max_age_s >= 0 && ...
    isfinite(options.fallback_max_age_s) && options.fallback_max_age_s >= 0 && ...
    all(isfinite(options.u_min)) && all(isfinite(options.u_max)) && ...
    all(options.u_min <= options.u_max) && ...
    options.accepted_status_count >= 1 && ...
    options.accepted_status_count <= numel(options.accepted_statuses) && ...
    options.accepted_status_count == floor(options.accepted_status_count) && ...
    all(isfinite(options.accepted_statuses));
backwardTime = previousState.initialized && isfinite(previousState.last_time_s) ...
    && now_s < previousState.last_time_s-timeTolerance;
if reset || ~enabled || ~measurementValid || ~isfinite(now_s) || ...
        ~settingsValid || backwardTime
    nextState.u = zeros(3,1);
    nextState.timestamp_s = -Inf;
    nextState.initialized = false;
    nextState.last_time_s = now_s;
    diagnostics.reason = uint8(1);
    if ~isfinite(now_s) || ~settingsValid || backwardTime
        diagnostics.reason = uint8(2);
    end
    return
end
nextState.last_time_s = now_s;
statusAccepted = false;
for i = 1:numel(options.accepted_statuses)
    if i <= options.accepted_status_count && ...
            candidate.solver_status == options.accepted_statuses(i)
        statusAccepted = true;
    end
end
candidateAge = now_s-candidate.timestamp_s;
newer = ~previousState.initialized || candidate.timestamp_s > previousState.timestamp_s;
candidateOK = candidate.new_sample && candidate.valid && statusAccepted && ...
    all(isfinite(candidate.u)) && all(candidate.u >= options.u_min) && ...
    all(candidate.u <= options.u_max) && isfinite(candidateAge) && ...
    candidateAge >= -timeTolerance && candidateAge <= options.max_age_s+timeTolerance && newer;
diagnostics.candidate_rejected = candidate.new_sample && ~candidateOK;
if candidateOK
    nextState.u = candidate.u;
    nextState.timestamp_s = candidate.timestamp_s;
    nextState.initialized = true;
    diagnostics.accepted_new = true;
end
age = now_s-nextState.timestamp_s;
heldOK = nextState.initialized && all(isfinite(nextState.u)) && ...
    all(nextState.u >= options.u_min) && all(nextState.u <= options.u_max) && ...
    isfinite(age) && age >= -timeTolerance && age <= options.max_age_s+timeTolerance;
if heldOK
    request.u = nextState.u;
    request.timestamp_s = nextState.timestamp_s;
    request.valid = true;
    request.source = uint8(2);
    if diagnostics.accepted_new
        request.source = uint8(1);
    end
    diagnostics.age_s = age;
    return
end
diagnostics.expired = nextState.initialized && age > options.max_age_s+timeTolerance;
fallbackAge = now_s-fallback.timestamp_s;
fallbackOK = fallback.valid && all(isfinite(fallback.u)) && ...
    all(fallback.u >= options.u_min) && all(fallback.u <= options.u_max) && ...
    isfinite(fallbackAge) && fallbackAge >= -timeTolerance && ...
    fallbackAge <= options.fallback_max_age_s+timeTolerance;
if fallbackOK
    request.u = fallback.u;
    request.timestamp_s = fallback.timestamp_s;
    request.valid = true;
    request.source = uint8(3);
    diagnostics.age_s = fallbackAge;
else
    diagnostics.reason = uint8(3);
end
% Fallback never refreshes the timestamp or lifetime of the held NMPC command.
end
