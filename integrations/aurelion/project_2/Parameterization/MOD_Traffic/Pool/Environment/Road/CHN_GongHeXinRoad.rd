<?xml version="1.0" encoding="utf-8"?>
<RoadNetwork xmlns:i="http://www.w3.org/2001/XMLSchema-instance" z:Id="i1" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Road">
  <PropertyReferenceList xmlns:d2p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
  <Name>CHN_GongHeXinRoad</Name>
  <Author>dSPACE</Author>
  <CreationDate>2019-02-19T10:26:31</CreationDate>
  <Description></Description>
  <CountryCode>DE</CountryCode>
  <CreatedIn>Prior 5.3</CreatedIn>
  <FileVersion>17</FileVersion>
  <LastSavedIn>26.1</LastSavedIn>
  <OpenDriveExportConfigurationPath></OpenDriveExportConfigurationPath>
  <RegionID>0</RegionID>
  <UserSignals z:Id="i2">
    <UserSignal z:Id="i3">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>GPS method[0xy|1GPS]</Alias>
      <Comment></Comment>
      <Value>1</Value>
    </UserSignal>
    <UserSignal z:Id="i4">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>start coordinate latitude[deg]</Alias>
      <Comment></Comment>
      <Value>31.2839646</Value>
    </UserSignal>
    <UserSignal z:Id="i5">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>start coordinate longitude[deg]</Alias>
      <Comment></Comment>
      <Value>121.4782863</Value>
    </UserSignal>
    <UserSignal z:Id="i6">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>UTM x offset</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i7">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>UTM y offset</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i8">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>UTM Zone</Alias>
      <Comment></Comment>
      <Value>0</Value>
    </UserSignal>
    <UserSignal z:Id="i9">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Alias>UTM used</Alias>
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
  <Version>125</Version>
  <Roads z:Id="i13">
    <Road z:Id="i14">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Ramp_down_road</Name>
      <Author></Author>
      <CreationDate>2019-02-19T03:30:22.7478278+01:00</CreationDate>
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
          <Name>RoadShape 1</Name>
          <Author></Author>
          <CreationDate>2019-02-27T11:02:41.6047725+01:00</CreationDate>
          <Description></Description>
          <ID>10</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i17" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i18" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>2.2</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i19" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i20" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>355.32</X>
                <Y>2.2</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i21" i:type="ContinuousObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <GenerateLastObject>true</GenerateLastObject>
            <InitialOffset>0</InitialOffset>
            <ColorID>0</ColorID>
            <EndTerminal>0</EndTerminal>
            <FlipFront>false</FlipFront>
            <GeometryType>ConcreteBarrier</GeometryType>
            <Height>0.54</Height>
            <Interval>5</Interval>
            <StartTerminal>0</StartTerminal>
            <TypeID>0</TypeID>
            <Width>0.239</Width>
          </ShapeObject>
        </Shape>
        <Shape z:Id="i22" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>RoadShape 2</Name>
          <Author></Author>
          <CreationDate>2019-02-27T11:02:53.707358+01:00</CreationDate>
          <Description></Description>
          <ID>11</ID>
          <Owner z:Ref="i14" />
          <Nodes>
            <Node z:Id="i23" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i24" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>-9.2</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i25" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i26" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>355.32</X>
                <Y>-9.2</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i27" i:type="ContinuousObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <GenerateLastObject>true</GenerateLastObject>
            <InitialOffset>0</InitialOffset>
            <ColorID>0</ColorID>
            <EndTerminal>0</EndTerminal>
            <FlipFront>false</FlipFront>
            <GeometryType>ConcreteBarrier</GeometryType>
            <Height>0.54</Height>
            <Interval>5</Interval>
            <StartTerminal>0</StartTerminal>
            <TypeID>0</TypeID>
            <Width>0.239</Width>
          </ShapeObject>
        </Shape>
      </ShapeList>
      <EnvironmentSections z:Id="i28">
        <EnvironmentSection z:Id="i29" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery Section 1</Name>
          <Length>100</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i30" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i31" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i32" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
        <EnvironmentSection z:Id="i33" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>255.3222470837752</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i34" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i35" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i36" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
      </EnvironmentSections>
      <Heights z:Id="i37">
        <Height z:Id="i38">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <H>13</H>
          <TransitionLength>10</TransitionLength>
        </Height>
        <Height z:Id="i39">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>250</S>
          <H>0</H>
          <TransitionLength>5</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i40">
        <LaneSection z:Id="i41">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>LaneSection 1</Name>
          <Length>5</Length>
          <CenterLane z:Id="i42">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>8fd3edf6-3047-4546-8983-73ef73de6d23</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>false</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i43">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i44">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i45">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>5</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i46">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i47">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i48">
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
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i49">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i50">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i51" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i52">
            <Lane z:Id="i53">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>83b45c04-f220-4064-9140-1627e2220edb</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i54">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i55">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i56">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i57">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i58">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i59" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Dash</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i60">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-2</Name>
              <ID>40dc592d-a644-4014-80fd-4825f26eb161</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-2</LaneIndex>
              <OpenDriveProperties z:Id="i61">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i62">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i63">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i64">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i65">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i66">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i67">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>LaneSection 1</Name>
          <Length>5.1</Length>
          <CenterLane z:Id="i68">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>a1f52248-48be-41e1-a3a3-456674a692d2</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>false</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i69">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i70">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i71">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>5.1</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i72">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i73">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i74">
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
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i75">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i76">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i77" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i78">
            <Lane z:Id="i79">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>771bf7a9-081e-4909-82b6-5eb28519d086</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i80">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i81">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i82">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5.1</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i83">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i84">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i85" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Dash</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i86">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-2</Name>
              <ID>7e4619d1-d3f7-4418-8682-996c7b44d5f9</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-2</LaneIndex>
              <OpenDriveProperties z:Id="i87">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i88">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i89">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5.1</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i90">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i91">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i92">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i93">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>LaneSection 1</Name>
          <Length>4.9</Length>
          <CenterLane z:Id="i94">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>802c2376-4f8d-4168-a8e1-5d34557b8fc5</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>false</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i95">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i96">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i97">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>4.9</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i98">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i99">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i100">
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
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i101">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i102">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i103" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>true</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i104">
            <Lane z:Id="i105">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>1c293324-a748-4ca7-952b-9ba8d764d13e</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i106">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i107">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i108">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>4.9</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i109">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i110">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i111" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Dash</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i112">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-2</Name>
              <ID>0dc813c9-75af-4196-a119-34f39cba7066</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-2</LaneIndex>
              <OpenDriveProperties z:Id="i113">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i114">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i115">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>4.9</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i116">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i117">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i118">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>4.9</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i119">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>340.3222470837752</Length>
          <CenterLane z:Id="i120">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>97a3789f-b442-412e-bd7b-aee6776076ec</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>false</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i121">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i122">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i123">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>340.3222470837752</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i124">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i125">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i126">
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
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i127">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i128">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i129" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>-3</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>true</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i130">
            <Lane z:Id="i131">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>9830c6d7-0571-4828-bad2-8c6db96403c4</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i132">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i133">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i134">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>340.3222470837752</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i135">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i136">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i137" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Dash</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i138">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-2</Name>
              <ID>4e9c9d4d-c3eb-4f1c-825c-c92350001400</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-2</LaneIndex>
              <OpenDriveProperties z:Id="i139">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i140">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i141">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>340.3222470837752</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i142">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i143">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i144">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>4.9</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i145">
        <LateralSlope z:Id="i146">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i147" />
      <RoadClosed>false</RoadClosed>
      <RoadEndPosition z:Id="i148">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>966.5862757762108</X>
        <Y>452.0217651861899</Y>
        <Tangent>28.671545945459805</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i149">
        <Segment z:Id="i150" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment1</Name>
          <Length>355.3222470837752</Length>
          <AbsoluteStartPosition z:Id="i151">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>646.5890502392936</X>
            <Y>297.7388370240096</Y>
            <Tangent>24.99550970531137</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i152">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i153">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>355.24842895306546</X>
            <Y>0</Y>
          </B>
          <C z:Id="i154">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0.6408272284922418</X>
            <Y>-8.919767566477683</Y>
          </C>
          <D z:Id="i155">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-0.6708568322499104</X>
            <Y>13.538754180104593</Y>
          </D>
          <RelativeEndVector z:Id="i156">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>355.21839934930784</X>
            <Y>4.618986613626911</Y>
            <Tangent>3.6760362401484343</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
      </Segments>
      <StartParameter z:Id="i157">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>646.5890502392936</X>
        <Y>297.7388370240096</Y>
        <Tangent>24.99550970531137</Tangent>
      </StartParameter>
      <HeightInterpolation>Smooth</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i158" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>e1f17c4f-e4eb-4af2-a2a5-984cd7087d7f</ID>
          <CounterPartID>b1e1d024-c3f4-405f-9b8b-5ee59e6f670f</CounterPartID>
          <Owner z:Ref="i14" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i159" i:type="RoadConnectionPointStartPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-1.2587264598493713</AngleX>
            <AngleY>-2.698337772888281</AngleY>
            <AngleZ>-155.00449029468862</AngleZ>
            <Z>13</Z>
            <X>646.5890502392936</X>
            <Y>297.7388370240096</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
        <RoadConnectionPoint z:Id="i160" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>eaf90067-b5e4-4c6c-98ef-1321cab1b122</ID>
          <Owner z:Ref="i14" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i161" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>28.671545945459805</AngleZ>
            <Z>0</Z>
            <X>966.5862757762108</X>
            <Y>452.0217651861899</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
      </ConnectionPoints>
      <DirectLanes>0</DirectLanes>
      <OncomingLanes>0</OncomingLanes>
      <TrafficType>RightHandTraffic</TrafficType>
    </Road>
    <Road z:Id="i162">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>277235</Name>
      <Author></Author>
      <CreationDate>2019-02-19T03:30:22.7979608+01:00</CreationDate>
      <Description></Description>
      <Objects />
      <PositionMarkers />
      <SurfaceCondition z:Id="i163" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <EnvironmentSections z:Id="i164">
        <EnvironmentSection z:Id="i165" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery Section 1</Name>
          <Length>100</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i166" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i167" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i168" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
        <EnvironmentSection z:Id="i169" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>253.0973008876212</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i170" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i171" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i172" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
      </EnvironmentSections>
      <Heights z:Id="i173">
        <Height z:Id="i174">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <H>13</H>
          <TransitionLength>10</TransitionLength>
        </Height>
        <Height z:Id="i175">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>220</S>
          <H>20</H>
          <TransitionLength>5</TransitionLength>
        </Height>
        <Height z:Id="i176">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>300</S>
          <H>20</H>
          <TransitionLength>5</TransitionLength>
        </Height>
        <Height z:Id="i177">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>347</S>
          <H>17</H>
          <TransitionLength>5</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i178">
        <LaneSection z:Id="i179">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>LaneSection 1</Name>
          <Length>5</Length>
          <CenterLane z:Id="i180">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>63c8b47b-9632-449a-b721-d5c271924225</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>false</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i181">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i182">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i183">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>5</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i184">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i185">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i186">
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
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i187">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i188">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i189" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i190">
            <Lane z:Id="i191">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>a3a3a9b7-3d68-4af9-bc9f-864114a21ade</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i192">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i193">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i194">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i195">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i196">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i197">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i198">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>LaneSection 1</Name>
          <Length>5.1</Length>
          <CenterLane z:Id="i199">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>d4ce626a-3428-410c-8e62-0a5e044159e5</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>false</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i200">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i201">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i202">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>5.1</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i203">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i204">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i205">
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
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i206">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i207">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i208" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i209">
            <Lane z:Id="i210">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>b36b54c0-350d-47bd-a583-e81b28ac19b9</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i211">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i212">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i213">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5.1</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i214">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i215">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i216">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i217">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>LaneSection 1</Name>
          <Length>4.9</Length>
          <CenterLane z:Id="i218">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>71fd11c4-f2c4-49b3-8291-5f80dd6454af</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>false</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i219">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i220">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i221">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>4.9</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i222">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i223">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i224">
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
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i225">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i226">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i227" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>true</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i228">
            <Lane z:Id="i229">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>319934f1-32c7-4e59-81b7-fa455b793659</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i230">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i231">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i232">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>4.9</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i233">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i234">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i235">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>4.9</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i236">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>338.0973008876212</Length>
          <CenterLane z:Id="i237">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>9629e64c-6d93-4977-a4cb-df3554c06161</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>false</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i238">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i239">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i240">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>338.0973008876212</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i241">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i242">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i243">
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
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i244">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i245">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i246" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>-3</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>true</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i247">
            <Lane z:Id="i248">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>eb75ebbe-af52-40fe-9418-e9f238cc45e0</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i249">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i250">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i251">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>338.0973008876212</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i252">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i253">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i254">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>4.9</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i255">
        <LateralSlope z:Id="i256">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i257" />
      <RoadClosed>false</RoadClosed>
      <RoadEndPosition z:Id="i258">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>-664.5321501705184</X>
        <Y>-237.2801683220789</Y>
        <Tangent>-131.00056950418522</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i259">
        <Segment z:Id="i260" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment1</Name>
          <Length>68.85302475993471</Length>
          <AbsoluteStartPosition z:Id="i261">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-433.27874105679564</X>
            <Y>-374.385683240502</Y>
            <Tangent>100.03086244129331</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i262">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i263">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>68.797269126722</X>
            <Y>0</Y>
          </B>
          <C z:Id="i264">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-0.40671881891434225</X>
            <Y>-16.483067323362945</Y>
          </C>
          <D z:Id="i265">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0.2533529169134425</X>
            <Y>11.891903051662307</Y>
          </D>
          <RelativeEndVector z:Id="i266">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>68.6439032247211</X>
            <Y>-4.591164271700635</Y>
            <Tangent>2.2571731326709994</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i267" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment2</Name>
          <Length>87.6420183085057</Length>
          <AbsoluteStartPosition z:Id="i268">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-440.7140573394678</X>
            <Y>-305.9913829584518</Y>
            <Tangent>102.28803557396431</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i269">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i270">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>86.0467922702919</X>
            <Y>0</Y>
          </B>
          <C z:Id="i271">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>6.182577196046211</X>
            <Y>26.36642811804748</Y>
          </C>
          <D z:Id="i272">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-10.449220621723839</X>
            <Y>0.3928266353925238</Y>
          </D>
          <RelativeEndVector z:Id="i273">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>81.78014884461427</X>
            <Y>26.759254753439997</Y>
            <Tangent>38.7949490841999</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i274" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment3</Name>
          <Length>56.92987738383691</Length>
          <AbsoluteStartPosition z:Id="i275">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-484.2652296768114</X>
            <Y>-231.77988891575134</Y>
            <Tangent>141.0829846581642</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i276">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i277">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>56.549322806562664</X>
            <Y>0</Y>
          </B>
          <C z:Id="i278">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>1.7131479499486915</X>
            <Y>8.62298519510389</Y>
          </C>
          <D z:Id="i279">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-2.653548062355803</X>
            <Y>1.6470501834261313</Y>
          </D>
          <RelativeEndVector z:Id="i280">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>55.60892269415557</X>
            <Y>10.27003537853002</Y>
            <Tangent>23.100796052665686</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i281" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment4</Name>
          <Length>19.842542219987436</Length>
          <AbsoluteStartPosition z:Id="i282">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-533.9836965473863</X>
            <Y>-204.8373581897715</Y>
            <Tangent>164.1837807108299</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i283">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i284">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>19.78534559054934</X>
            <Y>0</Y>
          </B>
          <C z:Id="i285">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-0.7946726440176555</X>
            <Y>7.8989884523232226</Y>
          </C>
          <D z:Id="i286">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0.3751356288206402</X>
            <Y>-3.8461674150356666</Y>
          </D>
          <RelativeEndVector z:Id="i287">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>19.365808575352325</X>
            <Y>4.052821037287555</Y>
            <Tangent>12.43220822807109</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i288" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment5</Name>
          <Length>55.83500813505873</Length>
          <AbsoluteStartPosition z:Id="i289">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-553.7209396063585</X>
            <Y>-203.45854109946296</Y>
            <Tangent>176.61598893890098</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i290">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i291">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>55.564244205833255</X>
            <Y>0</Y>
          </B>
          <C z:Id="i292">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>2.011920884155714</X>
            <Y>0.44718397169278745</Y>
          </C>
          <D z:Id="i293">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-2.3595485483455647</X>
            <Y>5.758498251768849</Y>
          </D>
          <RelativeEndVector z:Id="i294">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>55.2166165416434</X>
            <Y>6.205682223461636</Y>
            <Tangent>19.087175686540263</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i295" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment6</Name>
          <Length>59.44812875925467</Length>
          <AbsoluteStartPosition z:Id="i296">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-609.2075848777696</X>
            <Y>-206.39408716281534</Y>
            <Tangent>-164.29683537455875</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i297">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i298">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>59.11796273042204</X>
            <Y>0</Y>
          </B>
          <C z:Id="i299">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0.04631695478249753</X>
            <Y>15.673138627839734</Y>
          </C>
          <D z:Id="i300">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-1.3339024470672527</X>
            <Y>-3.4019941869042185</Y>
          </D>
          <RelativeEndVector z:Id="i301">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>57.83037723813729</X>
            <Y>12.271144440935515</Y>
            <Tangent>20.952577073263285</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i302" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment7</Name>
          <Length>4.546701321043046</Length>
          <AbsoluteStartPosition z:Id="i303">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-661.5583176730311</X>
            <Y>-233.8592340438115</Y>
            <Tangent>-143.34425830129547</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i304">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i305">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>4.532821534026771</X>
            <Y>0</Y>
          </B>
          <C z:Id="i306">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-0.20957181346093812</X>
            <Y>1.9380108799812765</Y>
          </C>
          <D z:Id="i307">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0.10478590673046906</X>
            <Y>-0.9690054399906372</Y>
          </D>
          <RelativeEndVector z:Id="i308">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>4.4280356272963015</X>
            <Y>0.9690054399906393</Y>
            <Tangent>12.343688797110246</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
      </Segments>
      <StartParameter z:Id="i309">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>-433.27874105679564</X>
        <Y>-374.385683240502</Y>
        <Tangent>100.03086244129331</Tangent>
      </StartParameter>
      <HeightInterpolation>Smooth</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i310" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>df51576f-ebae-4187-b660-eaae1a2371e5</ID>
          <CounterPartID>b179e1f8-eaff-4f11-975a-2d1f91fe8159</CounterPartID>
          <Owner z:Ref="i162" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i311" i:type="RoadConnectionPointStartPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.7945934743233964</AngleX>
            <AngleY>-0.31753265268588043</AngleY>
            <AngleZ>-79.96913755870669</AngleZ>
            <Z>13</Z>
            <X>-433.27874105679564</X>
            <Y>-374.385683240502</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
        <RoadConnectionPoint z:Id="i312" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>06123839-4d64-4953-a7df-995e0aa161e6</ID>
          <Owner z:Ref="i162" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i313" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-131.00056950418522</AngleZ>
            <Z>17</Z>
            <X>-664.5321501705184</X>
            <Y>-237.2801683220789</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
      </ConnectionPoints>
      <DirectLanes>0</DirectLanes>
      <OncomingLanes>0</OncomingLanes>
      <TrafficType>RightHandTraffic</TrafficType>
    </Road>
    <Road z:Id="i314">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Highway</Name>
      <Author></Author>
      <CreationDate>2019-02-19T03:30:22.8220481+01:00</CreationDate>
      <Description></Description>
      <Objects />
      <PositionMarkers />
      <SurfaceCondition z:Id="i315" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList>
        <Shape z:Id="i316" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>T_Stone_block</Name>
          <Author></Author>
          <CreationDate>2019-02-27T10:56:45.9330816+01:00</CreationDate>
          <Description></Description>
          <ID>8</ID>
          <Owner z:Ref="i314" />
          <Nodes>
            <Node z:Id="i317" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i318" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>5.8</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i319" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i320" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1283</X>
                <Y>5.8</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i321" i:type="ContinuousObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <GenerateLastObject>true</GenerateLastObject>
            <InitialOffset>0</InitialOffset>
            <ColorID>0</ColorID>
            <EndTerminal>0</EndTerminal>
            <FlipFront>false</FlipFront>
            <GeometryType>ConcreteBarrier</GeometryType>
            <Height>0.54</Height>
            <Interval>5</Interval>
            <StartTerminal>0</StartTerminal>
            <TypeID>0</TypeID>
            <Width>0.239</Width>
          </ShapeObject>
        </Shape>
        <Shape z:Id="i322" i:type="RoadShape">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>T_noise_barrier</Name>
          <Author></Author>
          <CreationDate>2019-02-27T10:58:18.5936195+01:00</CreationDate>
          <Description></Description>
          <ID>9</ID>
          <Owner z:Ref="i314" />
          <Nodes>
            <Node z:Id="i323" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i324" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>0</X>
                <Y>-5.8</Y>
              </RelativePosition>
            </Node>
            <Node z:Id="i325" i:type="RoadNodeSmoothOffset">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <RelativePosition z:Id="i326" i:type="RoadMapPoint">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <X>1283</X>
                <Y>-5.8</Y>
              </RelativePosition>
            </Node>
          </Nodes>
          <Rotation>0</Rotation>
          <ShapeObject z:Id="i327" i:type="ContinuousObject">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <GenerateLastObject>true</GenerateLastObject>
            <InitialOffset>0</InitialOffset>
            <ColorID>0</ColorID>
            <EndTerminal>0</EndTerminal>
            <FlipFront>false</FlipFront>
            <GeometryType>GuardRail</GeometryType>
            <Height>0.75</Height>
            <Interval>5</Interval>
            <StartTerminal>0</StartTerminal>
            <TypeID>0</TypeID>
            <Width>0.15</Width>
          </ShapeObject>
        </Shape>
      </ShapeList>
      <EnvironmentSections z:Id="i328">
        <EnvironmentSection z:Id="i329" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery Section 1</Name>
          <Length>100</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i330" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i331" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i332" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
        <EnvironmentSection z:Id="i333" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>1181.2787289847558</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i334" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i335" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i336" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
      </EnvironmentSections>
      <Heights z:Id="i337">
        <Height z:Id="i338">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <H>13</H>
          <TransitionLength>10</TransitionLength>
        </Height>
        <Height z:Id="i339">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>185</S>
          <H>15</H>
          <TransitionLength>5</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i340">
        <LaneSection z:Id="i341">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>LaneSection 1</Name>
          <Length>5</Length>
          <CenterLane z:Id="i342">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>8b4814b3-57ce-42c1-9573-4b9e837357df</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i343">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i344">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i345">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>5</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i346">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i347">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i348" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
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
              <Type>Dash</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i349">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i350">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i351" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i352">
            <Lane z:Id="i353">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>3079807b-9cef-4d59-8175-545df5cf9035</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i354">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i355">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i356">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i357">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i358">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i359">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i360">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>8c968eb7-8839-4c66-8755-856f593933e0</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i361">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i362">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i363">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i364">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i365">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i366">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i367">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>LaneSection 1</Name>
          <Length>5.1</Length>
          <CenterLane z:Id="i368">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>8488328c-aa94-44d5-a4bb-f8b49f3113af</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i369">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i370">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i371">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>5.1</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i372">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i373">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i374" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
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
              <Type>Dash</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i375">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i376">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i377" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i378">
            <Lane z:Id="i379">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>e09cc505-2f21-40e5-835b-d8d52a1f7563</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i380">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i381">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i382">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5.1</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i383">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i384">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i385">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i386">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>e4d813cd-203c-42db-8fc2-1ac8ecaf5dc1</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i387">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i388">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i389">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5.1</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i390">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i391">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i392">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i393">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>LaneSection 1</Name>
          <Length>4.9</Length>
          <CenterLane z:Id="i394">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>3ddcf073-e573-49bf-b015-38de342660e3</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i395">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i396">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i397">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>4.9</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i398">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i399">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i400" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>true</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
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
            <RightLineProperty z:Id="i401">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i402">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i403" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>true</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i404">
            <Lane z:Id="i405">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>966e7ee9-670e-402d-bc62-44ced4566bdf</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i406">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i407">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i408">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>4.9</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i409">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i410">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i411">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i412">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>c3cf18d8-72db-4d24-b786-8e16e253f5eb</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i413">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i414">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i415">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>4.9</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i416">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i417">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i418">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>4.9</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i419">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>1266.2787289847558</Length>
          <CenterLane z:Id="i420">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>9ab80964-58cd-4610-8151-ce6d315aad26</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i421">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i422">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i423">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>500</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i424">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i425">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i426" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>-3</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>true</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
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
            <RightLineProperty z:Id="i427">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i428">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i429" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>-3</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>true</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i430">
            <Lane z:Id="i431">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>e604e6fb-fa8c-4dd2-9c82-ed2625ac3e72</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i432">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i433">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i434">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>500</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i435">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i436">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i437">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i438">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>5ab28b06-d233-4943-a234-62c9421cb15c</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i439">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i440">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i441">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>500</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i442">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i443">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i444">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>4.9</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i445">
        <LateralSlope z:Id="i446">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i447" />
      <RoadClosed>false</RoadClosed>
      <RoadEndPosition z:Id="i448">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>615.9188045644162</X>
        <Y>283.75272733131646</Y>
        <Tangent>32.30424697904331</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i449">
        <Segment z:Id="i450" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment1</Name>
          <Length>53.65105502674786</Length>
          <AbsoluteStartPosition z:Id="i451">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-421.71409656161075</X>
            <Y>-369.3509251625858</Y>
            <Tangent>96.52396530191632</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i452">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i453">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>53.49030608457721</X>
            <Y>0</Y>
          </B>
          <C z:Id="i454">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0.842649457904642</X>
            <Y>-4.288517059835717</Y>
          </C>
          <D z:Id="i455">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-1.1969201650487804</X>
            <Y>-1.8575865343074263</Y>
          </D>
          <RelativeEndVector z:Id="i456">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>53.136035377433075</X>
            <Y>-6.1461035941431446</Y>
            <Tangent>-15.339030591424887</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i457" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment2</Name>
          <Length>155.63572282878334</Length>
          <AbsoluteStartPosition z:Id="i458">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-421.6450445281854</X>
            <Y>-315.860663648564</Y>
            <Tangent>81.18493471049143</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i459">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i460">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>152.18503164730092</X>
            <Y>0</Y>
          </B>
          <C z:Id="i461">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>12.481649659082876</X>
            <Y>-54.9628830873486</Y>
          </C>
          <D z:Id="i462">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-21.997354235669434</X>
            <Y>1.993580933369799</Y>
          </D>
          <RelativeEndVector z:Id="i463">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>142.6693270707144</X>
            <Y>-52.96930215397881</Y>
            <Tangent>-43.07988503037586</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i464" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment3</Name>
          <Length>19.91382369185437</Length>
          <AbsoluteStartPosition z:Id="i465">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-347.4379520598364</X>
            <Y>-182.99384580120275</Y>
            <Tangent>38.10504968011557</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i466">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i467">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>19.90025642845883</X>
            <Y>0</Y>
          </B>
          <C z:Id="i468">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-0.20380676658086827</X>
            <Y>-4.022647196704332</Y>
          </C>
          <D z:Id="i469">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0.10190338329043414</X>
            <Y>2.0113235983521682</Y>
          </D>
          <RelativeEndVector z:Id="i470">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>19.798353045168398</X>
            <Y>-2.0113235983521642</Y>
            <Tangent>-5.800802701072257</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i471" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>ModifyAndConnect</Name>
          <Length>1052.0781274373703</Length>
          <AbsoluteStartPosition z:Id="i472">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-330.6178130892641</X>
            <Y>-172.3588502239093</Y>
            <Tangent>32.30424697904331</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i473">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i474">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>1050.6994526215315</X>
            <Y>0</Y>
          </B>
          <C z:Id="i475">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-20.738397595299148</X>
            <Y>-360.98318087544106</Y>
          </C>
          <D z:Id="i476">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>13.825598396866098</X>
            <Y>240.6554539169607</Y>
          </D>
          <RelativeEndVector z:Id="i477">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>1043.7866534230984</X>
            <Y>-120.32772695848035</Y>
            <Tangent>0</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
      </Segments>
      <StartParameter z:Id="i478">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>-421.71409656161075</X>
        <Y>-369.3509251625858</Y>
        <Tangent>96.52396530191632</Tangent>
      </StartParameter>
      <HeightInterpolation>Smooth</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i479" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>d652cb0a-ff57-4822-80b1-e3184a4b1291</ID>
          <CounterPartID>f2481acb-5719-4b54-95a7-62cda6d2ae39</CounterPartID>
          <Owner z:Ref="i314" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i480" i:type="RoadConnectionPointStartPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0.6153791043955041</AngleX>
            <AngleY>-0.07037701387809929</AngleY>
            <AngleZ>-83.47603469808368</AngleZ>
            <Z>13</Z>
            <X>-421.71409656161075</X>
            <Y>-369.3509251625858</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
        <RoadConnectionPoint z:Id="i481" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>5a2f9d20-26f3-4ab6-aa46-dc8d641083a5</ID>
          <CounterPartID>67a9a8a2-7706-4f3b-a257-24efe45e9aeb</CounterPartID>
          <Owner z:Ref="i314" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i482" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>32.30424697904331</AngleZ>
            <Z>15</Z>
            <X>615.9188045644162</X>
            <Y>283.75272733131646</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
      </ConnectionPoints>
      <DirectLanes>0</DirectLanes>
      <OncomingLanes>0</OncomingLanes>
      <TrafficType>RightHandTraffic</TrafficType>
    </Road>
    <Road z:Id="i483">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Elevated road</Name>
      <Author></Author>
      <CreationDate>2021-05-08T11:42:44.493861+02:00</CreationDate>
      <Description></Description>
      <Objects />
      <PositionMarkers />
      <SurfaceCondition z:Id="i484" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <EnvironmentSections z:Id="i485">
        <EnvironmentSection z:Id="i486" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery Section 1</Name>
          <Length>100</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i487" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i488" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i489" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
        <EnvironmentSection z:Id="i490" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>400</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i491" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i492" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i493" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
      </EnvironmentSections>
      <Heights z:Id="i494">
        <Height z:Id="i495">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <H>13</H>
          <TransitionLength>5</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i496">
        <LaneSection z:Id="i497">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Lane Section 1</Name>
          <Length>100</Length>
          <CenterLane z:Id="i498">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>26a05097-6f73-4355-abda-e53ee2c31d8e</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>false</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i499">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i500">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i501">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>100</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i502">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i503">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i504">
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
              <Type>Solid</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i505">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i506">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i507">
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
              <Type>Solid</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i508">
            <Lane z:Id="i509">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>f89546a9-f4c2-4834-a84d-97d4d5bd8062</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i510">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i511">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i512">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i513">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i514">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i515">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i516">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>7dea3acd-5d21-4b62-b007-ef125c65c86a</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>2</LaneIndex>
              <OpenDriveProperties z:Id="i517">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i518">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i519">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i520">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i521">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i522">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i523">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>400</Length>
          <CenterLane z:Id="i524">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>1aed4689-502b-4e24-b34a-712d3cb934f4</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>false</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i525">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i526">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i527">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>400</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i528">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i529">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i530">
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
              <Type>Solid</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i531">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i532">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i533">
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
              <Type>Solid</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i534">
            <Lane z:Id="i535">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>8e1d9475-23b4-4513-9bce-2d7e9fc65d4b</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i536">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i537">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i538">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>400</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i539">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i540">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i541">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i542">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>c5052e06-30f5-4646-b7e7-b1472928334e</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>2</LaneIndex>
              <OpenDriveProperties z:Id="i543">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i544">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i545">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>400</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i546">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i547">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i548">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i549">
        <LateralSlope z:Id="i550">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i551" />
      <RoadClosed>false</RoadClosed>
      <RoadEndPosition z:Id="i552">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>1085.770563969439</X>
        <Y>537.0853393331797</Y>
        <Tangent>28</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i553">
        <Segment z:Id="i554" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 1</Name>
          <Length>500</Length>
          <AbsoluteStartPosition z:Id="i555">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>644.2967675399755</X>
            <Y>302.34955794023426</Y>
            <Tangent>28</Tangent>
          </AbsoluteStartPosition>
        </Segment>
      </Segments>
      <StartParameter z:Id="i556">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>644.2967675399755</X>
        <Y>302.34955794023426</Y>
        <Tangent>28</Tangent>
      </StartParameter>
      <HeightInterpolation>Smooth</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i557" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>1cbe3c6e-8054-43b2-8f8e-af6d54e37ec3</ID>
          <CounterPartID>576cb700-8509-44ec-8a2e-c06f7bac459d</CounterPartID>
          <Owner z:Ref="i483" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i558" i:type="RoadConnectionPointStartPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-152</AngleZ>
            <Z>13</Z>
            <X>644.2967675399755</X>
            <Y>302.34955794023426</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
        <RoadConnectionPoint z:Id="i559" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>957ef7c2-1511-47d9-a00b-2231a69c8965</ID>
          <Owner z:Ref="i483" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i560" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>28</AngleZ>
            <Z>13</Z>
            <X>1085.770563969439</X>
            <Y>537.0853393331797</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
      </ConnectionPoints>
      <DirectLanes>0</DirectLanes>
      <OncomingLanes>0</OncomingLanes>
      <TrafficType>RightHandTraffic</TrafficType>
    </Road>
    <Road z:Id="i561">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Ramp_up_road</Name>
      <Author></Author>
      <CreationDate>2019-02-19T03:30:22.8210225+01:00</CreationDate>
      <Description></Description>
      <Objects />
      <PositionMarkers />
      <SurfaceCondition z:Id="i562" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <EnvironmentSections z:Id="i563">
        <EnvironmentSection z:Id="i564" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery Section 1</Name>
          <Length>100</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i565" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i566" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i567" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
        <EnvironmentSection z:Id="i568" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>10</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i569" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i570" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i571" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
      </EnvironmentSections>
      <Heights z:Id="i572">
        <Height z:Id="i573">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <H>6</H>
          <TransitionLength>10</TransitionLength>
        </Height>
        <Height z:Id="i574">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>68</S>
          <H>6</H>
          <TransitionLength>5</TransitionLength>
        </Height>
        <Height z:Id="i575">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>200</S>
          <H>6</H>
          <TransitionLength>5</TransitionLength>
        </Height>
        <Height z:Id="i576">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>280</S>
          <H>12</H>
          <TransitionLength>5</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i577">
        <LaneSection z:Id="i578">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>LaneSection 1</Name>
          <Length>80</Length>
          <CenterLane z:Id="i579">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>77ea3d48-ec0e-4c5e-83b9-7c0194f59662</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i580">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i581">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i582">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>80</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i583">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector i:nil="true" />
              <Type>None</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i584">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector i:nil="true" />
              <Type>None</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i585">
            <Lane z:Id="i586">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>a60bee92-e52b-4c6e-af66-b89a6421903d</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i587">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i588">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i589">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>80</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i590">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i591">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>1d2239c2-f15f-430b-8bf2-392ff2cea523</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>2</LaneIndex>
              <OpenDriveProperties z:Id="i592">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i593">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i594">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>80</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i595">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i596">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>157d41ee-6d1e-4582-a0e2-d49802cdb42c</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>3</LaneIndex>
              <OpenDriveProperties z:Id="i597">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i598">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i599">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>80</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i600">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i601">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i602">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i603">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>5ba1ab5b-8ed4-4f46-a6be-ded46e7fd1d7</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i604">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i605">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i606">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>80</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i607">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i608">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>dc6496d2-3205-40bf-b64b-0201df13d318</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-2</LaneIndex>
              <OpenDriveProperties z:Id="i609">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i610">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i611">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>80</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i612">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i613">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>56547795-f345-4c37-a523-de776a6195a1</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-3</LaneIndex>
              <OpenDriveProperties z:Id="i614">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i615">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i616">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>80</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i617">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i618">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i619">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i620">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Lane section 2</Name>
          <Length>20</Length>
          <CenterLane z:Id="i621">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>4e884110-0361-4e09-b759-1939957063e1</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i622">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i623">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i624">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>20</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i625">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i626">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i627" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
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
              <Type>Dash</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i628">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i629">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i630" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i631">
            <Lane z:Id="i632">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>d323a205-0273-449c-8085-066fc9bbd2e4</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i633">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i634">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i635">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>20</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i636">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i637">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i638" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Dash</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i639">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>32f7ba6c-21e3-4ee5-be31-757004c1026a</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>2</LaneIndex>
              <OpenDriveProperties z:Id="i640">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i641">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i642">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>20</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i643">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i644">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i645" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Dash</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i646">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>486a0053-0c45-4391-b3c2-87867ea3a19c</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>3</LaneIndex>
              <OpenDriveProperties z:Id="i647">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i648">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i649">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>20</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i650">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i651">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i652">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i653">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>6c1a2e9b-ef07-4ec2-84d8-12f787baf9f4</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i654">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i655">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i656">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>20</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i657">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i658">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i659" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Dash</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i660">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>3d01b04a-568e-44a6-b231-e21e2d599fdb</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-2</LaneIndex>
              <OpenDriveProperties z:Id="i661">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i662">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i663">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>20</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i664">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i665">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i666" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Dash</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i667">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>3a6e419c-162a-4a56-99e3-8cdc855f910d</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-3</LaneIndex>
              <OpenDriveProperties z:Id="i668">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i669">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i670">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>20</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i671">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i672">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i673">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i674">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Lane section 3</Name>
          <Length>10</Length>
          <CenterLane z:Id="i675">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>609e1d9e-7b82-4ba3-9065-69ca0a278512</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i676">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i677">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i678">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>10</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i679">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector i:nil="true" />
              <Type>None</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i680">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector i:nil="true" />
              <Type>None</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i681">
            <Lane z:Id="i682">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>22e4b3fb-168c-4a7f-8373-6215a1fa99a5</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i683">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i684">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i685">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>10</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i686">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i687">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>462c442b-6700-491b-a242-ea137fd1df58</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>2</LaneIndex>
              <OpenDriveProperties z:Id="i688">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i689">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i690">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>10</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i691">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i692">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>87a65b60-666e-4942-9d08-4fdce5fc7de3</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>3</LaneIndex>
              <OpenDriveProperties z:Id="i693">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i694">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i695">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>10</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i696">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i697">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i698">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i699">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>4a294848-57fa-491f-9c17-8b802fcb3c93</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i700">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i701">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i702">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>10</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i703">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i704">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>b0f13ebd-bf69-4cca-871d-a3a3a08eed39</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-2</LaneIndex>
              <OpenDriveProperties z:Id="i705">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i706">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i707">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>10</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i708">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i709">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>d7ac40e3-9a6a-4ff2-9e37-b55ac74d260b</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-3</LaneIndex>
              <OpenDriveProperties z:Id="i710">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i711">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i712">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>10</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i713">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i714">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i715">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i716">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>0</Length>
          <CenterLane z:Id="i717">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>39698707-f677-413c-a06a-c67cfcc4d55c</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i718">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i719">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i720">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>0</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i721">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector i:nil="true" />
              <Type>None</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i722">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector i:nil="true" />
              <Type>None</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i723">
            <Lane z:Id="i724">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>1065e1c1-0317-490b-a179-de241a3a045e</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i725">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i726">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i727">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>0</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i728">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i729">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>0c53af71-46dd-4f4c-ab0d-73569cf7c58a</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>2</LaneIndex>
              <OpenDriveProperties z:Id="i730">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i731">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i732">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>0</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i733">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i734">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>3d002c9c-d6ac-475b-a84f-17ce5731194d</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>3</LaneIndex>
              <OpenDriveProperties z:Id="i735">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i736">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i737">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>0</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i738">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i739">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i740">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i741">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>3d15b313-0ade-492e-bfdd-270ccb86be01</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i742">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i743">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i744">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>0</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i745">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i746">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>89380227-bfba-49fa-9431-a5b68f1a0c10</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-2</LaneIndex>
              <OpenDriveProperties z:Id="i747">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i748">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i749">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>0</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i750">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector i:nil="true" />
                <Type>None</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i751">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>ede0c53a-50e4-4019-8c60-0f98fd27acb4</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>false</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-3</LaneIndex>
              <OpenDriveProperties z:Id="i752">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>None</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i753">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Other</LaneSubtype>
                <LaneType>Nondriving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i754">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>0</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>1.7</Width>
              <OuterLineProperty z:Id="i755">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i756">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i757">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>0</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i758">
        <LateralSlope z:Id="i759">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i760" />
      <RoadClosed>false</RoadClosed>
      <RoadEndPosition z:Id="i761">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>-313.25176033144174</X>
        <Y>-718.6668684303517</Y>
        <Tangent>110.56086662269865</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i762">
        <Segment z:Id="i763" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment1</Name>
          <Length>110</Length>
          <AbsoluteStartPosition z:Id="i764">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-274.6195148284739</X>
            <Y>-821.6598274489099</Y>
            <Tangent>110.56086662269865</Tangent>
          </AbsoluteStartPosition>
        </Segment>
      </Segments>
      <StartParameter z:Id="i765">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>-274.6195148284739</X>
        <Y>-821.6598274489099</Y>
        <Tangent>110.56086662269865</Tangent>
      </StartParameter>
      <HeightInterpolation>Smooth</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i766" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>b56a108e-8ba1-450b-8f41-cdd5b487c3c3</ID>
          <Owner z:Ref="i561" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i767" i:type="RoadConnectionPointStartPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>-0</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>6</Z>
            <X>-274.6195148284739</X>
            <Y>-821.6598274489099</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
        <RoadConnectionPoint z:Id="i768" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>a14f9cd5-219a-4bd0-b27d-9525e5db4637</ID>
          <CounterPartID>4ffa7a8a-4e49-495c-9e3e-227705d8c5dc</CounterPartID>
          <Owner z:Ref="i561" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i769" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>-0</AngleY>
            <AngleZ>110.56086662269865</AngleZ>
            <Z>6</Z>
            <X>-313.25176033144174</X>
            <Y>-718.6668684303517</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
      </ConnectionPoints>
      <DirectLanes>0</DirectLanes>
      <OncomingLanes>0</OncomingLanes>
      <TrafficType>RightHandTraffic</TrafficType>
    </Road>
    <Road z:Id="i770">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Gantry_road</Name>
      <Author></Author>
      <CreationDate>2021-08-06T04:23:43.8040559+02:00</CreationDate>
      <Description></Description>
      <Objects />
      <PositionMarkers />
      <SurfaceCondition z:Id="i771" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <EnvironmentSections z:Id="i772">
        <EnvironmentSection z:Id="i773" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery Section 1</Name>
          <Length>100</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i774" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i775" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i776" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
        <EnvironmentSection z:Id="i777" i:type="ESBridge">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>190</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i778" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i779" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i780" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Bridge</Type>
        </EnvironmentSection>
      </EnvironmentSections>
      <Heights z:Id="i781">
        <Height z:Id="i782">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <H>12</H>
          <TransitionLength>5</TransitionLength>
        </Height>
        <Height z:Id="i783">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>200</S>
          <H>6</H>
          <TransitionLength>5</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i784">
        <LaneSection z:Id="i785">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Lane Section 1</Name>
          <Length>100</Length>
          <CenterLane z:Id="i786">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>e24e42a9-995b-4ef2-8c73-e74f7e38eec9</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i787">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i788">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i789">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>100</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.75</Width>
            <LeftLineProperty z:Id="i790">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i791">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i792" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i793">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i794">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i795" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i796">
            <Lane z:Id="i797">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>4ba5d902-7f49-4e96-bdd6-01612eeb3129</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i798">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i799">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i800">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.75</Width>
              <OuterLineProperty z:Id="i801">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i802">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i803">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i804">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>a5989f32-ce24-4ab9-84a9-ef5a4c877dee</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>2</LaneIndex>
              <OpenDriveProperties z:Id="i805">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i806">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i807">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.75</Width>
              <OuterLineProperty z:Id="i808">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i809">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i810">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i811">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>52cc928f-b495-4e37-a430-83e0547a0fa2</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i812">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i813">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i814">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.75</Width>
              <OuterLineProperty z:Id="i815">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i816">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i817">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>4.9</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i818">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>190</Length>
          <CenterLane z:Id="i819">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>726ce4ca-002a-4706-af89-ac337d4f4cd8</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i820">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i821">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i822">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>190</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.75</Width>
            <LeftLineProperty z:Id="i823">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i824">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i825" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>8</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i826">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i827">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i828" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>8</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>8</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>4</LineLength>
                </Line>
                <LineDistance>0</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>0</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>0</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i829">
            <Lane z:Id="i830">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane-1</Name>
              <ID>24b9b635-3531-4561-b625-9b8ec97feb6a</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i831">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i832">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i833">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>190</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.75</Width>
              <OuterLineProperty z:Id="i834">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i835">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i836">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i837">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>056fd88f-af6f-4751-a018-4946d41eb75c</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>2</LaneIndex>
              <OpenDriveProperties z:Id="i838">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i839">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i840">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>190</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.75</Width>
              <OuterLineProperty z:Id="i841">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i842">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i843">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
            <Lane z:Id="i844">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>b14e66e0-0a06-4b18-818f-1eb3a6c40ea4</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>false</IsPreferredOncoming>
              <LaneIndex>-1</LaneIndex>
              <OpenDriveProperties z:Id="i845">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i846">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i847">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>190</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.75</Width>
              <OuterLineProperty z:Id="i848">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i849">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i850">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>4.9</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i851">
        <LateralSlope z:Id="i852">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i853" />
      <RoadClosed>false</RoadClosed>
      <RoadEndPosition z:Id="i854">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>-320.27580496834497</X>
        <Y>-699.9408758815229</Y>
        <Tangent>-69.43913337730135</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i855">
        <Segment z:Id="i856" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 1</Name>
          <Length>290</Length>
          <AbsoluteStartPosition z:Id="i857">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-422.12445220344205</X>
            <Y>-428.4139839235056</Y>
            <Tangent>-69.43913337730135</Tangent>
          </AbsoluteStartPosition>
        </Segment>
      </Segments>
      <StartParameter z:Id="i858">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>-422.12445220344205</X>
        <Y>-428.4139839235056</Y>
        <Tangent>-69.43913337730135</Tangent>
      </StartParameter>
      <HeightInterpolation>Smooth</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i859" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>7699f7c1-cfd1-4c33-9d0d-9d66289126f8</ID>
          <CounterPartID>4d3dd53a-4b96-46f8-b39d-1d995bf9be04</CounterPartID>
          <Owner z:Ref="i770" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i860" i:type="RoadConnectionPointStartPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.6089574482160052</AngleX>
            <AngleY>-0.6036498330744732</AngleY>
            <AngleZ>110.56086662269865</AngleZ>
            <Z>12</Z>
            <X>-422.12445220344205</X>
            <Y>-428.4139839235056</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
        <RoadConnectionPoint z:Id="i861" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>130c0866-ed45-463a-9b0d-3f19fa16a9a3</ID>
          <CounterPartID>667ae396-fdae-4ada-b3e2-5b699a533fe9</CounterPartID>
          <Owner z:Ref="i770" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i862" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>6</Z>
            <X>-320.27580496834497</X>
            <Y>-699.9408758815229</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
      </ConnectionPoints>
      <DirectLanes>0</DirectLanes>
      <OncomingLanes>0</OncomingLanes>
      <TrafficType>RightHandTraffic</TrafficType>
    </Road>
  </Roads>
  <Junctions z:Id="i863">
    <Junction z:Id="i864">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Ramp_down</Name>
      <Author></Author>
      <CreationDate>2019-02-19T03:31:00.7977296+01:00</CreationDate>
      <Description></Description>
      <Objects />
      <PositionMarkers />
      <SurfaceCondition z:Id="i865" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <AdaptJunctionAutomatically>true</AdaptJunctionAutomatically>
      <ConnectionPoints>
        <JunctionConnectionPoint z:Id="i866">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>67a9a8a2-7706-4f3b-a257-24efe45e9aeb</ID>
          <CounterPartID>5a2f9d20-26f3-4ab6-aa46-dc8d641083a5</CounterPartID>
          <Owner z:Ref="i864" />
          <AbsolutePosition z:Id="i867">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-147.6957530209567</AngleZ>
            <Z>15</Z>
            <X>615.9188045644162</X>
            <Y>283.75272733131646</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i868">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-1.2587264606490194</AngleX>
            <AngleY>-2.6983377746005095</AngleY>
            <AngleZ>24.995509705311378</AngleZ>
            <Z>13</Z>
            <X>650.3708479720922</X>
            <Y>289.627085924019</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i869" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>33.362853636259494</Length>
            <AbsoluteStartPosition z:Id="i870">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>618.8313663248446</X>
              <Y>279.1462662176534</Y>
              <Tangent>32.30424697904331</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i871">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i872">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>33.23531983138436</X>
              <Y>0</Y>
            </B>
            <C z:Id="i873">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-2.6589901384480896</X>
              <Y>-19.761591281313308</Y>
            </C>
            <D z:Id="i874">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.6826483708878328</X>
              <Y>11.765040864281888</Y>
            </D>
            <RelativeEndVector z:Id="i875">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>32.25897806382411</X>
              <Y>-7.996550417031417</Y>
              <Tangent>-7.308737273731936</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i876">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-147.6957530209567</AngleZ>
            <Z>15</Z>
            <X>618.8313663248446</X>
            <Y>279.1462662176534</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i877">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>LaneSection 1</Name>
            <Length>4.9</Length>
            <CenterLane z:Id="i878">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i879">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i880">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i881">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>4.9</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <LeftLineProperty z:Id="i882">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i883">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i884" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i885">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i886">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i887">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i888">
              <Lane z:Id="i889">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name>Lane-1</Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>1</LaneIndex>
                <OpenDriveProperties z:Id="i890">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i891">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i892">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>4.9</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i893">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i894">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i895">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>0</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>0</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0</Margin>
                  </LineConnector>
                  <Type>Custom</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i896">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-1</LaneIndex>
                <OpenDriveProperties z:Id="i897">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i898">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i899">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>4.9</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i900">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i901">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i902">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0.25</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>27</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0.05</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>0</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>4.9</TransitionLength>
          </LaneSection>
          <Line z:Id="i903">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i904">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i905">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>164</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineColor>
                <LineTexture>NoTexture</LineTexture>
                <Offset>0</Offset>
                <Type>SolidLine</Type>
                <Width>0.25</Width>
              </Line>
              <LineDistance>0</LineDistance>
              <LineDistanceColor xmlns:d8p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                <d8p1:knownColor>0</d8p1:knownColor>
                <d8p1:name i:nil="true" />
                <d8p1:state>0</d8p1:state>
                <d8p1:value>0</d8p1:value>
              </LineDistanceColor>
              <LineDistanceTexture>NoTexture</LineDistanceTexture>
              <Margin>0</Margin>
            </LineConnector>
            <Type>Custom</Type>
          </Line>
          <LineEndPosition z:Id="i906">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-1.2587264606490194</AngleX>
            <AngleY>-2.6983377746005095</AngleY>
            <AngleZ>24.995509705311378</AngleZ>
            <Z>13</Z>
            <X>650.2863385255492</X>
            <Y>289.8083541050244</Y>
          </LineEndPosition>
          <LinePath z:Id="i907" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>33.38787822429487</Length>
            <AbsoluteStartPosition z:Id="i908">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>618.724483324462</X>
              <Y>279.3153106621915</Y>
              <Tangent>32.30424697904331</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i909">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i910">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>33.260406859020506</X>
              <Y>0</Y>
            </B>
            <C z:Id="i911">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-2.6577178714625305</X>
              <Y>-19.763274780720206</Y>
            </C>
            <D z:Id="i912">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.6817322493195448</X>
              <Y>11.76509937457725</Y>
            </D>
            <RelativeEndVector z:Id="i913">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>32.28442123687752</X>
              <Y>-7.9981754061429555</Y>
              <Tangent>-7.308737273731936</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i914">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-147.6957530209567</AngleZ>
            <Z>15</Z>
            <X>618.724483324462</X>
            <Y>279.3153106621915</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i915" i:type="ESEmpty">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements />
            <SpeedLimit>200</SpeedLimit>
            <Type>Empty</Type>
          </Scenery>
        </JunctionConnectionPoint>
        <JunctionConnectionPoint z:Id="i916">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>b1e1d024-c3f4-405f-9b8b-5ee59e6f670f</ID>
          <CounterPartID>e1f17c4f-e4eb-4af2-a2a5-984cd7087d7f</CounterPartID>
          <Owner z:Ref="i864" />
          <AbsolutePosition z:Id="i917">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-1.2587264598493708</AngleX>
            <AngleY>-2.698337772888281</AngleY>
            <AngleZ>24.995509705311378</AngleZ>
            <Z>13</Z>
            <X>646.5890502392936</X>
            <Y>297.7388370240096</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i918">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>28</AngleZ>
            <Z>13</Z>
            <X>645.212237087408</X>
            <Y>300.62781013415935</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i919" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>1.5231853277674055</Length>
            <AbsoluteStartPosition z:Id="i920">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>645.7650831354995</X>
              <Y>299.50620178881206</Y>
              <Tangent>-155.00449029468862</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i921">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i922">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.2504575295639078</X>
              <Y>0</Y>
            </B>
            <C z:Id="i923">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-1.170772915695553</X>
              <Y>-3.6849475167027217</Y>
            </C>
            <D z:Id="i924">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-0.05255012881703136</X>
              <Y>2.434784426156504</Y>
            </D>
            <RelativeEndVector z:Id="i925">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0.0271344850513235</X>
              <Y>-1.2501630905462178</Y>
              <Tangent>-176.99550970531138</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i926">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-1.2587264606490194</AngleX>
            <AngleY>-2.6983377746005095</AngleY>
            <AngleZ>24.995509705311378</AngleZ>
            <Z>13</Z>
            <X>645.7650831354995</X>
            <Y>299.50620178881206</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i927">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>LaneSection 1</Name>
            <Length>5</Length>
            <CenterLane z:Id="i928">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i929">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i930">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i931">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <LeftLineProperty z:Id="i932">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i933">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i934">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i935">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i936">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i937" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i938">
              <Lane z:Id="i939">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name>Lane-1</Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-1</LaneIndex>
                <OpenDriveProperties z:Id="i940">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i941">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i942">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>5</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i943">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i944">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i945" i:type="DashLine">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>DashLine</Type>
                      <Width>0.25</Width>
                      <CutEndLine>false</CutEndLine>
                      <GapLength>8</GapLength>
                      <GapTexture>NoTexture</GapTexture>
                      <LineLength>4</LineLength>
                    </Line>
                    <LineDistance>0</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>0</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>0</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0</Margin>
                  </LineConnector>
                  <Type>Dash</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i946">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name>Lane-2</Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-2</LaneIndex>
                <OpenDriveProperties z:Id="i947">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i948">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i949">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>5</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i950">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i951">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i952">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>0</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>0</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>0</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>5</TransitionLength>
          </LaneSection>
          <Line z:Id="i953">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i954">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i955">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>164</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineColor>
                <LineTexture>NoTexture</LineTexture>
                <Offset>0</Offset>
                <Type>SolidLine</Type>
                <Width>0.25</Width>
              </Line>
              <LineDistance>0</LineDistance>
              <LineDistanceColor xmlns:d8p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                <d8p1:knownColor>0</d8p1:knownColor>
                <d8p1:name i:nil="true" />
                <d8p1:state>0</d8p1:state>
                <d8p1:value>0</d8p1:value>
              </LineDistanceColor>
              <LineDistanceTexture>NoTexture</LineDistanceTexture>
              <Margin>0</Margin>
            </LineConnector>
            <Type>Custom</Type>
          </Line>
          <LineEndPosition z:Id="i956">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>28</AngleZ>
            <Z>13</Z>
            <X>645.1183427748508</X>
            <Y>300.80439965273115</Y>
          </LineEndPosition>
          <LinePath z:Id="i957" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>2.0102558551531042</Length>
            <AbsoluteStartPosition z:Id="i958">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>645.8495925820424</X>
              <Y>299.32493360780666</Y>
              <Tangent>-155.00449029468862</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i959">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i960">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.6503169570122818</X>
              <Y>0</Y>
            </B>
            <C z:Id="i961">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-1.5397334464158068</X>
              <Y>-4.863164455119282</Y>
            </C>
            <D z:Id="i962">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-0.07296618172425795</X>
              <Y>3.2132762785537317</Y>
            </D>
            <RelativeEndVector z:Id="i963">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0.03761732887221702</X>
              <Y>-1.6498881765655504</Y>
              <Tangent>-176.99550970531138</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i964">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-1.2587264606490194</AngleX>
            <AngleY>-2.6983377746005095</AngleY>
            <AngleZ>24.995509705311378</AngleZ>
            <Z>13</Z>
            <X>645.8495925820424</X>
            <Y>299.32493360780666</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i965" i:type="ESEmpty">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements />
            <SpeedLimit>200</SpeedLimit>
            <Type>Empty</Type>
          </Scenery>
        </JunctionConnectionPoint>
        <JunctionConnectionPoint z:Id="i966">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>576cb700-8509-44ec-8a2e-c06f7bac459d</ID>
          <CounterPartID>1cbe3c6e-8054-43b2-8f8e-af6d54e37ec3</CounterPartID>
          <Owner z:Ref="i864" />
          <AbsolutePosition z:Id="i967">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>28</AngleZ>
            <Z>13</Z>
            <X>644.2967675399755</X>
            <Y>302.34955794023426</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i968">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-147.6957530209567</AngleZ>
            <Z>15</Z>
            <X>613.0062428039878</X>
            <Y>288.3591884449795</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i969" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>34.91893692648082</Length>
            <AbsoluteStartPosition z:Id="i970">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>640.0949970530418</X>
              <Y>310.25193889632163</Y>
              <Tangent>-152</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i971">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i972">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>34.8294864890423</X>
              <Y>0</Y>
            </B>
            <C z:Id="i973">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-1.8023030683552932</X>
              <Y>17.224209591114892</Y>
            </C>
            <D z:Id="i974">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.1687907051353221</X>
              <Y>-10.611458070267485</Y>
            </D>
            <RelativeEndVector z:Id="i975">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>34.19597412582234</X>
              <Y>6.612751520847409</Y>
              <Tangent>4.304246979043313</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i976">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>28</AngleZ>
            <Z>13</Z>
            <X>640.0949970530418</X>
            <Y>310.25193889632163</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i977">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Lane Section 1</Name>
            <Length>100</Length>
            <CenterLane z:Id="i978">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i979">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i980">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i981">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <LeftLineProperty z:Id="i982">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i983">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i984" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i985">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i986">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i987">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i988">
              <Lane z:Id="i989">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>1</LaneIndex>
                <OpenDriveProperties z:Id="i990">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i991">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i992">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i993">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i994">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i995">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0.25</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>27</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0.05</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i996">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>2</LaneIndex>
                <OpenDriveProperties z:Id="i997">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i998">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i999">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i1000">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1001">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1002">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0.25</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>27</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0.05</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>0</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>5</TransitionLength>
          </LaneSection>
          <Line z:Id="i1003">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i1004">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i1005">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>164</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineColor>
                <LineTexture>NoTexture</LineTexture>
                <Offset>0</Offset>
                <Type>SolidLine</Type>
                <Width>0.25</Width>
              </Line>
              <LineDistance>0</LineDistance>
              <LineDistanceColor xmlns:d8p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                <d8p1:knownColor>0</d8p1:knownColor>
                <d8p1:name i:nil="true" />
                <d8p1:state>0</d8p1:state>
                <d8p1:value>0</d8p1:value>
              </LineDistanceColor>
              <LineDistanceTexture>NoTexture</LineDistanceTexture>
              <Margin>0</Margin>
            </LineConnector>
            <Type>Custom</Type>
          </Line>
          <LineEndPosition z:Id="i1006">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-147.6957530209567</AngleZ>
            <Z>15</Z>
            <X>613.1131258043704</X>
            <Y>288.1901440004414</Y>
          </LineEndPosition>
          <LinePath z:Id="i1007" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>34.90412362737335</Length>
            <AbsoluteStartPosition z:Id="i1008">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>640.1888913655989</X>
              <Y>310.0753493777499</Y>
              <Tangent>-152</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i1009">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i1010">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>34.81464196474783</X>
              <Y>0</Y>
            </B>
            <C z:Id="i1011">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-1.8028429484111541</X>
              <Y>17.223631455726515</Y>
            </C>
            <D z:Id="i1012">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.1691645811378848</X>
              <Y>-10.611444020263122</Y>
            </D>
            <RelativeEndVector z:Id="i1013">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>34.18096359747455</X>
              <Y>6.612187435463396</Y>
              <Tangent>4.304246979043313</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i1014">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>28</AngleZ>
            <Z>13</Z>
            <X>640.1888913655989</X>
            <Y>310.0753493777499</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i1015" i:type="ESEmpty">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements />
            <SpeedLimit>200</SpeedLimit>
            <Type>Empty</Type>
          </Scenery>
        </JunctionConnectionPoint>
      </ConnectionPoints>
      <CubicHeightSplines>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.1599249194591166</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>-180</Phi>
          <Radius>12.8837415105929</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.1577265213208644</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>-175</Phi>
          <Radius>12.255041764315822</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.15747171153214232</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>-174.3881757752064</Phi>
          <Radius>12.188548471504765</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.15571812104289073</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>-170</Phi>
          <Radius>11.770256524953531</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.1538488863388175</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>-165</Phi>
          <Radius>11.405868450108605</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.15207884660476895</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>-160</Phi>
          <Radius>11.14564248337207</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.1503750951674361</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>-155</Phi>
          <Radius>10.978716687593352</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.14870913220526083</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>-150</Phi>
          <Radius>10.898436919890676</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.14799051927975423</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>-147.82784969156987</Phi>
          <Radius>10.889653577740717</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.38461348255881134</Gradient>
          <GradientAtReferencePoint>0.12775610468353718</GradientAtReferencePoint>
          <Height>0.6444758884122009</Height>
          <Phi>-147.61331987505758</Phi>
          <Radius>9.405228169545506</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.5522085080333985</Gradient>
          <GradientAtReferencePoint>0.1068408965327547</GradientAtReferencePoint>
          <Height>0.5584667927246726</Height>
          <Phi>-146.7491987492795</Phi>
          <Radius>7.881770269922137</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.5458943553037053</Gradient>
          <GradientAtReferencePoint>0.08501173974157934</GradientAtReferencePoint>
          <Height>0.4329400399271081</Height>
          <Phi>-144.71777396450915</Phi>
          <Radius>6.3077673773362966</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.41655016607798395</Gradient>
          <GradientAtReferencePoint>0.06197530860452502</GradientAtReferencePoint>
          <Height>0.2879035408997333</Height>
          <Phi>-140.19013633967404</Phi>
          <Radius>4.680069287937293</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.31611950481099177</Gradient>
          <GradientAtReferencePoint>0.04860376764176722</GradientAtReferencePoint>
          <Height>0.20831481966687396</Height>
          <Phi>-135.19013633967404</Phi>
          <Radius>3.7715330388414436</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.24740321624839237</Gradient>
          <GradientAtReferencePoint>0.039521951848714314</GradientAtReferencePoint>
          <Height>0.15940212811207022</Height>
          <Phi>-130.19013633967404</Phi>
          <Radius>3.1786558699668035</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.23111998815461976</Gradient>
          <GradientAtReferencePoint>0.03733491718915346</GradientAtReferencePoint>
          <Height>0.14825613813416003</Height>
          <Phi>-128.6982274592558</Phi>
          <Radius>3.040369117342705</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.19052716500225153</Gradient>
          <GradientAtReferencePoint>0.03152026660553424</GradientAtReferencePoint>
          <Height>0.12098753438609056</Height>
          <Phi>-123.6982274592558</Phi>
          <Radius>2.6930771018454864</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.15998099759006662</Gradient>
          <GradientAtReferencePoint>0.026866023913034165</GradientAtReferencePoint>
          <Height>0.10088523647610964</Height>
          <Phi>-118.6982274592558</Phi>
          <Radius>2.433614117202439</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.13597982686488413</Gradient>
          <GradientAtReferencePoint>0.023002974734185902</GradientAtReferencePoint>
          <Height>0.08528853950403237</Height>
          <Phi>-113.6982274592558</Phi>
          <Radius>2.2352700480410204</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.11643877568730622</Gradient>
          <GradientAtReferencePoint>0.019698912532008842</GradientAtReferencePoint>
          <Height>0.07269154592643357</Height>
          <Phi>-108.6982274592558</Phi>
          <Radius>2.0814677854374244</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.1002158581868574</Gradient>
          <GradientAtReferencePoint>0.0167996193340137</GradientAtReferencePoint>
          <Height>0.06227421569107603</Height>
          <Phi>-103.6982274592558</Phi>
          <Radius>1.9614350001332823</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.08610727887148592</Gradient>
          <GradientAtReferencePoint>0.014197761377683223</GradientAtReferencePoint>
          <Height>0.0532516952853061</Height>
          <Phi>-98.6982274592558</Phi>
          <Radius>1.8679323367953649</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.0734261413463468</Gradient>
          <GradientAtReferencePoint>0.01181537368811511</GradientAtReferencePoint>
          <Height>0.04517484317076971</Height>
          <Phi>-93.6982274592558</Phi>
          <Radius>1.7959852830690224</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.0668170279577093</Gradient>
          <GradientAtReferencePoint>0.010502680543198625</GradientAtReferencePoint>
          <Height>0.04095465965655862</Height>
          <Phi>-90.78094520155959</Phi>
          <Radius>1.76254322298002</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.056166835632380396</Gradient>
          <GradientAtReferencePoint>0.008378675160145845</GradientAtReferencePoint>
          <Height>0.034178032079387584</Height>
          <Phi>-85.78094520155959</Phi>
          <Radius>1.7235577713235508</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.04629717577172134</Gradient>
          <GradientAtReferencePoint>0.0063313534343972825</GradientAtReferencePoint>
          <Height>0.027889031500242478</Height>
          <Phi>-80.78094520155959</Phi>
          <Radius>1.6989095516281103</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.036575160600786284</Gradient>
          <GradientAtReferencePoint>0.00432672134618788</GradientAtReferencePoint>
          <Height>0.02171775794755051</Height>
          <Phi>-75.78094520155959</Phi>
          <Radius>1.6876190834220623</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.027287593859876877</Gradient>
          <GradientAtReferencePoint>0.0023334882220254274</GradientAtReferencePoint>
          <Height>0.015805816170757266</Height>
          <Phi>-70.78094520155959</Phi>
          <Radius>1.689249021393197</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.01782692004744783</Gradient>
          <GradientAtReferencePoint>0.0003210706433424332</GradientAtReferencePoint>
          <Height>0.009804446000885371</Height>
          <Phi>-65.78094520155959</Phi>
          <Radius>1.7038620663232809</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.008455359267905513</Gradient>
          <GradientAtReferencePoint>-0.0017423086520998027</GradientAtReferencePoint>
          <Height>0.0038415837981714855</Height>
          <Phi>-60.78094520155959</Phi>
          <Radius>1.7320269374062374</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.0013575156375654955</Gradient>
          <GradientAtReferencePoint>-0.003891682875844307</GradientAtReferencePoint>
          <Height>-0.0023872669897884082</Height>
          <Phi>-55.78094520155959</Phi>
          <Radius>1.7748734875166932</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.01144800703985941</Gradient>
          <GradientAtReferencePoint>-0.006167858576095122</GradientAtReferencePoint>
          <Height>-0.008812924122362186</Height>
          <Phi>-50.78094520155959</Phi>
          <Radius>1.8342071769315855</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.02230082374141344</Gradient>
          <GradientAtReferencePoint>-0.008620795979495584</GradientAtReferencePoint>
          <Height>-0.01571877098181068</Height>
          <Phi>-45.78094520155959</Phi>
          <Radius>1.9127054046635283</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.03395904797175269</Gradient>
          <GradientAtReferencePoint>-0.011314493644564562</GradientAtReferencePoint>
          <Height>-0.023159436453392152</Height>
          <Phi>-40.78094520155959</Phi>
          <Radius>2.014237943008255</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.04689140927425383</Gradient>
          <GradientAtReferencePoint>-0.014334475640556532</GradientAtReferencePoint>
          <Height>-0.03142447220444806</Height>
          <Phi>-35.78094520155959</Phi>
          <Radius>2.1443890903667917</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.061488610653092884</Gradient>
          <GradientAtReferencePoint>-0.017799889096057578</GradientAtReferencePoint>
          <Height>-0.04078412223412988</Height>
          <Phi>-30.78094520155959</Phi>
          <Radius>2.311327444847494</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.06862261397045906</Gradient>
          <GradientAtReferencePoint>-0.01950951718916644</GradientAtReferencePoint>
          <Height>-0.04536816269044835</Height>
          <Phi>-28.578738248989183</Phi>
          <Radius>2.3994827112522956</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.08776653050258856</Gradient>
          <GradientAtReferencePoint>-0.024077416103828103</GradientAtReferencePoint>
          <Height>-0.057683925661127865</Height>
          <Phi>-23.578738248989183</Phi>
          <Radius>2.6574155736942995</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.1117836855704495</Gradient>
          <GradientAtReferencePoint>-0.02979440022983654</GradientAtReferencePoint>
          <Height>-0.07317716268118499</Height>
          <Phi>-18.578738248989183</Phi>
          <Radius>3.003088471776572</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.14391678152887255</Gradient>
          <GradientAtReferencePoint>-0.03728664252705354</GradientAtReferencePoint>
          <Height>-0.09394511333272465</Height>
          <Phi>-13.578738248989183</Phi>
          <Radius>3.4826056752437573</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.19096928012556347</Gradient>
          <GradientAtReferencePoint>-0.04772066464243701</GradientAtReferencePoint>
          <Height>-0.12437999544109077</Height>
          <Phi>-8.578738248989183</Phi>
          <Radius>4.18223147169303</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.2246722506168231</Gradient>
          <GradientAtReferencePoint>-0.054722220530246175</GradientAtReferencePoint>
          <Height>-0.14618375146882323</Height>
          <Phi>-6.076387827050109</Phi>
          <Radius>4.665043502650771</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.3425378441596952</Gradient>
          <GradientAtReferencePoint>-0.07645181547161066</GradientAtReferencePoint>
          <Height>-0.22279963506568484</Height>
          <Phi>-1.0763878270501088</Phi>
          <Radius>6.214602449004778</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.4223816645384607</Gradient>
          <GradientAtReferencePoint>-0.08972006585612609</GradientAtReferencePoint>
          <Height>-0.27558040152573376</Height>
          <Phi>0.9062622396382788</Phi>
          <Radius>7.175909834838175</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5182355012724321</Gradient>
          <GradientAtReferencePoint>-0.10469530702079544</GradientAtReferencePoint>
          <Height>-0.3404151165008463</Height>
          <Phi>2.5490423659119266</Phi>
          <Radius>8.27097486330784</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.6780211508117823</Gradient>
          <GradientAtReferencePoint>-0.12871521733180669</GradientAtReferencePoint>
          <Height>-0.45362651211502336</Height>
          <Phi>4.440096427176137</Phi>
          <Radius>10.037112916087777</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.9392712013198883</Gradient>
          <GradientAtReferencePoint>-0.16922520047617917</GradientAtReferencePoint>
          <Height>-0.661906888350206</Height>
          <Phi>6.591807483892813</Phi>
          <Radius>13.021781023730101</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.1150577979237306</Gradient>
          <GradientAtReferencePoint>-0.20211709785083617</GradientAtReferencePoint>
          <Height>-0.8371967680342791</Height>
          <Phi>7.933154704579008</Phi>
          <Radius>15.436708040692464</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.2206929998396907</Gradient>
          <GradientAtReferencePoint>-0.23091688193716148</GradientAtReferencePoint>
          <Height>-0.9883801011777051</Height>
          <Phi>9.011453153761773</Phi>
          <Radius>17.538027533229933</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.261752423510311</Gradient>
          <GradientAtReferencePoint>-0.2570614060317773</GradientAtReferencePoint>
          <Height>-1.118918561080934</Height>
          <Phi>9.985559573684034</Phi>
          <Radius>19.431799048991746</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.2400097934273535</Gradient>
          <GradientAtReferencePoint>-0.28132381170651133</GradientAtReferencePoint>
          <Height>-1.230460194205501</Height>
          <Phi>10.920105591347673</Phi>
          <Radius>21.17597485633699</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.1549107839280521</Gradient>
          <GradientAtReferencePoint>-0.30419249380130686</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>11.84714218200648</Phi>
          <Radius>22.807744014675528</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.139943564556611</Gradient>
          <GradientAtReferencePoint>-0.3041972193323205</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>16</Phi>
          <Radius>22.486391941291057</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.1324639055105417</Gradient>
          <GradientAtReferencePoint>-0.30420277098282594</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>21</Phi>
          <Radius>22.263934934985777</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.134382820333686</Gradient>
          <GradientAtReferencePoint>-0.3042082551941365</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>26</Phi>
          <Radius>22.21323638764322</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.1440122453983825</Gradient>
          <GradientAtReferencePoint>-0.3042137562566256</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>31</Phi>
          <Radius>22.332344688045644</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.1549107839280541</Gradient>
          <GradientAtReferencePoint>-0.3042177851819182</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>34.60888659301012</Phi>
          <Radius>22.52615588084531</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.1559477011487334</Gradient>
          <GradientAtReferencePoint>-0.30421935950499635</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>36</Phi>
          <Radius>22.625861975571254</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.1549107839280566</Gradient>
          <GradientAtReferencePoint>-0.30422329559445416</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>39.418090253006646</Phi>
          <Radius>22.93254000907435</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.156799049700333</Gradient>
          <GradientAtReferencePoint>-0.30287130409532903</GradientAtReferencePoint>
          <Height>-1.3185578322059328</Height>
          <Phi>39.54202000441355</Phi>
          <Radius>22.843375656030567</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.127172489083753</Gradient>
          <GradientAtReferencePoint>-0.30173917975161146</GradientAtReferencePoint>
          <Height>-1.3145261300216562</Height>
          <Phi>39.77075621095003</Phi>
          <Radius>22.781749091232975</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-1.0012565866030543</Gradient>
          <GradientAtReferencePoint>-0.3006445546476536</GradientAtReferencePoint>
          <Height>-1.3120580114593516</Height>
          <Phi>40.18305869938259</Phi>
          <Radius>22.742820371429808</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.6560897086257944</Gradient>
          <GradientAtReferencePoint>-0.29982930540178043</GradientAtReferencePoint>
          <Height>-1.3148304385186986</Height>
          <Phi>40.89979603469731</Phi>
          <Radius>22.76015435122895</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5251263240183273</Gradient>
          <GradientAtReferencePoint>-0.29975817692596063</GradientAtReferencePoint>
          <Height>-1.3166970548018027</Height>
          <Phi>41.145447696572674</Phi>
          <Radius>22.782775141761462</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.4271426796048214</Gradient>
          <GradientAtReferencePoint>-0.29977220212836597</GradientAtReferencePoint>
          <Height>-1.3181937244341497</Height>
          <Phi>41.33381718567108</Phi>
          <Radius>22.8056594923494</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.14723523819931605</Gradient>
          <GradientAtReferencePoint>-0.30041572187357996</GradientAtReferencePoint>
          <Height>-1.3224296680210872</Height>
          <Phi>41.983144963857264</Phi>
          <Radius>22.932214506325618</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.06393759679974834</Gradient>
          <GradientAtReferencePoint>-0.3014263236619421</GradientAtReferencePoint>
          <Height>-1.323401199763117</Height>
          <Phi>42.29546446449265</Phi>
          <Radius>23.04805345422327</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.03195525668148582</Gradient>
          <GradientAtReferencePoint>-0.3025199066219296</GradientAtReferencePoint>
          <Height>-1.323615077633203</Height>
          <Phi>42.41946047479522</Phi>
          <Radius>23.147317781323064</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>-0.3038551682914107</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>42.419905815493465</Phi>
          <Radius>23.249542033475038</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>-0.30246073551327013</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>46.96925746332451</Phi>
          <Radius>23.810160161747703</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>-0.3024510733967733</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>47</Phi>
          <Radius>23.81455570651632</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>-0.3008263804281627</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>52</Phi>
          <Radius>24.64803979022692</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>-0.2990699857700874</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>57</Phi>
          <Radius>25.745023358554555</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>-0.29713455314938314</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>62</Phi>
          <Radius>27.16053594622927</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>-0.2960606466084723</GradientAtReferencePoint>
          <Height>-1.3236857029987448</Height>
          <Phi>64.5459593818598</Phi>
          <Radius>28.02798135616015</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.4364853655220758</Gradient>
          <GradientAtReferencePoint>-0.2732434513229349</GradientAtReferencePoint>
          <Height>-1.3026476474102122</Height>
          <Phi>66.61548488494749</Phi>
          <Radius>26.68062224961802</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.7163973535288942</Gradient>
          <GradientAtReferencePoint>-0.24963714829048914</GradientAtReferencePoint>
          <Height>-1.249691469163108</Height>
          <Phi>68.85876563427395</Phi>
          <Radius>25.27354335387975</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.8827825625183793</Gradient>
          <GradientAtReferencePoint>-0.224952280050067</GradientAtReferencePoint>
          <Height>-1.175159355862341</Height>
          <Phi>71.35540525250309</Phi>
          <Radius>23.79269107470419</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.9647104479360349</Gradient>
          <GradientAtReferencePoint>-0.19880168525880043</GradientAtReferencePoint>
          <Height>-1.083187435839179</Height>
          <Phi>74.22646940477533</Phi>
          <Radius>22.221379596866324</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.9771722190049938</Gradient>
          <GradientAtReferencePoint>-0.17061874385246192</GradientAtReferencePoint>
          <Height>-0.9728921392228951</Height>
          <Phi>77.67061842690667</Phi>
          <Radius>20.538704456187673</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.9221786131383883</Gradient>
          <GradientAtReferencePoint>-0.13946839233694994</GradientAtReferencePoint>
          <Height>-0.8378138880070295</Height>
          <Phi>82.04847896891368</Phi>
          <Radius>18.71644450075799</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.8126829423346112</Gradient>
          <GradientAtReferencePoint>-0.10930310205538923</GradientAtReferencePoint>
          <Height>-0.6933705695644768</Height>
          <Phi>87.04847896891368</Phi>
          <Radius>17.021034914312253</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.7859655127147133</Gradient>
          <GradientAtReferencePoint>-0.1035014505564859</GradientAtReferencePoint>
          <Height>-0.6644503750079066</Height>
          <Phi>88.12418485704795</Phi>
          <Radius>16.71160216649674</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.6535719090194051</Gradient>
          <GradientAtReferencePoint>-0.07877169638555337</GradientAtReferencePoint>
          <Height>-0.5328914078761497</Height>
          <Phi>93.12418485704795</Phi>
          <Radius>15.430115723277403</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5200775340197409</Gradient>
          <GradientAtReferencePoint>-0.05774920108135186</GradientAtReferencePoint>
          <Height>-0.4144925322478934</Height>
          <Phi>98.04036745165246</Phi>
          <Radius>14.447949587860526</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.43436772328129053</Gradient>
          <GradientAtReferencePoint>-0.045385382938922636</GradientAtReferencePoint>
          <Height>-0.3423349198654792</Height>
          <Phi>101.23616971025845</Phi>
          <Radius>13.919809654106256</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.3044145229021091</Gradient>
          <GradientAtReferencePoint>-0.02766794023026639</GradientAtReferencePoint>
          <Height>-0.23646018621326664</Height>
          <Phi>106.23616971025845</Phi>
          <Radius>13.246943098283397</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.2259168401826082</Gradient>
          <GradientAtReferencePoint>-0.017331335683604843</GradientAtReferencePoint>
          <Height>-0.17375401189589765</Height>
          <Phi>109.3802852519376</Phi>
          <Radius>12.904711216933867</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.1071343545663531</Gradient>
          <GradientAtReferencePoint>-0.0018710787188918289</GradientAtReferencePoint>
          <Height>-0.07984594825698137</Height>
          <Phi>114.3802852519376</Phi>
          <Radius>12.482458134628777</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.0040486947950124615</Gradient>
          <GradientAtReferencePoint>0.012716995450797838</GradientAtReferencePoint>
          <Height>0.00810600102837434</Height>
          <Phi>119.3802852519376</Phi>
          <Radius>12.176698278737305</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.09087223068026298</Gradient>
          <GradientAtReferencePoint>0.024431028141428373</GradientAtReferencePoint>
          <Height>0.07758638561137927</Height>
          <Phi>123.55463116111524</Phi>
          <Radius>12.001155640754579</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.18778209207640012</Gradient>
          <GradientAtReferencePoint>0.038188269469899366</GradientAtReferencePoint>
          <Height>0.1571744341055165</Height>
          <Phi>128.55463116111525</Phi>
          <Radius>11.902267264396212</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.27636156689916</Gradient>
          <GradientAtReferencePoint>0.051823571738628255</GradientAtReferencePoint>
          <Height>0.2332990919752802</Height>
          <Phi>133.55463116111525</Phi>
          <Radius>11.894781870046403</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.3173962365178405</Gradient>
          <GradientAtReferencePoint>0.05869006158110943</GradientAtReferencePoint>
          <Height>0.27046766646653214</Height>
          <Phi>136.06529869610063</Phi>
          <Radius>11.925267713729907</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.3913621702472098</Gradient>
          <GradientAtReferencePoint>0.07272115291189493</GradientAtReferencePoint>
          <Height>0.34360437305688657</Height>
          <Phi>141.06529869610063</Phi>
          <Radius>12.08633765892526</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.4518654120891046</Gradient>
          <GradientAtReferencePoint>0.08724853455763724</GradientAtReferencePoint>
          <Height>0.41520088519365983</Height>
          <Phi>146.06529869610063</Phi>
          <Radius>12.347073454286193</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.4575683034191517</Gradient>
          <GradientAtReferencePoint>0.08892325928195664</GradientAtReferencePoint>
          <Height>0.4232405690577985</Height>
          <Phi>146.62718640526268</Phi>
          <Radius>12.383028678483775</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.4942410106817974</Gradient>
          <GradientAtReferencePoint>0.10465841146430582</GradientAtReferencePoint>
          <Height>0.49526154192995897</Height>
          <Phi>151.62718640526268</Phi>
          <Radius>12.809645910350351</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.49804286956918065</Gradient>
          <GradientAtReferencePoint>0.11657217870540275</GradientAtReferencePoint>
          <Height>0.5456855212050548</Height>
          <Phi>155.17806918955833</Phi>
          <Radius>13.193663163119984</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.4387681400468863</Gradient>
          <GradientAtReferencePoint>0.135314671050069</GradientAtReferencePoint>
          <Height>0.6150338507039717</Height>
          <Phi>160.17806918955833</Phi>
          <Radius>13.929810729739582</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.38739890497458546</Gradient>
          <GradientAtReferencePoint>0.14241733424561626</GradientAtReferencePoint>
          <Height>0.636648163210624</Height>
          <Phi>161.93237048829133</Phi>
          <Radius>14.234479342183644</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.033051621258783886</Gradient>
          <GradientAtReferencePoint>0.16555369642172807</GradientAtReferencePoint>
          <Height>0.6761515111973418</Height>
          <Phi>166.93237048829133</Phi>
          <Radius>15.354190074575591</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.1669529037845304</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>167.2110554343544</Phi>
          <Radius>15.425364586979462</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.16401522120577197</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>172</Phi>
          <Radius>14.279220499265286</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0</Gradient>
          <GradientAtReferencePoint>0.1613622876533221</GradientAtReferencePoint>
          <Height>0.6763142970012552</Height>
          <Phi>177</Phi>
          <Radius>13.343578758942481</Radius>
        </CubicHeightSpline>
      </CubicHeightSplines>
      <LaneWidth>3.5</LaneWidth>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i1016" />
      <ReferencePoint z:Id="i1017">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <AngleX>-0.33174891577451465</AngleX>
        <AngleY>-0.7111716954422558</AngleY>
        <AngleZ>0</AngleZ>
        <Z>14.323685702998745</Z>
        <X>628.0489362537669</X>
        <Y>284.9446245757258</Y>
      </ReferencePoint>
      <V2XEnabled>false</V2XEnabled>
      <V2XTrafficLightController z:Id="i1018">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <SignalGroups z:Id="i1019" />
      </V2XTrafficLightController>
    </Junction>
    <Junction z:Id="i1020">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Ramp_up</Name>
      <Author></Author>
      <CreationDate>2019-02-19T03:31:10.1283115+01:00</CreationDate>
      <Description></Description>
      <Objects />
      <PositionMarkers />
      <SurfaceCondition z:Id="i1021" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <AdaptJunctionAutomatically>false</AdaptJunctionAutomatically>
      <ConnectionPoints>
        <JunctionConnectionPoint z:Id="i1022">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>4d3dd53a-4b96-46f8-b39d-1d995bf9be04</ID>
          <CounterPartID>7699f7c1-cfd1-4c33-9d0d-9d66289126f8</CounterPartID>
          <Owner z:Ref="i1020" />
          <AbsolutePosition z:Id="i1023">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.6089574482160052</AngleX>
            <AngleY>-0.6036498330744732</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>12</Z>
            <X>-422.12445220344205</X>
            <Y>-428.4139839235056</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i1024">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0.6153791011982219</AngleX>
            <AngleY>-0.07037701351241862</AngleY>
            <AngleZ>96.52396530191632</AngleZ>
            <Z>13</Z>
            <X>-416.2993884787799</X>
            <Y>-368.731702764956</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i1025" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>56.72536636958809</Length>
            <AbsoluteStartPosition z:Id="i1026">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-413.1593832706903</X>
              <Y>-425.05122255358816</Y>
              <Tangent>110.56086662269865</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i1027">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i1028">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>56.40698486826748</X>
              <Y>0</Y>
            </B>
            <C z:Id="i1029">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-6.032459282389716</X>
              <Y>-36.83733437777791</Y>
            </C>
            <D z:Id="i1030">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>3.4601966469857643</X>
              <Y>19.997779038061022</Y>
            </D>
            <RelativeEndVector z:Id="i1031">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>53.83472223286351</X>
              <Y>-16.83955533971688</Y>
              <Tangent>-14.036901320782334</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i1032">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.6089574466658294</AngleX>
            <AngleY>-0.6036498324926142</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>12</Z>
            <X>-413.1593832706903</X>
            <Y>-425.05122255358816</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i1033">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Lane Section 1</Name>
            <Length>100</Length>
            <CenterLane z:Id="i1034">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i1035">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i1036">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i1037">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.75</Width>
              <LeftLineProperty z:Id="i1038">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i1039">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i1040" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i1041">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i1042">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i1043">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i1044">
              <Lane z:Id="i1045">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name>Lane-1</Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>1</LaneIndex>
                <OpenDriveProperties z:Id="i1046">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1047">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1048">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.75</Width>
                <OuterLineProperty z:Id="i1049">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1050">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1051">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>0</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>0</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0</Margin>
                  </LineConnector>
                  <Type>Custom</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i1052">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>2</LaneIndex>
                <OpenDriveProperties z:Id="i1053">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1054">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1055">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.75</Width>
                <OuterLineProperty z:Id="i1056">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1057">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1058">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0.25</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>27</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0.05</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i1059">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-1</LaneIndex>
                <OpenDriveProperties z:Id="i1060">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1061">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1062">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.75</Width>
                <OuterLineProperty z:Id="i1063">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1064">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1065">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0.25</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>27</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0.05</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>0</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>4.9</TransitionLength>
          </LaneSection>
          <Line z:Id="i1066">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i1067">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i1068">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>164</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineColor>
                <LineTexture>NoTexture</LineTexture>
                <Offset>0</Offset>
                <Type>SolidLine</Type>
                <Width>0.25</Width>
              </Line>
              <LineDistance>0</LineDistance>
              <LineDistanceColor xmlns:d8p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                <d8p1:knownColor>0</d8p1:knownColor>
                <d8p1:name i:nil="true" />
                <d8p1:state>0</d8p1:state>
                <d8p1:value>0</d8p1:value>
              </LineDistanceColor>
              <LineDistanceTexture>NoTexture</LineDistanceTexture>
              <Margin>0</Margin>
            </LineConnector>
            <Type>Custom</Type>
          </Line>
          <LineEndPosition z:Id="i1069">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0.6153791011982219</AngleX>
            <AngleY>-0.07037701351241862</AngleY>
            <AngleZ>96.52396530191632</AngleZ>
            <Z>13</Z>
            <X>-416.4980933625535</X>
            <Y>-368.7544265226672</Y>
          </LineEndPosition>
          <LinePath z:Id="i1070" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>56.773414929558804</Length>
            <AbsoluteStartPosition z:Id="i1071">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-413.34664319617855</X>
              <Y>-425.1214629999572</Y>
              <Tangent>110.56086662269865</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i1072">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i1073">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>56.45506566627381</X>
              <Y>0</Y>
            </B>
            <C z:Id="i1074">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-6.029737911752157</X>
              <Y>-36.84358870659928</Y>
            </C>
            <D z:Id="i1075">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>3.457903831122657</X>
              <Y>19.99806130995449</Y>
            </D>
            <RelativeEndVector z:Id="i1076">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>53.88323158564432</X>
              <Y>-16.84552739664479</Y>
              <Tangent>-14.036901320782334</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i1077">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.6089574466658294</AngleX>
            <AngleY>-0.6036498324926142</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>12</Z>
            <X>-413.34664319617855</X>
            <Y>-425.1214629999572</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i1078" i:type="ESBatter">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements>
              <EnvironmentElement z:Id="i1079" i:type="ESBatterItem">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>true</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Batter</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i1080" i:type="ESScenerySectionFloor">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>ScenerySectionFloor</Type>
                <Width>10</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i1081" i:type="ESEmbankment">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Embankment</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
            </EnvironmentElements>
            <SpeedLimit>200</SpeedLimit>
            <Type>Batter</Type>
          </Scenery>
        </JunctionConnectionPoint>
        <JunctionConnectionPoint z:Id="i1082">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>f2481acb-5719-4b54-95a7-62cda6d2ae39</ID>
          <CounterPartID>d652cb0a-ff57-4822-80b1-e3184a4b1291</CounterPartID>
          <Owner z:Ref="i1020" />
          <AbsolutePosition z:Id="i1083">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0.6153791011982219</AngleX>
            <AngleY>-0.07037701351241862</AngleY>
            <AngleZ>96.52396530191632</AngleZ>
            <Z>13</Z>
            <X>-421.71409656161075</X>
            <Y>-369.3509251625858</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i1084">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.7945934766544034</AngleX>
            <AngleY>-0.3175326530985866</AngleY>
            <AngleZ>100.03086244129331</AngleZ>
            <Z>13</Z>
            <X>-427.91204935160926</X>
            <Y>-373.4364097596318</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i1085" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>4.098878611742967</Length>
            <AbsoluteStartPosition z:Id="i1086">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-427.1288046444416</X>
              <Y>-369.97014756021554</Y>
              <Tangent>-83.47603469808368</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i1087">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i1088">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>3.5536524740621522</X>
              <Y>0</Y>
            </B>
            <C z:Id="i1089">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>6.504167574284454</X>
              <Y>-3.2986434883845934</Y>
            </C>
            <D z:Id="i1090">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-6.702995225798553</X>
              <Y>2.1266382339494947</Y>
            </D>
            <RelativeEndVector z:Id="i1091">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>3.354824822548053</X>
              <Y>-1.172005254435099</Y>
              <Tangent>-176.49310286062303</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i1092">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0.6153791011982219</AngleX>
            <AngleY>-0.07037701351241862</AngleY>
            <AngleZ>96.52396530191632</AngleZ>
            <Z>13</Z>
            <X>-427.1288046444416</X>
            <Y>-369.97014756021554</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i1093">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>LaneSection 1</Name>
            <Length>5</Length>
            <CenterLane z:Id="i1094">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i1095">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i1096">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i1097">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <LeftLineProperty z:Id="i1098">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i1099">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i1100">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i1101">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i1102">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i1103" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i1104">
              <Lane z:Id="i1105">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>1</LaneIndex>
                <OpenDriveProperties z:Id="i1106">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1107">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1108">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>5</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i1109">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1110">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1111">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0.25</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>27</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0.05</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i1112">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name>Lane-1</Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-1</LaneIndex>
                <OpenDriveProperties z:Id="i1113">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1114">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1115">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>5</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i1116">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1117">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1118">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>0</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>0</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>0</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>5</TransitionLength>
          </LaneSection>
          <Line z:Id="i1119">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i1120">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i1121">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>164</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineColor>
                <LineTexture>NoTexture</LineTexture>
                <Offset>0</Offset>
                <Type>SolidLine</Type>
                <Width>0.25</Width>
              </Line>
              <LineDistance>0</LineDistance>
              <LineDistanceColor xmlns:d8p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                <d8p1:knownColor>0</d8p1:knownColor>
                <d8p1:name i:nil="true" />
                <d8p1:state>0</d8p1:state>
                <d8p1:value>0</d8p1:value>
              </LineDistanceColor>
              <LineDistanceTexture>NoTexture</LineDistanceTexture>
              <Margin>0</Margin>
            </LineConnector>
            <Type>Custom</Type>
          </Line>
          <LineEndPosition z:Id="i1122">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.7945934766544034</AngleX>
            <AngleY>-0.3175326530985866</AngleY>
            <AngleZ>100.03086244129331</AngleZ>
            <Z>13</Z>
            <X>-428.10899216647846</X>
            <Y>-373.47124548370044</Y>
          </LineEndPosition>
          <LinePath z:Id="i1123" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>4.315191259993246</Length>
            <AbsoluteStartPosition z:Id="i1124">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-426.930099760668</X>
              <Y>-369.9474238025044</Y>
              <Tangent>-83.47603469808368</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i1125">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i1126">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>3.7157915099403898</X>
              <Y>0</Y>
            </B>
            <C z:Id="i1127">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>6.378426139119149</X>
              <Y>-4.487602120961168</Y>
            </C>
            <D z:Id="i1128">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-6.727159088040563</X>
              <Y>2.9159713780657808</Y>
            </D>
            <RelativeEndVector z:Id="i1129">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>3.367058561018976</X>
              <Y>-1.5716307428953873</Y>
              <Tangent>-176.49310286062303</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i1130">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0.6153791011982219</AngleX>
            <AngleY>-0.07037701351241862</AngleY>
            <AngleZ>96.52396530191632</AngleZ>
            <Z>13</Z>
            <X>-426.930099760668</X>
            <Y>-369.9474238025044</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i1131" i:type="ESBatter">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements>
              <EnvironmentElement z:Id="i1132" i:type="ESBatterItem">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>true</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Batter</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i1133" i:type="ESScenerySectionFloor">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>ScenerySectionFloor</Type>
                <Width>10</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i1134" i:type="ESEmbankment">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Embankment</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
            </EnvironmentElements>
            <SpeedLimit>200</SpeedLimit>
            <Type>Batter</Type>
          </Scenery>
        </JunctionConnectionPoint>
        <JunctionConnectionPoint z:Id="i1135">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>b179e1f8-eaff-4f11-975a-2d1f91fe8159</ID>
          <CounterPartID>df51576f-ebae-4187-b660-eaae1a2371e5</CounterPartID>
          <Owner z:Ref="i1020" />
          <AbsolutePosition z:Id="i1136">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.7945934766544034</AngleX>
            <AngleY>-0.3175326530985866</AngleY>
            <AngleZ>100.03086244129331</AngleZ>
            <Z>13</Z>
            <X>-433.27874105679564</X>
            <Y>-374.385683240502</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i1137">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.6089574466658294</AngleX>
            <AngleY>-0.6036498324926142</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>12</Z>
            <X>-427.5783975332884</X>
            <Y>-430.45973692400366</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i1138" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>56.42678143861757</Length>
            <AbsoluteStartPosition z:Id="i1139">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-435.19893350177057</X>
              <Y>-374.7253315501711</Y>
              <Tangent>-79.96913755870669</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i1140">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i1141">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>56.25296890673082</X>
              <Y>0</Y>
            </B>
            <C z:Id="i1142">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0.8177938529909383</X>
              <Y>-16.89133118906531</Y>
            </C>
            <D z:Id="i1143">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-0.8609749215306692</X>
              <Y>14.687638377630407</Y>
            </D>
            <RelativeEndVector z:Id="i1144">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>56.20978783819109</X>
              <Y>-2.203692811434901</Y>
              <Tangent>10.530004181405346</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i1145">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.7945934766544034</AngleX>
            <AngleY>-0.3175326530985866</AngleY>
            <AngleZ>100.03086244129331</AngleZ>
            <Z>13</Z>
            <X>-435.19893350177057</X>
            <Y>-374.7253315501711</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i1146">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>LaneSection 1</Name>
            <Length>5</Length>
            <CenterLane z:Id="i1147">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i1148">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i1149">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i1150">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>5</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <LeftLineProperty z:Id="i1151">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i1152">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i1153">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i1154">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i1155">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i1156" i:type="DashLine">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>DashLine</Type>
                    <Width>0.25</Width>
                    <CutEndLine>false</CutEndLine>
                    <GapLength>8</GapLength>
                    <GapTexture>NoTexture</GapTexture>
                    <LineLength>4</LineLength>
                  </Line>
                  <LineDistance>0</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>0</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>0</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Custom</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i1157">
              <Lane z:Id="i1158">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name>Lane-1</Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-1</LaneIndex>
                <OpenDriveProperties z:Id="i1159">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1160">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1161">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>5</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i1162">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1163">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1164">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>0</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>0</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>0</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>5</TransitionLength>
          </LaneSection>
          <Line z:Id="i1165">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i1166">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i1167">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>164</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineColor>
                <LineTexture>NoTexture</LineTexture>
                <Offset>0</Offset>
                <Type>SolidLine</Type>
                <Width>0.25</Width>
              </Line>
              <LineDistance>0</LineDistance>
              <LineDistanceColor xmlns:d8p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                <d8p1:knownColor>0</d8p1:knownColor>
                <d8p1:name i:nil="true" />
                <d8p1:state>0</d8p1:state>
                <d8p1:value>0</d8p1:value>
              </LineDistanceColor>
              <LineDistanceTexture>NoTexture</LineDistanceTexture>
              <Margin>0</Margin>
            </LineConnector>
            <Type>Custom</Type>
          </Line>
          <LineEndPosition z:Id="i1168">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.6089574466658294</AngleX>
            <AngleY>-0.6036498324926142</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>12</Z>
            <X>-427.39113760780015</X>
            <Y>-430.3894964776346</Y>
          </LineEndPosition>
          <LinePath z:Id="i1169" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>56.390401948315166</Length>
            <AbsoluteStartPosition z:Id="i1170">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-435.00199068690137</X>
              <Y>-374.6904958261025</Y>
              <Tangent>-79.96913755870669</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i1171">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i1172">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>56.2165790329778</X>
              <Y>0</Y>
            </B>
            <C z:Id="i1173">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0.816700402817979</X>
              <Y>-16.894785320270234</Y>
            </C>
            <D z:Id="i1174">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-0.8600416782655458</X>
              <Y>14.687724377065507</Y>
            </D>
            <RelativeEndVector z:Id="i1175">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>56.173237757530224</X>
              <Y>-2.207060943204727</Y>
              <Tangent>10.530004181405346</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i1176">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>1.7945934766544034</AngleX>
            <AngleY>-0.3175326530985866</AngleY>
            <AngleZ>100.03086244129331</AngleZ>
            <Z>13</Z>
            <X>-435.00199068690137</X>
            <Y>-374.6904958261025</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i1177" i:type="ESBatter">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements>
              <EnvironmentElement z:Id="i1178" i:type="ESBatterItem">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>true</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Batter</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i1179" i:type="ESScenerySectionFloor">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>ScenerySectionFloor</Type>
                <Width>10</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i1180" i:type="ESEmbankment">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Embankment</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
            </EnvironmentElements>
            <SpeedLimit>200</SpeedLimit>
            <Type>Batter</Type>
          </Scenery>
        </JunctionConnectionPoint>
      </ConnectionPoints>
      <CubicHeightSplines>
        <CubicHeightSpline>
          <Gradient>-0.15782606162695495</Gradient>
          <GradientAtReferencePoint>0.018961655039410778</GradientAtReferencePoint>
          <Height>-0.08801144482971607</Height>
          <Phi>-180</Phi>
          <Radius>8.402118384661295</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.2305545082457068</Gradient>
          <GradientAtReferencePoint>-0.02186887722606121</GradientAtReferencePoint>
          <Height>-0.14827138944525153</Height>
          <Phi>-160.53922406319643</Phi>
          <Radius>8.597588179641495</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.25051671171151535</Gradient>
          <GradientAtReferencePoint>-0.033006427913781514</GradientAtReferencePoint>
          <Height>-0.1649868223858521</Height>
          <Phi>-155.53922406319643</Phi>
          <Radius>8.797724842778825</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.27168559885454174</Gradient>
          <GradientAtReferencePoint>-0.04476649592934558</GradientAtReferencePoint>
          <Height>-0.1828268758539815</Height>
          <Phi>-150.53922406319643</Phi>
          <Radius>9.078137967432143</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.29457917093039687</Gradient>
          <GradientAtReferencePoint>-0.05740022680303717</GradientAtReferencePoint>
          <Height>-0.20226902606329472</Height>
          <Phi>-145.53922406319643</Phi>
          <Radius>9.451313361228584</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.30777253533837734</Gradient>
          <GradientAtReferencePoint>-0.06454818322668017</GradientAtReferencePoint>
          <Height>-0.21353604526274664</Height>
          <Phi>-142.89199414594418</Phi>
          <Radius>9.69233816840007</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.33333795614661943</Gradient>
          <GradientAtReferencePoint>-0.07892773512422724</GradientAtReferencePoint>
          <Height>-0.23564501578409874</Height>
          <Phi>-137.89199414594418</Phi>
          <Radius>10.213705259586083</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.3625425974550337</Gradient>
          <GradientAtReferencePoint>-0.09507208716682407</GradientAtReferencePoint>
          <Height>-0.2611977603302526</Height>
          <Phi>-132.89199414594418</Phi>
          <Radius>10.88187730893355</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.3789999791446711</Gradient>
          <GradientAtReferencePoint>-0.10399540682681457</GradientAtReferencePoint>
          <Height>-0.2757528371603453</Height>
          <Phi>-130.39276914798938</Phi>
          <Radius>11.283404739487374</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.41513907729270505</Gradient>
          <GradientAtReferencePoint>-0.12353408582897468</GradientAtReferencePoint>
          <Height>-0.3082460803900967</Height>
          <Phi>-125.39276914798938</Phi>
          <Radius>12.20291673303556</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.448771272001989</Gradient>
          <GradientAtReferencePoint>-0.14095994521210742</GradientAtReferencePoint>
          <Height>-0.33924600067247107</Height>
          <Phi>-121.55109775144403</Phi>
          <Radius>13.090705641090107</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.49969308792452827</Gradient>
          <GradientAtReferencePoint>-0.16698198472050607</GradientAtReferencePoint>
          <Height>-0.38855243457438865</Height>
          <Phi>-116.55109775144403</Phi>
          <Radius>14.477327217339981</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5174819483822682</Gradient>
          <GradientAtReferencePoint>-0.17595009842440576</GradientAtReferencePoint>
          <Height>-0.4068025263805489</Height>
          <Phi>-115.04674043997764</Phi>
          <Radius>14.97753595752071</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5794976983828217</Gradient>
          <GradientAtReferencePoint>-0.20922713307354462</GradientAtReferencePoint>
          <Height>-0.47882064331016794</Height>
          <Phi>-110.04674043997764</Phi>
          <Radius>16.875252605621093</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5796870262811249</Gradient>
          <GradientAtReferencePoint>-0.2093358921703898</GradientAtReferencePoint>
          <Height>-0.4790735390143936</Height>
          <Phi>-110.03226054836205</Phi>
          <Radius>16.88164171185043</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.624141299315055</Gradient>
          <GradientAtReferencePoint>-0.24140176788871515</GradientAtReferencePoint>
          <Height>-0.5547926969982583</Height>
          <Phi>-105.99398363099161</Phi>
          <Radius>18.775927637428172</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.6335339957322746</Gradient>
          <GradientAtReferencePoint>-0.27237620449754335</GradientAtReferencePoint>
          <Height>-0.63030775451547</Height>
          <Phi>-102.6163466883868</Phi>
          <Radius>20.650071659339435</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5830851291103887</Gradient>
          <GradientAtReferencePoint>-0.30244961435563933</GradientAtReferencePoint>
          <Height>-0.6999999999999993</Height>
          <Phi>-99.69889711703887</Phi>
          <Radius>22.502088545257013</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.577911598675414</Gradient>
          <GradientAtReferencePoint>-0.29554270205044814</GradientAtReferencePoint>
          <Height>-0.6999999999999993</Height>
          <Phi>-94</Phi>
          <Radius>21.36969643525832</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5865476611368798</Gradient>
          <GradientAtReferencePoint>-0.28998579569911925</GradientAtReferencePoint>
          <Height>-0.6999999999999993</Height>
          <Phi>-89</Phi>
          <Radius>20.62660784450755</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5830851291103888</Gradient>
          <GradientAtReferencePoint>-0.2860732479909953</GradientAtReferencePoint>
          <Height>-0.6999999999999993</Height>
          <Phi>-85.27841987385214</Phi>
          <Radius>20.2032674240043</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5796304994089186</Gradient>
          <GradientAtReferencePoint>-0.284763957362942</GradientAtReferencePoint>
          <Height>-0.6999999999999993</Height>
          <Phi>-84</Phi>
          <Radius>20.0811554168815</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5702274469783882</Gradient>
          <GradientAtReferencePoint>-0.27977418094881384</GradientAtReferencePoint>
          <Height>-0.6999999999999993</Height>
          <Phi>-79</Phi>
          <Radius>19.709947857433097</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5663931842894603</Gradient>
          <GradientAtReferencePoint>-0.27492932901594347</GradientAtReferencePoint>
          <Height>-0.6999999999999993</Height>
          <Phi>-74</Phi>
          <Radius>19.497912643997044</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.567201877023009</Gradient>
          <GradientAtReferencePoint>-0.27015163315104335</GradientAtReferencePoint>
          <Height>-0.6999999999999993</Height>
          <Phi>-69</Phi>
          <Radius>19.436741861389567</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5720094245048142</Gradient>
          <GradientAtReferencePoint>-0.2653675255755185</GradientAtReferencePoint>
          <Height>-0.6999999999999993</Height>
          <Phi>-64</Phi>
          <Radius>19.52407901732727</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5802948999649794</Gradient>
          <GradientAtReferencePoint>-0.2605030413051705</GradientAtReferencePoint>
          <Height>-0.6999999999999993</Height>
          <Phi>-59</Phi>
          <Radius>19.763294106356177</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.583085129110388</Gradient>
          <GradientAtReferencePoint>-0.25915415649889756</GradientAtReferencePoint>
          <Height>-0.6999999999999993</Height>
          <Phi>-57.638304577273935</Phi>
          <Radius>19.855835376375083</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.6313451608717175</Gradient>
          <GradientAtReferencePoint>-0.2334026628972269</GradientAtReferencePoint>
          <Height>-0.6393604111633919</Height>
          <Phi>-56.3228336471574</Phi>
          <Radius>18.065485134460918</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.6332143208931167</Gradient>
          <GradientAtReferencePoint>-0.20712903323891227</GradientAtReferencePoint>
          <Height>-0.5687991381586657</Height>
          <Phi>-54.43514716907629</Phi>
          <Radius>16.285589293201983</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5972516838188258</Gradient>
          <GradientAtReferencePoint>-0.18018906986772967</GradientAtReferencePoint>
          <Height>-0.49169519716154036</Height>
          <Phi>-51.75381841969093</Phi>
          <Radius>14.520848407765786</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.5335284202279948</Gradient>
          <GradientAtReferencePoint>-0.15242099085363378</GradientAtReferencePoint>
          <Height>-0.4117384117190811</Height>
          <Phi>-47.93317206902949</Phi>
          <Radius>12.785776224552738</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.4597696471712978</Gradient>
          <GradientAtReferencePoint>-0.12597350318761588</GradientAtReferencePoint>
          <Height>-0.33892709380731134</Height>
          <Phi>-42.93317206902949</Phi>
          <Radius>11.24460946382665</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.4529521535462521</Gradient>
          <GradientAtReferencePoint>-0.1236377130617963</GradientAtReferencePoint>
          <Height>-0.33271983137581523</Height>
          <Phi>-42.42576030615471</Phi>
          <Radius>11.113229443386873</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.3957785655963642</Gradient>
          <GradientAtReferencePoint>-0.10394511424941978</GradientAtReferencePoint>
          <Height>-0.28276101546350085</Height>
          <Phi>-37.42576030615471</Phi>
          <Radius>10.078484577443607</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.3659196658152158</Gradient>
          <GradientAtReferencePoint>-0.09361541910247084</GradientAtReferencePoint>
          <Height>-0.25784639081845195</Height>
          <Phi>-34.382966028191504</Phi>
          <Radius>9.571388920608378</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.32558944291882086</Gradient>
          <GradientAtReferencePoint>-0.07904330142979314</GradientAtReferencePoint>
          <Height>-0.22496341421683513</Height>
          <Phi>-29.382966028191504</Phi>
          <Radius>8.935415576261455</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.29089097503879957</Gradient>
          <GradientAtReferencePoint>-0.06619533722887165</GradientAtReferencePoint>
          <Height>-0.19727885412605212</Height>
          <Phi>-24.382966028191504</Phi>
          <Radius>8.438914985956039</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.2802517947512439</Gradient>
          <GradientAtReferencePoint>-0.062075624296080836</GradientAtReferencePoint>
          <Height>-0.1888380405217974</Height>
          <Phi>-22.657731906204685</Phi>
          <Radius>8.294374182209317</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.25246549085344633</Gradient>
          <GradientAtReferencePoint>-0.051028246816651954</GradientAtReferencePoint>
          <Height>-0.16690702583074152</Height>
          <Phi>-17.657731906204685</Phi>
          <Radius>7.968668964280954</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.22725444159925734</Gradient>
          <GradientAtReferencePoint>-0.040740369617021176</GradientAtReferencePoint>
          <Height>-0.14714487643310287</Height>
          <Phi>-12.657731906204685</Phi>
          <Radius>7.724141154156374</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.20394650059585856</Gradient>
          <GradientAtReferencePoint>-0.030993111170779408</GradientAtReferencePoint>
          <Height>-0.12895592999783356</Height>
          <Phi>-7.657731906204685</Phi>
          <Radius>7.549922531168992</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.19832789142633056</Gradient>
          <GradientAtReferencePoint>-0.028655187280573393</GradientAtReferencePoint>
          <Height>-0.12459761122310885</Height>
          <Phi>-6.426867493740249</Phi>
          <Radius>7.516919854247147</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.1774379770625639</Gradient>
          <GradientAtReferencePoint>-0.01938353090301847</GradientAtReferencePoint>
          <Height>-0.1082423505468817</Height>
          <Phi>-1.4268674937402492</Phi>
          <Radius>7.440261915254732</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.1572829378884489</Gradient>
          <GradientAtReferencePoint>-0.010230111356730584</GradientAtReferencePoint>
          <Height>-0.09246876923912709</Height>
          <Phi>3.5731325062597508</Phi>
          <Radius>7.421060306798205</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.13756299038805814</Gradient>
          <GradientAtReferencePoint>-0.0010541611856845839</GradientAtReferencePoint>
          <Height>-0.07702119526380999</Height>
          <Phi>8.57313250625975</Phi>
          <Radius>7.458575699351155</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.12035207062003471</Gradient>
          <GradientAtReferencePoint>0.007147861303142964</GradientAtReferencePoint>
          <Height>-0.06351334782553435</Height>
          <Phi>12.970933849416818</Phi>
          <Radius>7.539550041949168</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.10131524844304089</Gradient>
          <GradientAtReferencePoint>0.016801399782632395</GradientAtReferencePoint>
          <Height>-0.04838924710148919</Height>
          <Phi>17.970933849416816</Phi>
          <Radius>7.708945061270403</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.08213799179593746</Gradient>
          <GradientAtReferencePoint>0.026977920040875025</GradientAtReferencePoint>
          <Height>-0.033014172646202204</Height>
          <Phi>22.970933849416816</Phi>
          <Radius>7.948006205491173</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.06282651432505167</Gradient>
          <GradientAtReferencePoint>0.03789152260119353</GradientAtReferencePoint>
          <Height>-0.01729943856229339</Height>
          <Phi>27.970933849416816</Phi>
          <Radius>8.26730163386559</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.04924600636438297</Gradient>
          <GradientAtReferencePoint>0.04608238629082511</GradientAtReferencePoint>
          <Height>-0.006058822495926448</Height>
          <Phi>31.458888686395635</Phi>
          <Radius>8.545467496814405</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.02946638853716185</Gradient>
          <GradientAtReferencePoint>0.05909390017327644</GradientAtReferencePoint>
          <Height>0.010724920836406894</Height>
          <Phi>36.45888868639564</Phi>
          <Radius>9.06740781492518</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.009578680354739277</Gradient>
          <GradientAtReferencePoint>0.07391840679096659</GradientAtReferencePoint>
          <Height>0.028274227302429653</Height>
          <Phi>41.45888868639564</Phi>
          <Radius>9.736172178138144</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.008732166491885211</Gradient>
          <GradientAtReferencePoint>0.08939152040448362</GradientAtReferencePoint>
          <Height>0.04512689786050069</Height>
          <Phi>45.963401009906384</Phi>
          <Radius>10.502651516998338</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.02883538735985397</Gradient>
          <GradientAtReferencePoint>0.11031866760169971</GradientAtReferencePoint>
          <Height>0.06512827263819779</Height>
          <Phi>50.963401009906384</Phi>
          <Radius>11.649504239309545</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.048819502715580304</Gradient>
          <GradientAtReferencePoint>0.1366009421064788</GradientAtReferencePoint>
          <Height>0.08696209770688713</Height>
          <Phi>55.963401009906384</Phi>
          <Radius>13.190214967977656</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.05074450649652924</Gradient>
          <GradientAtReferencePoint>0.139510916770638</GradientAtReferencePoint>
          <Height>0.08919138809583849</Height>
          <Phi>56.445293376442386</Phi>
          <Radius>13.36618348647814</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.07039740884572437</Gradient>
          <GradientAtReferencePoint>0.17612861527869544</GradientAtReferencePoint>
          <Height>0.11406189647868693</Height>
          <Phi>61.445293376442386</Phi>
          <Radius>15.673610349446186</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.081470924838169</Gradient>
          <GradientAtReferencePoint>0.20220578456560828</GradientAtReferencePoint>
          <Height>0.1293098117915568</Height>
          <Phi>64.18238226017635</Phi>
          <Radius>17.372877445503036</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.0914411710124327</Gradient>
          <GradientAtReferencePoint>0.22852246504437992</GradientAtReferencePoint>
          <Height>0.1431345579244348</Height>
          <Phi>66.42074888039818</Phi>
          <Radius>19.126211886699267</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.11614227082891175</Gradient>
          <GradientAtReferencePoint>0.2909720050684327</GradientAtReferencePoint>
          <Height>0.1720188929736879</Height>
          <Phi>70.39028156941566</Phi>
          <Radius>23.369500756041337</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.14585496821585497</Gradient>
          <GradientAtReferencePoint>0.3454878576430055</GradientAtReferencePoint>
          <Height>0.19526623361571682</Height>
          <Phi>72.91893016713131</Phi>
          <Radius>27.11790484182022</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.18227027500681708</Gradient>
          <GradientAtReferencePoint>0.391524041404267</GradientAtReferencePoint>
          <Height>0.21539785168312592</Height>
          <Phi>74.67344281839772</Phi>
          <Radius>30.288752357657344</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.22698038079699828</Gradient>
          <GradientAtReferencePoint>0.4324841368510219</GradientAtReferencePoint>
          <Height>0.23498269056445426</Height>
          <Phi>76.0600225928416</Phi>
          <Radius>33.10262883698947</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.280493922030876</Gradient>
          <GradientAtReferencePoint>0.4699426635819848</GradientAtReferencePoint>
          <Height>0.25516120018296745</Height>
          <Phi>77.241570809981</Phi>
          <Radius>35.66388901575402</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.34328639770828323</Gradient>
          <GradientAtReferencePoint>0.5047953641183427</GradientAtReferencePoint>
          <Height>0.27668328587577457</Height>
          <Phi>78.29906993126477</Phi>
          <Radius>38.03313407560355</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.4155750802770048</Gradient>
          <GradientAtReferencePoint>0.5376202534516684</GradientAtReferencePoint>
          <Height>0.3000000000000007</Height>
          <Phi>79.27834570824469</Phi>
          <Radius>40.25024077618676</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.41555485787819185</Gradient>
          <GradientAtReferencePoint>0.5398230815343124</GradientAtReferencePoint>
          <Height>0.3000000000000007</Height>
          <Phi>84</Phi>
          <Radius>39.37767142895927</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.415575080277005</Gradient>
          <GradientAtReferencePoint>0.5411575375605776</GradientAtReferencePoint>
          <Height>0.3000000000000007</Height>
          <Phi>86.95124716856766</Phi>
          <Radius>38.98352774306698</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.41428688263156027</Gradient>
          <GradientAtReferencePoint>0.5420699356099435</GradientAtReferencePoint>
          <Height>0.3000000000000007</Height>
          <Phi>89</Phi>
          <Radius>38.77453694744897</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.4155750802770051</Gradient>
          <GradientAtReferencePoint>0.5446948216694868</GradientAtReferencePoint>
          <Height>0.3000000000000007</Height>
          <Phi>94.98475417835219</Phi>
          <Radius>38.45457044419997</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.401931156064768</Gradient>
          <GradientAtReferencePoint>0.5391388045887392</GradientAtReferencePoint>
          <Height>0.2958340955053078</Height>
          <Phi>95.01136182294556</Phi>
          <Radius>38.06104361810055</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.37836775323519706</Gradient>
          <GradientAtReferencePoint>0.5277766692954724</GradientAtReferencePoint>
          <Height>0.2876344664831498</Height>
          <Phi>95.20464365285783</Phi>
          <Radius>37.250056394666665</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.37128642579631443</Gradient>
          <GradientAtReferencePoint>0.5221293881101156</GradientAtReferencePoint>
          <Height>0.28377016035969954</Height>
          <Phi>95.34237511915849</Phi>
          <Radius>36.84548394968485</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.4834982501327188</Gradient>
          <GradientAtReferencePoint>0.5074855959429011</GradientAtReferencePoint>
          <Height>0.27517254417996134</Height>
          <Phi>95.81153886072896</Phi>
          <Radius>35.793832676118846</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.0900071808651903</Gradient>
          <GradientAtReferencePoint>0.5007623505059863</GradientAtReferencePoint>
          <Height>0.2992077637902634</Height>
          <Phi>96.10087842551148</Phi>
          <Radius>35.30970020966485</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.0871264848473523</Gradient>
          <GradientAtReferencePoint>0.4968564796305254</GradientAtReferencePoint>
          <Height>0.29507166479918745</Height>
          <Phi>96.31907016427877</Phi>
          <Radius>35.027454058995644</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.0823238818964462</Gradient>
          <GradientAtReferencePoint>0.4953094022927113</GradientAtReferencePoint>
          <Height>0.2930539940142931</Height>
          <Phi>96.4366221905487</Phi>
          <Radius>34.91492758711664</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.0792054475099593</Gradient>
          <GradientAtReferencePoint>0.4946705201872688</GradientAtReferencePoint>
          <Height>0.2920530883673785</Height>
          <Phi>96.50485239531154</Phi>
          <Radius>34.867953763705984</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.0778623215024101</Gradient>
          <GradientAtReferencePoint>0.4943999959284724</GradientAtReferencePoint>
          <Height>0.29161643213755045</Height>
          <Phi>96.54845499027569</Phi>
          <Radius>34.84767326116211</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.0776416082380238</Gradient>
          <GradientAtReferencePoint>0.49429336039317695</GradientAtReferencePoint>
          <Height>0.2914931966311886</Height>
          <Phi>96.5794273439243</Phi>
          <Radius>34.83930865065076</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.078026393843913</Gradient>
          <GradientAtReferencePoint>0.49427276437813855</GradientAtReferencePoint>
          <Height>0.2915358870008297</Height>
          <Phi>96.60416987935002</Phi>
          <Radius>34.837186578110746</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.0789325390962483</Gradient>
          <GradientAtReferencePoint>0.4943168661440488</GradientAtReferencePoint>
          <Height>0.29171263178281154</Height>
          <Phi>96.62681688459958</Phi>
          <Radius>34.839686984760185</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.0806880945474735</Gradient>
          <GradientAtReferencePoint>0.4944515012088063</GradientAtReferencePoint>
          <Height>0.29209424921811944</Height>
          <Phi>96.65131641242897</Phi>
          <Radius>34.8485244112803</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.0849277055321198</Gradient>
          <GradientAtReferencePoint>0.49483913519742523</GradientAtReferencePoint>
          <Height>0.2930622234741301</Height>
          <Phi>96.68448038409068</Phi>
          <Radius>34.87497183135073</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.1145488144558402</Gradient>
          <GradientAtReferencePoint>0.49785998433755996</GradientAtReferencePoint>
          <Height>0.3000000000000007</Height>
          <Phi>96.75107466109134</Phi>
          <Radius>35.086145934981246</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.1112439981518887</Gradient>
          <GradientAtReferencePoint>0.49728804875233373</GradientAtReferencePoint>
          <Height>0.3000000000000007</Height>
          <Phi>101</Phi>
          <Radius>35.033688519050244</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.1145488144558395</Gradient>
          <GradientAtReferencePoint>0.4966610718356212</GradientAtReferencePoint>
          <Height>0.3000000000000007</Height>
          <Phi>105.64392875407269</Phi>
          <Radius>35.19744449214035</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.1149806567826404</Gradient>
          <GradientAtReferencePoint>0.496612690848733</GradientAtReferencePoint>
          <Height>0.3000000000000007</Height>
          <Phi>106</Phi>
          <Radius>35.219635892347384</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>1.1145488144558398</Gradient>
          <GradientAtReferencePoint>0.4962321031422672</GradientAtReferencePoint>
          <Height>0.3000000000000007</Height>
          <Phi>108.782824624655</Phi>
          <Radius>35.441345366699124</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.78514995761841</Gradient>
          <GradientAtReferencePoint>0.457444762131639</GradientAtReferencePoint>
          <Height>0.2238975380460962</Height>
          <Phi>109.575606957089</Phi>
          <Radius>32.75121991259934</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.5123901040508367</Gradient>
          <GradientAtReferencePoint>0.4157705771320523</GradientAtReferencePoint>
          <Height>0.16343803676660087</Height>
          <Phi>110.73077033322431</Phi>
          <Radius>29.884513353409854</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.29836555471830145</Gradient>
          <GradientAtReferencePoint>0.3702138329522397</GradientAtReferencePoint>
          <Height>0.11849113689701979</Height>
          <Phi>112.43513561947441</Phi>
          <Radius>26.785210299991935</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.14339917201719285</Gradient>
          <GradientAtReferencePoint>0.31901306466751955</GradientAtReferencePoint>
          <Height>0.08783978217892163</Height>
          <Phi>115.0666058088943</Phi>
          <Radius>23.358785574663983</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.04679781472128059</Gradient>
          <GradientAtReferencePoint>0.2583335805790461</GradientAtReferencePoint>
          <Height>0.0685219406527372</Height>
          <Phi>119.58034987929935</Phi>
          <Radius>19.41175549488711</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.03219979461351259</Gradient>
          <GradientAtReferencePoint>0.24227044831191089</GradientAtReferencePoint>
          <Height>0.06486373401597614</Height>
          <Phi>121.12194159074609</Phi>
          <Radius>18.395808333333864</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.006694483210646435</Gradient>
          <GradientAtReferencePoint>0.2001649294038104</GradientAtReferencePoint>
          <Height>0.0550409961401368</Height>
          <Phi>126.12194159074609</Phi>
          <Radius>15.815185519000819</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>0.0015228394952109935</Gradient>
          <GradientAtReferencePoint>0.18862978279010797</GradientAtReferencePoint>
          <Height>0.051805184261165774</Height>
          <Phi>127.78510864757891</Phi>
          <Radius>15.13375606036559</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.011110905708424188</Gradient>
          <GradientAtReferencePoint>0.15916531779814555</GradientAtReferencePoint>
          <Height>0.041339495563792725</Height>
          <Phi>132.7851086475789</Phi>
          <Radius>13.461852099862725</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.017764558228129643</Gradient>
          <GradientAtReferencePoint>0.14541099344737493</GradientAtReferencePoint>
          <Height>0.034980332952811666</Height>
          <Phi>135.55894011395708</Phi>
          <Radius>12.723179736466832</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.03039766359839701</Gradient>
          <GradientAtReferencePoint>0.12384334752828766</GradientAtReferencePoint>
          <Height>0.022699041554242336</Height>
          <Phi>140.55894011395708</Phi>
          <Radius>11.627897265335887</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.04420216124871533</Gradient>
          <GradientAtReferencePoint>0.10556663037454833</GradientAtReferencePoint>
          <Height>0.009619986481520591</Height>
          <Phi>145.55894011395708</Phi>
          <Radius>10.781795946204554</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.059100747867734185</Gradient>
          <GradientAtReferencePoint>0.08965643030440691</GradientAtReferencePoint>
          <Height>-0.004006516298717379</Height>
          <Phi>150.55894011395708</Phi>
          <Radius>10.122286750424202</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.07058877070444888</Gradient>
          <GradientAtReferencePoint>0.07913904232851318</GradientAtReferencePoint>
          <Height>-0.014227112836745848</Height>
          <Phi>154.21807034230406</Phi>
          <Radius>9.733283994642084</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.08666780549890073</Gradient>
          <GradientAtReferencePoint>0.06582359252659888</GradientAtReferencePoint>
          <Height>-0.02825115606021101</Height>
          <Phi>159.21807034230406</Phi>
          <Radius>9.290604877980382</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.10323197983791314</Gradient>
          <GradientAtReferencePoint>0.0535775058716646</GradientAtReferencePoint>
          <Height>-0.042411533113711694</Height>
          <Phi>164.21807034230406</Phi>
          <Radius>8.951604415070964</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.12013078625846657</Gradient>
          <GradientAtReferencePoint>0.04210943489177441</GradientAtReferencePoint>
          <Height>-0.05665027168702387</Height>
          <Phi>169.21807034230406</Phi>
          <Radius>8.700356219009997</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.13751865600188287</Gradient>
          <GradientAtReferencePoint>0.031186687108145435</GradientAtReferencePoint>
          <Height>-0.07115728074397602</Height>
          <Phi>174.21807034230406</Phi>
          <Radius>8.525942807303428</Radius>
        </CubicHeightSpline>
        <CubicHeightSpline>
          <Gradient>-0.14741806845310093</Gradient>
          <GradientAtReferencePoint>0.025260874329768854</GradientAtReferencePoint>
          <Height>-0.0793704039629975</Height>
          <Phi>177.00553320618533</Phi>
          <Radius>8.45929047885345</Radius>
        </CubicHeightSpline>
      </CubicHeightSplines>
      <LaneWidth>3.5</LaneWidth>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i1181" />
      <ReferencePoint z:Id="i1182">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <AngleX>0.8033241900000001</AngleX>
        <AngleY>-0.12930321999999997</AngleY>
        <AngleZ>0</AngleZ>
        <Z>12.7</Z>
        <X>-423.7874615449936</X>
        <Y>-408.27927720759476</Y>
      </ReferencePoint>
      <V2XEnabled>false</V2XEnabled>
      <V2XTrafficLightController z:Id="i1183">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <SignalGroups z:Id="i1184" />
      </V2XTrafficLightController>
    </Junction>
    <Junction z:Id="i1185">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Junction 3</Name>
      <Author></Author>
      <CreationDate>2021-08-06T04:23:17.0421609+02:00</CreationDate>
      <Description></Description>
      <Objects />
      <PositionMarkers />
      <SurfaceCondition z:Id="i1186" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <AdaptJunctionAutomatically>false</AdaptJunctionAutomatically>
      <ConnectionPoints>
        <JunctionConnectionPoint z:Id="i1187">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>4ffa7a8a-4e49-495c-9e3e-227705d8c5dc</ID>
          <CounterPartID>a14f9cd5-219a-4bd0-b27d-9525e5db4637</CounterPartID>
          <Owner z:Ref="i1185" />
          <AbsolutePosition z:Id="i1188">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>6</Z>
            <X>-313.25176033144174</X>
            <Y>-718.6668684303517</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i1189">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>-0</AngleY>
            <AngleZ>110.56086662269865</AngleZ>
            <Z>6</Z>
            <X>-311.3107360355932</X>
            <Y>-696.5781145116055</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i1190" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>20.01576283222351</Length>
            <AbsoluteStartPosition z:Id="i1191">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-304.965508628585</X>
              <Y>-715.558728678522</Y>
              <Tangent>110.56086662269865</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i1192">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i1193">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>20.013136310933415</X>
              <Y>0</Y>
            </B>
            <C z:Id="i1194">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-0.039408932800132135</X>
              <Y>-2.1749999999999723</Y>
            </C>
            <D z:Id="i1195">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0.026272621866752388</X>
              <Y>1.4499999999999815</Y>
            </D>
            <RelativeEndVector z:Id="i1196">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>20.00000000000004</X>
              <Y>-0.7249999999999908</Y>
              <Tangent>0</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i1197">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>6</Z>
            <X>-304.965508628585</X>
            <Y>-715.558728678522</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i1198">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Lane section 3</Name>
            <Length>95</Length>
            <CenterLane z:Id="i1199">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i1200">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i1201">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i1202">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>95</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <LeftLineProperty z:Id="i1203">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i1204">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i1205">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i1206">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i1207">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i1208">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i1209">
              <Lane z:Id="i1210">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name>Lane-1</Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>1</LaneIndex>
                <OpenDriveProperties z:Id="i1211">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1212">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1213">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>95</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>1.7</Width>
                <OuterLineProperty z:Id="i1214">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector i:nil="true" />
                  <Type>None</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i1215">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>2</LaneIndex>
                <OpenDriveProperties z:Id="i1216">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1217">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1218">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>95</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i1219">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector i:nil="true" />
                  <Type>None</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i1220">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>3</LaneIndex>
                <OpenDriveProperties z:Id="i1221">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1222">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1223">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>95</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>1.7</Width>
                <OuterLineProperty z:Id="i1224">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1225">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1226">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0.25</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>27</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0.05</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i1227">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-1</LaneIndex>
                <OpenDriveProperties z:Id="i1228">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1229">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1230">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>95</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>1.7</Width>
                <OuterLineProperty z:Id="i1231">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector i:nil="true" />
                  <Type>None</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i1232">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-2</LaneIndex>
                <OpenDriveProperties z:Id="i1233">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1234">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1235">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>95</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i1236">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector i:nil="true" />
                  <Type>None</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i1237">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-3</LaneIndex>
                <OpenDriveProperties z:Id="i1238">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1239">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1240">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>95</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>1.7</Width>
                <OuterLineProperty z:Id="i1241">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1242">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1243">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0.25</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>27</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0.05</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>0</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>5</TransitionLength>
          </LaneSection>
          <Line z:Id="i1244">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i1245">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i1246">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>164</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineColor>
                <LineTexture>NoTexture</LineTexture>
                <Offset>0</Offset>
                <Type>SolidLine</Type>
                <Width>0.25</Width>
              </Line>
              <LineDistance>0.25</LineDistance>
              <LineDistanceColor xmlns:d8p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                <d8p1:knownColor>27</d8p1:knownColor>
                <d8p1:name i:nil="true" />
                <d8p1:state>1</d8p1:state>
                <d8p1:value>0</d8p1:value>
              </LineDistanceColor>
              <LineDistanceTexture>NoTexture</LineDistanceTexture>
              <Margin>0.05</Margin>
            </LineConnector>
            <Type>Solid</Type>
          </Line>
          <LineEndPosition z:Id="i1247">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>-0</AngleY>
            <AngleZ>110.56086662269865</AngleZ>
            <Z>6</Z>
            <X>-311.4979959610815</X>
            <Y>-696.6483549579744</Y>
          </LineEndPosition>
          <LinePath z:Id="i1248" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>20.0157628322235</Length>
            <AbsoluteStartPosition z:Id="i1249">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-305.1527685540733</X>
              <Y>-715.628969124891</Y>
              <Tangent>110.56086662269865</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i1250">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i1251">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>20.013136310933398</X>
              <Y>0</Y>
            </B>
            <C z:Id="i1252">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-0.03940893280012858</X>
              <Y>-2.175000000000132</Y>
            </C>
            <D z:Id="i1253">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0.026272621866752388</X>
              <Y>1.450000000000088</Y>
            </D>
            <RelativeEndVector z:Id="i1254">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>20.00000000000002</X>
              <Y>-0.725000000000044</Y>
              <Tangent>0</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i1255">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>6</Z>
            <X>-305.1527685540733</X>
            <Y>-715.628969124891</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i1256" i:type="ESBatter">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements>
              <EnvironmentElement z:Id="i1257" i:type="ESBatterItem">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>true</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Batter</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i1258" i:type="ESScenerySectionFloor">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>ScenerySectionFloor</Type>
                <Width>10</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i1259" i:type="ESEmbankment">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Embankment</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
            </EnvironmentElements>
            <SpeedLimit>200</SpeedLimit>
            <Type>Batter</Type>
          </Scenery>
        </JunctionConnectionPoint>
        <JunctionConnectionPoint z:Id="i1260">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>667ae396-fdae-4ada-b3e2-5b699a533fe9</ID>
          <CounterPartID>130c0866-ed45-463a-9b0d-3f19fa16a9a3</CounterPartID>
          <Owner z:Ref="i1185" />
          <AbsolutePosition z:Id="i1261">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>110.56086662269865</AngleZ>
            <Z>6</Z>
            <X>-320.27580496834497</X>
            <Y>-699.9408758815229</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i1262">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>6</Z>
            <X>-321.5380120342985</X>
            <Y>-721.7750081821813</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i1263" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>20.27274852704771</Length>
            <AbsoluteStartPosition z:Id="i1264">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-325.72975029819133</X>
              <Y>-701.9866288820209</Y>
              <Tangent>-69.43913337730135</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i1265">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i1266">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>20.2274720368117</X>
              <Y>0</Y>
            </B>
            <C z:Id="i1267">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-0.6824161104351738</X>
              <Y>-9.075000000000175</Y>
            </C>
            <D z:Id="i1268">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0.4549440736234516</X>
              <Y>6.050000000000117</Y>
            </D>
            <RelativeEndVector z:Id="i1269">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>19.999999999999975</X>
              <Y>-3.0250000000000585</Y>
              <Tangent>0</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i1270">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>-0</AngleY>
            <AngleZ>110.56086662269865</AngleZ>
            <Z>6</Z>
            <X>-325.72975029819133</X>
            <Y>-701.9866288820209</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i1271">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Lane Section 1</Name>
            <Length>100</Length>
            <CenterLane z:Id="i1272">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i1273">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i1274">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i1275">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.75</Width>
              <LeftLineProperty z:Id="i1276">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i1277">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i1278">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i1279">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i1280">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i1281">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <LineColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>164</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineColor>
                    <LineTexture>NoTexture</LineTexture>
                    <Offset>0</Offset>
                    <Type>SolidLine</Type>
                    <Width>0.25</Width>
                  </Line>
                  <LineDistance>0.25</LineDistance>
                  <LineDistanceColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>27</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineDistanceColor>
                  <LineDistanceTexture>NoTexture</LineDistanceTexture>
                  <Margin>0.05</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i1282">
              <Lane z:Id="i1283">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>1</LaneIndex>
                <OpenDriveProperties z:Id="i1284">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1285">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1286">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.75</Width>
                <OuterLineProperty z:Id="i1287">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1288">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1289">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0.25</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>27</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0.05</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i1290">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name>Lane-1</Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-1</LaneIndex>
                <OpenDriveProperties z:Id="i1291">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1292">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1293">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.75</Width>
                <OuterLineProperty z:Id="i1294">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1295">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1296">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>0</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>0</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0</Margin>
                  </LineConnector>
                  <Type>Custom</Type>
                </OuterLineProperty>
              </Lane>
              <Lane z:Id="i1297">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-2</LaneIndex>
                <OpenDriveProperties z:Id="i1298">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i1299">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i1300">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.75</Width>
                <OuterLineProperty z:Id="i1301">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i1302">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i1303">
                      <PropertyReferenceList xmlns:d12p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                      <LineColor xmlns:d12p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                        <d12p1:knownColor>164</d12p1:knownColor>
                        <d12p1:name i:nil="true" />
                        <d12p1:state>1</d12p1:state>
                        <d12p1:value>0</d12p1:value>
                      </LineColor>
                      <LineTexture>NoTexture</LineTexture>
                      <Offset>0</Offset>
                      <Type>SolidLine</Type>
                      <Width>0.25</Width>
                    </Line>
                    <LineDistance>0.25</LineDistance>
                    <LineDistanceColor xmlns:d11p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                      <d11p1:knownColor>27</d11p1:knownColor>
                      <d11p1:name i:nil="true" />
                      <d11p1:state>1</d11p1:state>
                      <d11p1:value>0</d11p1:value>
                    </LineDistanceColor>
                    <LineDistanceTexture>NoTexture</LineDistanceTexture>
                    <Margin>0.05</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>0</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>4.9</TransitionLength>
          </LaneSection>
          <Line z:Id="i1304">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i1305">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i1306">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>164</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineColor>
                <LineTexture>NoTexture</LineTexture>
                <Offset>0</Offset>
                <Type>SolidLine</Type>
                <Width>0.25</Width>
              </Line>
              <LineDistance>0.25</LineDistance>
              <LineDistanceColor xmlns:d8p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                <d8p1:knownColor>27</d8p1:knownColor>
                <d8p1:name i:nil="true" />
                <d8p1:state>1</d8p1:state>
                <d8p1:value>0</d8p1:value>
              </LineDistanceColor>
              <LineDistanceTexture>NoTexture</LineDistanceTexture>
              <Margin>0.05</Margin>
            </LineConnector>
            <Type>Solid</Type>
          </Line>
          <LineEndPosition z:Id="i1307">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-69.43913337730135</AngleZ>
            <Z>6</Z>
            <X>-321.3507521088102</X>
            <Y>-721.7047677358123</Y>
          </LineEndPosition>
          <LinePath z:Id="i1308" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>20.27274852704773</Length>
            <AbsoluteStartPosition z:Id="i1309">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-325.54249037270307</X>
              <Y>-701.9163884356519</Y>
              <Tangent>-69.43913337730135</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i1310">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i1311">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>20.22747203681171</X>
              <Y>0</Y>
            </B>
            <C z:Id="i1312">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-0.682416110435156</X>
              <Y>-9.075000000000015</Y>
            </C>
            <D z:Id="i1313">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0.45494407362343736</X>
              <Y>6.0500000000000105</Y>
            </D>
            <RelativeEndVector z:Id="i1314">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>19.999999999999993</X>
              <Y>-3.0250000000000052</Y>
              <Tangent>0</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i1315">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>-0</AngleY>
            <AngleZ>110.56086662269865</AngleZ>
            <Z>6</Z>
            <X>-325.54249037270307</X>
            <Y>-701.9163884356519</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i1316" i:type="ESBatter">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements>
              <EnvironmentElement z:Id="i1317" i:type="ESBatterItem">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>true</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Batter</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i1318" i:type="ESScenerySectionFloor">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>ScenerySectionFloor</Type>
                <Width>10</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i1319" i:type="ESEmbankment">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Embankment</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
            </EnvironmentElements>
            <SpeedLimit>200</SpeedLimit>
            <Type>Batter</Type>
          </Scenery>
        </JunctionConnectionPoint>
      </ConnectionPoints>
      <CubicHeightSplines />
      <LaneWidth>3.5</LaneWidth>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i1320" />
      <ReferencePoint z:Id="i1321">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <AngleX>0</AngleX>
        <AngleY>0</AngleY>
        <AngleZ>-69.43913337730135</AngleZ>
        <Z>6</Z>
        <X>-316.76378264989336</X>
        <Y>-709.3038721559373</Y>
      </ReferencePoint>
      <V2XEnabled>false</V2XEnabled>
      <V2XTrafficLightController z:Id="i1322">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <SignalGroups z:Id="i1323" />
      </V2XTrafficLightController>
    </Junction>
  </Junctions>
  <Routes z:Id="i1324">
    <Route z:Id="i1325">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Route 1</Name>
      <Author></Author>
      <CreationDate>2019-02-19T03:30:35.5657936+01:00</CreationDate>
      <Description></Description>
      <ID>1</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i1326">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i768" />
          <Path i:nil="true" />
          <Start z:Ref="i766" />
        </RouteSection>
        <RouteSection z:Id="i1327">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i1260" />
          <Path i:nil="true" />
          <Start z:Ref="i1187" />
        </RouteSection>
        <RouteSection z:Id="i1328">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i859" />
          <Path i:nil="true" />
          <Start z:Ref="i861" />
        </RouteSection>
        <RouteSection z:Id="i1329">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i1082" />
          <Path i:nil="true" />
          <Start z:Ref="i1022" />
        </RouteSection>
        <RouteSection z:Id="i1330">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i481" />
          <Path i:nil="true" />
          <Start z:Ref="i479" />
        </RouteSection>
        <RouteSection z:Id="i1331">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i916" />
          <Path i:nil="true" />
          <Start z:Ref="i866" />
        </RouteSection>
        <RouteSection z:Id="i1332">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i160" />
          <Path i:nil="true" />
          <Start z:Ref="i158" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i1333">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Route 2</Name>
      <Author></Author>
      <CreationDate>2021-07-15T05:09:30.1152606+02:00</CreationDate>
      <Description></Description>
      <ID>2</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i1334">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i768" />
          <Path i:nil="true" />
          <Start z:Ref="i766" />
        </RouteSection>
        <RouteSection z:Id="i1335">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i1260" />
          <Path i:nil="true" />
          <Start z:Ref="i1187" />
        </RouteSection>
        <RouteSection z:Id="i1336">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i859" />
          <Path i:nil="true" />
          <Start z:Ref="i861" />
        </RouteSection>
        <RouteSection z:Id="i1337">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i1082" />
          <Path i:nil="true" />
          <Start z:Ref="i1022" />
        </RouteSection>
        <RouteSection z:Id="i1338">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i481" />
          <Path i:nil="true" />
          <Start z:Ref="i479" />
        </RouteSection>
        <RouteSection z:Id="i1339">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i966" />
          <Path i:nil="true" />
          <Start z:Ref="i866" />
        </RouteSection>
        <RouteSection z:Id="i1340">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i559" />
          <Path i:nil="true" />
          <Start z:Ref="i557" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i1341">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Route 3</Name>
      <Author></Author>
      <CreationDate>2021-07-15T11:23:29.5680055+02:00</CreationDate>
      <Description></Description>
      <ID>3</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i1342">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i160" />
          <Path i:nil="true" />
          <Start z:Ref="i158" />
        </RouteSection>
      </Sections>
    </Route>
  </Routes>
  <ObjectList />
  <AliasList z:Id="i1343">
    <AliasType xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">Road</AliasType>
    <AliasVariableList xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common" />
    <IsPlain xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">false</IsPlain>
    <Source xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">CHN_GongHeXinRoad.rd</Source>
  </AliasList>
</RoadNetwork>