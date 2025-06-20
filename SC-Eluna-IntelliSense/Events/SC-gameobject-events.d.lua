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


---@meta

--- Eluna GameObject Event IDs
---@class GameObjectEvents
---@field GAMEOBJECT_EVENT_ON_AIUPDATE            integer
---@field GAMEOBJECT_EVENT_ON_SPAWN              integer
---@field GAMEOBJECT_EVENT_ON_DUMMY_EFFECT         integer
---@field GAMEOBJECT_EVENT_ON_QUEST_ACCEPT         integer
---@field GAMEOBJECT_EVENT_ON_QUEST_REWARD         integer
---@field GAMEOBJECT_EVENT_ON_DIALOG_STATUS       integer
---@field GAMEOBJECT_EVENT_ON_DESTROYED           integer
---@field GAMEOBJECT_EVENT_ON_DAMAGED             integer
---@field GAMEOBJECT_EVENT_ON_LOOT_STATE_CHANGE   integer
---@field GAMEOBJECT_EVENT_ON_GO_STATE_CHANGED    integer
---@field GAMEOBJECT_EVENT_ON_ADD                integer
---@field GAMEOBJECT_EVENT_ON_REMOVE             integer
---@field GAMEOBJECT_EVENT_ON_USE                  integer


---@class ElunaNamespace
---@field GameObjectEvents GameObjectEvents
