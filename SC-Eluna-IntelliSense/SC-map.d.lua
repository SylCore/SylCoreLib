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
---@class Map
Map = {};



--- Returns the area ID of the Map at the specified X, Y, and Z coordinates.
---@param x number
---@param y number
---@param z number
---@param phasemask? number Optional phase mask (defaults to player's phase)
---@return number areaId
function Map:GetAreaId(x, y, z, phasemask) end;


--- Returns a table with all the current Creatures in the map
---@return table mapCreatures
function Map:GetCreatures() end;


--- Returns a table with all the current Creatures in the specific area id
---@param areaId number
---@return number areaId
function Map:GetCreaturesByAreaId(areaId) end;


--- Returns the difficulty of the Map.
--- Always returns 0 if the expansion is pre-TBC.
---@return number difficulty
function Map:GetDifficulty() end;


--- Returns the height of the Map at the given X and Y coordinates.
--- In case of no height found nil is returned
---@param x number
---@param y number
---@return number z
function Map:GetHeight(x, y) end;


--- Gets the instance data table for the Map, if it exists.
--- The instance must be scripted using Eluna for this to succeed. If the instance is scripted in C++ this will return nil.
---@return table instance_data
function Map:GetInstanceData() end;


--- Returns the instance ID of the Map.
---@return number instanceId
function Map:GetInstanceId() end;


--- Returns the ID of the Map.
---@return number mapId
function Map:GetMapId(areaId) end;


--- Returns the name of the Map.
---@return string name
function Map:GetName() end;


--- Returns the player count currently on the Map (excluding GMs).
---@return number playerCount
function Map:GetPlayerCount() end;


--- Returns a table with all the current Players in the map
---@param team? TeamId (Optional for getting players of a specific team)
---@return table mapPlayers
function Map:GetPlayers(team) end;


--- Returns a WorldObject by its GUID from the map if it is spawned.
---@param guid number
---@return WorldObject object
function Map:GetWorldObject(guid) end;


--- Returns true if the Map is an arena BattleGround, false otherwise.
---@return boolean isArena
function Map:IsArena() end;


--- Returns true if the Map is a non-arena BattleGround, false otherwise.
---@return boolean isBattleGround
function Map:IsBattleground() end;


--- Returns true if the Map is a dungeon, false otherwise.
---@return boolean isDungeon
function Map:IsDungeon() end;


--- Returns true if the Map has no Players, false otherwise.
---@return boolean IsEmpty
function Map:IsEmpty() end;


--- Returns true if the Map is a heroic, false otherwise.
---@return boolean isHeroic
function Map:IsHeroic() end;


--- Returns true if the Map is a raid, false otherwise.
---@return boolean isRaid
function Map:IsRaid() end;


--- Saves the Map's instance data to the database.
function Map:SaveInstanceData() end;


--- Sets the [Weather] type based on [WeatherType] and grade supplied.
---@param zone number
---@param type WeatherType
---@param grade number
function Map:SetWeather(zone, type, grade) end;
