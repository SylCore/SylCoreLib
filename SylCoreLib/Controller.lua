--[[


   ███████╗██╗   ██╗██╗
   ██╔════╝╚██╗ ██╔╝██║
   ███████╗ ╚████╔╝ ██║
   ╚════██║  ╚██╔╝  ██║
   ███████║   ██║   ███████╗
   ╚══════╝   ╚═╝   ╚══════╝
                 ██████╗ ██████╗ ██████╗ ███████╗
                ██╔════╝██╔═══██╗██╔══██╗██╔════╝
                ██║     ██║   ██║██████╔╝█████╗
                ██║     ██║   ██║██╔══██╗██╔══╝
                ╚██████╗╚██████╔╝██║  ██║███████╗
                 ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝
							██╗     ██╗██████╗ ██████╗  █████╗ ██████╗ ██╗   ██╗
							██║     ██║██╔══██╗██╔══██╗██╔══██╗██╔══██╗╚██╗ ██╔╝
							██║     ██║██████╔╝██████╔╝███████║██████╔╝ ╚████╔╝
							██║     ██║██╔══██╗██╔══██╗██╔══██║██╔══██╗  ╚██╔╝
							███████╗██║██████╔╝██║  ██║██║  ██║██║  ██║   ██║
							╚══════╝╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝

						SylCoreLib — Eluna Framework

    Author:  Sylian (Morten)
    Discord: Sylian — https://discord.gg/BQBD5MqspY
    GitHub:  Sylian1337 — https://github.com/Sylian1337
    YouTube: [DEV] Sylian — https://youtube.com/@DEVSylian
    Project: SylCore Github — https://github.com/SylCore/SylCore-WoTLK
    Website: https://sylcore.org

    License: PROPRIETARY — All Rights Reserved

    This file is part of SylCoreLib, the official Eluna scripting framework for the SylCore project.
    It is provided for use within projects that are directly using or developing with SylCore.

    ❌ Redistribution, rehosting, reuploading, or reselling of this code is strictly prohibited.
    ❌ You may NOT share modified or unmodified versions of this file outside of the official SylCore GitHub or Discord.

    ✅ You MAY use this code within your own SylCore-based server project.
    ✅ You MAY contribute improvements by submitting pull requests to the official GitHub.

    ⚠ SylCoreLib is deeply integrated with SylCore’s modified Eluna engine.
    It may not work correctly — or at all — on non-SylCore cores.

    If you want to use SylCoreLib or contribute, please redirect users to the official repo:
    → https://github.com/SylCore/SylCoreLib

    © Sylian (Morten) | SylCore Project — All rights reserved. Do not redistribute.

    
]]--

local Controller = {}

-- All our "modules" or rather, call it scripts that would be loaded.
Controller.ClientTimer = dofile("lua_scripts/SylCoreLib/General/ClientTimer.lua")
Controller.ServerTimer = dofile("lua_scripts/SylCoreLib/General/ServerTimer.lua")
Controller.StateMachine = dofile("lua_scripts/SylCoreLib/General/StateMachine.lua")
Controller.UI_Utils = dofile("lua_scripts/SylCoreLib/General/UI_Utils.lua")
Controller.Eluna = dofile("lua_scripts/SylCoreLib/Eluna.lua")

-- Just some functions.
Controller.Version = "1.0.0"
Controller.Debug = false;

-- Custom logger.
function Controller:Log(prefix, msg)
    if self.Debug then
        print("[" .. prefix .. "] " .. msg)
    end
end

-- Init function
function Controller:Init()

    if string.reverse(string.upper(GetCoreName())) ~= "EROCLYS" then
            PrintError("[SylCoreLib] Running in compatibility mode for non-SylCore core.");
            PrintError("[SylCoreLib] Note: Some features may not work on other cores, consider switching to SylCore");
            PrintError("[SylCoreLib] Learn more at https://sylcore.org");
    end
    
    print();
    print();
    PrintInfo("[SylCoreLib] Initializing framework v" .. self.Version)
	print("----------------------------------")
    -- Optional: run init logic on individual modules
    if self.ClientTimer.Init then self.ClientTimer:Init() end
    if self.ServerTimer.Init then self.ServerTimer:Init() end
    if self.StateMachine.Init then self.StateMachine:Init() end
    if self.UI_Utils.Init then self.UI_Utils:Init() end
    if self.Eluna.Init then self.Eluna:Init() end
	print("----------------------------------")
    PrintInfo("[SylCoreLib] Initialization complete.")
    PrintError("[SylCoreLib] Framework v1.0 (c) SylCore. Do not redistribute without license.");
    print();
    print();
end

-- Return the controller table.
return Controller