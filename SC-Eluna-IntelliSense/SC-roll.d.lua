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
---@class Roll
Roll = {};



--- Returns the rolled Item's count.
--- @return number count
function Roll:GetItemCount() end;


--- Returns the rolled Item's GUID.
--- @return number guid
function Roll:GetItemGUID() end;


--- Returns the rolled Item's entry.
--- @return number entry
function Roll:GetItemId() end;


--- Returns the rolled Item's random property ID.
--- @return number randomPropId
function Roll:GetItemRandomPropId() end;


--- Returns the rolled Item's random suffix ID.
--- @return number randomSuffix
function Roll:GetItemRandomSuffix() end;


--- Returns the rolled Item's slot in the loot window.
--- @return number slot
function Roll:GetItemSlot() end;


--- Returns the vote type for a Player on this Roll. See Roll:GetPlayerVoteGUIDs to obtain the GUIDs of the Players who rolled.
---@param guid number
---@return RollVote vote
function Roll:GetPlayerVote(guid) end


--- Returns the GUIDs of the Players who rolled. See Roll:GetPlayerVote to obtain the vote type of a Player.
---@return table guids
function Roll:GetPlayerVoteGUIDs() end


--- Returns the mask applied to this Roll.
---@return RollMask rollMask
function Roll:GetRollVoteMask() end


--- Returns the total number of players who rolled greed.
---@return number playersCount
function Roll:GetTotalGreed() end


--- Returns the total number of players who rolled need.
---@return number playersCount
function Roll:GetTotalNeed() end


--- Returns the total number of players who passed.
---@return number playersCount
function Roll:GetTotalPass() end;


--- Returns the total number of players who rolled.
---@return number playersCount
function Roll:GetTotalPlayersRolling() end;