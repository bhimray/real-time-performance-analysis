function [fig,layout] = plot_layout(name,rows,cols,visible,width)
%PLOT_LAYOUT Shared figure setup for static recording plots.
if nargin < 5, width = 960; end
fig = figure('Name',name,'Visible',visible,'Color','w', ...
    'Position',[60 60 width min(1000,170*rows+100)]);
layout = tiledlayout(fig,rows,cols,'TileSpacing','compact','Padding','compact');
title(layout,name);
end
