# -*- coding: utf-8 -*-
"""
Description: Start script for ModelDesk ScenarioPreview.

Copyright 2024 dSPACE GmbH. All rights reserved.
"""

import os
import sys
import subprocess
import wx
import wx.adv
import clr

# load InstallationManager API
clr.AddReference(os.path.join(os.environ['CommonProgramFiles'], "dSPACE", "InstallationManager", "bin", "dSPACE.InstallationManager.API.dll"))
import dSPACE.InstallationManager.API

######################################################################

def GetDspaceRootAndGuid():
    installationInfo = dSPACE.InstallationManager.API.ConfigurationInfo()
    for installation in installationInfo.Installations:
        if installation.IsActive and installation.TypeName == dSPACE.InstallationManager.API.Internal.InstallationType.RCP_HIL:
            return (installation.RootPath, installation.ID)

    return (None, None)

def ShowDownloadWindow():
    app = wx.App(False)
    app.locale = wx.Locale(wx.LANGUAGE_DEFAULT)

    aboutInfo = wx.adv.AboutDialogInfo()
    aboutInfo.SetName("dSPACE ModelDesk Scenario Preview")
    aboutInfo.SetDescription("This feature is not installed. Click on the following link for more information:")
    aboutInfo.SetWebSite("https://www.dspace.com/en/pub/home/support/kb/dsutil/utilmodeldesk/utilmdscenprev.cfm")
    wx.adv.AboutBox(aboutInfo)

if __name__ == '__main__':
    if len(sys.argv) > 1 and sys.argv[1].lower() == 'show_link':
        ShowDownloadWindow()
    else:
        dspaceRoot, guid = GetDspaceRootAndGuid()
        if dspaceRoot is None:
            print("Error: failed to get dSPACE Root")
        else:
            sourceRoot = "C:\\ProgramData\\dSPACE\\ScenarioPreview"
            if not os.path.exists(f"{sourceRoot}\\GUI.pyc"):
                subprocess.Popen(f'"{sys.executable}" "{sys.argv[0]}" show_link', shell=True)
            else:
                sys.path.append(sourceRoot)
                
                executable = os.path.join(sourceRoot, "virtual_environment", "Scripts", "python.exe")
                subprocess.Popen(f'"{executable}" "{sourceRoot}\\GUI.pyc" "{dspaceRoot}" "{guid}"', shell=False)
