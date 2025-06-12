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
---@class ChatHandler
ChatHandler = {};



--- Returns the Player associated with the handler. Returns nil in the case of a console handler.
--- @return Player player
function ChatHandler:GetPlayer() end;


--- Returns the selected Creature.
--- @return Creature creature
function ChatHandler:GetSelectedCreature() end;


--- Returns the selected WorldObject.
--- @return WorldObject object
function ChatHandler:GetSelectedObject() end;


--- Returns the selected Player.
--- @return Player player
function ChatHandler:GetSelectedPlayer() end;


--- Returns the selected Player or the current Player if nothing is targeted or the target is not a player
--- @return Player player
function ChatHandler:GetSelectedPlayerOrSelf() end;


--- Returns the selected Unit
--- @return Unit unit
function ChatHandler:GetSelectedUnit() end;


--- Returns true if the ChatHandler comes from the console, false if it comes from a player
---@return boolean isConsole
function ChatHandler:IsConsole() end


--- Checks if the securityLevel is available
---@param securityLevel number
---@return boolean isAvailable
function ChatHandler:IsAvailable(securityLevel) end


--- Returns true if other previously called ChatHandler methods sent an error
---@return boolean sentErrorMessage
function ChatHandler:HasSentErrorMessage() end


--- Checks if the current security level is lower than the specified account's level
---@param account number
---@param strong? boolean
---@return boolean lower
function ChatHandler:HasLowerSecurityAccount(account, strong) end


--- Checks if the current security level is lower than the specified Player's account
---@param player Player
---@param strong? boolean Whether to check stronger security requirements
---@return boolean lower
function ChatHandler:HasLowerSecurity(player, strong) end


--- Sends a message to all connected Game Masters
--- @param text string
function ChatHandler:SendGlobalGMSysMessage(text) end;


--- Sends a message to all connected players
--- @param text string
function ChatHandler:SendGlobalSysMessage(text) end;


--- Sends a system message to the chat handler.
---@param msg string|integer Message text or string entry ID
function ChatHandler:SendSysMessage(msg) end