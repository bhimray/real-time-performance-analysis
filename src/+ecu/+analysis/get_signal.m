function signal = get_signal(run, id)
%GET_SIGNAL Retrieve one canonical logged channel without guessing or fallback.
assert(isfield(run, 'signals'), 'ecu:MissingSignals', ...
    'Run has no canonical signals.');
ids = string({run.signals.id});
match = find(ids == string(id));
assert(numel(match) == 1, 'ecu:SignalUnavailable', ...
    'Expected one logged signal named %s; found %d.', char(id), numel(match));
signal = run.signals(match);
end
