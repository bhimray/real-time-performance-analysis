function draw = road_view(ax, d, rows, colors)
%ROAD_VIEW Set up the road plot and return its frame update function.
hold(ax, 'on');
grid(ax, 'on');
xlabel(ax, 'Road station [m]');
ylabel(ax, 'Lateral offset [m]');
title(ax, 'Recorded and predicted motion');
h = d.Horizon;
layout = d.Layout;
for bound = [layout.emin, layout.emax]
    yline(ax, h.P(bound, 1, rows(1)), ':', 'Color', [0.48 0.51 0.56], ...
        'HandleVisibility', 'off');
end
labels = ["Ego", "Fellow 1", "Fellow 2"];
for i = 1:3
    history(i) = plot(ax, NaN, NaN, '-', 'Color', colors(i,:), ...
        'LineWidth', 1.5, 'DisplayName', labels(i) + " recorded"); %#ok<AGROW>
    prediction(i) = plot(ax, NaN, NaN, '--', 'Color', colors(i,:), ...
        'LineWidth', 1.5, 'DisplayName', labels(i) + " predicted"); %#ok<AGROW>
    current(i) = plot(ax, NaN, NaN, 'o', 'MarkerFaceColor', colors(i,:), ...
        'MarkerEdgeColor', 'w', 'HandleVisibility', 'off'); %#ok<AGROW>
end
for i = 1:2
    ellipse(i) = plot(ax, NaN, NaN, ':', 'Color', colors(i+1,:), ...
        'HandleVisibility', 'off'); %#ok<AGROW>
    collision(i) = plot(ax, NaN, NaN, '-', 'Color', colors(i+1,:), ...
        'HandleVisibility', 'off'); %#ok<AGROW>
end
subtitle(ax, 'Dotted safety ellipses · Solid collision boundaries');
legend(ax, reshape([history; prediction], 1, []), 'Location', 'southoutside', 'NumColumns', 2);
theta = linspace(0, 2*pi, 81);
sRows = [layout.s, layout.obstacle1(1), layout.obstacle2(1)];
eRows = [layout.obstacle1(2), layout.obstacle2(2)];
recorded = d.SolveRows(rows(1)):d.SolveRows(rows(end));
valid = rows(h.SolverStatus(rows) == 0);
traffic = valid(h.ActiveAtSolve(valid));
station = [reshape(d.Station(recorded,:), [], 1); ...
    reshape(h.P(layout.s,:,valid), [], 1); reshape(h.P(sRows(2:3),:,traffic), [], 1)];
offset = [reshape(d.Offset(recorded,:), [], 1); ...
    reshape(h.X(1,:,valid), [], 1); reshape(h.P(eRows,:,traffic), [], 1)];
station = station(isfinite(station));
offset = offset(isfinite(offset));
xlim(ax, [min(station)-6, max(station)+6]);
ylim(ax, [min([offset; reshape(h.P(layout.emin,1,rows),[],1)])-1.5, ...
    max([offset; reshape(h.P(layout.emax,1,rows),[],1)])+1.5]);
draw = @update_frame;

    function update_frame(k, pastRows)
        sample = d.SolveRows(k);
        futureS = h.P(sRows,:,k);
        futureE = [h.X(1,:,k); h.P(eRows,:,k)];
        if ~h.ActiveAtSolve(k)
            futureE(2:3,:) = NaN;
        end
        if h.SolverStatus(k) ~= 0
            futureE(:) = NaN;
        end
        for vehicle = 1:3
            set(history(vehicle), 'XData', d.Station(pastRows,vehicle), ...
                'YData', d.Offset(pastRows,vehicle));
            set(current(vehicle), 'XData', d.Station(sample,vehicle), ...
                'YData', d.Offset(sample,vehicle));
            set(prediction(vehicle), 'XData', futureS(vehicle,:), ...
                'YData', futureE(vehicle,:));
        end
        for fellow = 1:2
            set(ellipse(fellow), 'XData', d.Station(sample,fellow+1) + d.Safety(fellow,2)*cos(theta), ...
                'YData', d.Offset(sample,fellow+1) + d.Safety(fellow,1)*sin(theta));
            set(collision(fellow), ...
                'XData', d.Station(sample,fellow+1) + d.Collision(2)*cos(theta), ...
                'YData', d.Offset(sample,fellow+1) + d.Collision(1)*sin(theta));
        end
    end
end
