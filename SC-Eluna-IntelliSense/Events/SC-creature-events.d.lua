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
---@class CreatureEvents
---@field CREATURE_EVENT_ON_ENTER_COMBAT              integer
---@field CREATURE_EVENT_ON_LEAVE_COMBAT              integer
---@field CREATURE_EVENT_ON_TARGET_DIED               integer
---@field CREATURE_EVENT_ON_DIED                      integer
---@field CREATURE_EVENT_ON_SPAWN                     integer
---@field CREATURE_EVENT_ON_REACH_WP                  integer
---@field CREATURE_EVENT_ON_AIUPDATE                  integer
---@field CREATURE_EVENT_ON_RECEIVE_EMOTE             integer
---@field CREATURE_EVENT_ON_DAMAGE_TAKEN              integer
---@field CREATURE_EVENT_ON_PRE_COMBAT                integer
---@field CREATURE_EVENT_ON_OWNER_ATTACKED            integer
---@field CREATURE_EVENT_ON_OWNER_ATTACKED_AT         integer
---@field CREATURE_EVENT_ON_HIT_BY_SPELL              integer
---@field CREATURE_EVENT_ON_SPELL_HIT_TARGET          integer
---@field CREATURE_EVENT_ON_JUST_SUMMONED_CREATURE    integer
---@field CREATURE_EVENT_ON_SUMMONED_CREATURE_DESPAWN integer
---@field CREATURE_EVENT_ON_SUMMONED_CREATURE_DIED    integer
---@field CREATURE_EVENT_ON_SUMMONED                  integer
---@field CREATURE_EVENT_ON_RESET                     integer
---@field CREATURE_EVENT_ON_REACH_HOME                integer
---@field CREATURE_EVENT_ON_CORPSE_REMOVED            integer
---@field CREATURE_EVENT_ON_MOVE_IN_LOS               integer
---@field CREATURE_EVENT_ON_DUMMY_EFFECT              integer
---@field CREATURE_EVENT_ON_QUEST_ACCEPT              integer
---@field CREATURE_EVENT_ON_QUEST_REWARD              integer
---@field CREATURE_EVENT_ON_DIALOG_STATUS             integer
---@field CREATURE_EVENT_ON_ADD                       integer
---@field CREATURE_EVENT_ON_REMOVE                    integer

---@class ElunaNamespace
---@field CreatureEvents CreatureEvents
