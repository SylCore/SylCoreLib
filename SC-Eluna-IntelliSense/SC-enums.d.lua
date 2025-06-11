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

---@alias GroupTypeEnum
---| 0 # NORMAL
---| 1 # BG
---| 2 # RAID
---| 4 # LFG_RESTRICTED
---| 8 # LFG

---@class GroupType
---@field NORMAL number
---@field BG number
---@field RAID number
---@field LFG_RESTRICTED number
---@field LFG number

GroupType = {
    NORMAL = 0,
    BG = 1,
    RAID = 2,
    LFG_RESTRICTED = 4,
    LFG = 8,
}







---@alias RemoveMethodEnum
---| 0 # GROUP_REMOVEMETHOD_DEFAULT
---| 1 # GROUP_REMOVEMETHOD_KICK
---| 2 # GROUP_REMOVEMETHOD_LEAVE
---| 3 # GROUP_REMOVEMETHOD_KICK_LFG

---@class RemoveMethod
---@field GROUP_REMOVEMETHOD_DEFAULT number
---@field GROUP_REMOVEMETHOD_KICK number
---@field GROUP_REMOVEMETHOD_LEAVE number
---@field GROUP_REMOVEMETHOD_KICK_LFG number

RemoveMethod = {
    GROUP_REMOVEMETHOD_DEFAULT  = 0,
    GROUP_REMOVEMETHOD_KICK     = 1,
    GROUP_REMOVEMETHOD_LEAVE    = 2,
    GROUP_REMOVEMETHOD_KICK_LFG = 3,
};


---@alias GroupMemberFlagsEnum
---| 1 # MEMBER_FLAG_ASSISTANT
---| 2 # MEMBER_FLAG_MAINTANK
---| 4 # MEMBER_FLAG_MAINASSIST

---@class GroupMemberFlags
---@field MEMBER_FLAG_ASSISTANT number
---@field MEMBER_FLAG_MAINTANK number
---@field MEMBER_FLAG_MAINASSIST number

GroupMemberFlags = {
    MEMBER_FLAG_ASSISTANT       = 0x01,
    MEMBER_FLAG_MAINTANK        = 0x02,
    MEMBER_FLAG_MAINASSIST      = 0x04,
};






---@alias CorpseTypeEnum
---| 0 # CORPSE_BONES
---| 1 # CORPSE_RESURRECTABLE_PVE
---| 2 # CORPSE_RESURRECTABLE_PVP

---@class CorpseType
---@field CORPSE_BONES number
---@field CORPSE_RESURRECTABLE_PVE number
---@field CORPSE_RESURRECTABLE_PVP number


CorpseType = {
    CORPSE_BONES             = 0,
    CORPSE_RESURRECTABLE_PVE = 1,
    CORPSE_RESURRECTABLE_PVP = 2
};



---@alias LocaleConstantEnum
---| 0 # LOCALE_enUS
---| 1 # LOCALE_koKR
---| 2 # LOCALE_frFR
---| 3 # LOCALE_deDE
---| 4 # LOCALE_zhCN
---| 5 # LOCALE_zhTW
---| 6 # LOCALE_esES
---| 7 # LOCALE_esMX
---| 8 # LOCALE_ruRU

---@class LocaleConstant
---@field LOCALE_enUS number
---@field LOCALE_koKR number
---@field LOCALE_frFR number
---@field LOCALE_deDE number
---@field LOCALE_zhCN number
---@field LOCALE_zhTW number
---@field LOCALE_esES number
---@field LOCALE_esMX number
---@field LOCALE_ruRU number


LocaleConstant = {
    LOCALE_enUS = 0,
    LOCALE_koKR = 1,
    LOCALE_frFR = 2,
    LOCALE_deDE = 3,
    LOCALE_zhCN = 4,
    LOCALE_zhTW = 5,
    LOCALE_esES = 6,
    LOCALE_esMX = 7,
    LOCALE_ruRU = 8
};















---@alias QuestFlagsEnum
---| 0x00000000 # QUEST_FLAGS_NONE                   
---| 0x00000001 # QUEST_FLAGS_STAY_ALIVE             
---| 0x00000002 # QUEST_FLAGS_PARTY_ACCEPT           
---| 0x00000004 # QUEST_FLAGS_EXPLORATION            
---| 0x00000008 # QUEST_FLAGS_SHARABLE               
---| 0x00000010 # QUEST_FLAGS_HAS_CONDITION          
---| 0x00000020 # QUEST_FLAGS_HIDE_REWARD_POI        
---| 0x00000040 # QUEST_FLAGS_RAID                   
---| 0x00000080 # QUEST_FLAGS_TBC                    
---| 0x00000100 # QUEST_FLAGS_NO_MONEY_FROM_XP       
---| 0x00000200 # QUEST_FLAGS_HIDDEN_REWARDS         
---| 0x00000400 # QUEST_FLAGS_TRACKING               
---| 0x00000800 # QUEST_FLAGS_DEPRECATE_REPUTATION   
---| 0x00001000 # QUEST_FLAGS_DAILY                  
---| 0x00002000 # QUEST_FLAGS_FLAGS_PVP              
---| 0x00004000 # QUEST_FLAGS_UNAVAILABLE            
---| 0x00008000 # QUEST_FLAGS_WEEKLY                 
---| 0x00010000 # QUEST_FLAGS_AUTOCOMPLETE           
---| 0x00020000 # QUEST_FLAGS_DISPLAY_ITEM_IN_TRACKER
---| 0x00040000 # QUEST_FLAGS_OBJ_TEXT               
---| 0x00080000 # QUEST_FLAGS_AUTO_ACCEPT            


---@class QuestFlags
---@field QUEST_FLAGS_NONE                    number
---@field QUEST_FLAGS_STAY_ALIVE              number
---@field QUEST_FLAGS_PARTY_ACCEPT            number
---@field QUEST_FLAGS_EXPLORATION             number
---@field QUEST_FLAGS_SHARABLE                number
---@field QUEST_FLAGS_HAS_CONDITION           number
---@field QUEST_FLAGS_HIDE_REWARD_POI         number
---@field QUEST_FLAGS_RAID                    number
---@field QUEST_FLAGS_TBC                     number
---@field QUEST_FLAGS_NO_MONEY_FROM_XP        number
---@field QUEST_FLAGS_HIDDEN_REWARDS          number
---@field QUEST_FLAGS_TRACKING                number
---@field QUEST_FLAGS_DEPRECATE_REPUTATION    number
---@field QUEST_FLAGS_DAILY                   number
---@field QUEST_FLAGS_FLAGS_PVP               number
---@field QUEST_FLAGS_UNAVAILABLE             number
---@field QUEST_FLAGS_WEEKLY                  number
---@field QUEST_FLAGS_AUTOCOMPLETE            number
---@field QUEST_FLAGS_DISPLAY_ITEM_IN_TRACKER number
---@field QUEST_FLAGS_OBJ_TEXT                number
---@field QUEST_FLAGS_AUTO_ACCEPT             number

QuestFlags = {
    QUEST_FLAGS_NONE                    = 0x00000000,
    QUEST_FLAGS_STAY_ALIVE              = 0x00000001,
    QUEST_FLAGS_PARTY_ACCEPT            = 0x00000002,
    QUEST_FLAGS_EXPLORATION             = 0x00000004,
    QUEST_FLAGS_SHARABLE                = 0x00000008,
    QUEST_FLAGS_HAS_CONDITION           = 0x00000010,
    QUEST_FLAGS_HIDE_REWARD_POI         = 0x00000020,
    QUEST_FLAGS_RAID                    = 0x00000040,
    QUEST_FLAGS_TBC                     = 0x00000080,
    QUEST_FLAGS_NO_MONEY_FROM_XP        = 0x00000100,
    QUEST_FLAGS_HIDDEN_REWARDS          = 0x00000200,
    QUEST_FLAGS_TRACKING                = 0x00000400,
    QUEST_FLAGS_DEPRECATE_REPUTATION    = 0x00000800,
    QUEST_FLAGS_DAILY                   = 0x00001000,
    QUEST_FLAGS_FLAGS_PVP               = 0x00002000,
    QUEST_FLAGS_UNAVAILABLE             = 0x00004000,
    QUEST_FLAGS_WEEKLY                  = 0x00008000,
    QUEST_FLAGS_AUTOCOMPLETE            = 0x00010000,
    QUEST_FLAGS_DISPLAY_ITEM_IN_TRACKER = 0x00020000,
    QUEST_FLAGS_OBJ_TEXT                = 0x00040000,
    QUEST_FLAGS_AUTO_ACCEPT             = 0x00080000,
};