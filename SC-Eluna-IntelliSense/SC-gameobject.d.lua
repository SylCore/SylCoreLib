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
---@class GameObject : Object, WorldObject
GameObject = {};



--- This method is undocumented. Use at your own risk.
--- For temporary documentation, please check the LuaFunctions source file.
function GameObject:AddLoot() end;


--- Despawns a GameObject
--- The gameobject may be automatically respawned by the core
function GameObject:Despawn() end;


--- Returns the guid of the GameObject that is used as the ID in the database
---@return number dbguid
function GameObject:GetDBTableGUIDLow() end;


--- Returns display ID of the GameObject
---@return number displayId
function GameObject:GetDisplayId() end;


--- Returns the state of a GameObject Below are client side [GOState]s off of 3.3.5a
---@return GOState goState
function GameObject:GetGoState() end;


--- Returns the Player that can loot the GameObject
--- Not the original looter and may be nil.
---@return Player player
function GameObject:GetLootRecipient() end;


--- Returns the Group that can loot the GameObject
--- Not the original looter and may be nil.
---@return Group group
function GameObject:GetLootRecipientGroup() end;


--- Returns the [LootState] of a GameObject Below are [LootState]s off of 3.3.5a
---@return LootState lootState
function GameObject:GetLootState() end;


--- Returns 'true' if the GameObject can give the specified Quest
---@param questId number
---@return boolean hasQuest
function GameObject:HasQuest(questId) end;


--- Returns 'true' if the GameObject is active
---@return boolean isActive
function GameObject:IsActive() end;


--- Returns 'true' if the GameObject is spawned
---@return boolean isSpawned
function GameObject:IsSpawned() end;


--- Returns 'true' if the GameObject is a transport
---@return boolean isTransport
function GameObject:IsTransport() end;


--- Removes GameObject from the world
--- The object is no longer reachable after this and it is not respawned.
---@param deleteFromDB boolean
function GameObject:RemoveFromWorld(deleteFromDB ) end;


--- Respawns a GameObject
function GameObject:Respawn() end;


--- Saves GameObject to the database
function GameObject:SaveToDB() end;


--- Sets the state of a GameObject
--- @param state GOState
function GameObject:SetGoState(state) end;


--- Sets the [LootState] of a GameObject Below are [LootState]s off of 3.3.5a
--- @param state LootState
function GameObject:SetLootState(state) end;


--- Sets the respawn or despawn time for the gameobject.
---Respawn time is also used as despawn time depending on gameobject settings
--- @param delay number
function GameObject:SetRespawnDelay(delay) end;


--- Sets the respawn or despawn time for the gameobject.
--- Respawn time is also used as despawn time depending on gameobject settings
---@param delay number
function GameObject:SetRespawnTime(delay) end;


--- Activates a door or a button/lever
---@param delay number
function GameObject:UseDoorOrButton(delay) end;


