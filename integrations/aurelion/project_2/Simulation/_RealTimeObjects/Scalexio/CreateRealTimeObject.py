# -*- coding: cp1252 -*-
"""
File:           CreateRealTimeObject.py

Description:    This script creates a RealTimeObject for Scalexio.
                Therefore a ConfigurationDesk project and application is created under <DemoRoot>/Configuration. 
                For details run dsmsi_help('Help_ConnectingSimulationPlatforms') in Matlab.
                At the end ConfigurationDesk is closed.

Preconditions:  ConfigurationDesk Implementation Version (current dSPACE Release) has been installed.
                The script can either consider a sic-file or a simulink slx file as model topology in ConfigurationDesk. 
                The following requirements apply depending on the source type. 
                Sic-file:   The sic-file is located beside this script.
                Slx-file:   MATLAB has been installed, the simulink model name is defined and the model is located
                            within the Models folder of the corresponding ASM project. 
                The generated code will only work for 64-Bit systems.
                
Tip/Remarks:    The MotionData is transferred to AURELION via the 2nd Ethernet Port. Therefore you
                have to set an IP address (which you have to set also in the System Configuration in the AURELION Manager)
                and the Subnet mask (set under # Required properties). Otherwise the automation code will not work.
                The IP address is the address of the 2nd Ethernet Port (not the SCALEXIO Rack) and the Subnet mask 
                can be derived by executing ipconfig on the Host PC.
                If your SCALEXIO Processing Unit is not built into a SCALEXIO Rack please set ContainsRack to False.
                Adapt the processing unit type name according to the variant of your SCALEXIO Processing Unit.
                If you want to use the Default Gateway feature, please enable it and set a Gateway IP address
                (set under # Optional properties).

Limitations:    -

Version:        1.0

Date:           June 2022

                dSPACE GmbH shall not be liable for errors contained herein or
                direct, indirect, special, incidental, or consequential damages
                in connection with the furnishing, performance, or use of this
                file.
                Brand names or product names are trademarks or registered
                trademarks of their respective companies or organizations.
Copyright (c) 2022 by dSPACE GmbH

"""
from win32com import client
import os
import inspect

print("Starting creation of RealTimeObject...\n")

#---------------------
# Required properties
#---------------------
# Additional information is available under Tip/Remarks.
Project_name = 'Project_001'
Application_name = 'Application_001'
SimulationModel = '' # Set name of the simulation model (without file extension) for which the scalexio application should be generated (e.g. ASM_Traffic). Leave it empty if the sic file next to this script should be used instead. 
ContainsRack = True # Set to False if your SCALEXIO Processing Unit is not built into a SCALEXIO Rack.
ProcUnitType_name = "HPP P02" # Adapt the processing unit type name according to the variant of your SCALEXIO Processing Unit

#---------------------
# Optional properties
#---------------------
IP_address = '' # Insert IP address, e.g. 192.168.1.1. This is the IP address of the 2nd Ethernet Port of the Scalexio, not the Host IP address. 
SubnetMask = '' # Insert Subnet mask, e.g. 255.255.255.0. To get it type "ipconfig" into the cmd window.
DefaultGatewayEnabled = False # Set to True if you want to be able to sent Ethernet frames for other Ethernet networks to the Default Gateway
Gateway_IP_address = '' # Set a Gateway IP address if you want to use Default Gateway

# Print required properties
print("-------- Required properties --------")
print(f"Project name: {Project_name}")
print(f"Application name: {Application_name}")
print(f"Contains Rack: {ContainsRack}")
print(f"Processing Unit Type: {ProcUnitType_name}")
print("-------------------------------------\n")

# Print optional properties
print("-------- Optional properties --------")
print(f"Entered IP address: {IP_address}")
print(f"Entered Subnet Mask: {SubnetMask}")
print(f"DefaultGatewayEnabled is {DefaultGatewayEnabled}.")
print(f"Gateway IP address: {Gateway_IP_address}")
print("-------------------------------------\n")

# Start ConfigurationDesk
CfgDesk = client.Dispatch('ConfigurationDesk.Application')

# Make window visible
CfgDesk.MainWindow.Visible = True

def Initialize(Project_name, Application_name, DemoRoot):
    """
    This function initializes a ConfigurationDesk project and application.
    """
    
    # Set Project directory
    ProjectRoot = "%s\\Configuration" % DemoRoot

    # Set Active file location
    ProjectLocation = CfgDesk.ProjectRoots.Add(ProjectRoot)
    ProjectLocation.Activate()

    # Create project and application
    if CfgDesk.Projects.Contains(Project_name):
        Project = CfgDesk.Projects.Item(Project_name)
        Project = Project.Open()
        print("Opened ConfigurationDesk project: " + Project.DirectoryName + ".\n")
    else:   
        Project = CfgDesk.Projects.Add(Project_name)
        print("Created ConfigurationDesk project in: " + Project.DirectoryName + ".\n")
        
    if Project.Applications.Contains(Application_name):
        Project.Close()
        raise Exception("Application " + Application_name + " already exists in project " + Project_name + ". Please choose a different application name beneath Required properties.")
    else:
        Project.Applications.Add(Application_name)
        print("Created application in project " + Project.Name + ".\n")

def Add_ModelTopology(DemoRoot, SimulationModel):
    """
    This function adds a Model Topology based on the corresponding sic-file.
    """
    
    try:
        ModelTopology = CfgDesk.ActiveApplication.Components.ModelTopology
        if not SimulationModel:
            SicRoot = os.path.abspath(os.path.dirname(inspect.getfile(inspect.currentframe())))
            SicPath = [os.path.join(SicRoot, _) for _ in os.listdir(SicRoot) if _.endswith(r".sic")]
            Args = []
            Args = [SicPath[0], False, "", True] # 4th argument should be True to create preconfigured application process
            ModelTopology.Configure('AddModel', Args)
            print("Added Model Topology from " + SicPath[0] + ".\n")
        else:
            SlxPath = [DemoRoot + '\\Simulation\\Models\\' + SimulationModel + '.slx']
            Args = []
            Args = [SlxPath[0], True, "cd ..; go('cpt','platform','scalexio')", True] # 4th argument should be True to create preconfigured application process
            ModelTopology.Configure('AddModel', Args)
            print("Added Model Topology from " + SlxPath[0] + ".\n")
    except Exception as ex:
        print(f"Exception occurred in Add_ModelTopology: {ex}.")
        exit(1)

def Add_HardwareTopology(ProcUnitType_name):
    """
    This function adds a Hardware Topology with a SCALEXIO Processing Unit.
    A SCALEXIO Rack is added as a Root Object depending on whether ContainsRack is True or False.
    """

    try:
        HardwareTopology = CfgDesk.ActiveApplication.Components.HardwareTopology

        if ContainsRack == True:
            for Type in HardwareTopology.DataObjectTypes:
                if Type.Name == "SCALEXIO Rack": 
                    ScalexioType = Type

            Scalexio = HardwareTopology.CreateRootObject(ScalexioType)

            for Type in Scalexio.DataObjectTypes:
                if Type.Name == ProcUnitType_name: # Default Processing Unit Type: HCP P02. Other types can be used depending on the Processor Type.
                    ProcessingUnitType = Type
                
            ProcessingUnit = Scalexio.CreateChild(ProcessingUnitType)
            print("Added Hardware Topology with %s and %s.\n"% (Scalexio.Name, ProcessingUnit.Name))
            
        elif ContainsRack == False:
            for Type in HardwareTopology.DataObjectTypes:
                if Type.Name == ProcUnitType_name: # Default Processing Unit Type: HCP P02. Other types can be used depending on the Processor Type.
                    ProcessingUnitType = Type

            ProcessingUnit = HardwareTopology.CreateRootObject(ProcessingUnitType)
            print("Added Hardware Topology with %s.\n"% (ProcessingUnit.Name))

    except Exception as ex:
        print(f"Exception occurred in Add_HardwareTopology: {ex}.")
        exit(1)
        
def ArrangeSignalChain(IP_address, SubnetMask):
    """
    This function adds Function blocks and Model Port Blocks and sets required properties.
    As a second step they are connected to each other.
    """
    
    print("Starting arranging Signal Chain...\n")
    
    # Get FunctionLib
    FunctionLib = CfgDesk.ActiveApplication.Components.IOFunctionLib
    FunctionLibRootObject = FunctionLib.Item(0)

    # Get Ethernet Setup Function block
    EthernetSetup = FunctionLibRootObject.Item('Ethernet Setup')
    EthernetSetup_instance = EthernetSetup.CreateChild(EthernetSetup.DataObjectTypes.Item(0))

    # Set properties of Ethernet Setup Function block
    EthernetSetup_instance.Properties.Item('LocalIpAddress').Value = IP_address 
    EthernetSetup_instance.Properties.Item('SubnetMask').Value = SubnetMask
    EthernetSetup_instance.Properties.Item('IsDefaultGatewayEnabled').Value = DefaultGatewayEnabled
    EthernetSetup_instance.Properties.Item('GatewayIpAddress').Value = Gateway_IP_address
    
    # Hardware Assignment
    ElectricalInterface = EthernetSetup_instance.Item('Electrical Interface')
    
    if ContainsRack == True:
        ElectricalInterface.Properties.Item('AssignedChannelSet').Value = 'SCALEXIO Processing Unit (1)\\Ethernet Adapter 1 (Onboard) [SCALEXIO Rack (1)]'
    elif ContainsRack == False:
        ElectricalInterface.Properties.Item('AssignedChannelSet').Value = 'SCALEXIO Processing Unit (1)\\Ethernet Adapter 1 (Onboard)'        
            
    ElectricalInterface.Properties.Item('Ethernet Controller').Value = 'Eth0_1'

    # Get TCP Function block
    TCP = FunctionLibRootObject.Item('TCP')
    TCP_instance = TCP.CreateChild(TCP.DataObjectTypes.Item(0))

    # Set properties of TCP Function block
    TCP_instance.Properties.Item('LocalPortNumber').Value = 2017
    TCP_instance.Properties.Item('TCP on Ethernet').Value = 'Ethernet, %s [Ethernet Setup (1)]' % IP_address

    TCP_Transmit = TCP_instance.Item('Transmit')
    TCP_Transmit.Properties.Item('MaximumVectorSize').Value = 65507
    TCP_Transmit.Properties.Item('VariableVectorSize').Value = 1 # 1: Defined by model
    TCP_Transmit.Properties.Item('MessageSendMode').Value = 2 # 1: Delay, 2: No delay

    TCP_Receive = TCP_instance.Item('Receive')
    TCP_Receive.Properties.Item('MaximumVectorSize').Value = 65507
    TCP_Receive.Properties.Item('VariableVectorSize').Value = 1 # 1: Provided to model
    TCP_Receive.Properties.Item('VariableVectorSizeMode').Value = 2 # 1: Defined by model, 2: All available

    # Get Model Port Blocks
    ModelTopology = CfgDesk.ActiveApplication.Components.ModelTopology
    Model = ModelTopology.Item(0)

    AnimationInterface = Model.Item('AnimationInterface')

    def Search(Parent):
        for child in Parent:
            if child.IsOfRole('ModelPortBlock'):
                child.IsInApplication = True
            elif child.IsOfRole('ModelInterfaceGroup'):
                Search(child)

    Search(AnimationInterface)

    # Connect Function blocks to Model Port Blocks
    Status = AnimationInterface.Item('ANIMATION_INTERFACE').Item('Connection_Settings').Item('HIL').Item(r'Status [ETH TCP (Server)\Connection 1]')
    Transmit_Out = AnimationInterface.Item('ANIMATION_INTERFACE').Item('Connection_Settings').Item('HIL').Item(r'Transmit_Out [ETH TCP (Server)\Connection 1]')
    Transmit_In = AnimationInterface.Item('ANIMATION_INTERFACE').Item('Connection_Settings').Item('HIL').Item(r'Transmit_In [ETH TCP (Server)\Connection 1]')
    Receive = AnimationInterface.Item('ANIMATION_INTERFACE').Item('Connection_Settings').Item('HIL').Item(r'Receive [ETH TCP (Server)\Connection 1]')
    FunctionAndModelBlocks = [TCP_instance, Status, Transmit_Out, Transmit_In, Receive]
    CfgDesk.ActiveApplication.Algorithms.ConnectIOFunctionBlocksToModelPortBlocks(FunctionAndModelBlocks)

def BuildCode():
    """
    This function builds the real time code for Scalexio and
    returns the Sdf path as a result.
    """
    
    # Deactivate Download after Build
    BuildProperties = CfgDesk.ActiveApplication.BuildManagement.Properties
    BuildProperties.Item('DownloadAfterBuild').Value = False

    # Build code
    BuildResults = CfgDesk.ActiveApplication.BuildManagement.Build()
    
    # Check if Build is successful
    if BuildResults.Canceled == False and BuildResults.Success == True and BuildResults.RtaFullPath != '':
        print("Finished code building process successfully.\n")
        # Get sdf Path
        SdfPath = BuildResults.RtaFullPath.replace("rta", "sdf")
    else:
        print("Build failed.\n")
        SdfPath = ''

    return SdfPath

def HasAnimationInterface():
    ModelTopology = CfgDesk.ActiveApplication.Components.ModelTopology
    Model = ModelTopology.Item(0)

    for modelPart in Model:
        if modelPart.Name == 'AnimationInterface':
            return True
        
    return False

def main():
    """
    This is the main execution function.
    """
    
    try:
        DemoRoot = os.path.abspath(os.path.dirname(inspect.getfile(inspect.currentframe())) + '/../'*3) # Get demo root
        
        Initialize(Project_name, Application_name, DemoRoot)
    
        Add_ModelTopology(DemoRoot, SimulationModel)
        
        Add_HardwareTopology(ProcUnitType_name)
        
        if HasAnimationInterface():
            # Check if IP address and Subnet Mask are entered
            if IP_address == '' or SubnetMask == '':
                raise Exception("Either no IP address or Subnet Mask entered. Please enter an IP address and a subnet mask before running script. Script will be aborted.")
            # Check if Gateway IP address is entered when Default Gateway is enabled
            if DefaultGatewayEnabled == True and Gateway_IP_address == '':
                raise Exception("DefaultGatewayEnabled is True but no Gateway IP address is set. Generated real time code will not work. Script will be aborted.")

            ArrangeSignalChain(IP_address, SubnetMask)
        
        # Save project
        CfgDesk.ActiveProject.Save()
        print("Finished arranging Signal Chain. Starting build real time code. This can take several minutes.\n")
        
        SdfPath = BuildCode()
        
        # Save project after Build
        CfgDesk.ActiveProject.Save()
        print("Saved project.\n")
        
        # Finish
        if SdfPath != '':
            print("The .sdf-file can be found in %s.\n" % SdfPath)
        else:
            print("No .sdf-file generated.\n")
                
        CfgDesk.Quit()
        print("Script finished. Closed ConfigurationDesk.")

    except Exception as ex:
        print(f"Exception occured in CreateRealTimeObject.py: {ex}\n")
        print("Script ends.\n")

#--------------------------------------------------------------------------------------------------
# Main Program
#--------------------------------------------------------------------------------------------------
if __name__ == '__main__':

    # Start main.
    main()
    