function margin = ellipse_margin(station,offset,geometry)
%ELLIPSE_MARGIN Evaluate the controller's A4 obstacle expression.
% The four geometry rows are station, offset, lateral and longitudinal axes.
lateralAxis = geometry(3,:);
longitudinalAxis = geometry(4,:);
assert(all(lateralAxis > 0 & longitudinalAxis > 0),'Invalid safety ellipse semi-axis.');
margin = ((offset - geometry(2,:))./lateralAxis).^2 + ...
    ((station - geometry(1,:))./longitudinalAxis).^2 - 1;
end
