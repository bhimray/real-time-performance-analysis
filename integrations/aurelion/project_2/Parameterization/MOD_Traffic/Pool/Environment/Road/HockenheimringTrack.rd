<?xml version="1.0" encoding="utf-8"?>
<RoadNetwork xmlns:i="http://www.w3.org/2001/XMLSchema-instance" z:Id="i1" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Road">
  <PropertyReferenceList xmlns:d2p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
  <Name>HockenheimringTrack</Name>
  <Author></Author>
  <CreationDate>2011-02-08T16:23:36</CreationDate>
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
  <Version>6</Version>
  <Roads z:Id="i13">
    <Road z:Id="i14">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>HockenheimringTrack</Name>
      <Author></Author>
      <CreationDate>2011-02-08T16:23:36</CreationDate>
      <Description></Description>
      <Objects />
      <PositionMarkers />
      <SurfaceCondition z:Id="i15" i:type="Asphalt">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <Friction>1</Friction>
        <TexturPath></TexturPath>
        <TireParameter>Dry</TireParameter>
      </SurfaceCondition>
      <ShapeList />
      <EnvironmentSections z:Id="i16">
        <EnvironmentSection z:Id="i17" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Batter</Name>
          <Length>2509.22</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i18" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i19" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i20" i:type="ESEmbankment">
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
        <EnvironmentSection z:Id="i21" i:type="ESBatter">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>0.012069495724972512</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i22" i:type="ESBatterItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Batter</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i23" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i24" i:type="ESEmbankment">
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
      <Heights z:Id="i25">
        <Height z:Id="i26">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>First Height</Name>
          <S>0</S>
          <H>0</H>
          <TransitionLength>0</TransitionLength>
        </Height>
        <Height z:Id="i27">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 26</Name>
          <S>2509.22</S>
          <H>0</H>
          <TransitionLength>0</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i28">
        <LaneSection z:Id="i29">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>1 Lane, race line</Name>
          <Length>2509.22</Length>
          <CenterLane z:Id="i30">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Segment 1</Name>
            <ID>c7679139-53ac-4924-9f6b-61d352af46cc</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i31">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i32">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i33">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>500</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>8</Width>
            <LeftLineProperty z:Id="i34">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i35">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i36" i:type="BicolorLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>BicolorLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>0.5</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>0.5</LineLength>
                  <GapColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>141</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </GapColor>
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
              <Type>Race</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i37">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i38">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i39" i:type="BicolorLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>0</Offset>
                  <Type>BicolorLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>0.5</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>0.5</LineLength>
                  <GapColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>141</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </GapColor>
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
              <Type>Race</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i40" />
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>0</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i41">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>0.012069495691775955</Length>
          <CenterLane z:Id="i42">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Segment 1</Name>
            <ID>3c30624f-b904-499b-a2e1-849fda19b203</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>true</IsPreferredOncoming>
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
              <Radius>0.012069495691775955</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>8</Width>
            <LeftLineProperty z:Id="i46">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i47">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i48" i:type="BicolorLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>-1.2199999999998</Offset>
                  <Type>BicolorLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>0.5</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>0.5</LineLength>
                  <GapColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>141</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </GapColor>
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
              <Type>Custom</Type>
            </LeftLineProperty>
            <RightLineProperty z:Id="i49">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i50">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i51" i:type="BicolorLine">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <LineColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>164</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </LineColor>
                  <LineTexture>NoTexture</LineTexture>
                  <Offset>-1.2199999999998</Offset>
                  <Type>BicolorLine</Type>
                  <Width>0.25</Width>
                  <CutEndLine>false</CutEndLine>
                  <GapLength>0.5</GapLength>
                  <GapTexture>NoTexture</GapTexture>
                  <LineLength>0.5</LineLength>
                  <GapColor xmlns:d10p1="http://schemas.datacontract.org/2004/07/System.Drawing">
                    <d10p1:knownColor>141</d10p1:knownColor>
                    <d10p1:name i:nil="true" />
                    <d10p1:state>1</d10p1:state>
                    <d10p1:value>0</d10p1:value>
                  </GapColor>
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
              <Type>Custom</Type>
            </RightLineProperty>
          </CenterLane>
          <Lanes z:Id="i52" />
          <LeftBorderWidth>0.2</LeftBorderWidth>
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>0</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i53">
        <LateralSlope z:Id="i54">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>First LateralSlope</Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
        <LateralSlope z:Id="i55">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 26</Name>
          <S>2509.22</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i56" />
      <RoadClosed>true</RoadClosed>
      <RoadEndPosition z:Id="i57">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>0</X>
        <Y>0</Y>
        <Tangent>0</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i58">
        <Segment z:Id="i59" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 1</Name>
          <Length>187.7</Length>
          <AbsoluteStartPosition z:Id="i60">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
            <Tangent>0</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i61" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 2</Name>
          <Length>52.3</Length>
          <AbsoluteStartPosition z:Id="i62">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>187.7</X>
            <Y>0</Y>
            <Tangent>0</Tangent>
          </AbsoluteStartPosition>
          <Radius>-36.1</Radius>
        </Segment>
        <Segment z:Id="i63" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 3</Name>
          <Length>124.5</Length>
          <AbsoluteStartPosition z:Id="i64">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>223.53148851053135</X>
            <Y>-31.705181332562116</Y>
            <Tangent>-83.00745896216635</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i65" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 4</Name>
          <Length>52.3</Length>
          <AbsoluteStartPosition z:Id="i66">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>238.6881346073739</X>
            <Y>-155.27915140350814</Y>
            <Tangent>-83.00745896216635</Tangent>
          </AbsoluteStartPosition>
          <Radius>18.9</Radius>
        </Segment>
        <Segment z:Id="i67" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 5</Name>
          <Length>34.4</Length>
          <AbsoluteStartPosition z:Id="i68">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>275.7489433575837</X>
            <Y>-157.69729269591443</Y>
            <Tangent>75.54117958461701</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i69" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 6</Name>
          <Length>25.9</Length>
          <AbsoluteStartPosition z:Id="i70">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>284.33807684537226</X>
            <Y>-124.38683208773688</Y>
            <Tangent>75.54117958461701</Tangent>
          </AbsoluteStartPosition>
          <Radius>41.2</Radius>
        </Segment>
        <Segment z:Id="i71" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 7</Name>
          <Length>36.40939097781422</Length>
          <AbsoluteStartPosition z:Id="i72">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>282.7604549169131</X>
            <Y>-98.96010074310678</Y>
            <Tangent>111.5596429192974</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i73">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i74">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>34.772717437694546</X>
            <Y>0</Y>
          </B>
          <C z:Id="i75">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-10.053769348349839</X>
            <Y>63.68674683269043</Y>
          </C>
          <D z:Id="i76">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>5.781090910655294</X>
            <Y>-46.986761832690426</Y>
          </D>
          <RelativeEndVector z:Id="i77">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>30.500039</X>
            <Y>16.699985</Y>
            <Tangent>-23.000015586818584</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i78" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 8</Name>
          <Length>44.7</Length>
          <AbsoluteStartPosition z:Id="i79">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>256.0210392777371</X>
            <Y>-76.73071637742683</Y>
            <Tangent>88.55962733247881</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i80" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 9</Name>
          <Length>37.7</Length>
          <AbsoluteStartPosition z:Id="i81">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>257.14464519331545</X>
            <Y>-32.04484042376025</Y>
            <Tangent>88.55962733247881</Tangent>
          </AbsoluteStartPosition>
          <Radius>-24</Radius>
        </Segment>
        <Segment z:Id="i82" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 10</Name>
          <Length>37.4</Length>
          <AbsoluteStartPosition z:Id="i83">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>281.74122803254295</X>
            <Y>-8.655724489948486</Y>
            <Tangent>-1.4424929859880251</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i84" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 11</Name>
          <Length>43.7</Length>
          <AbsoluteStartPosition z:Id="i85">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>319.12937578203116</X>
            <Y>-9.597216849151216</Y>
            <Tangent>-1.4424929859880251</Tangent>
          </AbsoluteStartPosition>
          <Radius>-25.3</Radius>
        </Segment>
        <Segment z:Id="i86" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 12</Name>
          <Length>284.3</Length>
          <AbsoluteStartPosition z:Id="i87">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>343.3762097267053</X>
            <Y>-39.45977773316133</Y>
            <Tangent>-100.40793032676659</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i88" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 13</Name>
          <Length>31.3</Length>
          <AbsoluteStartPosition z:Id="i89">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>292.0159136352267</X>
            <Y>-319.0820407692001</Y>
            <Tangent>-100.40793032676659</Tangent>
          </AbsoluteStartPosition>
          <Radius>-26.6</Radius>
        </Segment>
        <Segment z:Id="i90" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 14</Name>
          <Length>260.2</Length>
          <AbsoluteStartPosition z:Id="i91">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>271.46238285948397</X>
            <Y>-340.27855834779996</Y>
            <Tangent>-167.82740020494242</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i92" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 15</Name>
          <Length>38.4</Length>
          <AbsoluteStartPosition z:Id="i93">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>17.11250029495568</X>
            <Y>-395.14364049856925</Y>
            <Tangent>-167.82740020494242</Tangent>
          </AbsoluteStartPosition>
          <Radius>-16.3</Radius>
        </Segment>
        <Segment z:Id="i94" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 16</Name>
          <Length>50.95859116751323</Length>
          <AbsoluteStartPosition z:Id="i95">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-0.024721500779324224</X>
            <Y>-370.378738269985</Y>
            <Tangent>57.193585482029334</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i96">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i97">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>49.99706199546308</X>
            <Y>0</Y>
          </B>
          <C z:Id="i98">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>8.27800322005345</X>
            <Y>-6.9879910803432</Y>
          </C>
          <D z:Id="i99">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-8.874548215516533</X>
            <Y>14.688324080343198</Y>
          </D>
          <RelativeEndVector z:Id="i100">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>49.400517</X>
            <Y>7.700333</Y>
            <Tangent>37.0000101277222</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i101" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 17</Name>
          <Length>606.7540985219515</Length>
          <AbsoluteStartPosition z:Id="i102">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>20.268417111470768</X>
            <Y>-324.6852514973367</Y>
            <Tangent>94.19359560975153</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i103">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i104">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>569.6053546096631</X>
            <Y>0</Y>
          </B>
          <C z:Id="i105">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-211.73127987015226</X>
            <Y>775.6109785478152</Y>
          </C>
          <D z:Id="i106">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>2.025925260489032</X>
            <Y>-334.1109785478152</Y>
          </D>
          <RelativeEndVector z:Id="i107">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>359.9</X>
            <Y>441.5</Y>
            <Tangent>74.49998322747555</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
        <Segment z:Id="i108" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 18</Name>
          <Length>25.4</Length>
          <AbsoluteStartPosition z:Id="i109">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-446.3678423507329</X>
            <Y>1.9657263905658198</Y>
            <Tangent>168.69357883722708</Tangent>
          </AbsoluteStartPosition>
          <Radius>-8.6</Radius>
        </Segment>
        <Segment z:Id="i110" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 19</Name>
          <Length>213.4</Length>
          <AbsoluteStartPosition z:Id="i111">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-444.60238357395184</X>
            <Y>18.99845722066732</Y>
            <Tangent>-0.5288397246672218</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i112" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 20</Name>
          <Length>14.3</Length>
          <AbsoluteStartPosition z:Id="i113">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-231.211473580839</X>
            <Y>17.028804380389836</Y>
            <Tangent>-0.5288397246672218</Tangent>
          </AbsoluteStartPosition>
          <Radius>-20.8</Radius>
        </Segment>
        <Segment z:Id="i114" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 21</Name>
          <Length>141.7</Length>
          <AbsoluteStartPosition z:Id="i115">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-218.0558199876836</X>
            <Y>12.182139926346565</Y>
            <Tangent>-39.91968813991132</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i116" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 22</Name>
          <Length>21.8</Length>
          <AbsoluteStartPosition z:Id="i117">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-109.3797574476571</X>
            <Y>-78.74862181464097</Y>
            <Tangent>-39.91968813991132</Tangent>
          </AbsoluteStartPosition>
          <Radius>12.9</Radius>
        </Segment>
        <Segment z:Id="i118" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 23</Name>
          <Length>29.2</Length>
          <AbsoluteStartPosition z:Id="i119">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-90.2943801883587</X>
            <Y>-75.89866838862508</Y>
            <Tangent>56.905737703902226</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i120" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 24</Name>
          <Length>8.4</Length>
          <AbsoluteStartPosition z:Id="i121">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-74.35065261456933</X>
            <Y>-51.43568510667869</Y>
            <Tangent>56.905737703902226</Tangent>
          </AbsoluteStartPosition>
          <Radius>13.7</Radius>
        </Segment>
        <Segment z:Id="i122" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 25</Name>
          <Length>23</Length>
          <AbsoluteStartPosition z:Id="i123">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-72.13679695328992</X>
            <Y>-43.46851264504477</Y>
            <Tangent>92.03599667542716</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i124" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Close Road</Name>
          <Length>83.1099888284129</Length>
          <AbsoluteStartPosition z:Id="i125">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-72.9539264071753</X>
            <Y>-20.483032457422127</Y>
            <Tangent>92.03599667542716</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i126">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i127">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>75.77486388556034</X>
            <Y>0</Y>
          </B>
          <C z:Id="i128">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-95.22292441412625</X>
            <Y>-145.1797097800155</Y>
          </C>
          <D z:Id="i129">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>37.32630116720108</X>
            <Y>71.54413068578788</Y>
          </D>
          <RelativeEndVector z:Id="i130">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>17.878240638635152</X>
            <Y>-73.63557909422762</Y>
            <Tangent>-92.0359966754271</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
      </Segments>
      <StartParameter z:Id="i131">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>0</X>
        <Y>0</Y>
        <Tangent>0</Tangent>
      </StartParameter>
      <HeightInterpolation>Linear</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i132" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>5a7c26ff-7cf8-4de2-8968-48397ec4c6c3</ID>
          <CounterPartID>345ed13a-82eb-41a8-9c6b-a6adb698b9e6</CounterPartID>
          <Owner z:Ref="i14" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i133" i:type="RoadConnectionPointStartPosition">
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
        <RoadConnectionPoint z:Id="i134" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>345ed13a-82eb-41a8-9c6b-a6adb698b9e6</ID>
          <CounterPartID>5a7c26ff-7cf8-4de2-8968-48397ec4c6c3</CounterPartID>
          <Owner z:Ref="i14" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i135" i:type="RoadConnectionEndPointPosition">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <AngleX>0</AngleX>
            <AngleY>-0</AngleY>
            <AngleZ>0</AngleZ>
            <Z>0</Z>
            <X>0</X>
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
  <Junctions z:Id="i136" />
  <Routes z:Id="i137">
    <Route z:Id="i138">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>HockenheimringTrack</Name>
      <Author></Author>
      <CreationDate>0001-01-01T00:00:00</CreationDate>
      <Description i:nil="true" />
      <ID>1</ID>
      <IsClosed>true</IsClosed>
      <Sections>
        <RouteSection z:Id="i139">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i134" />
          <Path i:nil="true" />
          <Start z:Ref="i132" />
        </RouteSection>
      </Sections>
    </Route>
  </Routes>
  <ObjectList />
  <AliasList z:Id="i140">
    <AliasType xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">Road</AliasType>
    <AliasVariableList xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common" />
    <IsPlain xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">false</IsPlain>
    <Source xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">HockenheimringTrack.rd</Source>
  </AliasList>
</RoadNetwork>