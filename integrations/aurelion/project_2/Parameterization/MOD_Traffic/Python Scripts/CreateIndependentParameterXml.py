from win32com.client import Dispatch
# This script allows to create new parameter xml files to ensure that parameterset
# becomes independent from other.

# Available Modes
Modes = ["SetParameterxmlName", "ApplyPrefixandSuffix"]
# SetParameterxmlName
#   The below defined string ParameterxmlName is used as filename
# ApplyPrefixandSuffix
#   The below defined string NamePrefix and NameSuffix is used to extend existing filename
#   The new name is created by:  NamePrefix + ParameterRecord.FileName + NameSuffix

# Select Mode (Listindex is zero based): 
Mode = Modes[1];

# Definitions of
ParameterxmlName = "Car_A"
NamePrefix = "Car_A_"
NameSuffix = ""

# Define Maincomponents which are skipped
# Example: EngineBasic, Environment, SoftECU, Drivetrain, VehicleDynamics
SkipMainComponents = ["EngineBasic", "Environment", "SoftECU", "Drivetrain", "VehicleDynamics"] 

# Define Record which are not changed. 
SkipRecords = ["Cycles", "Test Cycle"] 
# To extend the list use SkipRecords = [b"Cycle", b"RecordType.Name"] 

# Define Record which are always renamed with NamePrefix + ParameterRecord.InstanceName + NameSuffix
InstanceRecords = ["LUT1D", "LUT2D", "Angular Processing Unit Event"]

#===========================================
# Definitions finished 
#===========================================

# Start ModelDesk
MdlApp = Dispatch("ModelDesk.Application")
# Get Active Parameterset
ActiveParameterSet = MdlApp.ActiveProject.ActiveExperiment.ActiveParameterSet
# Iterate over Maincomponents
for MainComponent in ActiveParameterSet.MainComponents:
    print(("Main Component: " + MainComponent.Name))
    if MainComponent.Name in SkipMainComponents:
        print(("\tSkip MainComponent: " + MainComponent.Name))
        continue    
    for ParameterRecord in MainComponent.ParameterRecords:
        print(("\t" + ParameterRecord.Name + "  " +ParameterRecord.InstanceName))
        
        # Get new name
        if ParameterRecord.Name in SkipRecords:
            print(("\tSkip Record: " + ParameterRecord.Name))
            continue
        elif ParameterRecord.Name in InstanceRecords:
            tmpName = NamePrefix + ParameterRecord.InstanceName + NameSuffix
        else:
            if Mode == Modes[0]:
                tmpName = ParameterxmlName
            elif  Mode == Modes[1]:
                tmpName = NamePrefix + ParameterRecord.FileName + NameSuffix
                
        # save  with new name or link if file exist
        if ParameterRecord.FileName == tmpName:
            # Do nothing 
            print(("\t\tFile aready linked: " + tmpName))
            continue
        elif ParameterRecord.AvailableParameterFiles.Find(tmpName):
            ParameterRecord.Link(tmpName)
            print(("\t\tExisting file linked: " + tmpName))
        else:
            ParameterRecord.SaveAs(tmpName)
            print(("\t\tNew file created: " + tmpName))
        
print ("\n\nFinished creation and link of parameter xml files.\n")
