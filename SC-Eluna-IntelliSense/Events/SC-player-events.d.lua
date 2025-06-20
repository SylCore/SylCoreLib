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

--- Eluna Player Event IDs
---@class PlayerEvents
---@field PLAYER_EVENT_ON_CHARACTER_CREATE       integer
---@field PLAYER_EVENT_ON_CHARACTER_DELETE       integer
---@field PLAYER_EVENT_ON_LOGIN                  integer
---@field PLAYER_EVENT_ON_LOGOUT                 integer
---@field PLAYER_EVENT_ON_SPELL_CAST             integer
---@field PLAYER_EVENT_ON_KILL_PLAYER            integer
---@field PLAYER_EVENT_ON_KILL_CREATURE          integer
---@field PLAYER_EVENT_ON_KILLED_BY_CREATURE     integer
---@field PLAYER_EVENT_ON_DUEL_REQUEST           integer
---@field PLAYER_EVENT_ON_DUEL_START             integer
---@field PLAYER_EVENT_ON_DUEL_END               integer
---@field PLAYER_EVENT_ON_GIVE_XP                integer
---@field PLAYER_EVENT_ON_LEVEL_CHANGE           integer
---@field PLAYER_EVENT_ON_MONEY_CHANGE           integer
---@field PLAYER_EVENT_ON_REPUTATION_CHANGE      integer
---@field PLAYER_EVENT_ON_TALENTS_CHANGE         integer
---@field PLAYER_EVENT_ON_TALENTS_RESET          integer
---@field PLAYER_EVENT_ON_CHAT                   integer
---@field PLAYER_EVENT_ON_WHISPER                integer
---@field PLAYER_EVENT_ON_GROUP_CHAT             integer
---@field PLAYER_EVENT_ON_GUILD_CHAT             integer
---@field PLAYER_EVENT_ON_CHANNEL_CHAT           integer
---@field PLAYER_EVENT_ON_EMOTE                  integer
---@field PLAYER_EVENT_ON_TEXT_EMOTE             integer
---@field PLAYER_EVENT_ON_SAVE                   integer
---@field PLAYER_EVENT_ON_BIND_TO_INSTANCE       integer
---@field PLAYER_EVENT_ON_UPDATE_ZONE            integer
---@field PLAYER_EVENT_ON_MAP_CHANGE             integer
---@field PLAYER_EVENT_ON_EQUIP                  integer
---@field PLAYER_EVENT_ON_FIRST_LOGIN            integer
---@field PLAYER_EVENT_ON_CAN_USE_ITEM           integer
---@field PLAYER_EVENT_ON_LOOT_ITEM              integer
---@field PLAYER_EVENT_ON_ENTER_COMBAT           integer
---@field PLAYER_EVENT_ON_LEAVE_COMBAT           integer
---@field PLAYER_EVENT_ON_REPOP                  integer
---@field PLAYER_EVENT_ON_RESURRECT              integer
---@field PLAYER_EVENT_ON_LOOT_MONEY             integer
---@field PLAYER_EVENT_ON_QUEST_ABANDON          integer
---@field PLAYER_EVENT_ON_LEARN_TALENTS          integer                      
---@field PLAYER_EVENT_ON_COMMAND                integer
---@field PLAYER_EVENT_ON_PET_ADDED_TO_WORLD     integer
---@field PLAYER_EVENT_ON_LEARN_SPELL            integer
---@field PLAYER_EVENT_ON_ACHIEVEMENT_COMPLETE   integer
---@field PLAYER_EVENT_ON_FFAPVP_CHANGE          integer
---@field PLAYER_EVENT_ON_UPDATE_AREA            integer
---@field PLAYER_EVENT_ON_CAN_INIT_TRADE         integer
---@field PLAYER_EVENT_ON_CAN_SEND_MAIL          integer
---@field PLAYER_EVENT_ON_CAN_JOIN_LFG           integer
---@field PLAYER_EVENT_ON_QUEST_REWARD_ITEM      integer
---@field PLAYER_EVENT_ON_CREATE_ITEM            integer
---@field PLAYER_EVENT_ON_STORE_NEW_ITEM         integer
---@field PLAYER_EVENT_ON_COMPLETE_QUEST         integer
---@field PLAYER_EVENT_ON_CAN_GROUP_INVITE       integer
---@field PLAYER_EVENT_ON_GROUP_ROLL_REWARD_ITEM integer
---@field PLAYER_EVENT_ON_BG_DESERTION           integer
---@field PLAYER_EVENT_ON_PET_KILL               integer
---@field PLAYER_EVENT_ON_CAN_RESURRECT          integer
---@field PLAYER_EVENT_ON_CAN_UPDATE_SKILL       integer
---@field PLAYER_EVENT_ON_BEFORE_UPDATE_SKILL    integer
---@field PLAYER_EVENT_ON_UPDATE_SKILL           integer
---@field PLAYER_EVENT_ON_PLAYER_JUST_DIED       integer

---@class ElunaNamespace
---@field PlayerEvents PlayerEvents
