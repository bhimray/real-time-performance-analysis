function [fig, axesList] = plot_trajectory(signals, options)
%PLOT_TRAJECTORY Plot vehicle paths with a diagnostic and steering below.
% Coordinates="auto" uses road coordinates when both fellow offsets are
% recorded. Coordinates="station" plots longitudinal motion versus time.
% Diagnostic selects the lower-left panel. Use one label or limit for all
% panels, or supply entries in top, bottom-left, bottom-right order.
arguments
    signals timetable
    options.Title (1,1) string = ""
    options.PanelTitles string = strings(0,1)
    options.XLabels string = strings(0,1)
    options.YLabels string = strings(0,1)
    options.XLimits double = zeros(0,2)
    options.YLimits double = zeros(0,2)
    options.Coordinates (1,1) string {mustBeMember(options.Coordinates, ...
        ["auto","station","road","global"])} = "auto"
    options.Diagnostic (1,1) string {mustBeMember(options.Diagnostic, ...
        ["cost","status","slack","gap","iterations","solve_time"])} = "cost"
    options.Visible (1,1) string {mustBeMember(options.Visible, ["on","off"])} = "on"
end


vehicleLabels = ["Ego", "Fellow 1", "Fellow 2"];
stations = ["horizon_ego_station_m", "horizon_fellow1_station_m", ...
    "horizon_fellow2_station_m"];
offsets = ["mpc_lbx0_lateral_error_m", "horizon_fellow1_lateral_offset_m", ...
    "horizon_fellow2_lateral_offset_m"];
coordinates = options.Coordinates;
available = string(signals.Properties.VariableNames);
if coordinates == "auto"
    if all(ismember([stations, offsets], available))
        coordinates = "road";
    else
        coordinates = "station";
    end
end

switch coordinates
    case "road"
        trajectoryPanel = {"Vehicle trajectories in road coordinates", offsets, ...
            "Lateral offset [m]", "line", stations, vehicleLabels};
        defaultXLabel = "Road station [m]";
    case "global"
        x = ["ego_x_m", "traffic_fellow1_x_m", "traffic_fellow2_x_m"];
        y = ["ego_y_m", "traffic_fellow1_y_m", "traffic_fellow2_y_m"];
        trajectoryPanel = {"Recorded vehicle paths", y, "Global Y [m]", ...
            "xy", x, vehicleLabels};
        defaultXLabel = "Global X [m]";
    otherwise
        trajectoryPanel = {"Ego and fellow road stations", stations, ...
            "Road station [m]", "stairs", "", vehicleLabels};
        defaultXLabel = "Time [s]";
end

switch options.Diagnostic
    case "status"
        diagnosticPanel = {"Solver status", "solver_status", "Status code", "stairs", "", ""};
    case "slack"
        diagnosticPanel = {"Maximum obstacle slack", ...
            ["obstacle1_max_slack", "obstacle2_max_slack"], ...
            "Slack", "stairs", "", ["Fellow 1", "Fellow 2"]};
    case "gap"
        diagnosticPanel = {"Recorded station gaps", ...
            ["traffic_fellow1_station_gap_m", "traffic_fellow2_station_gap_m"], ...
            "Station gap [m]", "line", "", ["Fellow 1", "Fellow 2"]};
    case "iterations"
        diagnosticPanel = {"SQP iterations", "solver_sqp_iterations", ...
            "Iterations per solve", "stairs", "", ""};
    case "solve_time"
        diagnosticPanel = {"Solver execution time", "solver_time_s", ...
            "Solve time [s]", "stairs", "", ""};
    otherwise
        diagnosticPanel = {"Solver objective", "solver_cost", "Objective value", "stairs", "", ""};
end

steeringPanel = {"Steering wheel angle", ...
    ["act_steering_wheel_deg", "ego_steering_wheel_deg"], ...
    "Steering wheel angle [deg]", "line", "", ["Command", "Measured"]};
panels = [trajectoryPanel; diagnosticPanel; steeringPanel];
if isempty(options.XLabels)
    options.XLabels = [defaultXLabel, "Time [s]", "Time [s]"];
end

[fig, axesList] = render_panels(signals, panels, ...
    "Vehicle trajectory and steering response", 2, options, [2; 1; 1]);
end
