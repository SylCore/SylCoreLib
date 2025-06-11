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
---@class Group
Group = {};

--- Adds a new member to the Group
--- @param player Player
--- @return boolean added
function Group:AddMember(player) end;


--- Converts this Group to a raid Group
function Group:ConvertToRaid() end;


--- Disbands this Group
function Group:Disband() end;


--- Returns the Group's GUID
--- @return number groupGUID
function Group:GetGUID() end;


--- Returns the type of this Group
--- @return GroupType groupType
function Group:GetGroupType() end;


--- Returns Group leader GUID
--- @return number leaderGUID
function Group:GetLeaderGUID() end;


--- Returns a Group member's GUID by their name
---@param name string
---@return number memberGUID
function Group:GetMemberGUID(name) end;


--- Returns the Player's subgroup ID of this Group
--- @param guid number
--- @return number subGroupID
function Group:GetMemberGroup(guid) end;


--- Returns a table with the Players in this Group
--- @return table groupPlayers
function Group:GetMembers() end;


--- Returns the member count of this Group
--- @return number memberCount
function Group:GetMembersCount() end;


--- Returns 'true' if the subgroup has free slots in this Group
--- @param subGroup number
--- @return boolean hasFreeSlot
function Group:HasFreeSlotSubGroup(subGroup) end;


--- Returns 'true' if the Player is an assistant of this Group
---@param guid number
---@return boolean isAssistant
function Group:IsAssistant(guid) end;


--- Returns 'true' if the Group is a battleground Group
---@return boolean isBG
function Group:IsBGGroup() end;


--- Returns 'true' if the Group is full
--- @return boolean isFull
function Group:IsFull() end;


--- Returns 'true' if the Group is a LFG group
--- @return boolean isLFGGroup
function Group:IsLFGGroup() end;


--- Returns 'true' if the Player is the Group leader
---@param guid string
---@return boolean isLeader
function Group:IsLeader(guid) end;


--- Returns 'true' if the Player is a member of this Group
--- @param guid number
--- @return boolean isMember
function Group:IsMember(guid) end;


--- Returns 'true' if the Group is a raid Group
--- @return boolean isRaid
function Group:IsRaidGroup() end;


--- Removes a Player from this Group and returns 'true' if successful
--- @param guid number
--- @param method RemoveMethod
--- @return boolean removed
function Group:RemoveMember(guid, method) end;


--- Returns 'true' if the Players are in the same subgroup in this Group
--- @param player1 Player
--- @param player2 Player
--- @return boolean sameSubGroup
function Group:SameSubGroup(player1, player2) end;


--- Sends a specified WorldPacket to this Group
--- @param packet WorldPacket
--- @param ignorePlayersInBg boolean
--- @param ignore number
function Group:SendPacket(packet, ignorePlayersInBg, ignore) end;


--- Sets the leader of this Group
---@param guid number
function Group:SetLeader(guid) end;


--- Sets or removes a flag for a Group member
--- @param target number
--- @param apply boolean
--- @param flag GroupMemberFlags
function Group:SetMemberFlag(target, apply, flag) end;


--- Sets the member's subGroup
--- @param guid number
--- @param groupID number
function Group:SetMembersGroup(guid, groupID) end;


--- Sets the target icon of an object for the Group
--- @param icon number
--- @param target number
--- @param setter number
function Group:SetTargetIcon(icon, target, setter) end;