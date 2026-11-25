function handles = native_trace(ax,time,values,gaps)
%NATIVE_TRACE Leave breaks where scheduled controller samples are absent.
% A NaN separator is inserted before a gap-ending sample. Both samples stay.
time = time(:);
if nargin < 4, gaps = false(size(time)); end
starts = find(gaps(:));
expandedTime = NaN(numel(time)+numel(starts),1);
expandedValues = NaN(numel(expandedTime),size(values,2));
positions = (1:numel(time)).' + cumsum(gaps(:));
expandedTime(positions) = time;
expandedValues(positions,:) = values;
handles = plot(ax,expandedTime,expandedValues,'.-','MarkerSize',6);
grid(ax,'on');
xlabel(ax,'Recorded time [s]');
end
