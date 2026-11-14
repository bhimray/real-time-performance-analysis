<?xml version="1.0" encoding="utf-8"?>
<RoadNetwork xmlns:i="http://www.w3.org/2001/XMLSchema-instance" z:Id="i1" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Road">
  <PropertyReferenceList xmlns:d2p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
  <Name>FourWayJunction_2Lanes</Name>
  <Author></Author>
  <CreationDate>2013-01-25T13:09:56.1155226+01:00</CreationDate>
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
  <Version>105</Version>
  <Roads z:Id="i13">
    <Road z:Id="i14">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Road 1</Name>
      <Author></Author>
      <CreationDate>2013-01-25T13:09:56.1505247+01:00</CreationDate>
      <Description></Description>
      <Objects>
        <EnvironmentObjects z:Id="i15" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Speed_limit_50</Name>
          <Author></Author>
          <CreationDate>2014-02-12T13:53:39.2677618+01:00</CreationDate>
          <Description>Road 1</Description>
          <ID>1000</ID>
          <Owner z:Ref="i14" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>0</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>0</RelativeAngleZ>
          <RelativeZ>2</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i16">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>GER</CurrentState>
                <Name>Country</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Höchstgeschwindigkeit 50</CurrentState>
                <Name>Signs</Name>
              </SubObject>
              <SubObject>
                <CurrentState>420 mm</CurrentState>
                <Name>Sign Size</Name>
              </SubObject>
              <SubObject>
                <CurrentState>60 mm</CurrentState>
                <Name>Pole Type</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Show</CurrentState>
                <Name>Show Pole</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>25cefedb-afb9-4343-9711-335d74117e71</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Speed_limit_50.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>-110</X>
          <Y>-4</Y>
          <Z>2</Z>
          <D>-4</D>
          <S>400</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i17" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Speed_limit_50</Name>
          <Author></Author>
          <CreationDate>2014-02-12T14:38:59.6977776+01:00</CreationDate>
          <Description>Road 1</Description>
          <ID>1011</ID>
          <Owner z:Ref="i14" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>180</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>-180</RelativeAngleZ>
          <RelativeZ>2</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i18">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>GER</CurrentState>
                <Name>Country</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Höchstgeschwindigkeit 50</CurrentState>
                <Name>Signs</Name>
              </SubObject>
              <SubObject>
                <CurrentState>420 mm</CurrentState>
                <Name>Sign Size</Name>
              </SubObject>
              <SubObject>
                <CurrentState>60 mm</CurrentState>
                <Name>Pole Type</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Show</CurrentState>
                <Name>Show Pole</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>25cefedb-afb9-4343-9711-335d74117e71</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Speed_limit_50.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>-30</X>
          <Y>4</Y>
          <Z>2</Z>
          <D>4</D>
          <S>480</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i19" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_post</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:10:28.7576975+02:00</CreationDate>
          <Description>Road 1</Description>
          <ID>1002</ID>
          <Owner z:Ref="i14" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>0</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\_BasicPresets\$TrafficLight_Pole_R_Long\TrafficLight_Pole_R_Long.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>0</RelativeAngleZ>
          <RelativeZ>0.0007019999902695417</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i20">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates />
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\_BasicPresets\$TrafficLight_Pole_R_Long\TrafficLight_Pole_R_Long.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>afedcdd7-fb6f-4b36-a708-35c352ee0bda</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_post.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>-10.199999999999989</X>
          <Y>-5</Y>
          <Z>0.0007019999902695417</Z>
          <D>-5</D>
          <S>499.8</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i21" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_signal</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:18:31.6956975+02:00</CreationDate>
          <Description>Road 1</Description>
          <ID>1006</ID>
          <Owner z:Ref="i14" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>0</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>0</RelativeAngleZ>
          <RelativeZ>4.2</RelativeZ>
          <StreamId>5</StreamId>
          <TrafficObjectContainer z:Id="i22">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>off</CurrentState>
                <Name>Light signal</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
            <Dynamic>true</Dynamic>
            <TrafficObjectGuid>1c37c4ad-5b93-473a-8d56-5099e5dbeff2</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_signal.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>-10.199999999999989</X>
          <Y>-2.5</Y>
          <Z>4.2</Z>
          <D>-2.5</D>
          <S>499.8</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i23" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_signal</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:20:32.7576975+02:00</CreationDate>
          <Description>Road 1</Description>
          <ID>1008</ID>
          <Owner z:Ref="i14" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>0</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>0</RelativeAngleZ>
          <RelativeZ>2.4</RelativeZ>
          <StreamId>5</StreamId>
          <TrafficObjectContainer z:Id="i24">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>off</CurrentState>
                <Name>Light signal</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
            <Dynamic>true</Dynamic>
            <TrafficObjectGuid>1c37c4ad-5b93-473a-8d56-5099e5dbeff2</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_signal.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>-10.199999999999989</X>
          <Y>-5</Y>
          <Z>2.4</Z>
          <D>-5</D>
          <S>499.8</S>
        </EnvironmentObjects>
      </Objects>
      <PositionMarkers />
      <SurfaceCondition z:Id="i25" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <EnvironmentSections z:Id="i26">
        <EnvironmentSection z:Id="i27" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery Section 1</Name>
          <Length>100</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i28" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i29" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i30" i:type="ESEmbankment">
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
        <EnvironmentSection z:Id="i31" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>400</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i32" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i33" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i34" i:type="ESEmbankment">
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
      <Heights z:Id="i35">
        <Height z:Id="i36">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <H>0</H>
          <TransitionLength>2</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i37">
        <LaneSection z:Id="i38">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Lane Section 1</Name>
          <Length>500</Length>
          <CenterLane z:Id="i39">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>074c3284-3fea-4c5d-ad97-469bff9c5b41</ID>
            <DrivingDirection>Direct</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i40">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i41">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i42">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>500</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i43">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i44">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i45" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0.5</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>1</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>1</LineLength>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i46">
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
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i49">
            <Lane z:Id="i50">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>6eedb44a-6295-4ea7-8ea4-9594e5289b5f</ID>
              <DrivingDirection>Oncoming</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i51">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i52">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i53">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>500</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i54">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i55">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i56">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>-1.75</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i57">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>100</Length>
          <CenterLane z:Id="i58">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>4a7fa7ce-3250-4b20-9fde-6723d87939f9</ID>
            <DrivingDirection>Direct</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i59">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i60">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i61">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>100</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i62">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i63">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i64" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0.5</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>1</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>1</LineLength>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i65">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i66">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i67">
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
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i68">
            <Lane z:Id="i69">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>f1041eaf-0496-4296-a6bc-850c7a9a9249</ID>
              <DrivingDirection>Oncoming</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i70">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i71">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i72">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i73">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i74">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i75">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>-1.75</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i76">
        <LateralSlope z:Id="i77">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i78">
        <MapOfRoadMapPoint z:Id="i79" i:type="TextureMapOfRoadMapPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Zebra crossing</Name>
          <StartPoint z:Id="i80">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>486</X>
            <Y>0</Y>
          </StartPoint>
          <Type>TextureMap</Type>
          <Length>4</Length>
          <Width>7</Width>
          <Orientation>Direct</Orientation>
          <Texture>ZebraCrossing</Texture>
        </MapOfRoadMapPoint>
        <MapOfRoadMapPoint z:Id="i81" i:type="TextureMapOfRoadMapPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Stop line</Name>
          <StartPoint z:Id="i82">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>499.4</X>
            <Y>-1.7</Y>
          </StartPoint>
          <Type>TextureMap</Type>
          <Length>0.2</Length>
          <Width>3.5</Width>
          <Orientation>Direct</Orientation>
          <Texture>StopLine</Texture>
        </MapOfRoadMapPoint>
      </Maps>
      <RoadClosed>false</RoadClosed>
      <RoadEndPosition z:Id="i83">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>-10</X>
        <Y>0</Y>
        <Tangent>0</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i84">
        <Segment z:Id="i85" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 1</Name>
          <Length>500</Length>
          <AbsoluteStartPosition z:Id="i86">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-510</X>
            <Y>0</Y>
            <Tangent>0</Tangent>
          </AbsoluteStartPosition>
        </Segment>
      </Segments>
      <StartParameter z:Id="i87">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>-510</X>
        <Y>0</Y>
        <Tangent>0</Tangent>
      </StartParameter>
      <HeightInterpolation>Linear</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i88" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>76f1d99c-6738-42c6-98ca-bf8c3a568249</ID>
          <Owner z:Ref="i14" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i89" i:type="RoadConnectionPointStartPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-180</AngleZ>
            <Z>0</Z>
            <X>-510</X>
            <Y>0</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
        <RoadConnectionPoint z:Id="i90" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>0e14a474-ba68-4e98-af88-6606c96ffd28</ID>
          <CounterPartID>dfddfd47-1db3-407e-9d99-582bd2b7c776</CounterPartID>
          <Owner z:Ref="i14" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i91" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>0</AngleZ>
            <Z>0</Z>
            <X>-10</X>
            <Y>0</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
      </ConnectionPoints>
      <DirectLanes>1</DirectLanes>
      <OncomingLanes>1</OncomingLanes>
      <TrafficType>RightHandTraffic</TrafficType>
    </Road>
    <Road z:Id="i92">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Road 2</Name>
      <Author></Author>
      <CreationDate>2013-01-25T13:09:56.1505247+01:00</CreationDate>
      <Description></Description>
      <Objects>
        <EnvironmentObjects z:Id="i93" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Speed_limit_50</Name>
          <Author></Author>
          <CreationDate>2014-02-12T14:23:21.3639536+01:00</CreationDate>
          <Description>Road 2</Description>
          <ID>1007</ID>
          <Owner z:Ref="i92" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>0</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>0</RelativeAngleZ>
          <RelativeZ>2</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i94">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>GER</CurrentState>
                <Name>Country</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Höchstgeschwindigkeit 50</CurrentState>
                <Name>Signs</Name>
              </SubObject>
              <SubObject>
                <CurrentState>420 mm</CurrentState>
                <Name>Sign Size</Name>
              </SubObject>
              <SubObject>
                <CurrentState>60 mm</CurrentState>
                <Name>Pole Type</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Show</CurrentState>
                <Name>Show Pole</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>25cefedb-afb9-4343-9711-335d74117e71</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Speed_limit_50.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>30</X>
          <Y>-4</Y>
          <Z>2</Z>
          <D>-4</D>
          <S>20</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i95" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Speed_limit_50</Name>
          <Author></Author>
          <CreationDate>2014-02-12T14:42:09.7257785+01:00</CreationDate>
          <Description>Road 2</Description>
          <ID>1013</ID>
          <Owner z:Ref="i92" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>180</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>-180</RelativeAngleZ>
          <RelativeZ>2</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i96">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>GER</CurrentState>
                <Name>Country</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Höchstgeschwindigkeit 50</CurrentState>
                <Name>Signs</Name>
              </SubObject>
              <SubObject>
                <CurrentState>420 mm</CurrentState>
                <Name>Sign Size</Name>
              </SubObject>
              <SubObject>
                <CurrentState>60 mm</CurrentState>
                <Name>Pole Type</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Show</CurrentState>
                <Name>Show Pole</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>25cefedb-afb9-4343-9711-335d74117e71</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Speed_limit_50.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>110</X>
          <Y>4</Y>
          <Z>2</Z>
          <D>4</D>
          <S>100</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i97" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_post</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:12:18.6226975+02:00</CreationDate>
          <Description>Road 2</Description>
          <ID>1003</ID>
          <Owner z:Ref="i92" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>-180</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\_BasicPresets\$TrafficLight_Pole_R_Long\TrafficLight_Pole_R_Long.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>180</RelativeAngleZ>
          <RelativeZ>0.0007019999902695417</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i98">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates />
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\_BasicPresets\$TrafficLight_Pole_R_Long\TrafficLight_Pole_R_Long.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>afedcdd7-fb6f-4b36-a708-35c352ee0bda</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_post.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>10.2</X>
          <Y>5</Y>
          <Z>0.0007019999902695417</Z>
          <D>5</D>
          <S>0.2</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i99" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_signal</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:22:17.5726975+02:00</CreationDate>
          <Description>Road 2</Description>
          <ID>1010</ID>
          <Owner z:Ref="i92" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>-180</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>180</RelativeAngleZ>
          <RelativeZ>2.4</RelativeZ>
          <StreamId>5</StreamId>
          <TrafficObjectContainer z:Id="i100">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>off</CurrentState>
                <Name>Light signal</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
            <Dynamic>true</Dynamic>
            <TrafficObjectGuid>1c37c4ad-5b93-473a-8d56-5099e5dbeff2</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_signal.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>10.2</X>
          <Y>5</Y>
          <Z>2.4</Z>
          <D>5</D>
          <S>0.2</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i101" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_signal</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:23:07.2726975+02:00</CreationDate>
          <Description>Road 2</Description>
          <ID>1015</ID>
          <Owner z:Ref="i92" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>-180</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>180</RelativeAngleZ>
          <RelativeZ>4.2</RelativeZ>
          <StreamId>5</StreamId>
          <TrafficObjectContainer z:Id="i102">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>off</CurrentState>
                <Name>Light signal</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
            <Dynamic>true</Dynamic>
            <TrafficObjectGuid>1c37c4ad-5b93-473a-8d56-5099e5dbeff2</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_signal.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>10.2</X>
          <Y>2.4</Y>
          <Z>4.2</Z>
          <D>2.4</D>
          <S>0.2</S>
        </EnvironmentObjects>
      </Objects>
      <PositionMarkers />
      <SurfaceCondition z:Id="i103" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <EnvironmentSections z:Id="i104">
        <EnvironmentSection z:Id="i105" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery Section 1</Name>
          <Length>100</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i106" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i107" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i108" i:type="ESEmbankment">
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
        <EnvironmentSection z:Id="i109" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>400</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i110" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i111" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i112" i:type="ESEmbankment">
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
      <Heights z:Id="i113">
        <Height z:Id="i114">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <H>0</H>
          <TransitionLength>2</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i115">
        <LaneSection z:Id="i116">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Lane Section 1</Name>
          <Length>500</Length>
          <CenterLane z:Id="i117">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>cd18db4d-2414-4e7b-8b83-98a28b94ef41</ID>
            <DrivingDirection>Direct</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i118">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i119">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i120">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>500</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i121">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i122">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i123" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0.5</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>1</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>1</LineLength>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i124">
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
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i127">
            <Lane z:Id="i128">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>4258aeec-6d05-4184-9f68-592facad0cb1</ID>
              <DrivingDirection>Oncoming</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i129">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i130">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i131">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>500</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i132">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i133">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i134">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>-1.75</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i135">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>100</Length>
          <CenterLane z:Id="i136">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>3790f15a-1238-44af-8f06-b7ddeeabb976</ID>
            <DrivingDirection>Direct</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i137">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i138">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i139">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>100</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i140">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i141">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i142" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0.5</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>1</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>1</LineLength>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i143">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i144">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i145">
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
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i146">
            <Lane z:Id="i147">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>c921fe2b-68bf-476f-803a-026108d1e575</ID>
              <DrivingDirection>Oncoming</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i148">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i149">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i150">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i151">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i152">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i153">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>-1.75</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i154">
        <LateralSlope z:Id="i155">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i156">
        <MapOfRoadMapPoint z:Id="i157" i:type="TextureMapOfRoadMapPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Stop line</Name>
          <StartPoint z:Id="i158">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0.4</X>
            <Y>1.7</Y>
          </StartPoint>
          <Type>TextureMap</Type>
          <Length>0.2</Length>
          <Width>3.5</Width>
          <Orientation>Direct</Orientation>
          <Texture>StopLine</Texture>
        </MapOfRoadMapPoint>
        <MapOfRoadMapPoint z:Id="i159" i:type="TextureMapOfRoadMapPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Zebra crossing</Name>
          <StartPoint z:Id="i160">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>10</X>
            <Y>0</Y>
          </StartPoint>
          <Type>TextureMap</Type>
          <Length>4</Length>
          <Width>7</Width>
          <Orientation>Direct</Orientation>
          <Texture>ZebraCrossing</Texture>
        </MapOfRoadMapPoint>
      </Maps>
      <RoadClosed>false</RoadClosed>
      <RoadEndPosition z:Id="i161">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>510</X>
        <Y>0</Y>
        <Tangent>0</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i162">
        <Segment z:Id="i163" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 1</Name>
          <Length>500</Length>
          <AbsoluteStartPosition z:Id="i164">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>10</X>
            <Y>0</Y>
            <Tangent>0</Tangent>
          </AbsoluteStartPosition>
        </Segment>
      </Segments>
      <StartParameter z:Id="i165">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>10</X>
        <Y>0</Y>
        <Tangent>0</Tangent>
      </StartParameter>
      <HeightInterpolation>Linear</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i166" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>5a8226a6-3462-4d0e-9ebd-f4dc0698d4cb</ID>
          <CounterPartID>b594d3e5-a778-4dce-9325-bfc37ae60b6c</CounterPartID>
          <Owner z:Ref="i92" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i167" i:type="RoadConnectionPointStartPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-180</AngleZ>
            <Z>0</Z>
            <X>10</X>
            <Y>0</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
        <RoadConnectionPoint z:Id="i168" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>84c44a40-f928-4220-9423-0d21daccd7f2</ID>
          <Owner z:Ref="i92" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i169" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>0</AngleZ>
            <Z>0</Z>
            <X>510</X>
            <Y>0</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
      </ConnectionPoints>
      <DirectLanes>1</DirectLanes>
      <OncomingLanes>1</OncomingLanes>
      <TrafficType>RightHandTraffic</TrafficType>
    </Road>
    <Road z:Id="i170">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Road 3</Name>
      <Author></Author>
      <CreationDate>2013-01-25T13:09:56.1505247+01:00</CreationDate>
      <Description></Description>
      <Objects>
        <EnvironmentObjects z:Id="i171" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Speed_limit_50</Name>
          <Author></Author>
          <CreationDate>2014-02-12T14:19:35.1863381+01:00</CreationDate>
          <Description>Road 3</Description>
          <ID>1004</ID>
          <Owner z:Ref="i170" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>90</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>0</RelativeAngleZ>
          <RelativeZ>2</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i172">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>GER</CurrentState>
                <Name>Country</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Höchstgeschwindigkeit 50</CurrentState>
                <Name>Signs</Name>
              </SubObject>
              <SubObject>
                <CurrentState>420 mm</CurrentState>
                <Name>Sign Size</Name>
              </SubObject>
              <SubObject>
                <CurrentState>60 mm</CurrentState>
                <Name>Pole Type</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Show</CurrentState>
                <Name>Show Pole</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>25cefedb-afb9-4343-9711-335d74117e71</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Speed_limit_50.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>4</X>
          <Y>30</Y>
          <Z>2</Z>
          <D>-4</D>
          <S>20</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i173" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Speed_limit_50</Name>
          <Author></Author>
          <CreationDate>2014-02-12T14:42:51.1989254+01:00</CreationDate>
          <Description>Road 3</Description>
          <ID>1014</ID>
          <Owner z:Ref="i170" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>-90</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>-180</RelativeAngleZ>
          <RelativeZ>2</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i174">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>GER</CurrentState>
                <Name>Country</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Höchstgeschwindigkeit 50</CurrentState>
                <Name>Signs</Name>
              </SubObject>
              <SubObject>
                <CurrentState>420 mm</CurrentState>
                <Name>Sign Size</Name>
              </SubObject>
              <SubObject>
                <CurrentState>60 mm</CurrentState>
                <Name>Pole Type</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Show</CurrentState>
                <Name>Show Pole</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>25cefedb-afb9-4343-9711-335d74117e71</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Speed_limit_50.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>-4</X>
          <Y>110</Y>
          <Z>2</Z>
          <D>4</D>
          <S>100</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i175" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_post</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:11:52.7766975+02:00</CreationDate>
          <Description>Road 3</Description>
          <ID>1001</ID>
          <Owner z:Ref="i170" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>-90</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\_BasicPresets\$TrafficLight_Pole_R_Long\TrafficLight_Pole_R_Long.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>180</RelativeAngleZ>
          <RelativeZ>0.0007019999902695417</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i176">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates />
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\_BasicPresets\$TrafficLight_Pole_R_Long\TrafficLight_Pole_R_Long.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>afedcdd7-fb6f-4b36-a708-35c352ee0bda</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_post.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>-5</X>
          <Y>10.2</Y>
          <Z>0.0007019999902695417</Z>
          <D>5</D>
          <S>0.2</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i177" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_signal</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:25:56.2526975+02:00</CreationDate>
          <Description>Road 3</Description>
          <ID>1018</ID>
          <Owner z:Ref="i170" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>-90</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>180</RelativeAngleZ>
          <RelativeZ>2.4</RelativeZ>
          <StreamId>6</StreamId>
          <TrafficObjectContainer z:Id="i178">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>off</CurrentState>
                <Name>Light signal</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
            <Dynamic>true</Dynamic>
            <TrafficObjectGuid>1c37c4ad-5b93-473a-8d56-5099e5dbeff2</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_signal.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>-5</X>
          <Y>10.2</Y>
          <Z>2.4</Z>
          <D>5</D>
          <S>0.2</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i179" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_signal</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:26:10.1146975+02:00</CreationDate>
          <Description>Road 3</Description>
          <ID>1019</ID>
          <Owner z:Ref="i170" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>-90</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>180</RelativeAngleZ>
          <RelativeZ>4.2</RelativeZ>
          <StreamId>6</StreamId>
          <TrafficObjectContainer z:Id="i180">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>off</CurrentState>
                <Name>Light signal</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
            <Dynamic>true</Dynamic>
            <TrafficObjectGuid>1c37c4ad-5b93-473a-8d56-5099e5dbeff2</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_signal.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>-2.4</X>
          <Y>10.2</Y>
          <Z>4.2</Z>
          <D>2.4</D>
          <S>0.2</S>
        </EnvironmentObjects>
      </Objects>
      <PositionMarkers />
      <SurfaceCondition z:Id="i181" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <EnvironmentSections z:Id="i182">
        <EnvironmentSection z:Id="i183" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery Section 1</Name>
          <Length>100</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i184" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i185" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i186" i:type="ESEmbankment">
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
        <EnvironmentSection z:Id="i187" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>400</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i188" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i189" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i190" i:type="ESEmbankment">
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
      <Heights z:Id="i191">
        <Height z:Id="i192">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <H>0</H>
          <TransitionLength>2</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i193">
        <LaneSection z:Id="i194">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Lane Section 1</Name>
          <Length>500</Length>
          <CenterLane z:Id="i195">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>b200f5a9-eaef-44d4-895d-b9208be2ee93</ID>
            <DrivingDirection>Direct</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i196">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i197">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i198">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>500</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i199">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i200">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i201" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0.5</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>1</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>1</LineLength>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i202">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i203">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i204">
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
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i205">
            <Lane z:Id="i206">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>c818333a-3051-4df8-8ca7-2c43718f5061</ID>
              <DrivingDirection>Oncoming</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i207">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i208">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i209">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>500</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i210">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i211">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i212">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>-1.75</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i213">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>100</Length>
          <CenterLane z:Id="i214">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>0b3fa71d-70fb-4ce5-9ebf-5baecaa805a6</ID>
            <DrivingDirection>Direct</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i215">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i216">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i217">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>100</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i218">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i219">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i220" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0.5</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>1</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>1</LineLength>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i221">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i222">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i223">
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
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i224">
            <Lane z:Id="i225">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>701dcdd7-784f-45c3-996e-bff174c14466</ID>
              <DrivingDirection>Oncoming</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i226">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i227">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i228">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i229">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i230">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i231">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>-1.75</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i232">
        <LateralSlope z:Id="i233">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i234" />
      <RoadClosed>false</RoadClosed>
      <RoadEndPosition z:Id="i235">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>0</X>
        <Y>510</Y>
        <Tangent>90</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i236">
        <Segment z:Id="i237" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 1</Name>
          <Length>500</Length>
          <AbsoluteStartPosition z:Id="i238">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>10</Y>
            <Tangent>90</Tangent>
          </AbsoluteStartPosition>
        </Segment>
      </Segments>
      <StartParameter z:Id="i239">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>0</X>
        <Y>10</Y>
        <Tangent>90</Tangent>
      </StartParameter>
      <HeightInterpolation>Linear</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i240" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>98d62966-0d8b-4612-98bd-b2a07250bd21</ID>
          <CounterPartID>0b348ce3-cfbe-4a71-b699-ec6ee2f3cd52</CounterPartID>
          <Owner z:Ref="i170" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i241" i:type="RoadConnectionPointStartPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-90</AngleZ>
            <Z>0</Z>
            <X>0</X>
            <Y>10</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
        <RoadConnectionPoint z:Id="i242" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>99babfb6-e733-4dc7-8fcf-ba1c32b7ee79</ID>
          <Owner z:Ref="i170" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i243" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>90</AngleZ>
            <Z>0</Z>
            <X>0</X>
            <Y>510</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
      </ConnectionPoints>
      <DirectLanes>1</DirectLanes>
      <OncomingLanes>1</OncomingLanes>
      <TrafficType>RightHandTraffic</TrafficType>
    </Road>
    <Road z:Id="i244">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Road 4</Name>
      <Author></Author>
      <CreationDate>2013-01-25T13:09:56.1505247+01:00</CreationDate>
      <Description></Description>
      <Objects>
        <EnvironmentObjects z:Id="i245" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Speed_limit_50</Name>
          <Author></Author>
          <CreationDate>2014-02-12T14:24:24.8683034+01:00</CreationDate>
          <Description>Road 4</Description>
          <ID>1009</ID>
          <Owner z:Ref="i244" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>-90</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>-180</RelativeAngleZ>
          <RelativeZ>2</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i246">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>GER</CurrentState>
                <Name>Country</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Höchstgeschwindigkeit 50</CurrentState>
                <Name>Signs</Name>
              </SubObject>
              <SubObject>
                <CurrentState>420 mm</CurrentState>
                <Name>Sign Size</Name>
              </SubObject>
              <SubObject>
                <CurrentState>60 mm</CurrentState>
                <Name>Pole Type</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Show</CurrentState>
                <Name>Show Pole</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>25cefedb-afb9-4343-9711-335d74117e71</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Speed_limit_50.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>-4</X>
          <Y>-30</Y>
          <Z>2</Z>
          <D>4</D>
          <S>480</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i247" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Speed_limit_50</Name>
          <Author></Author>
          <CreationDate>2014-02-12T14:40:46.942501+01:00</CreationDate>
          <Description>Road 4</Description>
          <ID>1012</ID>
          <Owner z:Ref="i244" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>90</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>0</RelativeAngleZ>
          <RelativeZ>2</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i248">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>GER</CurrentState>
                <Name>Country</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Höchstgeschwindigkeit 50</CurrentState>
                <Name>Signs</Name>
              </SubObject>
              <SubObject>
                <CurrentState>420 mm</CurrentState>
                <Name>Sign Size</Name>
              </SubObject>
              <SubObject>
                <CurrentState>60 mm</CurrentState>
                <Name>Pole Type</Name>
              </SubObject>
              <SubObject>
                <CurrentState>Show</CurrentState>
                <Name>Show Pole</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Signs\TrafficSigns\GER\$274-50 Höchstgeschwindigkei\274-50 Höchstgeschwindigkei.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>25cefedb-afb9-4343-9711-335d74117e71</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Speed_limit_50.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>4</X>
          <Y>-110</Y>
          <Z>2</Z>
          <D>-4</D>
          <S>400</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i249" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_post</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:12:52.2586975+02:00</CreationDate>
          <Description>Road 4</Description>
          <ID>1005</ID>
          <Owner z:Ref="i244" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>90</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\_BasicPresets\$TrafficLight_Pole_R_Long\TrafficLight_Pole_R_Long.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>0</RelativeAngleZ>
          <RelativeZ>0.0007019999902695417</RelativeZ>
          <StreamId>1</StreamId>
          <TrafficObjectContainer z:Id="i250">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates />
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\_BasicPresets\$TrafficLight_Pole_R_Long\TrafficLight_Pole_R_Long.dae</DAEPath>
            <Dynamic>false</Dynamic>
            <TrafficObjectGuid>afedcdd7-fb6f-4b36-a708-35c352ee0bda</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_post.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>5</X>
          <Y>-10.199999999999989</Y>
          <Z>0.0007019999902695417</Z>
          <D>-5</D>
          <S>499.8</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i251" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_signal</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:24:21.5156975+02:00</CreationDate>
          <Description>Road 4</Description>
          <ID>1016</ID>
          <Owner z:Ref="i244" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>90</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>0</RelativeAngleZ>
          <RelativeZ>2.4</RelativeZ>
          <StreamId>6</StreamId>
          <TrafficObjectContainer z:Id="i252">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>off</CurrentState>
                <Name>Light signal</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
            <Dynamic>true</Dynamic>
            <TrafficObjectGuid>1c37c4ad-5b93-473a-8d56-5099e5dbeff2</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_signal.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>5</X>
          <Y>-10.199999999999989</Y>
          <Z>2.4</Z>
          <D>-5</D>
          <S>499.8</S>
        </EnvironmentObjects>
        <EnvironmentObjects z:Id="i253" i:type="RoadObject">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Traffic_light_signal</Name>
          <Author></Author>
          <CreationDate>2017-07-26T15:24:54.4166975+02:00</CreationDate>
          <Description>Road 4</Description>
          <ID>1017</ID>
          <Owner z:Ref="i244" />
          <AngleX>0</AngleX>
          <AngleY>0</AngleY>
          <AngleZ>90</AngleZ>
          <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
          <EnableAbsoluteCoordinates>false</EnableAbsoluteCoordinates>
          <LaneMapping xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
            <d6p1:int>0</d6p1:int>
          </LaneMapping>
          <Parent i:nil="true" />
          <RelativeAngleX>0</RelativeAngleX>
          <RelativeAngleY>0</RelativeAngleY>
          <RelativeAngleZ>0</RelativeAngleZ>
          <RelativeZ>4.2</RelativeZ>
          <StreamId>6</StreamId>
          <TrafficObjectContainer z:Id="i254">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <ActiveStates>
              <SubObject>
                <CurrentState>off</CurrentState>
                <Name>Light signal</Name>
              </SubObject>
            </ActiveStates>
            <DAEPath>%customer_objects%\AURELION\Traffic\TrafficLights\GER_TrafficLights\3\$Ger_TrafficLight_ryg\Ger_TrafficLight_ryg.dae</DAEPath>
            <Dynamic>true</Dynamic>
            <TrafficObjectGuid>1c37c4ad-5b93-473a-8d56-5099e5dbeff2</TrafficObjectGuid>
            <TrafficObjectPath>Objects\Traffic Signs\Traffic_light_signal.tro</TrafficObjectPath>
          </TrafficObjectContainer>
          <UseLaneMapping>false</UseLaneMapping>
          <X>2.4</X>
          <Y>-10.199999999999989</Y>
          <Z>4.2</Z>
          <D>-2.4</D>
          <S>499.8</S>
        </EnvironmentObjects>
      </Objects>
      <PositionMarkers />
      <SurfaceCondition z:Id="i255" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <EnvironmentSections z:Id="i256">
        <EnvironmentSection z:Id="i257" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery Section 1</Name>
          <Length>100</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i258" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i259" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i260" i:type="ESEmbankment">
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
        <EnvironmentSection z:Id="i261" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>400</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i262" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i263" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i264" i:type="ESEmbankment">
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
      <Heights z:Id="i265">
        <Height z:Id="i266">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <H>0</H>
          <TransitionLength>2</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i267">
        <LaneSection z:Id="i268">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Lane Section 1</Name>
          <Length>500</Length>
          <CenterLane z:Id="i269">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>0acde30c-b4f7-4ab4-a522-d205bb505de0</ID>
            <DrivingDirection>Direct</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i270">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i271">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i272">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>500</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i273">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i274">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i275" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0.5</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>1</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>1</LineLength>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i276">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i277">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i278">
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
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i279">
            <Lane z:Id="i280">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>17ee3531-627c-4db6-b535-779436a83eab</ID>
              <DrivingDirection>Oncoming</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i281">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i282">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i283">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>500</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i284">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i285">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i286">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>-1.75</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i287">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>100</Length>
          <CenterLane z:Id="i288">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <ID>51ac3173-6cfb-4fc6-9807-062ee7e546b1</ID>
            <DrivingDirection>Direct</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i289">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i290">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i291">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>100</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>3.5</Width>
            <LeftLineProperty z:Id="i292">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i293">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i294" i:type="DashLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0.5</Offset>
                  <Type>DashLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>1</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>1</LineLength>
                </Line>
                <LineDistance>0.25</LineDistance>
                <LineDistanceColor xmlns:d9p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                  <d9p1:knownColor>27</d9p1:knownColor>
                  <d9p1:name i:nil="true" />
                  <d9p1:state>1</d9p1:state>
                  <d9p1:value>0</d9p1:value>
                </LineDistanceColor>
                <LineDistanceTexture>NoTexture</LineDistanceTexture>
                <Margin>0</Margin>
              </LineConnector>
              <Type>Dash</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i295">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i296">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i297">
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
                <Margin>0</Margin>
              </LineConnector>
              <Type>Solid</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i298">
            <Lane z:Id="i299">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>3e02a856-e791-4598-bcf7-73de28bb42f5</ID>
              <DrivingDirection>Oncoming</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i300">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i301">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i302">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <OuterLineProperty z:Id="i303">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i304">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i305">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </OuterLineProperty>
            </Lane>
          </Lanes>
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>-1.75</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>5</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i306">
        <LateralSlope z:Id="i307">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name></Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i308" />
      <RoadClosed>false</RoadClosed>
      <RoadEndPosition z:Id="i309">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>0</X>
        <Y>-10</Y>
        <Tangent>90</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i310">
        <Segment z:Id="i311" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 1</Name>
          <Length>500</Length>
          <AbsoluteStartPosition z:Id="i312">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>-510</Y>
            <Tangent>90</Tangent>
          </AbsoluteStartPosition>
        </Segment>
      </Segments>
      <StartParameter z:Id="i313">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>0</X>
        <Y>-510</Y>
        <Tangent>90</Tangent>
      </StartParameter>
      <HeightInterpolation>Linear</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i314" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>b50d2371-c357-41af-b0c5-79131a821966</ID>
          <Owner z:Ref="i244" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i315" i:type="RoadConnectionPointStartPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-90</AngleZ>
            <Z>0</Z>
            <X>0</X>
            <Y>-510</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
        <RoadConnectionPoint z:Id="i316" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>7e3da900-97e1-474c-85d5-71417a68d689</ID>
          <CounterPartID>0f558405-2335-48ff-99f9-d73c3d3f310f</CounterPartID>
          <Owner z:Ref="i244" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i317" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>90</AngleZ>
            <Z>0</Z>
            <X>0</X>
            <Y>-10</Y>
          </Position>
          <RightSceneryOffset>0</RightSceneryOffset>
        </RoadConnectionPoint>
      </ConnectionPoints>
      <DirectLanes>1</DirectLanes>
      <OncomingLanes>1</OncomingLanes>
      <TrafficType>RightHandTraffic</TrafficType>
    </Road>
  </Roads>
  <Junctions z:Id="i318">
    <Junction z:Id="i319">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Junction 1</Name>
      <Author></Author>
      <CreationDate>2013-01-25T13:15:25.7363759+01:00</CreationDate>
      <Description></Description>
      <Objects />
      <PositionMarkers>
        <PositionMarker z:Id="i320" i:type="JunctionPositionMarker">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Marker 1</Name>
          <Author></Author>
          <CreationDate>2013-01-25T14:25:08.5097443+01:00</CreationDate>
          <Description>Junction 1</Description>
          <ID>1</ID>
          <Owner z:Ref="i319" />
          <RelativeX>0</RelativeX>
          <RelativeY>0</RelativeY>
        </PositionMarker>
      </PositionMarkers>
      <SurfaceCondition z:Id="i321" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <AdaptJunctionAutomatically>false</AdaptJunctionAutomatically>
      <ConnectionPoints>
        <JunctionConnectionPoint z:Id="i322">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>0f558405-2335-48ff-99f9-d73c3d3f310f</ID>
          <CounterPartID>7e3da900-97e1-474c-85d5-71417a68d689</CounterPartID>
          <Owner z:Ref="i319" />
          <AbsolutePosition z:Id="i323">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-90</AngleZ>
            <Z>0</Z>
            <X>0</X>
            <Y>-10</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i324">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>0</AngleZ>
            <Z>0</Z>
            <X>10</X>
            <Y>-3.7</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i325" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>9.684585358830883</Length>
            <AbsoluteStartPosition z:Id="i326">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>3.7</X>
              <Y>-10</Y>
              <Tangent>90</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i327">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i328">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>8.909545442950499</X>
              <Y>0</Y>
            </B>
            <C z:Id="i329">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.0809091140990001</X>
              <Y>-9.9904545570495</Y>
            </C>
            <D z:Id="i330">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-3.6904545570495</X>
              <Y>3.6904545570495007</Y>
            </D>
            <RelativeEndVector z:Id="i331">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>6.3</X>
              <Y>-6.3</Y>
              <Tangent>-90</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i332">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-90</AngleZ>
            <Z>0</Z>
            <X>3.7</X>
            <Y>-10</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i333">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <CenterLane z:Id="i334">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i335">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i336">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i337">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <LeftLineProperty z:Id="i338">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i339">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i340">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i341">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i342">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i343">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i344">
              <Lane z:Id="i345">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-1</LaneIndex>
                <OpenDriveProperties z:Id="i346">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i347">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i348">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i349">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i350">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i351">
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
                    <Margin>0</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>1.75</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>5</TransitionLength>
          </LaneSection>
          <Line z:Id="i352">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i353">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i354">
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
              <Margin>0</Margin>
            </LineConnector>
            <Type>Solid</Type>
          </Line>
          <LineEndPosition z:Id="i355">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>0</AngleZ>
            <Z>0</Z>
            <X>10</X>
            <Y>-3.5</Y>
          </LineEndPosition>
          <LinePath z:Id="i356" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>9.992032513079511</Length>
            <AbsoluteStartPosition z:Id="i357">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>3.5</X>
              <Y>-10</Y>
              <Tangent>90</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i358">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i359">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>9.192388155425117</X>
              <Y>0</Y>
            </B>
            <C z:Id="i360">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.1152236891497644</X>
              <Y>-10.307611844574883</Y>
            </C>
            <D z:Id="i361">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-3.807611844574882</X>
              <Y>3.8076118445748826</Y>
            </D>
            <RelativeEndVector z:Id="i362">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>6.5</X>
              <Y>-6.5</Y>
              <Tangent>-90</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i363">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-90</AngleZ>
            <Z>0</Z>
            <X>3.5</X>
            <Y>-10</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i364" i:type="ESBatter">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements>
              <EnvironmentElement z:Id="i365" i:type="ESBatterItem">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>true</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Batter</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i366" i:type="ESScenerySectionFloor">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>ScenerySectionFloor</Type>
                <Width>10</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i367" i:type="ESEmbankment">
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
        <JunctionConnectionPoint z:Id="i368">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>b594d3e5-a778-4dce-9325-bfc37ae60b6c</ID>
          <CounterPartID>5a8226a6-3462-4d0e-9ebd-f4dc0698d4cb</CounterPartID>
          <Owner z:Ref="i319" />
          <AbsolutePosition z:Id="i369">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>0</AngleZ>
            <Z>0</Z>
            <X>10</X>
            <Y>0</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i370">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>90</AngleZ>
            <Z>0</Z>
            <X>3.7</X>
            <Y>10</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i371" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>9.68458535883089</Length>
            <AbsoluteStartPosition z:Id="i372">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>10</X>
              <Y>3.7</Y>
              <Tangent>-180</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i373">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i374">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>8.909545442950499</X>
              <Y>0</Y>
            </B>
            <C z:Id="i375">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.0809091140990001</X>
              <Y>-9.990454557049503</Y>
            </C>
            <D z:Id="i376">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-3.6904545570494984</X>
              <Y>3.6904545570495024</Y>
            </D>
            <RelativeEndVector z:Id="i377">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>6.299999999999999</X>
              <Y>-6.300000000000001</Y>
              <Tangent>-90</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i378">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>0</AngleZ>
            <Z>0</Z>
            <X>10</X>
            <Y>3.7</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i379">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <CenterLane z:Id="i380">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i381">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i382">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i383">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <LeftLineProperty z:Id="i384">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i385">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i386">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i387">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i388">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i389">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i390">
              <Lane z:Id="i391">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>1</LaneIndex>
                <OpenDriveProperties z:Id="i392">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i393">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i394">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i395">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i396">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i397">
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
                    <Margin>0</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>-1.75</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>5</TransitionLength>
          </LaneSection>
          <Line z:Id="i398">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i399">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i400">
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
              <Margin>0</Margin>
            </LineConnector>
            <Type>Solid</Type>
          </Line>
          <LineEndPosition z:Id="i401">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>90</AngleZ>
            <Z>0</Z>
            <X>3.5</X>
            <Y>10</Y>
          </LineEndPosition>
          <LinePath z:Id="i402" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>9.992032513079511</Length>
            <AbsoluteStartPosition z:Id="i403">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>10</X>
              <Y>3.5</Y>
              <Tangent>-180</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i404">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i405">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>9.192388155425117</X>
              <Y>0</Y>
            </B>
            <C z:Id="i406">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.1152236891497609</X>
              <Y>-10.307611844574886</Y>
            </C>
            <D z:Id="i407">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-3.8076118445748803</X>
              <Y>3.8076118445748843</Y>
            </D>
            <RelativeEndVector z:Id="i408">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>6.499999999999999</X>
              <Y>-6.500000000000001</Y>
              <Tangent>-90</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i409">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>0</AngleZ>
            <Z>0</Z>
            <X>10</X>
            <Y>3.5</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i410" i:type="ESBatter">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements>
              <EnvironmentElement z:Id="i411" i:type="ESBatterItem">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>true</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Batter</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i412" i:type="ESScenerySectionFloor">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>ScenerySectionFloor</Type>
                <Width>10</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i413" i:type="ESEmbankment">
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
        <JunctionConnectionPoint z:Id="i414">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>0b348ce3-cfbe-4a71-b699-ec6ee2f3cd52</ID>
          <CounterPartID>98d62966-0d8b-4612-98bd-b2a07250bd21</CounterPartID>
          <Owner z:Ref="i319" />
          <AbsolutePosition z:Id="i415">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>90</AngleZ>
            <Z>0</Z>
            <X>0</X>
            <Y>10</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i416">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>-0</AngleY>
            <AngleZ>180</AngleZ>
            <Z>0</Z>
            <X>-10</X>
            <Y>3.7</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i417" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>9.684585358830883</Length>
            <AbsoluteStartPosition z:Id="i418">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-3.7</X>
              <Y>10</Y>
              <Tangent>-90</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i419">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i420">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>8.909545442950499</X>
              <Y>0</Y>
            </B>
            <C z:Id="i421">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.0809091140990001</X>
              <Y>-9.9904545570495</Y>
            </C>
            <D z:Id="i422">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-3.6904545570495</X>
              <Y>3.6904545570495007</Y>
            </D>
            <RelativeEndVector z:Id="i423">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>6.3</X>
              <Y>-6.3</Y>
              <Tangent>-90</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i424">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>90</AngleZ>
            <Z>0</Z>
            <X>-3.7</X>
            <Y>10</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i425">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <CenterLane z:Id="i426">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i427">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i428">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i429">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <LeftLineProperty z:Id="i430">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i431">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i432">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i433">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i434">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i435">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i436">
              <Lane z:Id="i437">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>1</LaneIndex>
                <OpenDriveProperties z:Id="i438">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i439">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i440">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i441">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i442">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i443">
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
                    <Margin>0</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>-1.75</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>5</TransitionLength>
          </LaneSection>
          <Line z:Id="i444">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i445">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i446">
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
              <Margin>0</Margin>
            </LineConnector>
            <Type>Solid</Type>
          </Line>
          <LineEndPosition z:Id="i447">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>-0</AngleY>
            <AngleZ>180</AngleZ>
            <Z>0</Z>
            <X>-10</X>
            <Y>3.5</Y>
          </LineEndPosition>
          <LinePath z:Id="i448" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>9.992032513079511</Length>
            <AbsoluteStartPosition z:Id="i449">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-3.5</X>
              <Y>10</Y>
              <Tangent>-90</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i450">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i451">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>9.192388155425117</X>
              <Y>0</Y>
            </B>
            <C z:Id="i452">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.1152236891497644</X>
              <Y>-10.307611844574883</Y>
            </C>
            <D z:Id="i453">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-3.807611844574882</X>
              <Y>3.8076118445748826</Y>
            </D>
            <RelativeEndVector z:Id="i454">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>6.5</X>
              <Y>-6.5</Y>
              <Tangent>-90</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i455">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>90</AngleZ>
            <Z>0</Z>
            <X>-3.5</X>
            <Y>10</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i456" i:type="ESBatter">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements>
              <EnvironmentElement z:Id="i457" i:type="ESBatterItem">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>true</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Batter</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i458" i:type="ESScenerySectionFloor">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>ScenerySectionFloor</Type>
                <Width>10</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i459" i:type="ESEmbankment">
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
        <JunctionConnectionPoint z:Id="i460">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>dfddfd47-1db3-407e-9d99-582bd2b7c776</ID>
          <CounterPartID>0e14a474-ba68-4e98-af88-6606c96ffd28</CounterPartID>
          <Owner z:Ref="i319" />
          <AbsolutePosition z:Id="i461">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>180</AngleZ>
            <Z>0</Z>
            <X>-10</X>
            <Y>0</Y>
          </AbsolutePosition>
          <BorderEndPosition z:Id="i462">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-90</AngleZ>
            <Z>0</Z>
            <X>-3.7</X>
            <Y>-10</Y>
          </BorderEndPosition>
          <BorderPath z:Id="i463" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>9.684585358830883</Length>
            <AbsoluteStartPosition z:Id="i464">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-10</X>
              <Y>-3.7</Y>
              <Tangent>0</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i465">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i466">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>8.909545442950499</X>
              <Y>0</Y>
            </B>
            <C z:Id="i467">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.0809091140990001</X>
              <Y>-9.9904545570495</Y>
            </C>
            <D z:Id="i468">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-3.6904545570495</X>
              <Y>3.6904545570495007</Y>
            </D>
            <RelativeEndVector z:Id="i469">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>6.3</X>
              <Y>-6.3</Y>
              <Tangent>-90</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </BorderPath>
          <BorderStartPosition z:Id="i470">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>-0</AngleY>
            <AngleZ>180</AngleZ>
            <Z>0</Z>
            <X>-10</X>
            <Y>-3.7</Y>
          </BorderStartPosition>
          <BorderType>Spline</BorderType>
          <LaneSection z:Id="i471">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <CenterLane z:Id="i472">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name></Name>
              <ID>00000000-0000-0000-0000-000000000000</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>true</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>0</LaneIndex>
              <OpenDriveProperties z:Id="i473">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i474">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i475">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>100</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>3.5</Width>
              <LeftLineProperty z:Id="i476">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i477">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i478">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </LeftLineProperty>
              <RightLineProperty z:Id="i479">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i480">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i481">
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
                  <Margin>0</Margin>
                </LineConnector>
                <Type>Solid</Type>
              </RightLineProperty>
            </CenterLane>
            <Lanes z:Id="i482">
              <Lane z:Id="i483">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Name></Name>
                <ID>00000000-0000-0000-0000-000000000000</ID>
                <DrivingDirection>Nondirectional</DrivingDirection>
                <IsDrivable>true</IsDrivable>
                <IsPrefered>false</IsPrefered>
                <IsPreferredOncoming>false</IsPreferredOncoming>
                <LaneIndex>-1</LaneIndex>
                <OpenDriveProperties z:Id="i484">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneType>Driving</LaneType>
                  <Speed>0</Speed>
                </OpenDriveProperties>
                <OsiProperties z:Id="i485">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LaneSubtype>Normal</LaneSubtype>
                  <LaneType>Driving</LaneType>
                </OsiProperties>
                <PredecessorLaneLinks />
                <SuccessorLaneLinks />
                <V2XProperties z:Id="i486">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <GridPoints>2</GridPoints>
                  <LaneAttribute>Vehicle</LaneAttribute>
                  <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                  <Radius>100</Radius>
                  <SignalGroupID>0</SignalGroupID>
                </V2XProperties>
                <Width>3.5</Width>
                <OuterLineProperty z:Id="i487">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineConnector z:Id="i488">
                    <PropertyReferenceList xmlns:d11p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                    <AdditionalConnector i:nil="true" />
                    <Line z:Id="i489">
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
                    <Margin>0</Margin>
                  </LineConnector>
                  <Type>Solid</Type>
                </OuterLineProperty>
              </Lane>
            </Lanes>
            <LeftBorderWidth>0.2</LeftBorderWidth>
            <OffsetReferenceLine>1.75</OffsetReferenceLine>
            <RightBorderWidth>0.2</RightBorderWidth>
            <TransitionLength>5</TransitionLength>
          </LaneSection>
          <Line z:Id="i490">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <LineConnector z:Id="i491">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <AdditionalConnector i:nil="true" />
              <Line z:Id="i492">
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
              <Margin>0</Margin>
            </LineConnector>
            <Type>Solid</Type>
          </Line>
          <LineEndPosition z:Id="i493">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>0</AngleY>
            <AngleZ>-90</AngleZ>
            <Z>0</Z>
            <X>-3.5</X>
            <Y>-10</Y>
          </LineEndPosition>
          <LinePath z:Id="i494" i:type="BorderSpline">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Spline</Name>
            <Length>9.992032513079511</Length>
            <AbsoluteStartPosition z:Id="i495">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-10</X>
              <Y>-3.5</Y>
              <Tangent>0</Tangent>
            </AbsoluteStartPosition>
            <A z:Id="i496">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>0</X>
              <Y>0</Y>
            </A>
            <B z:Id="i497">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>9.192388155425117</X>
              <Y>0</Y>
            </B>
            <C z:Id="i498">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>1.1152236891497644</X>
              <Y>-10.307611844574883</Y>
            </C>
            <D z:Id="i499">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>-3.807611844574882</X>
              <Y>3.8076118445748826</Y>
            </D>
            <RelativeEndVector z:Id="i500">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <X>6.5</X>
              <Y>-6.5</Y>
              <Tangent>-90</Tangent>
            </RelativeEndVector>
            <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
          </LinePath>
          <LineStartPosition z:Id="i501">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>-0</AngleX>
            <AngleY>-0</AngleY>
            <AngleZ>180</AngleZ>
            <Z>0</Z>
            <X>-10</X>
            <Y>-3.5</Y>
          </LineStartPosition>
          <LocalSceneryOffset>0</LocalSceneryOffset>
          <NextSceneryOffset>0</NextSceneryOffset>
          <Scenery z:Id="i502" i:type="ESBatter">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name></Name>
            <Length>100</Length>
            <EnvironmentElements>
              <EnvironmentElement z:Id="i503" i:type="ESBatterItem">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>true</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>Batter</Type>
                <Width>2</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i504" i:type="ESScenerySectionFloor">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <Enabled>false</Enabled>
                <SideSelectionType>Both</SideSelectionType>
                <Type>ScenerySectionFloor</Type>
                <Width>10</Width>
                <Texture>Grass</Texture>
              </EnvironmentElement>
              <EnvironmentElement z:Id="i505" i:type="ESEmbankment">
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
      <Maps z:Id="i506">
        <MapOfJunctionMapPoint z:Id="i507" i:type="TextureMapOfJunctionMapPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Texture Map</Name>
          <StartPoint z:Id="i508">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-5</X>
            <Y>2</Y>
            <Rho>30</Rho>
          </StartPoint>
          <Type>TextureMap</Type>
          <Length>3</Length>
          <Width>3</Width>
          <Orientation>Direct</Orientation>
          <Texture>FatigueCracking3</Texture>
        </MapOfJunctionMapPoint>
        <MapOfJunctionMapPoint z:Id="i509" i:type="TextureMapOfJunctionMapPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Texture Map</Name>
          <StartPoint z:Id="i510">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>3</X>
            <Y>5</Y>
            <Rho>45</Rho>
          </StartPoint>
          <Type>TextureMap</Type>
          <Length>1.5</Length>
          <Width>1.5</Width>
          <Orientation>Direct</Orientation>
          <Texture>FatigueCracking2</Texture>
        </MapOfJunctionMapPoint>
      </Maps>
      <ReferencePoint z:Id="i511">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <AngleX>0</AngleX>
        <AngleY>0</AngleY>
        <AngleZ>0</AngleZ>
        <Z>0</Z>
        <X>0</X>
        <Y>0</Y>
      </ReferencePoint>
      <V2XEnabled>false</V2XEnabled>
      <V2XTrafficLightController z:Id="i512">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <SignalGroups z:Id="i513" />
      </V2XTrafficLightController>
    </Junction>
  </Junctions>
  <Routes z:Id="i514">
    <Route z:Id="i515">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Route 1 Rd1-Rd2</Name>
      <Author></Author>
      <CreationDate>2013-01-25T14:15:35.3917443+01:00</CreationDate>
      <Description></Description>
      <ID>1</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i516">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i90" />
          <Path i:nil="true" />
          <Start z:Ref="i88" />
        </RouteSection>
        <RouteSection z:Id="i517">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i368" />
          <Path i:nil="true" />
          <Start z:Ref="i460" />
        </RouteSection>
        <RouteSection z:Id="i518">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i168" />
          <Path i:nil="true" />
          <Start z:Ref="i166" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i519">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Route 2 Rd1-Rd3</Name>
      <Author></Author>
      <CreationDate>2013-01-25T14:16:00.3967443+01:00</CreationDate>
      <Description></Description>
      <ID>2</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i520">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i90" />
          <Path i:nil="true" />
          <Start z:Ref="i88" />
        </RouteSection>
        <RouteSection z:Id="i521">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i414" />
          <Path i:nil="true" />
          <Start z:Ref="i460" />
        </RouteSection>
        <RouteSection z:Id="i522">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i242" />
          <Path i:nil="true" />
          <Start z:Ref="i240" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i523">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Route 3 Rd2-Rd3</Name>
      <Author></Author>
      <CreationDate>2013-01-25T14:16:25.5917443+01:00</CreationDate>
      <Description></Description>
      <ID>3</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i524">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i166" />
          <Path i:nil="true" />
          <Start z:Ref="i168" />
        </RouteSection>
        <RouteSection z:Id="i525">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i414" />
          <Path i:nil="true" />
          <Start z:Ref="i368" />
        </RouteSection>
        <RouteSection z:Id="i526">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i242" />
          <Path i:nil="true" />
          <Start z:Ref="i240" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i527">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Route 4 Rd4-Rd3</Name>
      <Author></Author>
      <CreationDate>2013-01-25T14:16:44.4287443+01:00</CreationDate>
      <Description></Description>
      <ID>4</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i528">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i316" />
          <Path i:nil="true" />
          <Start z:Ref="i314" />
        </RouteSection>
        <RouteSection z:Id="i529">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i414" />
          <Path i:nil="true" />
          <Start z:Ref="i322" />
        </RouteSection>
        <RouteSection z:Id="i530">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i242" />
          <Path i:nil="true" />
          <Start z:Ref="i240" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i531">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Route 5 Rd1-Rd4</Name>
      <Author></Author>
      <CreationDate>2013-01-25T14:17:06.7227443+01:00</CreationDate>
      <Description></Description>
      <ID>5</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i532">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i90" />
          <Path i:nil="true" />
          <Start z:Ref="i88" />
        </RouteSection>
        <RouteSection z:Id="i533">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i322" />
          <Path i:nil="true" />
          <Start z:Ref="i460" />
        </RouteSection>
        <RouteSection z:Id="i534">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i314" />
          <Path i:nil="true" />
          <Start z:Ref="i316" />
        </RouteSection>
      </Sections>
    </Route>
    <Route z:Id="i535">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>Route 6 Rd4-Rd2</Name>
      <Author></Author>
      <CreationDate>2013-01-25T14:17:26.0127443+01:00</CreationDate>
      <Description></Description>
      <ID>6</ID>
      <IsClosed>false</IsClosed>
      <Sections>
        <RouteSection z:Id="i536">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i316" />
          <Path i:nil="true" />
          <Start z:Ref="i314" />
        </RouteSection>
        <RouteSection z:Id="i537">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i368" />
          <Path i:nil="true" />
          <Start z:Ref="i322" />
        </RouteSection>
        <RouteSection z:Id="i538">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i168" />
          <Path i:nil="true" />
          <Start z:Ref="i166" />
        </RouteSection>
      </Sections>
    </Route>
  </Routes>
  <ObjectList>
    <EnvironmentObjects z:Ref="i15" />
    <EnvironmentObjects z:Ref="i17" />
    <EnvironmentObjects z:Ref="i19" />
    <EnvironmentObjects z:Ref="i21" />
    <EnvironmentObjects z:Ref="i23" />
    <EnvironmentObjects z:Ref="i93" />
    <EnvironmentObjects z:Ref="i95" />
    <EnvironmentObjects z:Ref="i97" />
    <EnvironmentObjects z:Ref="i99" />
    <EnvironmentObjects z:Ref="i101" />
    <EnvironmentObjects z:Ref="i171" />
    <EnvironmentObjects z:Ref="i173" />
    <EnvironmentObjects z:Ref="i175" />
    <EnvironmentObjects z:Ref="i177" />
    <EnvironmentObjects z:Ref="i179" />
    <EnvironmentObjects z:Ref="i245" />
    <EnvironmentObjects z:Ref="i247" />
    <EnvironmentObjects z:Ref="i249" />
    <EnvironmentObjects z:Ref="i251" />
    <EnvironmentObjects z:Ref="i253" />
  </ObjectList>
  <AliasList z:Id="i539">
    <AliasType xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">Road</AliasType>
    <AliasVariableList xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common" />
    <IsPlain xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">false</IsPlain>
    <Source xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">FourWayJunction_2Lanes.rd</Source>
  </AliasList>
</RoadNetwork>