<?xml version="1.0" encoding="utf-8"?>
<RoadNetwork xmlns:i="http://www.w3.org/2001/XMLSchema-instance" z:Id="i1" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Road">
  <PropertyReferenceList xmlns:d2p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
  <Name>NCAP_LSS</Name>
  <Author></Author>
  <CreationDate>2017-06-21T10:44:52.198383+02:00</CreationDate>
  <Description>Euro NCAP LSS road (Version 2.0.1) derived from Euro NCAP test protocol for lane support systems (LSS).</Description>
  <CountryCode>DE</CountryCode>
  <CreatedIn>Prior 5.3</CreatedIn>
  <FileVersion>17</FileVersion>
  <LastSavedIn>26.1</LastSavedIn>
  <OpenDriveExportConfigurationPath></OpenDriveExportConfigurationPath>
  <RegionID>0</RegionID>
  <UserSignals z:Id="i2">
    <UserSignal z:Id="i3">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>GPS method[0xy|1GPS|2GPS_UTM|3GPS_TMERC]</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i4">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>start coordinate latitude[deg]</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i5">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>start coordinate longitude[deg]</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i6">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>Road user signal 4</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i7">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>Road user signal 5</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i8">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>Road user signal 6</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i9">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>Road user signal 7</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i10">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>Road user signal 8</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i11">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>Road user signal 9</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i12">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>Road user signal 10</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
  </UserSignals>
  <Version>1403</Version>
  <Roads z:Id="i13">
    <Road z:Id="i14">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Road 1</Name>
      <Author></Author>
      <CreationDate>2017-06-21T10:44:52.225401+02:00</CreationDate>
      <Description></Description>
      <Objects />
      <PositionMarkers />
      <SurfaceCondition z:Id="i15" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList>
        <Shape z:Id="i16" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R1200_0_2_ms_Left</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:34:37.2733371</CreationDate>
          <Description></Description>
          <ID>1</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i17" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i18" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i19" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i20" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>0.10499999999999987</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i21" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i22" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>0.10499999999999987</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i23" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i24" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>0.1054166667391564</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i25" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i26" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>0.10666666782421086</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i27" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i28" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>0.10875000585960148</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i29" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i30" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>0.11166668518543699</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i31" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i32" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>0.11541671187827884</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i33" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i34" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>0.12000009375136866</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i35" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i36" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>0.12541684035326395</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i37" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i38" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>0.13166696296965708</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i39" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i40" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>0.13875047462292056</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i41" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i42" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>0.14666739007142493</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i43" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i44" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>0.1554177258113577</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i45" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i46" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>2.514460659765814</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i47" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i48" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>2.514460659765814</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i49" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i50" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i51" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
        <Shape z:Id="i52" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R1200_0_3_ms_Left</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:34:46.8865732</CreationDate>
          <Description></Description>
          <ID>2</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i53" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i54" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i55" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i56" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>-0.17500000000000016</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i57" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i58" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>-0.17500000000000016</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i59" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i60" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>-0.1745833332610437</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i61" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i62" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>-0.17333333217598923</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i63" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i64" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>-0.1712499941405986</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i65" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i66" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>-0.1683333148147631</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i67" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i68" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>-0.16458328812192125</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i69" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i70" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>-0.15999990624883142</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i71" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i72" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>-0.15458315964693614</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i73" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i74" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>-0.148333037030543</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i75" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i76" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>-0.14124952537727953</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i77" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i78" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>-0.13333260992877516</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i79" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i80" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>-0.12458227418884238</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i81" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i82" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>512</X>
                <Y>-0.11499849992506828</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i83" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i84" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>513</X>
                <Y>-0.10458126716767768</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i85" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i86" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>514</X>
                <Y>-0.09333055420907843</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i87" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i88" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>515</X>
                <Y>-0.08124633760454347</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i89" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i90" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>516</X>
                <Y>-0.06832859217130138</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i91" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i92" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>517</X>
                <Y>-0.05457729098808162</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i93" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i94" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>518</X>
                <Y>-0.039992405395796626</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i95" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i96" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>3.4230150337412546</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i97" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i98" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>3.4230150337412546</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i99" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i100" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i101" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
        <Shape z:Id="i102" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R1200_0_4_ms_Left</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:34:56.2500168</CreationDate>
          <Description></Description>
          <ID>3</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i103" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i104" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i105" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i106" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>-0.17500000000000016</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i107" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i108" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>-0.17500000000000016</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i109" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i110" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>-0.1745833332610437</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i111" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i112" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>-0.17333333217598923</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i113" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i114" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>-0.1712499941405986</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i115" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i116" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>-0.1683333148147631</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i117" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i118" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>-0.16458328812192125</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i119" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i120" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>-0.15999990624883142</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i121" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i122" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>-0.15458315964693614</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i123" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i124" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>-0.148333037030543</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i125" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i126" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>-0.14124952537727953</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i127" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i128" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>-0.13333260992877516</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i129" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i130" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>-0.12458227418884238</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i131" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i132" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>512</X>
                <Y>-0.11499849992506828</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i133" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i134" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>513</X>
                <Y>-0.10458126716767768</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i135" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i136" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>514</X>
                <Y>-0.09333055420907843</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i137" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i138" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>515</X>
                <Y>-0.08124633760454347</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i139" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i140" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>516</X>
                <Y>-0.06832859217130138</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i141" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i142" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>517</X>
                <Y>-0.05457729098808162</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i143" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i144" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>518</X>
                <Y>-0.039992405395796626</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i145" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i146" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>519</X>
                <Y>-0.024573904995950246</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i147" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i148" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>520</X>
                <Y>-0.00832175765154719</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i149" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i150" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>521</X>
                <Y>0.008764070513816447</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i151" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i152" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>522</X>
                <Y>0.02668361511686268</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i153" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i154" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>523</X>
                <Y>0.04543691351349477</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i155" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i156" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>4.563427662558177</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i157" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i158" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>4.563427662558177</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i159" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i160" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i161" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
        <Shape z:Id="i162" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R1200_0_5_ms_Left</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:35:07.3721376</CreationDate>
          <Description></Description>
          <ID>4</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i163" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i164" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i165" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i166" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>-0.265</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i167" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i168" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>-0.265</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i169" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i170" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>-0.26458333326096184</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i171" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i172" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>-0.2633333321759074</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i173" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i174" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>-0.26124999414051675</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i175" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i176" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>-0.25833331481468125</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i177" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i178" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>-0.2545832881218394</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i179" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i180" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>-0.24999990624874957</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i181" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i182" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>-0.2445831596468543</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i183" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i184" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>-0.23833303703046116</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i185" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i186" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>-0.23124952537719767</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i187" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i188" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>-0.2233326099286933</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i189" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i190" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>-0.21458227418876052</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i191" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i192" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>512</X>
                <Y>-0.20499849992498642</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i193" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i194" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>513</X>
                <Y>-0.19458126716759583</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i195" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i196" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>514</X>
                <Y>-0.18333055420899658</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i197" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i198" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>515</X>
                <Y>-0.17124633760446162</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i199" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i200" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>516</X>
                <Y>-0.15832859217121953</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i201" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i202" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>517</X>
                <Y>-0.14457729098799976</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i203" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i204" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>518</X>
                <Y>-0.12999240539571477</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i205" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i206" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>519</X>
                <Y>-0.11457390499586839</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i207" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i208" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>520</X>
                <Y>-0.09832175765146534</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i209" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i210" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>521</X>
                <Y>-0.0812359294861017</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i211" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i212" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>522</X>
                <Y>-0.06331638488305547</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i213" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i214" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>523</X>
                <Y>-0.044563086486423376</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i215" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i216" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>524</X>
                <Y>-0.02497599519884719</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i217" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i218" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>525</X>
                <Y>-0.004555070182650556</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i219" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i220" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>526</X>
                <Y>0.016699731141070484</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i221" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i222" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>527</X>
                <Y>0.03878845309335699</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i223" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i224" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>528</X>
                <Y>0.061711141737614494</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i225" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i226" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>529</X>
                <Y>0.08546784487915826</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i227" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i228" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>530</X>
                <Y>0.11005861206771439</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i229" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i230" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>5.572497590594094</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i231" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i232" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>5.572497590594094</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i233" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i234" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i235" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
        <Shape z:Id="i236" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R1200_0_6_ms_Left</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:35:14.8758709</CreationDate>
          <Description></Description>
          <ID>5</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i237" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i238" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i239" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i240" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>-0.27500000000000024</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i241" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i242" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>-0.27500000000000024</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i243" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i244" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>-0.27458333326095274</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i245" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i246" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>-0.2733333321758983</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i247" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i248" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>-0.27124999414050766</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i249" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i250" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>-0.26833331481467215</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i251" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i252" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>-0.2645832881218303</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i253" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i254" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>-0.2599999062487405</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i255" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i256" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>-0.2545831596468452</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i257" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i258" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>-0.24833303703045206</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i259" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i260" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>-0.24124952537718858</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i261" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i262" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>-0.2333326099286842</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i263" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i264" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>-0.22458227418875143</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i265" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i266" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>512</X>
                <Y>-0.21499849992497733</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i267" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i268" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>513</X>
                <Y>-0.20458126716758673</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i269" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i270" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>514</X>
                <Y>-0.19333055420898748</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i271" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i272" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>515</X>
                <Y>-0.18124633760445252</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i273" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i274" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>516</X>
                <Y>-0.16832859217121043</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i275" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i276" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>517</X>
                <Y>-0.15457729098799067</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i277" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i278" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>518</X>
                <Y>-0.13999240539570568</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i279" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i280" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>519</X>
                <Y>-0.1245739049958593</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i281" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i282" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>520</X>
                <Y>-0.10832175765145624</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i283" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i284" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>521</X>
                <Y>-0.0912359294860926</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i285" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i286" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>522</X>
                <Y>-0.07331638488304637</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i287" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i288" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>523</X>
                <Y>-0.05456308648641428</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i289" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i290" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>524</X>
                <Y>-0.034975995198838095</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i291" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i292" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>525</X>
                <Y>-0.01455507018264146</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i293" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i294" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>526</X>
                <Y>0.006699731141079579</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i295" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i296" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>527</X>
                <Y>0.028788453093366084</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i297" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i298" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>528</X>
                <Y>0.05171114173762359</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i299" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i300" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>529</X>
                <Y>0.07546784487916736</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i301" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i302" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>530</X>
                <Y>0.10005861206772348</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i303" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i304" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>531</X>
                <Y>0.12548349459560992</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i305" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i306" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>532</X>
                <Y>0.1517425455000102</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i307" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i308" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>533</X>
                <Y>0.17883581956297345</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i309" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i310" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>534</X>
                <Y>0.20676337331164174</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i311" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i312" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>535</X>
                <Y>0.2355252650191596</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i313" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i314" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>6.633023392556197</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i315" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i316" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>6.633023392556197</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i317" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i318" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i319" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
        <Shape z:Id="i320" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R800_0_5_ms_Left</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:35:30.5668168</CreationDate>
          <Description></Description>
          <ID>6</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i321" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i322" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i323" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i324" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>-0.13500000000000012</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i325" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i326" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>-0.13500000000000012</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i327" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i328" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>-0.13437499975592349</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i329" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i330" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>-0.13249999609380214</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i331" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i332" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>-0.1293749802245293</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i333" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i334" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>-0.1249999374992149</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i335" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i336" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>-0.11937484740920812</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i337" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i338" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>-0.11249968358484697</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i339" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i340" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>-0.10437441379591295</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i341" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i342" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>-0.09499899995003946</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i343" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i344" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>-0.0843733980920297</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i345" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i346" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>-0.07249755840306082</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i347" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i348" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>-0.05937142519920602</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i349" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i350" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>512</X>
                <Y>-0.044994936930411344</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i351" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i352" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>513</X>
                <Y>-0.02936802617879042</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i353" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i354" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>514</X>
                <Y>-0.012490619657373858</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i355" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i356" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>515</X>
                <Y>0.0056373617921644525</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i357" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i358" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>516</X>
                <Y>0.02501600320075792</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i359" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i360" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>517</X>
                <Y>0.04564539547433466</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i361" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i362" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>518</X>
                <Y>0.0675256353956365</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i363" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i364" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>519</X>
                <Y>0.09065682562683375</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i365" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i366" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>5.80914476823513</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i367" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i368" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>5.80914476823513</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i369" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i370" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i371" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
        <Shape z:Id="i372" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R800_0_6_ms_Left</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:35:45.2996017</CreationDate>
          <Description></Description>
          <ID>7</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i373" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i374" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i375" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i376" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>-0.09500000000000008</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i377" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i378" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>-0.09500000000000008</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i379" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i380" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>-0.09437499975584618</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i381" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i382" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>-0.09249999609372483</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i383" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i384" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>-0.089374980224452</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i385" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i386" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>-0.08499993749913759</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i387" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i388" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>-0.07937484740913081</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i389" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i390" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>-0.07249968358476966</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i391" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i392" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>-0.06437441379583564</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i393" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i394" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>-0.05499899994996216</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i395" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i396" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>-0.0443733980919524</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i397" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i398" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>-0.03249755840298352</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i399" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i400" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>-0.01937142519912871</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i401" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i402" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>512</X>
                <Y>-0.004994936930334037</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i403" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i404" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>513</X>
                <Y>0.010631973821286889</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i405" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i406" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>514</X>
                <Y>0.02750938034270345</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i407" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i408" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>515</X>
                <Y>0.04563736179224176</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i409" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i410" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>516</X>
                <Y>0.06501600320083523</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i411" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i412" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>517</X>
                <Y>0.08564539547441197</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i413" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i414" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>518</X>
                <Y>0.1075256353957138</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i415" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i416" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>519</X>
                <Y>0.13065682562691106</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i417" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i418" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>520</X>
                <Y>0.15503907471187628</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i419" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i420" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>521</X>
                <Y>0.1806724970785717</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i421" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i422" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>522</X>
                <Y>0.20755721304200503</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i423" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i424" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>523</X>
                <Y>0.23569334880684434</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i425" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i426" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>6.9941209004169345</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i427" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i428" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>6.9941209004169345</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i429" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i430" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i431" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
        <Shape z:Id="i432" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R800_0_7_ms_Left</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:35:56.0374381</CreationDate>
          <Description></Description>
          <ID>8</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i433" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i434" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i435" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i436" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>-0.15500000000000014</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i437" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i438" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>-0.15500000000000014</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i439" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i440" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>-0.1543749997559053</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i441" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i442" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>-0.15249999609378395</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i443" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i444" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>-0.14937498022451112</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i445" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i446" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>-0.1449999374991967</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i447" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i448" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>-0.13937484740918993</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i449" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i450" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>-0.13249968358482878</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i451" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i452" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>-0.12437441379589476</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i453" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i454" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>-0.11499899995002127</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i455" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i456" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>-0.10437339809201152</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i457" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i458" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>-0.09249755840304263</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i459" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i460" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>-0.07937142519918783</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i461" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i462" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>512</X>
                <Y>-0.06499493693039315</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i463" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i464" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>513</X>
                <Y>-0.04936802617877223</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i465" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i466" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>514</X>
                <Y>-0.03249061965735567</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i467" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i468" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>515</X>
                <Y>-0.014362638207817358</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i469" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i470" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>516</X>
                <Y>0.005016003200776109</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i471" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i472" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>517</X>
                <Y>0.02564539547435285</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i473" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i474" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>518</X>
                <Y>0.047525635395654686</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i475" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i476" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>519</X>
                <Y>0.07065682562685194</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i477" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i478" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>520</X>
                <Y>0.09503907471181716</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i479" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i480" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>521</X>
                <Y>0.12067249707851258</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i481" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i482" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>522</X>
                <Y>0.1475572130419459</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i483" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i484" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>523</X>
                <Y>0.17569334880678522</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i485" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i486" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>524</X>
                <Y>0.2050810364705421</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i487" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i488" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>525</X>
                <Y>0.2357204140261865</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i489" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i490" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>526</X>
                <Y>0.2676116253661257</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i491" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i492" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>527</X>
                <Y>0.3007548202851603</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i493" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i494" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>8.058966731892077</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i495" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i496" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>8.058966731892077</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i497" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i498" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>-0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i499" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
        <Shape z:Id="i500" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R1200_0_2_ms_Right</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:36:12.4191848</CreationDate>
          <Description></Description>
          <ID>9</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i501" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i502" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i503" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i504" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>-0.10499999999999987</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i505" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i506" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>-0.10499999999999987</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i507" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i508" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>-0.1054166667391564</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i509" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i510" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>-0.10666666782421086</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i511" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i512" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>-0.10875000585960148</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i513" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i514" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>-0.11166668518543699</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i515" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i516" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>-0.11541671187827884</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i517" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i518" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>-0.12000009375136866</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i519" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i520" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>-0.12541684035326395</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i521" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i522" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>-0.13166696296965708</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i523" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i524" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>-0.13875047462292056</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i525" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i526" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>-0.14666739007142493</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i527" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i528" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>-0.1554177258113577</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i529" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i530" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>-2.514460659765814</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i531" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i532" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>-2.514460659765814</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i533" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i534" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i535" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
        <Shape z:Id="i536" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R1200_0_3_ms_Right</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:37:17.7563211</CreationDate>
          <Description></Description>
          <ID>10</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i537" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i538" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i539" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i540" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>0.17500000000000016</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i541" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i542" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>0.17500000000000016</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i543" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i544" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>0.1745833332610437</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i545" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i546" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>0.17333333217598923</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i547" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i548" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>0.1712499941405986</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i549" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i550" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>0.1683333148147631</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i551" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i552" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>0.16458328812192125</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i553" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i554" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>0.15999990624883142</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i555" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i556" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>0.15458315964693614</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i557" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i558" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>0.148333037030543</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i559" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i560" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>0.14124952537727953</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i561" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i562" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>0.13333260992877516</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i563" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i564" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>0.12458227418884238</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i565" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i566" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>512</X>
                <Y>0.11499849992506828</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i567" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i568" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>513</X>
                <Y>0.10458126716767768</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i569" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i570" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>514</X>
                <Y>0.09333055420907843</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i571" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i572" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>515</X>
                <Y>0.08124633760454347</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i573" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i574" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>516</X>
                <Y>0.06832859217130138</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i575" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i576" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>517</X>
                <Y>0.05457729098808162</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i577" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i578" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>518</X>
                <Y>0.039992405395796626</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i579" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i580" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>-3.4230150337412546</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i581" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i582" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>-3.4230150337412546</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i583" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i584" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i585" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
        <Shape z:Id="i586" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R1200_0_4_ms_Right</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:37:28.0134243</CreationDate>
          <Description></Description>
          <ID>11</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i587" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i588" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i589" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i590" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>0.17500000000000016</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i591" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i592" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>0.17500000000000016</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i593" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i594" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>0.1745833332610437</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i595" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i596" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>0.17333333217598923</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i597" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i598" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>0.1712499941405986</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i599" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i600" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>0.1683333148147631</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i601" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i602" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>0.16458328812192125</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i603" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i604" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>0.15999990624883142</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i605" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i606" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>0.15458315964693614</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i607" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i608" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>0.148333037030543</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i609" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i610" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>0.14124952537727953</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i611" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i612" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>0.13333260992877516</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i613" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i614" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>0.12458227418884238</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i615" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i616" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>512</X>
                <Y>0.11499849992506828</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i617" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i618" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>513</X>
                <Y>0.10458126716767768</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i619" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i620" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>514</X>
                <Y>0.09333055420907843</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i621" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i622" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>515</X>
                <Y>0.08124633760454347</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i623" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i624" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>516</X>
                <Y>0.06832859217130138</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i625" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i626" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>517</X>
                <Y>0.05457729098808162</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i627" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i628" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>518</X>
                <Y>0.039992405395796626</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i629" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i630" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>519</X>
                <Y>0.024573904995950246</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i631" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i632" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>520</X>
                <Y>0.00832175765154719</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i633" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i634" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>521</X>
                <Y>-0.008764070513816447</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i635" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i636" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>522</X>
                <Y>-0.02668361511686268</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i637" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i638" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>523</X>
                <Y>-0.04543691351349477</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i639" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i640" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>-4.563427662558177</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i641" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i642" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>-4.563427662558177</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i643" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i644" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i645" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
        <Shape z:Id="i646" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>R1200_0_5_ms_Right</Name>
          <Author></Author>
          <CreationDate>2018-06-21T17:37:35.9417837</CreationDate>
          <Description></Description>
          <ID>12</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i647" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i648" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>0.91</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i649" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i650" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>10</X>
                <Y>0.265</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i651" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i652" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>500</X>
                <Y>0.265</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i653" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i654" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>501</X>
                <Y>0.26458333326096184</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i655" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i656" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>502</X>
                <Y>0.2633333321759074</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i657" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i658" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>503</X>
                <Y>0.26124999414051675</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i659" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i660" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>504</X>
                <Y>0.25833331481468125</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i661" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i662" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>505</X>
                <Y>0.2545832881218394</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i663" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i664" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>506</X>
                <Y>0.24999990624874957</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i665" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i666" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>507</X>
                <Y>0.2445831596468543</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i667" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i668" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>508</X>
                <Y>0.23833303703046116</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i669" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i670" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>509</X>
                <Y>0.23124952537719767</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i671" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i672" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>510</X>
                <Y>0.2233326099286933</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i673" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i674" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>511</X>
                <Y>0.21458227418876052</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i675" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i676" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>512</X>
                <Y>0.20499849992498642</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i677" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i678" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>513</X>
                <Y>0.19458126716759583</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i679" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i680" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>514</X>
                <Y>0.18333055420899658</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i681" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i682" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>515</X>
                <Y>0.17124633760446162</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i683" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i684" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>516</X>
                <Y>0.15832859217121953</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i685" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i686" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>517</X>
                <Y>0.14457729098799976</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i687" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i688" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>518</X>
                <Y>0.12999240539571477</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i689" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i690" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>519</X>
                <Y>0.11457390499586839</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i691" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i692" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>520</X>
                <Y>0.09832175765146534</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i693" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i694" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>521</X>
                <Y>0.0812359294861017</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i695" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i696" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>522</X>
                <Y>0.06331638488305547</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i697" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i698" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>523</X>
                <Y>0.044563086486423376</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i699" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i700" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>524</X>
                <Y>0.02497599519884719</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i701" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i702" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>525</X>
                <Y>0.004555070182650556</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i703" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i704" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>526</X>
                <Y>-0.016699731141070484</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i705" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i706" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>527</X>
                <Y>-0.03878845309335699</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i707" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i708" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>528</X>
                <Y>-0.061711141737614494</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i709" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i710" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>529</X>
                <Y>-0.08546784487915826</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i711" i:type="RoadNodeOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i712" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>530</X>
                <Y>-0.11005861206771439</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i713" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i714" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>750</X>
                <Y>-5.572497590594094</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i715" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i716" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1000</X>
                <Y>-5.572497590594094</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i717" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i718" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1500</X>
                <Y>0.91</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i719" i:type="TrajectoryObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          </ShapeObject>
        </Shape>
      </ShapeList>
      <EnvironmentSections z:Id="i720">
        <EnvironmentSection z:Id="i721" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery Section 1</Name>
          <Length>1000</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i722" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i723" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i724" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Batter</Type>
        </EnvironmentSection>
        <EnvironmentSection z:Id="i725" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>500</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i726" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i727" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i728" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Batter</Type>
        </EnvironmentSection>
      </EnvironmentSections>
      <Heights z:Id="i729">
        <Height z:Id="i730">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <H>0</H>
          <TransitionLength>5</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i731">
        <LaneSection z:Id="i732">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Lane Section 1</Name>
          <Length>1500</Length>
          <CenterLane z:Id="i733">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>e5d01275-01d8-4503-80e4-94cc20703c10</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i734">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i735">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i736">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>500</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.8</Width>
            <LeftLineProperty z:Id="i737">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i738">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i739">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>SolidLine</Type>
                  <Width>0.25</Width>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0.05</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i740">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i741">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i742">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>SolidLine</Type>
                  <Width>0.25</Width>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0.05</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i743">
            <Lane z:Id="i744">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>4b821489-d467-4e0c-bf2b-47538858f42b</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i745">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i746">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i747">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>500</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.8</Width>
              <OuterLineProperty z:Id="i748">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.15</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.15</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i749">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>0</Length>
          <CenterLane z:Id="i750">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>ef2f472b-1ef1-4e99-96d7-38f45122f3fd</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i751">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i752">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i753">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>0</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.8</Width>
            <LeftLineProperty z:Id="i754">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i755">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i756">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>SolidLine</Type>
                  <Width>0.25</Width>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0.05</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i757">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i758">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i759">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>SolidLine</Type>
                  <Width>0.25</Width>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0.05</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i760">
            <Lane z:Id="i761">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>e0d0c403-ada7-4367-aa88-7d6984695f78</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i762">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i763">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i764">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>0</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.8</Width>
              <OuterLineProperty z:Id="i765">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.15</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.15</RightBorderWidth>
          <TransitionLength>0</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i766">
        <LateralSlope z:Id="i767">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i768" />
      <RoadClosed>false</RoadClosed>
      <RoadEndPosition z:Id="i769">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>1500</X>
        <Y>0</Y>
        <Tangent>0</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i770">
        <Segment z:Id="i771" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 1</Name>
          <Length>1500</Length>
          <AbsoluteStartPosition z:Id="i772">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
            <Tangent>0</Tangent>
          </AbsoluteStartPosition>
        </Segment>
      </Segments>
      <StartParameter z:Id="i773">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>0</X>
        <Y>0</Y>
        <Tangent>0</Tangent>
      </StartParameter>
      <HeightInterpolation>Linear</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i774" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>d2f0166b-f9ec-456d-80b1-bb3c579c72c8</ID>
          <Owner z:Ref="i14" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i775" i:type="RoadConnectionPointStartPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-180</AngleZ>
            <Z>0</Z>
            <X>0</X>
            <Y>0</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
        <RoadConnectionPoint z:Id="i776" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>89a34aee-83e8-446a-a521-801b602cddc5</ID>
          <Owner z:Ref="i14" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i777" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>0</AngleZ>
            <Z>0</Z>
            <X>1500</X>
            <Y>0</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
      </ConnectionPoints>
      <DirectLanes>0</DirectLanes>
      <OncomingLanes>0</OncomingLanes>
      <TrafficType>RightHandTraffic</TrafficType>
    </Road>
  </Roads>
  <Junctions z:Id="i778" />
  <Routes z:Id="i779">
    <Route z:Id="i780">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R1200_Lateral_Velocity_0_2_ms_Left</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:46:23.0883101+02:00</CreationDate>
      <Description></Description>
      <ID>1</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i781">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i782">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i16" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i783">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R1200_Lateral_Velocity_0_3_ms_Left</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:46:41.1383285+02:00</CreationDate>
      <Description></Description>
      <ID>2</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i784">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i785">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i52" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i786">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R1200_Lateral_Velocity_0_4_ms_Left</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:46:43.0973194+02:00</CreationDate>
      <Description></Description>
      <ID>3</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i787">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i788">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i102" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i789">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R1200_Lateral_Velocity_0_5_ms_Left</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:46:44.77521+02:00</CreationDate>
      <Description></Description>
      <ID>4</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i790">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i791">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i162" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i792">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R1200_Lateral_Velocity_0_6_ms_Left</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:54:01.7966426+02:00</CreationDate>
      <Description></Description>
      <ID>5</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i793">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i794">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i236" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i795">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R800_Lateral_Velocity_0_5_ms_Left</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:54:04.7800722+02:00</CreationDate>
      <Description></Description>
      <ID>6</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i796">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i797">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i320" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i798">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R800_Lateral_Velocity_0_6_ms_Left</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:54:07.6543856+02:00</CreationDate>
      <Description></Description>
      <ID>7</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i799">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i800">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i372" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i801">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R800_Lateral_Velocity_0_7_ms_Left</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:54:13.2499152+02:00</CreationDate>
      <Description></Description>
      <ID>8</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i802">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i803">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i432" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i804">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R1200_Lateral_Velocity_0_2_ms_Right</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:54:24.5300337+02:00</CreationDate>
      <Description></Description>
      <ID>9</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i805">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i806">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i500" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i807">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R1200_Lateral_Velocity_0_3_ms_Right</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:54:28.2767504+02:00</CreationDate>
      <Description></Description>
      <ID>10</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i808">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i809">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i536" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i810">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R1200_Lateral_Velocity_0_4_ms_Right</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:54:30.968081+02:00</CreationDate>
      <Description></Description>
      <ID>11</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i811">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i812">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i586" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i813">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>R1200_Lateral_Velocity_0_5_ms_Right</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:54:33.7775549+02:00</CreationDate>
      <Description></Description>
      <ID>12</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i814">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path z:Id="i815">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Trajectory z:Ref="i646" />
          </Path>
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i816">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Straight_Forward</Name>
      <Author></Author>
      <CreationDate>2018-06-21T17:59:35.8118002+02:00</CreationDate>
      <Description></Description>
      <ID>13</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i817">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i776" />
          <Path i:nil="true" />
          <Start z:Ref="i774" />
        </RouteSection>
      </Sections>
    </Route>
  </Routes>
  <ObjectList />
  <AliasList z:Id="i818">
    <AliasType xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">Road</AliasType>
    <AliasVariableList xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common" />
    <IsPlain xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">false</IsPlain>
    <Source xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">NCAP_LSS.rd</Source>
  </AliasList>
</RoadNetwork>