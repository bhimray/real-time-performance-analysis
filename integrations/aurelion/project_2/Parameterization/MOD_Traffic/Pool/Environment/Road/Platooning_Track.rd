<?xml version="1.0" encoding="utf-8"?>
<RoadNetwork xmlns:i="http://www.w3.org/2001/XMLSchema-instance" z:Id="i1" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Road">
  <PropertyReferenceList xmlns:d2p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
  <Name>Platooning_Track</Name>
  <Author></Author>
  <CreationDate>2011-07-15T11:29:13</CreationDate>
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
  <Version>61</Version>
  <Roads z:Id="i13">
    <Road z:Id="i14">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>StraightLong</Name>
      <Author></Author>
      <CreationDate>2011-07-15T11:29:13</CreationDate>
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
          <Length>1</Length>
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
        <EnvironmentSection z:Id="i21" i:type="ESPredefinedAlley">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery section 2</Name>
          <Length>300</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i22" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i23" i:type="ESCurbstone">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Curbstone</Type>
              <Width>0.1</Width>
              <Texture>Concrete</Texture>
              <Height>0.1</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i24" i:type="ESSideWalk">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Sidewalk</Type>
              <Width>2</Width>
              <GapTexture>Grass</GapTexture>
              <GapWidth>0</GapWidth>
              <SidewalkTexture>Cobblestone1</SidewalkTexture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i25" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i26" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i27" i:type="ESGuardrail">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>GuardRail</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <EndTerminal>0</EndTerminal>
              <Height>0.75</Height>
              <StartTerminal>0</StartTerminal>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i28" i:type="ESReflectorPost">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ReflectorPosts</Type>
              <DistanceToRoad>0.5</DistanceToRoad>
              <InitialOffset>5</InitialOffset>
              <Interval>50</Interval>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i29" i:type="ESTreeLine">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>TreeLine</Type>
              <DistanceToRoad>10</DistanceToRoad>
              <InitialOffset>10</InitialOffset>
              <Interval>50</Interval>
              <TreeType>Standard</TreeType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i30" i:type="ESStreetLamp">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>StreetLamps</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <LampType>Modern</LampType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i31" i:type="ESForest">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Forest</Type>
              <EndPositionOnSceneryFloor>100</EndPositionOnSceneryFloor>
              <StartPositionOnSceneryFloor>0</StartPositionOnSceneryFloor>
              <ForestDensityType>Medium</ForestDensityType>
              <ForestType>Mixed</ForestType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i32" i:type="ESBuildingLine">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>BuildingLine</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <BuildingSize>Small</BuildingSize>
              <BuildingType>House</BuildingType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i33" i:type="ESSettlement">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Settlement</Type>
              <EndPositionOnSceneryFloor>100</EndPositionOnSceneryFloor>
              <StartPositionOnSceneryFloor>0</StartPositionOnSceneryFloor>
              <AreaType>City</AreaType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i34" i:type="ESNoiseBarrier">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>NoiseBarrier</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <EndTerminal>0</EndTerminal>
              <Height>2.5</Height>
              <StartTerminal>0</StartTerminal>
              <Style>MetallicBlue</Style>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Alley</Type>
        </EnvironmentSection>
        <EnvironmentSection z:Id="i35" i:type="ESPredefinedCountryRoad">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery section 3</Name>
          <Length>600</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i36" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i37" i:type="ESCurbstone">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Curbstone</Type>
              <Width>0.1</Width>
              <Texture>Concrete</Texture>
              <Height>0.1</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i38" i:type="ESSideWalk">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Sidewalk</Type>
              <Width>2</Width>
              <GapTexture>Grass</GapTexture>
              <GapWidth>0</GapWidth>
              <SidewalkTexture>Cobblestone1</SidewalkTexture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i39" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i40" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i41" i:type="ESGuardrail">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>GuardRail</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <EndTerminal>0</EndTerminal>
              <Height>0.75</Height>
              <StartTerminal>0</StartTerminal>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i42" i:type="ESReflectorPost">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ReflectorPosts</Type>
              <DistanceToRoad>0.5</DistanceToRoad>
              <InitialOffset>5</InitialOffset>
              <Interval>50</Interval>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i43" i:type="ESTreeLine">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>TreeLine</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <TreeType>Standard</TreeType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i44" i:type="ESStreetLamp">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>StreetLamps</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <LampType>Modern</LampType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i45" i:type="ESForest">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Forest</Type>
              <EndPositionOnSceneryFloor>100</EndPositionOnSceneryFloor>
              <StartPositionOnSceneryFloor>0</StartPositionOnSceneryFloor>
              <ForestDensityType>Thin</ForestDensityType>
              <ForestType>Mixed</ForestType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i46" i:type="ESBuildingLine">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>BuildingLine</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <BuildingSize>Small</BuildingSize>
              <BuildingType>House</BuildingType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i47" i:type="ESSettlement">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Settlement</Type>
              <EndPositionOnSceneryFloor>100</EndPositionOnSceneryFloor>
              <StartPositionOnSceneryFloor>0</StartPositionOnSceneryFloor>
              <AreaType>City</AreaType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i48" i:type="ESNoiseBarrier">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>NoiseBarrier</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <EndTerminal>0</EndTerminal>
              <Height>2.5</Height>
              <StartTerminal>0</StartTerminal>
              <Style>MetallicBlue</Style>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>CountryRoad</Type>
        </EnvironmentSection>
        <EnvironmentSection z:Id="i49" i:type="ESPredefinedAlley">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery section 4</Name>
          <Length>300</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i50" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i51" i:type="ESCurbstone">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Curbstone</Type>
              <Width>0.1</Width>
              <Texture>Concrete</Texture>
              <Height>0.1</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i52" i:type="ESSideWalk">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Sidewalk</Type>
              <Width>2</Width>
              <GapTexture>Grass</GapTexture>
              <GapWidth>0</GapWidth>
              <SidewalkTexture>Cobblestone1</SidewalkTexture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i53" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>10</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i54" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i55" i:type="ESGuardrail">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>GuardRail</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <EndTerminal>0</EndTerminal>
              <Height>0.75</Height>
              <StartTerminal>0</StartTerminal>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i56" i:type="ESReflectorPost">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ReflectorPosts</Type>
              <DistanceToRoad>0.5</DistanceToRoad>
              <InitialOffset>5</InitialOffset>
              <Interval>50</Interval>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i57" i:type="ESTreeLine">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>TreeLine</Type>
              <DistanceToRoad>5</DistanceToRoad>
              <InitialOffset>10</InitialOffset>
              <Interval>30</Interval>
              <TreeType>Standard</TreeType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i58" i:type="ESStreetLamp">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>StreetLamps</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <LampType>Modern</LampType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i59" i:type="ESForest">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Forest</Type>
              <EndPositionOnSceneryFloor>100</EndPositionOnSceneryFloor>
              <StartPositionOnSceneryFloor>0</StartPositionOnSceneryFloor>
              <ForestDensityType>Medium</ForestDensityType>
              <ForestType>Mixed</ForestType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i60" i:type="ESBuildingLine">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>BuildingLine</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <BuildingSize>Small</BuildingSize>
              <BuildingType>House</BuildingType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i61" i:type="ESSettlement">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Settlement</Type>
              <EndPositionOnSceneryFloor>100</EndPositionOnSceneryFloor>
              <StartPositionOnSceneryFloor>0</StartPositionOnSceneryFloor>
              <AreaType>City</AreaType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i62" i:type="ESNoiseBarrier">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>NoiseBarrier</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <EndTerminal>0</EndTerminal>
              <Height>2.5</Height>
              <StartTerminal>0</StartTerminal>
              <Style>MetallicBlue</Style>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>Alley</Type>
        </EnvironmentSection>
        <EnvironmentSection z:Id="i63" i:type="ESPredefinedCountryRoad">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Scenery section 5</Name>
          <Length>1600</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i64" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i65" i:type="ESCurbstone">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Curbstone</Type>
              <Width>0.1</Width>
              <Texture>Concrete</Texture>
              <Height>0.1</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i66" i:type="ESSideWalk">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Sidewalk</Type>
              <Width>2</Width>
              <GapTexture>Grass</GapTexture>
              <GapWidth>0</GapWidth>
              <SidewalkTexture>Cobblestone1</SidewalkTexture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i67" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>20</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i68" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i69" i:type="ESGuardrail">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>GuardRail</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <EndTerminal>0</EndTerminal>
              <Height>0.75</Height>
              <StartTerminal>0</StartTerminal>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i70" i:type="ESReflectorPost">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ReflectorPosts</Type>
              <DistanceToRoad>0.5</DistanceToRoad>
              <InitialOffset>5</InitialOffset>
              <Interval>50</Interval>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i71" i:type="ESTreeLine">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>TreeLine</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <TreeType>Standard</TreeType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i72" i:type="ESStreetLamp">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>StreetLamps</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <LampType>Modern</LampType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i73" i:type="ESForest">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Forest</Type>
              <EndPositionOnSceneryFloor>100</EndPositionOnSceneryFloor>
              <StartPositionOnSceneryFloor>0</StartPositionOnSceneryFloor>
              <ForestDensityType>Thin</ForestDensityType>
              <ForestType>Mixed</ForestType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i74" i:type="ESBuildingLine">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>BuildingLine</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <BuildingSize>Small</BuildingSize>
              <BuildingType>House</BuildingType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i75" i:type="ESSettlement">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Settlement</Type>
              <EndPositionOnSceneryFloor>100</EndPositionOnSceneryFloor>
              <StartPositionOnSceneryFloor>0</StartPositionOnSceneryFloor>
              <AreaType>City</AreaType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i76" i:type="ESNoiseBarrier">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>NoiseBarrier</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <EndTerminal>0</EndTerminal>
              <Height>2.5</Height>
              <StartTerminal>0</StartTerminal>
              <Style>MetallicBlue</Style>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>CountryRoad</Type>
        </EnvironmentSection>
        <EnvironmentSection z:Id="i77" i:type="ESPredefinedCountryRoad">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>0</Length>
          <EnvironmentElements>
            <EnvironmentElement z:Id="i78" i:type="ESBridgeItem">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Bridge</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
              <Height>0.5</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i79" i:type="ESCurbstone">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Curbstone</Type>
              <Width>0.1</Width>
              <Texture>Concrete</Texture>
              <Height>0.1</Height>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i80" i:type="ESSideWalk">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Sidewalk</Type>
              <Width>2</Width>
              <GapTexture>Grass</GapTexture>
              <GapWidth>0</GapWidth>
              <SidewalkTexture>Cobblestone1</SidewalkTexture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i81" i:type="ESScenerySectionFloor">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ScenerySectionFloor</Type>
              <Width>20</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i82" i:type="ESEmbankment">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Embankment</Type>
              <Width>2</Width>
              <Texture>Grass</Texture>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i83" i:type="ESGuardrail">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>GuardRail</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <EndTerminal>0</EndTerminal>
              <Height>0.75</Height>
              <StartTerminal>0</StartTerminal>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i84" i:type="ESReflectorPost">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>ReflectorPosts</Type>
              <DistanceToRoad>0.5</DistanceToRoad>
              <InitialOffset>5</InitialOffset>
              <Interval>50</Interval>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i85" i:type="ESTreeLine">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>TreeLine</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <TreeType>Standard</TreeType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i86" i:type="ESStreetLamp">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>StreetLamps</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <LampType>Modern</LampType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i87" i:type="ESForest">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>true</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Forest</Type>
              <EndPositionOnSceneryFloor>100</EndPositionOnSceneryFloor>
              <StartPositionOnSceneryFloor>0</StartPositionOnSceneryFloor>
              <ForestDensityType>Thin</ForestDensityType>
              <ForestType>Mixed</ForestType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i88" i:type="ESBuildingLine">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>BuildingLine</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <BuildingSize>Small</BuildingSize>
              <BuildingType>House</BuildingType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i89" i:type="ESSettlement">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>Settlement</Type>
              <EndPositionOnSceneryFloor>100</EndPositionOnSceneryFloor>
              <StartPositionOnSceneryFloor>0</StartPositionOnSceneryFloor>
              <AreaType>City</AreaType>
            </EnvironmentElement>
            <EnvironmentElement z:Id="i90" i:type="ESNoiseBarrier">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Enabled>false</Enabled>
              <SideSelectionType>Both</SideSelectionType>
              <Type>NoiseBarrier</Type>
              <DistanceToRoad>1</DistanceToRoad>
              <InitialOffset>0.25</InitialOffset>
              <Interval>50</Interval>
              <EndTerminal>0</EndTerminal>
              <Height>2.5</Height>
              <StartTerminal>0</StartTerminal>
              <Style>MetallicBlue</Style>
            </EnvironmentElement>
          </EnvironmentElements>
          <SpeedLimit>200</SpeedLimit>
          <Type>CountryRoad</Type>
        </EnvironmentSection>
      </EnvironmentSections>
      <Heights z:Id="i91">
        <Height z:Id="i92">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>First Height</Name>
          <S>0</S>
          <H>0</H>
          <TransitionLength>0</TransitionLength>
        </Height>
        <Height z:Id="i93">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Straight 12</Name>
          <S>12000</S>
          <H>0</H>
          <TransitionLength>0</TransitionLength>
        </Height>
      </Heights>
      <LaneSections z:Id="i94">
        <LaneSection z:Id="i95">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>2 Lanes, dashed</Name>
          <Length>12000</Length>
          <CenterLane z:Id="i96">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Straight 1</Name>
            <ID>7dbf80ca-6fe4-4cbe-986f-c33e5bf12af1</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i97">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i98">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i99">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>500</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>4</Width>
            <LeftLineProperty z:Id="i100">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i101">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i102" i:type="DashLine">
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
            <RightLineProperty z:Id="i103">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i104">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i105">
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
          <Lanes z:Id="i106">
            <Lane z:Id="i107">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane</Name>
              <ID>7c7b6581-6195-4ada-9ff9-6e1c8ad56aac</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i108">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i109">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i110">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>500</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>4</Width>
              <OuterLineProperty z:Id="i111">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i112">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i113">
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
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>0</TransitionLength>
        </LaneSection>
        <LaneSection z:Id="i114">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>EndSection</Name>
          <Length>0</Length>
          <CenterLane z:Id="i115">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <Name>Straight 1</Name>
            <ID>fceb018d-0b85-4d35-a262-a4f037878120</ID>
            <DrivingDirection>Nondirectional</DrivingDirection>
            <IsDrivable>true</IsDrivable>
            <IsPrefered>true</IsPrefered>
            <IsPreferredOncoming>false</IsPreferredOncoming>
            <LaneIndex>0</LaneIndex>
            <OpenDriveProperties z:Id="i116">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneType>Driving</LaneType>
              <Speed>0</Speed>
            </OpenDriveProperties>
            <OsiProperties z:Id="i117">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LaneSubtype>Normal</LaneSubtype>
              <LaneType>Driving</LaneType>
            </OsiProperties>
            <PredecessorLaneLinks />
            <SuccessorLaneLinks />
            <V2XProperties z:Id="i118">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <GridPoints>2</GridPoints>
              <LaneAttribute>Vehicle</LaneAttribute>
              <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
              <Radius>0</Radius>
              <SignalGroupID>0</SignalGroupID>
            </V2XProperties>
            <Width>4</Width>
            <LeftLineProperty z:Id="i119">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i120">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i121" i:type="DashLine">
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
            <RightLineProperty z:Id="i122">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <LineConnector z:Id="i123">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <AdditionalConnector i:nil="true" />
                <Line z:Id="i124">
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
          <Lanes z:Id="i125">
            <Lane z:Id="i126">
              <PropertyReferenceList xmlns:d8p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
              <Name>Lane</Name>
              <ID>3b3eaec0-466f-45aa-909f-1fcc7b9374d8</ID>
              <DrivingDirection>Nondirectional</DrivingDirection>
              <IsDrivable>true</IsDrivable>
              <IsPrefered>false</IsPrefered>
              <IsPreferredOncoming>true</IsPreferredOncoming>
              <LaneIndex>1</LaneIndex>
              <OpenDriveProperties z:Id="i127">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneType>Driving</LaneType>
                <Speed>0</Speed>
              </OpenDriveProperties>
              <OsiProperties z:Id="i128">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LaneSubtype>Normal</LaneSubtype>
                <LaneType>Driving</LaneType>
              </OsiProperties>
              <PredecessorLaneLinks />
              <SuccessorLaneLinks />
              <V2XProperties z:Id="i129">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <GridPoints>2</GridPoints>
                <LaneAttribute>Vehicle</LaneAttribute>
                <LaneSharing>IndividualMotorizedVehicleTraffic</LaneSharing>
                <Radius>0</Radius>
                <SignalGroupID>0</SignalGroupID>
              </V2XProperties>
              <Width>4</Width>
              <OuterLineProperty z:Id="i130">
                <PropertyReferenceList xmlns:d9p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                <LineConnector z:Id="i131">
                  <PropertyReferenceList xmlns:d10p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
                  <AdditionalConnector i:nil="true" />
                  <Line z:Id="i132">
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
          <OffsetReferenceLine>0</OffsetReferenceLine>
          <RightBorderWidth>0.2</RightBorderWidth>
          <TransitionLength>0</TransitionLength>
        </LaneSection>
      </LaneSections>
      <LateralSlopes z:Id="i133">
        <LateralSlope z:Id="i134">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>First LateralSlope</Name>
          <S>0</S>
          <Angle>0</Angle>
        </LateralSlope>
        <LateralSlope z:Id="i135">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Straight 12</Name>
          <S>12000</S>
          <Angle>0</Angle>
        </LateralSlope>
      </LateralSlopes>
      <LineCurvatureLink>Normal</LineCurvatureLink>
      <LineInterpretation>dSPACE</LineInterpretation>
      <Maps z:Id="i136" />
      <RoadClosed>true</RoadClosed>
      <RoadEndPosition z:Id="i137">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>0</X>
        <Y>0</Y>
        <Tangent>0</Tangent>
      </RoadEndPosition>
      <Segments z:Id="i138">
        <Segment z:Id="i139" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Straight_12km</Name>
          <Length>400</Length>
          <AbsoluteStartPosition z:Id="i140">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
            <Tangent>0</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i141" i:type="Clothoid">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 2</Name>
          <Length>40</Length>
          <AbsoluteStartPosition z:Id="i142">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>400</X>
            <Y>0</Y>
            <Tangent>0</Tangent>
          </AbsoluteStartPosition>
          <Radius>-200</Radius>
          <IsInfinite>false</IsInfinite>
        </Segment>
        <Segment z:Id="i143" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 3</Name>
          <Length>250</Length>
          <AbsoluteStartPosition z:Id="i144">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>439.9600185142456</X>
            <Y>-1.3323812553583507</Y>
            <Tangent>-5.726713520431201</Tangent>
          </AbsoluteStartPosition>
          <Radius>-200</Radius>
        </Segment>
        <Segment z:Id="i145" i:type="Clothoid">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 4</Name>
          <Length>40</Length>
          <AbsoluteStartPosition z:Id="i146">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>615.1457655360757</X>
            <Y>-156.5231188938586</Y>
            <Tangent>-77.34643791178411</Tangent>
          </AbsoluteStartPosition>
          <Radius>-200</Radius>
          <IsInfinite>false</IsInfinite>
        </Segment>
        <Segment z:Id="i147" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 5</Name>
          <Length>400</Length>
          <AbsoluteStartPosition z:Id="i148">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>619.9598286734289</X>
            <Y>-196.16525012831983</Y>
            <Tangent>-88.80559381440057</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i149" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 3</Name>
          <Length>157.07963267948966</Length>
          <AbsoluteStartPosition z:Id="i150">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>628.2977529600871</X>
            <Y>-596.0783394597269</Y>
            <Tangent>-88.80559381440057</Tangent>
          </AbsoluteStartPosition>
          <Radius>-100</Radius>
        </Segment>
        <Segment z:Id="i151" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 7</Name>
          <Length>600</Length>
          <AbsoluteStartPosition z:Id="i152">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>530.4039616988999</X>
            <Y>-698.1410928642432</Y>
            <Tangent>-178.80559381440057</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i153" i:type="Circular">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 8</Name>
          <Length>157.07963267948966</Length>
          <AbsoluteStartPosition z:Id="i154">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-69.46567229821062</X>
            <Y>-710.6479792942306</Y>
            <Tangent>-178.80559381440057</Tangent>
          </AbsoluteStartPosition>
          <Radius>-100</Radius>
        </Segment>
        <Segment z:Id="i155" i:type="Straight">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Segment 9</Name>
          <Length>500</Length>
          <AbsoluteStartPosition z:Id="i156">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-171.52842570272693</X>
            <Y>-612.7541880330434</Y>
            <Tangent>91.1944061855994</Tangent>
          </AbsoluteStartPosition>
        </Segment>
        <Segment z:Id="i157" i:type="Spline">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <Name>Close Road</Name>
          <Length>233.46124792882222</Length>
          <AbsoluteStartPosition z:Id="i158">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-181.95083106104943</X>
            <Y>-112.86282636878462</Y>
            <Tangent>91.1944061855994</Tangent>
          </AbsoluteStartPosition>
          <A z:Id="i159">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>0</X>
            <Y>0</Y>
          </A>
          <B z:Id="i160">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>214.11240622569375</X>
            <Y>0</Y>
          </B>
          <C z:Id="i161">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-96.62496004253403</X>
            <Y>-338.72582033337176</Y>
          </C>
          <D z:Id="i162">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>-8.441872906828547</X>
            <Y>154.46191869066584</Y>
          </D>
          <RelativeEndVector z:Id="i163">
            <PropertyReferenceList xmlns:d7p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
            <X>109.04557327633115</X>
            <Y>-184.2639016427059</Y>
            <Tangent>-91.1944061855994</Tangent>
          </RelativeEndVector>
          <TypeOfSplineCalculation>EndVector</TypeOfSplineCalculation>
        </Segment>
      </Segments>
      <StartParameter z:Id="i164">
        <PropertyReferenceList xmlns:d5p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
        <X>0</X>
        <Y>0</Y>
        <Tangent>0</Tangent>
      </StartParameter>
      <HeightInterpolation>Linear</HeightInterpolation>
      <ConnectionPoints>
        <RoadConnectionPoint z:Id="i165" i:type="RoadConnectionStartPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>de8cbcca-1cb5-4051-b439-3f9dca0645b4</ID>
          <CounterPartID>c10ca4e6-9cea-495b-97a5-4355d188cf1a</CounterPartID>
          <Owner z:Ref="i14" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i166" i:type="RoadConnectionPointStartPosition">
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
        <RoadConnectionPoint z:Id="i167" i:type="RoadConnectionEndPoint">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <ID>c10ca4e6-9cea-495b-97a5-4355d188cf1a</ID>
          <CounterPartID>de8cbcca-1cb5-4051-b439-3f9dca0645b4</CounterPartID>
          <Owner z:Ref="i14" />
          <LeftSceneryOffset>0</LeftSceneryOffset>
          <Position z:Id="i168" i:type="RoadConnectionEndPointPosition">
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
  <Junctions z:Id="i169" />
  <Routes z:Id="i170">
    <Route z:Id="i171">
      <PropertyReferenceList xmlns:d4p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
      <Name>StraightLong</Name>
      <Author></Author>
      <CreationDate>0001-01-01T00:00:00</CreationDate>
      <Description i:nil="true" />
      <ID>1</ID>
      <IsClosed>true</IsClosed>
      <Sections>
        <RouteSection z:Id="i172">
          <PropertyReferenceList xmlns:d6p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays" />
          <End z:Ref="i167" />
          <Path i:nil="true" />
          <Start z:Ref="i165" />
        </RouteSection>
      </Sections>
    </Route>
  </Routes>
  <ObjectList />
  <AliasList z:Id="i173">
    <AliasType xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">Road</AliasType>
    <AliasVariableList xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common" />
    <IsPlain xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">false</IsPlain>
    <Source xmlns="http://www.dspace.com/XMLSchema/ScenarioAccess/Scenario/Common">Platooning_Track.rd</Source>
  </AliasList>
</RoadNetwork>