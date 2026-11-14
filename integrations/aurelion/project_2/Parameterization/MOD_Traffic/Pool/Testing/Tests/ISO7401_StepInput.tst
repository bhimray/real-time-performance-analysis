<?xml version="1.0" encoding="utf-8"?>
<Test xmlns:i="http://www.w3.org/2001/XMLSchema-instance" z:Id="i1" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" xmlns="http://www.dspace.com/XMLSchema/ModelDesk/Testing">
  <ExecutedBy i:nil="true" />
  <IsReportLinkInvalid>true</IsReportLinkInvalid>
  <LastExecution i:nil="true" />
  <LastModification>2024-08-19T15:05:53.2811095+02:00</LastModification>
  <ModifiedBy>Admin</ModifiedBy>
  <ReportPath></ReportPath>
  <Verdict>Undefined</Verdict>
  <Comment></Comment>
  <ExecutionTime>0001-01-01T00:00:00</ExecutionTime>
  <LogicalTestCases xmlns:d2p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
    <d2p1:anyType z:Id="i2" i:type="LogicalTestCase">
      <ExecutedBy i:nil="true" />
      <IsReportLinkInvalid>true</IsReportLinkInvalid>
      <LastExecution i:nil="true" />
      <LastModification>2024-08-19T15:05:53.2812384+02:00</LastModification>
      <ModifiedBy>Admin</ModifiedBy>
      <ReportPath></ReportPath>
      <Verdict>Undefined</Verdict>
      <ExecutionTime>0001-01-01T00:00:00</ExecutionTime>
      <UsedExperimentContents z:Id="i3">
        <anyType z:Id="i4" i:type="ExperimentContentScenario">
          <Context>ectTRAFFICSCENARIO</Context>
          <RelativePath>ISO7401_PreCalcSWA.xml</RelativePath>
          <TestingVariableLists z:Id="i5">
            <anyType z:Id="i6" i:type="TestingVariableAliasList">
              <AliasType>Maneuver</AliasType>
              <Name>Maneuver Aliases</Name>
              <TestingVariables>
                <d2p1:anyType z:Id="i7" i:type="TestingVariableAlias">
                  <AliasType>Maneuver</AliasType>
                  <DefaultValue xmlns:d10p1="http://www.w3.org/2001/XMLSchema" i:type="d10p1:double">100</DefaultValue>
                  <Description></Description>
                  <Identifier>Maneuver Aliases</Identifier>
                  <Name>TestVelocity</Name>
                  <ReferenceType>Scalar</ReferenceType>
                  <Selected>true</Selected>
                  <Source>ISO7401_PreCalcSWA.xml</Source>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i8" i:type="TestingVariableAlias">
                  <AliasType>Maneuver</AliasType>
                  <DefaultValue xmlns:d10p1="http://www.w3.org/2001/XMLSchema" i:type="d10p1:double">4</DefaultValue>
                  <Description></Description>
                  <Identifier>Maneuver Aliases</Identifier>
                  <Name>TargetLatAcc</Name>
                  <ReferenceType>Scalar</ReferenceType>
                  <Selected>true</Selected>
                  <Source>ISO7401_PreCalcSWA.xml</Source>
                </d2p1:anyType>
              </TestingVariables>
            </anyType>
            <anyType z:Id="i9" i:type="TestingVariableAliasList">
              <AliasType>Traffic</AliasType>
              <Name>Traffic Aliases</Name>
              <TestingVariables />
            </anyType>
          </TestingVariableLists>
        </anyType>
        <anyType z:Id="i10" i:type="ExperimentContentRoad">
          <Context>ectROAD</Context>
          <RelativePath>TestGround.rd</RelativePath>
          <TestingVariableLists z:Id="i11">
            <anyType z:Id="i12" i:type="TestingVariableAliasList">
              <AliasType>Road</AliasType>
              <Name>Road Aliases</Name>
              <TestingVariables />
            </anyType>
          </TestingVariableLists>
        </anyType>
        <anyType z:Id="i13" i:type="ExperimentContentPlotting">
          <Context>ectLAYOUTCONFIGURATION</Context>
          <RelativePath>Configurations\Vehicle_Complete.xml</RelativePath>
          <Captures z:Id="i14" />
          <Layouts z:Id="i15">
            <anyType z:Id="i16" i:type="PlottingContainer">
              <Name>Drivetrain_Overview</Name>
              <Signals>
                <d2p1:anyType z:Id="i17" i:type="Signal">
                  <FullPath>Plant.Wheel.WheelSpeed.omega_RR_Wheel[rad|s]</FullPath>
                  <Name>omega_RR_Wheel[rad|s]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i18" i:type="Signal">
                  <FullPath>Plant.Engine.Trq_Eff_Engine[Nm]</FullPath>
                  <Name>Trq_Eff_Engine[Nm]</Name>
                  <SignalCollector>Engine</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Engine/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i19" i:type="Signal">
                  <FullPath>Plant.Crankshaft.n_Engine[rpm]</FullPath>
                  <Name>n_Engine[rpm]</Name>
                  <SignalCollector>Drivetrain</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Drivetrain/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i20" i:type="Signal">
                  <FullPath>Plant.Transmission.OutputSignals.Gear[]</FullPath>
                  <Name>Gear[]</Name>
                  <SignalCollector>Drivetrain</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Drivetrain/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i21" i:type="Signal">
                  <FullPath>Plant.Wheel.WheelSpeed.omega_RL_Wheel[rad|s]</FullPath>
                  <Name>omega_RL_Wheel[rad|s]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i22" i:type="Signal">
                  <FullPath>Plant.Wheel.WheelSpeed.omega_FR_Wheel[rad|s]</FullPath>
                  <Name>omega_FR_Wheel[rad|s]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i23" i:type="Signal">
                  <FullPath>Plant.Wheel.WheelSpeed.omega_FL_Wheel[rad|s]</FullPath>
                  <Name>omega_FL_Wheel[rad|s]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i24" i:type="PlottingContainer">
              <Name>Env_RoadPosition</Name>
              <Signals>
                <d2p1:anyType z:Id="i25" i:type="Signal">
                  <FullPath>Road.Road_ASMVeh.Pos_x_Ref_Veh_Road[m]</FullPath>
                  <Name>Pos_x_Ref_Veh_Road[m]</Name>
                  <SignalCollector>Environment</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Environment/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i26" i:type="Signal">
                  <FullPath>Road.Road_ASMVeh.Pos_y_Ref_Veh_Road[m]</FullPath>
                  <Name>Pos_y_Ref_Veh_Road[m]</Name>
                  <SignalCollector>Environment</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Environment/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i27" i:type="PlottingContainer">
              <Name>Env_DriverOverview</Name>
              <Signals>
                <d2p1:anyType z:Id="i28" i:type="Signal">
                  <FullPath>OutputSignals.Pos_ClutchPedal[%]</FullPath>
                  <Name>Pos_ClutchPedal[%]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i29" i:type="Signal">
                  <FullPath>OutputSignals.Angle_SteeringWheel[deg]</FullPath>
                  <Name>Angle_SteeringWheel[deg]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i30" i:type="Signal">
                  <FullPath>Plant.Transmission.OutputSignals.Gear[]</FullPath>
                  <Name>Gear[]</Name>
                  <SignalCollector>Drivetrain</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Drivetrain/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i31" i:type="Signal">
                  <FullPath>OutputSignals.Gear[]</FullPath>
                  <Name>Gear[]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i32" i:type="Signal">
                  <FullPath>OutputSignals.SelectorLever[-3T|-2P|-1R|0N|1D]</FullPath>
                  <Name>SelectorLever[-3T|-2P|-1R|0N|1D]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i33" i:type="Signal">
                  <FullPath>OutputSignals.Pos_BrakePedal[%]</FullPath>
                  <Name>Pos_BrakePedal[%]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i34" i:type="Signal">
                  <FullPath>OutputSignals.Pos_AccPedal[%]</FullPath>
                  <Name>Pos_AccPedal[%]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i35" i:type="PlottingContainer">
              <Name>Env_Maneuver_SimInfo</Name>
              <Signals>
                <d2p1:anyType z:Id="i36" i:type="Signal">
                  <FullPath>LateralController.PositionError.e_Lat[m]</FullPath>
                  <Name>e_Lat[m]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i37" i:type="Signal">
                  <FullPath>Maneuver.ManeuverScheduler.Info.CurrentSegment[]</FullPath>
                  <Name>CurrentSegment[]</Name>
                  <SignalCollector>Environment</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Environment/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i38" i:type="Signal">
                  <FullPath>Maneuver.ManeuverScheduler.Info.ManeuverState[]</FullPath>
                  <Name>ManeuverState[]</Name>
                  <SignalCollector>Environment</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Environment/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i39" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Velocities.Vehicle.Linear.v_Total_Vehicle[km|h]</FullPath>
                  <Name>v_Total_Vehicle[km|h]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i40" i:type="Signal">
                  <FullPath>Maneuver.ManeuverScheduler.RefSignals.v_Vehicle_Ref_Maneuver[km|h]</FullPath>
                  <Name>v_Vehicle_Ref_Maneuver[km|h]</Name>
                  <SignalCollector>Environment</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Environment/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i41" i:type="PlottingContainer">
              <Name>Vehicle_BrakeOverview</Name>
              <Signals>
                <d2p1:anyType z:Id="i42" i:type="Signal">
                  <FullPath>Plant.Brake.BrakeDisc.Pressure.p_RR_Brake[bar]</FullPath>
                  <Name>p_RR_Brake[bar]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i43" i:type="Signal">
                  <FullPath>Plant.Brake.MasterBrakeCylinder.ActiveBrakeCylinder.p[bar]</FullPath>
                  <Name>p[bar]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i44" i:type="Signal">
                  <FullPath>Plant.Brake.BrakeDisc.Pressure.p_RL_Brake[bar]</FullPath>
                  <Name>p_RL_Brake[bar]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i45" i:type="Signal">
                  <FullPath>Plant.Brake.BrakeDisc.Pressure.p_FR_Brake[bar]</FullPath>
                  <Name>p_FR_Brake[bar]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i46" i:type="Signal">
                  <FullPath>Plant.Brake.BrakeDisc.Pressure.p_FL_Brake[bar]</FullPath>
                  <Name>p_FL_Brake[bar]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i47" i:type="PlottingContainer">
              <Name>Vehicle_VehicleState</Name>
              <Signals>
                <d2p1:anyType z:Id="i48" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Accelerations.VehicleCoG.Linear.a_Vehicle_CoG[x;y;z][m|s2].a_y_Vehicle_CoG[m|s2]</FullPath>
                  <Name>a_y_Vehicle_CoG[m|s2]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i49" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Positions.Vehicle.Angular.Angle_Vehicle_CoorSys_E[x;y;z][deg].Angle_Roll_Vehicle_CoorSys_E[deg]</FullPath>
                  <Name>Angle_Roll_Vehicle_CoorSys_E[deg]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i50" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Positions.Vehicle.Angular.Angle_Vehicle_CoorSys_E[x;y;z][deg].Angle_Pitch_Vehicle_CoorSys_E[deg]</FullPath>
                  <Name>Angle_Pitch_Vehicle_CoorSys_E[deg]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i51" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Velocities.Vehicle.Angular.w_Vehicle_CoG[x;y;z][deg|s].YawRate_Vehicle_CoG[deg|s]</FullPath>
                  <Name>YawRate_Vehicle_CoG[deg|s]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i52" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Velocities.Vehicle.Linear.Angle_SideSlip_Vehicle[deg]</FullPath>
                  <Name>Angle_SideSlip_Vehicle[deg]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i53" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Velocities.Vehicle.Linear.v_Total_Vehicle[km|h]</FullPath>
                  <Name>v_Total_Vehicle[km|h]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i54" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Accelerations.VehicleCoG.Linear.a_Vehicle_CoG[x;y;z][m|s2].a_x_Vehicle_CoG[m|s2]</FullPath>
                  <Name>a_x_Vehicle_CoG[m|s2]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i55" i:type="PlottingContainer">
              <Name>Vehicle_Suspension</Name>
              <Signals>
                <d2p1:anyType z:Id="i56" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionRear.SuspensionForcesRear.F_Stabilizer[N]</FullPath>
                  <Name>F_Stabilizer[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i57" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionRear.SuspensionForcesRear.F_RR_Damper[N]</FullPath>
                  <Name>F_RR_Damper[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i58" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionRear.SuspensionForcesRear.F_RL_Damper[N]</FullPath>
                  <Name>F_RL_Damper[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i59" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionFront.SuspensionForcesFront.F_FR_Damper[N]</FullPath>
                  <Name>F_FR_Damper[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i60" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionFront.SuspensionForcesFront.F_FL_Damper[N]</FullPath>
                  <Name>F_FL_Damper[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i61" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionRear.SuspensionForcesRear.F_RR_Spring[N]</FullPath>
                  <Name>F_RR_Spring[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i62" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionRear.SuspensionForcesRear.F_RL_Spring[N]</FullPath>
                  <Name>F_RL_Spring[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i63" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionFront.SuspensionForcesFront.F_FR_Spring[N]</FullPath>
                  <Name>F_FR_Spring[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i64" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionFront.SuspensionForcesFront.F_FL_Spring[N]</FullPath>
                  <Name>F_FL_Spring[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i65" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionFront.SuspensionForcesFront.F_Stabilizer[N]</FullPath>
                  <Name>F_Stabilizer[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
          </Layouts>
        </anyType>
      </UsedExperimentContents>
      <Parent z:Ref="i1" />
      <Id>1</Id>
      <Name>ISO7401_PreCalcSWA</Name>
      <Comment>This maneuver calculates the steering wheel angle necessary to achieve the target lateral acceleration for a defined test speed.</Comment>
      <Enabled>true</Enabled>
      <Duration>222</Duration>
      <ConcreteTestCases>
        <d2p1:anyType z:Id="i66" i:type="ConcreteTestCase">
          <ExecutedBy i:nil="true" />
          <IsReportLinkInvalid>true</IsReportLinkInvalid>
          <LastExecution i:nil="true" />
          <LastModification i:nil="true" />
          <ModifiedBy i:nil="true" />
          <ReportPath></ReportPath>
          <Verdict>Undefined</Verdict>
          <Anchor></Anchor>
          <Comment></Comment>
          <ConcreteFunctions>
            <d2p1:anyType z:Id="i67" i:type="ValidationFunctionConcrete">
              <Result z:Id="i68" i:type="ValidationFunctionResult">
                <ResultContent z:Id="i69" i:type="NoResult">
                  <ResultContentType>NoContent</ResultContentType>
                </ResultContent>
                <Verdict>Undefined</Verdict>
              </Result>
              <ValidationFunction z:Id="i70" i:type="EvaluationFunctionCustom">
                <Comment i:nil="true" />
                <Id>1</Id>
                <Parameters z:Id="i71">
                  <anyType z:Id="i72" i:type="ValidationParameterCurrentSignal">
                    <Id>1</Id>
                    <Type>CurrentSignal</Type>
                    <Name>OutputSignals.Angle_SteeringWheel[deg] (Driver)</Name>
                    <LayoutName>Env_DriverOverview</LayoutName>
                  </anyType>
                  <anyType z:Id="i73" i:type="ValidationParameterCurrentSignal">
                    <Id>2</Id>
                    <Type>CurrentSignal</Type>
                    <Name>Maneuver.ManeuverScheduler.Info.ManeuverState[] (Environment)</Name>
                    <LayoutName>Env_Maneuver_SimInfo</LayoutName>
                  </anyType>
                  <anyType z:Id="i74" i:type="ValidationParameterVariable">
                    <Id>3</Id>
                    <Type>Variable</Type>
                    <ListName>Maneuver Aliases</ListName>
                    <Name>TestVelocity</Name>
                  </anyType>
                  <anyType z:Id="i75" i:type="ValidationParameterVariable">
                    <Id>4</Id>
                    <Type>Variable</Type>
                    <ListName>Maneuver Aliases</ListName>
                    <Name>TargetLatAcc</Name>
                  </anyType>
                </Parameters>
                <Type>Evaluation</Type>
                <Function>Custom</Function>
                <Path>Functions\ISO7401_ManeuverTesting.py</Path>
              </ValidationFunction>
            </d2p1:anyType>
          </ConcreteFunctions>
          <ConcreteVariableLists>
            <d2p1:anyType z:Id="i76" i:type="TestingVariableListConcrete">
              <VariableList z:Ref="i6" />
              <Variables>
                <d2p1:anyType z:Id="i77" i:type="TestingVariableConcrete">
                  <Value>100</Value>
                  <Variable z:Ref="i7" />
                </d2p1:anyType>
                <d2p1:anyType z:Id="i78" i:type="TestingVariableConcrete">
                  <Value>4</Value>
                  <Variable z:Ref="i8" />
                </d2p1:anyType>
              </Variables>
            </d2p1:anyType>
          </ConcreteVariableLists>
          <Id>1</Id>
          <RelativeCapturePath></RelativeCapturePath>
          <Simulate>true</Simulate>
          <SimulationTime>0001-01-01T00:00:00</SimulationTime>
          <UsedExperimentContents z:Ref="i3" />
          <Validate>true</Validate>
          <ValidationFunctions z:Id="i79">
            <anyType z:Ref="i70" />
          </ValidationFunctions>
          <ValidationTime>0001-01-01T00:00:00</ValidationTime>
        </d2p1:anyType>
      </ConcreteTestCases>
      <ValidationFunctions z:Ref="i79" />
      <RoadManager z:Id="i80" i:type="ExperimentContentManager">
        <Parent z:Ref="i2" />
        <Context>ectROAD</Context>
        <Content z:Ref="i10" />
        <IsUsed>true</IsUsed>
      </RoadManager>
      <ScenarioManager z:Id="i81" i:type="ExperimentContentManager">
        <Parent z:Ref="i2" />
        <Context>ectTRAFFICSCENARIO</Context>
        <Content z:Ref="i4" />
        <IsUsed>true</IsUsed>
      </ScenarioManager>
      <PlottingManager z:Id="i82" i:type="ExperimentContentManagerPlotting">
        <Parent z:Ref="i2" />
        <Context>ectLAYOUTCONFIGURATION</Context>
        <Content z:Ref="i13" />
        <IsUsed>true</IsUsed>
      </PlottingManager>
      <ParameterSetManager z:Id="i83" i:type="ExperimentContentManager">
        <Parent z:Ref="i2" />
        <Context>ectPARAMETERSET</Context>
        <Content i:nil="true" />
        <IsUsed>true</IsUsed>
      </ParameterSetManager>
    </d2p1:anyType>
    <d2p1:anyType z:Id="i84" i:type="LogicalTestCase">
      <ExecutedBy i:nil="true" />
      <IsReportLinkInvalid>true</IsReportLinkInvalid>
      <LastExecution i:nil="true" />
      <LastModification>2024-08-19T15:05:53.2813193+02:00</LastModification>
      <ModifiedBy>Admin</ModifiedBy>
      <ReportPath></ReportPath>
      <Verdict>Undefined</Verdict>
      <ExecutionTime>0001-01-01T00:00:00</ExecutionTime>
      <UsedExperimentContents z:Id="i85">
        <anyType z:Id="i86" i:type="ExperimentContentScenario">
          <Context>ectTRAFFICSCENARIO</Context>
          <RelativePath>ISO7401_StepInput.xml</RelativePath>
          <TestingVariableLists z:Id="i87">
            <anyType z:Id="i88" i:type="TestingVariableAliasList">
              <AliasType>Maneuver</AliasType>
              <Name>Maneuver Aliases</Name>
              <TestingVariables>
                <d2p1:anyType z:Id="i89" i:type="TestingVariableAlias">
                  <AliasType>Maneuver</AliasType>
                  <DefaultValue xmlns:d10p1="http://www.w3.org/2001/XMLSchema" i:type="d10p1:double">45</DefaultValue>
                  <Description></Description>
                  <Identifier>Maneuver Aliases</Identifier>
                  <Name>SteeringWheelAngle</Name>
                  <ReferenceType>Scalar</ReferenceType>
                  <Selected>true</Selected>
                  <Source>ISO7401_StepInput.xml</Source>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i90" i:type="TestingVariableAlias">
                  <AliasType>Maneuver</AliasType>
                  <DefaultValue xmlns:d10p1="http://www.w3.org/2001/XMLSchema" i:type="d10p1:double">100</DefaultValue>
                  <Description></Description>
                  <Identifier>Maneuver Aliases</Identifier>
                  <Name>TestVelocity</Name>
                  <ReferenceType>Scalar</ReferenceType>
                  <Selected>true</Selected>
                  <Source>ISO7401_StepInput.xml</Source>
                </d2p1:anyType>
              </TestingVariables>
            </anyType>
            <anyType z:Id="i91" i:type="TestingVariableAliasList">
              <AliasType>Traffic</AliasType>
              <Name>Traffic Aliases</Name>
              <TestingVariables />
            </anyType>
          </TestingVariableLists>
        </anyType>
        <anyType z:Id="i92" i:type="ExperimentContentRoad">
          <Context>ectROAD</Context>
          <RelativePath>TestGround.rd</RelativePath>
          <TestingVariableLists z:Id="i93">
            <anyType z:Id="i94" i:type="TestingVariableAliasList">
              <AliasType>Road</AliasType>
              <Name>Road Aliases</Name>
              <TestingVariables />
            </anyType>
          </TestingVariableLists>
        </anyType>
        <anyType z:Id="i95" i:type="ExperimentContentPlotting">
          <Context>ectLAYOUTCONFIGURATION</Context>
          <RelativePath>Configurations\Vehicle_Complete.xml</RelativePath>
          <Captures z:Id="i96" />
          <Layouts z:Id="i97">
            <anyType z:Id="i98" i:type="PlottingContainer">
              <Name>Drivetrain_Overview</Name>
              <Signals>
                <d2p1:anyType z:Id="i99" i:type="Signal">
                  <FullPath>Plant.Wheel.WheelSpeed.omega_RR_Wheel[rad|s]</FullPath>
                  <Name>omega_RR_Wheel[rad|s]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i100" i:type="Signal">
                  <FullPath>Plant.Engine.Trq_Eff_Engine[Nm]</FullPath>
                  <Name>Trq_Eff_Engine[Nm]</Name>
                  <SignalCollector>Engine</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Engine/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i101" i:type="Signal">
                  <FullPath>Plant.Crankshaft.n_Engine[rpm]</FullPath>
                  <Name>n_Engine[rpm]</Name>
                  <SignalCollector>Drivetrain</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Drivetrain/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i102" i:type="Signal">
                  <FullPath>Plant.Transmission.OutputSignals.Gear[]</FullPath>
                  <Name>Gear[]</Name>
                  <SignalCollector>Drivetrain</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Drivetrain/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i103" i:type="Signal">
                  <FullPath>Plant.Wheel.WheelSpeed.omega_RL_Wheel[rad|s]</FullPath>
                  <Name>omega_RL_Wheel[rad|s]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i104" i:type="Signal">
                  <FullPath>Plant.Wheel.WheelSpeed.omega_FR_Wheel[rad|s]</FullPath>
                  <Name>omega_FR_Wheel[rad|s]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i105" i:type="Signal">
                  <FullPath>Plant.Wheel.WheelSpeed.omega_FL_Wheel[rad|s]</FullPath>
                  <Name>omega_FL_Wheel[rad|s]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i106" i:type="PlottingContainer">
              <Name>Env_RoadPosition</Name>
              <Signals>
                <d2p1:anyType z:Id="i107" i:type="Signal">
                  <FullPath>Road.Road_ASMVeh.Pos_x_Ref_Veh_Road[m]</FullPath>
                  <Name>Pos_x_Ref_Veh_Road[m]</Name>
                  <SignalCollector>Environment</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Environment/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i108" i:type="Signal">
                  <FullPath>Road.Road_ASMVeh.Pos_y_Ref_Veh_Road[m]</FullPath>
                  <Name>Pos_y_Ref_Veh_Road[m]</Name>
                  <SignalCollector>Environment</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Environment/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i109" i:type="PlottingContainer">
              <Name>Env_DriverOverview</Name>
              <Signals>
                <d2p1:anyType z:Id="i110" i:type="Signal">
                  <FullPath>OutputSignals.Pos_ClutchPedal[%]</FullPath>
                  <Name>Pos_ClutchPedal[%]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i111" i:type="Signal">
                  <FullPath>OutputSignals.Angle_SteeringWheel[deg]</FullPath>
                  <Name>Angle_SteeringWheel[deg]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i112" i:type="Signal">
                  <FullPath>Plant.Transmission.OutputSignals.Gear[]</FullPath>
                  <Name>Gear[]</Name>
                  <SignalCollector>Drivetrain</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Drivetrain/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i113" i:type="Signal">
                  <FullPath>OutputSignals.Gear[]</FullPath>
                  <Name>Gear[]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i114" i:type="Signal">
                  <FullPath>OutputSignals.SelectorLever[-3T|-2P|-1R|0N|1D]</FullPath>
                  <Name>SelectorLever[-3T|-2P|-1R|0N|1D]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i115" i:type="Signal">
                  <FullPath>OutputSignals.Pos_BrakePedal[%]</FullPath>
                  <Name>Pos_BrakePedal[%]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i116" i:type="Signal">
                  <FullPath>OutputSignals.Pos_AccPedal[%]</FullPath>
                  <Name>Pos_AccPedal[%]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i117" i:type="PlottingContainer">
              <Name>Env_Maneuver_SimInfo</Name>
              <Signals>
                <d2p1:anyType z:Id="i118" i:type="Signal">
                  <FullPath>LateralController.PositionError.e_Lat[m]</FullPath>
                  <Name>e_Lat[m]</Name>
                  <SignalCollector>Driver</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Driver/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i119" i:type="Signal">
                  <FullPath>Maneuver.ManeuverScheduler.Info.CurrentSegment[]</FullPath>
                  <Name>CurrentSegment[]</Name>
                  <SignalCollector>Environment</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Environment/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i120" i:type="Signal">
                  <FullPath>Maneuver.ManeuverScheduler.Info.ManeuverState[]</FullPath>
                  <Name>ManeuverState[]</Name>
                  <SignalCollector>Environment</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Environment/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i121" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Velocities.Vehicle.Linear.v_Total_Vehicle[km|h]</FullPath>
                  <Name>v_Total_Vehicle[km|h]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i122" i:type="Signal">
                  <FullPath>Maneuver.ManeuverScheduler.RefSignals.v_Vehicle_Ref_Maneuver[km|h]</FullPath>
                  <Name>v_Vehicle_Ref_Maneuver[km|h]</Name>
                  <SignalCollector>Environment</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/Environment/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i123" i:type="PlottingContainer">
              <Name>Vehicle_BrakeOverview</Name>
              <Signals>
                <d2p1:anyType z:Id="i124" i:type="Signal">
                  <FullPath>Plant.Brake.BrakeDisc.Pressure.p_RR_Brake[bar]</FullPath>
                  <Name>p_RR_Brake[bar]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i125" i:type="Signal">
                  <FullPath>Plant.Brake.MasterBrakeCylinder.ActiveBrakeCylinder.p[bar]</FullPath>
                  <Name>p[bar]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i126" i:type="Signal">
                  <FullPath>Plant.Brake.BrakeDisc.Pressure.p_RL_Brake[bar]</FullPath>
                  <Name>p_RL_Brake[bar]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i127" i:type="Signal">
                  <FullPath>Plant.Brake.BrakeDisc.Pressure.p_FR_Brake[bar]</FullPath>
                  <Name>p_FR_Brake[bar]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i128" i:type="Signal">
                  <FullPath>Plant.Brake.BrakeDisc.Pressure.p_FL_Brake[bar]</FullPath>
                  <Name>p_FL_Brake[bar]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i129" i:type="PlottingContainer">
              <Name>Vehicle_VehicleState</Name>
              <Signals>
                <d2p1:anyType z:Id="i130" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Accelerations.VehicleCoG.Linear.a_Vehicle_CoG[x;y;z][m|s2].a_y_Vehicle_CoG[m|s2]</FullPath>
                  <Name>a_y_Vehicle_CoG[m|s2]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i131" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Positions.Vehicle.Angular.Angle_Vehicle_CoorSys_E[x;y;z][deg].Angle_Roll_Vehicle_CoorSys_E[deg]</FullPath>
                  <Name>Angle_Roll_Vehicle_CoorSys_E[deg]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i132" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Positions.Vehicle.Angular.Angle_Vehicle_CoorSys_E[x;y;z][deg].Angle_Pitch_Vehicle_CoorSys_E[deg]</FullPath>
                  <Name>Angle_Pitch_Vehicle_CoorSys_E[deg]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i133" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Velocities.Vehicle.Angular.w_Vehicle_CoG[x;y;z][deg|s].YawRate_Vehicle_CoG[deg|s]</FullPath>
                  <Name>YawRate_Vehicle_CoG[deg|s]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i134" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Velocities.Vehicle.Linear.Angle_SideSlip_Vehicle[deg]</FullPath>
                  <Name>Angle_SideSlip_Vehicle[deg]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i135" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Velocities.Vehicle.Linear.v_Total_Vehicle[km|h]</FullPath>
                  <Name>v_Total_Vehicle[km|h]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i136" i:type="Signal">
                  <FullPath>Plant.VehicleMovement.Accelerations.VehicleCoG.Linear.a_Vehicle_CoG[x;y;z][m|s2].a_x_Vehicle_CoG[m|s2]</FullPath>
                  <Name>a_x_Vehicle_CoG[m|s2]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
            <anyType z:Id="i137" i:type="PlottingContainer">
              <Name>Vehicle_Suspension</Name>
              <Signals>
                <d2p1:anyType z:Id="i138" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionRear.SuspensionForcesRear.F_Stabilizer[N]</FullPath>
                  <Name>F_Stabilizer[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i139" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionRear.SuspensionForcesRear.F_RR_Damper[N]</FullPath>
                  <Name>F_RR_Damper[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i140" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionRear.SuspensionForcesRear.F_RL_Damper[N]</FullPath>
                  <Name>F_RL_Damper[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i141" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionFront.SuspensionForcesFront.F_FR_Damper[N]</FullPath>
                  <Name>F_FR_Damper[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i142" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionFront.SuspensionForcesFront.F_FL_Damper[N]</FullPath>
                  <Name>F_FL_Damper[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i143" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionRear.SuspensionForcesRear.F_RR_Spring[N]</FullPath>
                  <Name>F_RR_Spring[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i144" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionRear.SuspensionForcesRear.F_RL_Spring[N]</FullPath>
                  <Name>F_RL_Spring[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i145" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionFront.SuspensionForcesFront.F_FR_Spring[N]</FullPath>
                  <Name>F_FR_Spring[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i146" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionFront.SuspensionForcesFront.F_FL_Spring[N]</FullPath>
                  <Name>F_FL_Spring[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
                <d2p1:anyType z:Id="i147" i:type="Signal">
                  <FullPath>Plant.Suspension.SuspensionFront.SuspensionForcesFront.F_Stabilizer[N]</FullPath>
                  <Name>F_Stabilizer[N]</Name>
                  <SignalCollector>VehicleDynamics</SignalCollector>
                  <SignalCollectorRTPath>ASM_Traffic/VehicleDynamics/SignalInterface/ASMSignalInterface</SignalCollectorRTPath>
                </d2p1:anyType>
              </Signals>
            </anyType>
          </Layouts>
        </anyType>
      </UsedExperimentContents>
      <Parent z:Ref="i1" />
      <Id>2</Id>
      <Name>ISO7401_StepInput</Name>
      <Comment>Step steer maneuver according to ISO7401 with steering wheel angle and speed specification from previous test case</Comment>
      <Enabled>true</Enabled>
      <Duration>100</Duration>
      <ConcreteTestCases>
        <d2p1:anyType z:Id="i148" i:type="ConcreteTestCase">
          <ExecutedBy i:nil="true" />
          <IsReportLinkInvalid>true</IsReportLinkInvalid>
          <LastExecution i:nil="true" />
          <LastModification i:nil="true" />
          <ModifiedBy i:nil="true" />
          <ReportPath></ReportPath>
          <Verdict>Undefined</Verdict>
          <Anchor></Anchor>
          <Comment>Steering wheel angle and test velocity are parameterized by the previous logical test case.</Comment>
          <ConcreteFunctions>
            <d2p1:anyType z:Id="i149" i:type="ValidationFunctionConcrete">
              <Result z:Id="i150" i:type="ValidationFunctionResult">
                <ResultContent z:Id="i151" i:type="NoResult">
                  <ResultContentType>NoContent</ResultContentType>
                </ResultContent>
                <Verdict>Undefined</Verdict>
              </Result>
              <ValidationFunction z:Id="i152" i:type="ReportingFunction">
                <Comment i:nil="true" />
                <Id>1</Id>
                <Parameters z:Id="i153">
                  <anyType z:Id="i154" i:type="ValidationParameterCurrentSignal">
                    <Id>1</Id>
                    <Type>CurrentSignal</Type>
                    <Name>Plant.VehicleMovement.Velocities.Vehicle.Linear.v_Total_Vehicle[km|h] (VehicleDynamics)</Name>
                    <LayoutName>Vehicle_VehicleState</LayoutName>
                  </anyType>
                </Parameters>
                <Type>Reporting</Type>
                <Function>Plot2D</Function>
              </ValidationFunction>
            </d2p1:anyType>
            <d2p1:anyType z:Id="i155" i:type="ValidationFunctionConcrete">
              <Result z:Id="i156" i:type="ValidationFunctionResult">
                <ResultContent z:Id="i157" i:type="NoResult">
                  <ResultContentType>NoContent</ResultContentType>
                </ResultContent>
                <Verdict>Undefined</Verdict>
              </Result>
              <ValidationFunction z:Id="i158" i:type="ReportingFunction">
                <Comment i:nil="true" />
                <Id>2</Id>
                <Parameters z:Id="i159">
                  <anyType z:Id="i160" i:type="ValidationParameterCurrentSignal">
                    <Id>1</Id>
                    <Type>CurrentSignal</Type>
                    <Name>OutputSignals.Angle_SteeringWheel[deg] (Driver)</Name>
                    <LayoutName>Env_DriverOverview</LayoutName>
                  </anyType>
                </Parameters>
                <Type>Reporting</Type>
                <Function>Plot2D</Function>
              </ValidationFunction>
            </d2p1:anyType>
            <d2p1:anyType z:Id="i161" i:type="ValidationFunctionConcrete">
              <Result z:Id="i162" i:type="ValidationFunctionResult">
                <ResultContent z:Id="i163" i:type="NoResult">
                  <ResultContentType>NoContent</ResultContentType>
                </ResultContent>
                <Verdict>Undefined</Verdict>
              </Result>
              <ValidationFunction z:Id="i164" i:type="ReportingFunction">
                <Comment i:nil="true" />
                <Id>3</Id>
                <Parameters z:Id="i165">
                  <anyType z:Id="i166" i:type="ValidationParameterCurrentSignal">
                    <Id>1</Id>
                    <Type>CurrentSignal</Type>
                    <Name>Plant.VehicleMovement.Accelerations.VehicleCoG.Linear.a_Vehicle_CoG[x;y;z][m|s2].a_y_Vehicle_CoG[m|s2] (VehicleDynamics)</Name>
                    <LayoutName>Vehicle_VehicleState</LayoutName>
                  </anyType>
                </Parameters>
                <Type>Reporting</Type>
                <Function>Plot2D</Function>
              </ValidationFunction>
            </d2p1:anyType>
          </ConcreteFunctions>
          <ConcreteVariableLists>
            <d2p1:anyType z:Id="i167" i:type="TestingVariableListConcrete">
              <VariableList z:Ref="i88" />
              <Variables>
                <d2p1:anyType z:Id="i168" i:type="TestingVariableConcrete">
                  <Value>45</Value>
                  <Variable z:Ref="i89" />
                </d2p1:anyType>
                <d2p1:anyType z:Id="i169" i:type="TestingVariableConcrete">
                  <Value>100</Value>
                  <Variable z:Ref="i90" />
                </d2p1:anyType>
              </Variables>
            </d2p1:anyType>
          </ConcreteVariableLists>
          <Id>1</Id>
          <RelativeCapturePath></RelativeCapturePath>
          <Simulate>true</Simulate>
          <SimulationTime>0001-01-01T00:00:00</SimulationTime>
          <UsedExperimentContents z:Ref="i85" />
          <Validate>true</Validate>
          <ValidationFunctions z:Id="i170">
            <anyType z:Ref="i152" />
            <anyType z:Ref="i158" />
            <anyType z:Ref="i164" />
          </ValidationFunctions>
          <ValidationTime>0001-01-01T00:00:00</ValidationTime>
        </d2p1:anyType>
      </ConcreteTestCases>
      <ValidationFunctions z:Ref="i170" />
      <RoadManager z:Id="i171" i:type="ExperimentContentManager">
        <Parent z:Ref="i84" />
        <Context>ectROAD</Context>
        <Content z:Ref="i92" />
        <IsUsed>true</IsUsed>
      </RoadManager>
      <ScenarioManager z:Id="i172" i:type="ExperimentContentManager">
        <Parent z:Ref="i84" />
        <Context>ectTRAFFICSCENARIO</Context>
        <Content z:Ref="i86" />
        <IsUsed>true</IsUsed>
      </ScenarioManager>
      <PlottingManager z:Id="i173" i:type="ExperimentContentManagerPlotting">
        <Parent z:Ref="i84" />
        <Context>ectLAYOUTCONFIGURATION</Context>
        <Content z:Ref="i95" />
        <IsUsed>true</IsUsed>
      </PlottingManager>
      <ParameterSetManager z:Id="i174" i:type="ExperimentContentManager">
        <Parent z:Ref="i84" />
        <Context>ectPARAMETERSET</Context>
        <Content i:nil="true" />
        <IsUsed>true</IsUsed>
      </ParameterSetManager>
    </d2p1:anyType>
  </LogicalTestCases>
  <ShowParSet>false</ShowParSet>
  <ShowPlotting>true</ShowPlotting>
  <ShowRoad>true</ShowRoad>
  <ShowScenario>true</ShowScenario>
  <Version>4</Version>
</Test>