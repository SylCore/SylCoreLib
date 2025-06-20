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

--- Eluna Server Event IDs
---@class ServerEvents
---@field SERVER_EVENT_ON_NETWORK_START          integer
---@field SERVER_EVENT_ON_NETWORK_STOP           integer
---@field SERVER_EVENT_ON_SOCKET_OPEN            integer
---@field SERVER_EVENT_ON_SOCKET_CLOSE           integer
---@field SERVER_EVENT_ON_PACKET_RECEIVE         integer
---@field SERVER_EVENT_ON_PACKET_RECEIVE_UNKNOWN integer
---@field SERVER_EVENT_ON_PACKET_SEND            integer
---@field WORLD_EVENT_ON_OPEN_STATE_CHANGE       integer
---@field WORLD_EVENT_ON_CONFIG_LOAD             integer
---@field WORLD_EVENT_ON_SHUTDOWN_INIT           integer
---@field WORLD_EVENT_ON_SHUTDOWN_CANCEL         integer
---@field WORLD_EVENT_ON_UPDATE                  integer
---@field WORLD_EVENT_ON_STARTUP                 integer
---@field WORLD_EVENT_ON_SHUTDOWN                integer
---@field ELUNA_EVENT_ON_LUA_STATE_CLOSE         integer
---@field MAP_EVENT_ON_CREATE                    integer
---@field MAP_EVENT_ON_DESTROY                   integer
---@field MAP_EVENT_ON_GRID_LOAD                 integer
---@field MAP_EVENT_ON_GRID_UNLOAD               integer
---@field MAP_EVENT_ON_PLAYER_ENTER              integer
---@field MAP_EVENT_ON_PLAYER_LEAVE              integer
---@field MAP_EVENT_ON_UPDATE                    integer
---@field TRIGGER_EVENT_ON_TRIGGER               integer
---@field WEATHER_EVENT_ON_CHANGE                integer
---@field AUCTION_EVENT_ON_ADD                   integer
---@field AUCTION_EVENT_ON_REMOVE                integer
---@field AUCTION_EVENT_ON_SUCCESSFUL            integer
---@field AUCTION_EVENT_ON_EXPIRE                integer
---@field ADDON_EVENT_ON_MESSAGE                 integer
---@field WORLD_EVENT_ON_DELETE_CREATURE         integer
---@field WORLD_EVENT_ON_DELETE_GAMEOBJECT       integer
---@field ELUNA_EVENT_ON_LUA_STATE_OPEN          integer
---@field GAME_EVENT_START                       integer
---@field GAME_EVENT_STOP                        integer

---@class ElunaNamespace
---@field ServerEvents ServerEvents
