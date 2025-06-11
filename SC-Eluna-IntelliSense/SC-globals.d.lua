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

--- Returns the core name
function GetCoreName() end

--- Broadcast a message to all players
---@param message string
function SendWorldMessage(message) end

---Returns the map pointer, returns null for the "World" state.
function GetStateMap() end;

--- Kicks a player from the server.
---@param player Player
function Kick(player) end;

--- Ban's a Player's account, character or IP
---@param banMode BanMode
---@param nameOrIP string 
---@param duration number
---@param reason string
---@param whoBanned string
---@return result number
function Ban(banMode, nameOrIP, duration, reason, whoBanned) end;


--- Reloads the Lua engine.
function ReloadEluna() end;


--- Saves all Players.
function SaveAllPlayers() end;




------------------------------------------------------------------------------------------------------------------------------
--													Database Calls															--
------------------------------------------------------------------------------------------------------------------------------

--- Executes a SQL query on the world database and returns an ElunaQuery.
--- The query is always executed synchronously (i.e. execution halts until the query has finished and then results are returned).
--- If you need to execute the query asynchronously, use Global:WorldDBQueryAsync instead.
---@param sql string
---@return result ElunaQuery
function WorldDBQuery(sql) end;


--- Executes an asynchronous SQL query on the world database and passes an ElunaQuery to a callback function.
--- The query is executed asynchronously (i.e. the server keeps running while the query is executed in parallel, and results are passed to a callback function).
--- If you need to execute the query synchronously, use Global:WorldDBQuery instead.
---@param sql string
---@param callBack fun()
function WorldDBQueryAsync(sql, callback) end;


--- Executes a SQL query on the world database.
--- The query may be executed asynchronously (at a later, unpredictable time). If you need to execute the query synchronously, use Global:WorldDBQuery instead.
--- Any results produced are ignored. If you need results from the query, use Global:WorldDBQuery or Global:WorldDBQueryAsync instead.
---@param sql string
function WorldDBExecute(sql) end;


--- Executes a SQL query on the login database and returns an ElunaQuery.
--- The query is always executed synchronously (i.e. execution halts until the query has finished and then results are returned).
--- If you need to execute the query asynchronously, use Global:AuthDBQueryAsync instead.
---@param sql string
---@return result ElunaQuery
function AuthDBQuery(sql) end;


--- Executes an asynchronous SQL query on the character database and passes an ElunaQuery to a callback function.
--- The query is executed asynchronously (i.e. the server keeps running while the query is executed in parallel, and results are passed to a callback function).
--- If you need to execute the query synchronously, use Global:AuthDBQuery instead.
---@param sql string
---@param callBack fun()
function AuthDBQueryAsync(sql, callback) end;


--- Executes a SQL query on the login database.
--- The query may be executed asynchronously (at a later, unpredictable time). If you need to execute the query synchronously, use Global:AuthDBQuery instead.
--- Any results produced are ignored. If you need results from the query, use Global:AuthDBQuery or Global:AuthDBQueryAsync instead.
---@param sql string
function AuthDBExecute(sql) end;


--- Executes a SQL query on the character database and returns an ElunaQuery.
--- The query is always executed synchronously (i.e. execution halts until the query has finished and then results are returned).
--- If you need to execute the query asynchronously, use Global:CharDBQueryAsync instead.
---@param sql string
---@return result ElunaQuery
function CharDBQuery(sql) end;


--- Executes an asynchronous SQL query on the character database and passes an ElunaQuery to a callback function.
--- The query is executed asynchronously (i.e. the server keeps running while the query is executed in parallel, and results are passed to a callback function).
--- If you need to execute the query synchronously, use Global:CharDBQuery instead.
---@param sql string
---@param callBack fun()
function CharDBQueryAsync(sql, callback) end;


--- Executes a SQL query on the character database.
--- The query may be executed asynchronously (at a later, unpredictable time). If you need to execute the query synchronously, use Global:CharDBQuery instead.
--- Any results produced are ignored. If you need results from the query, use Global:CharDBQuery or Global:CharDBQueryAsync instead.
---@param sql string
function CharDBExecute(sql) end;

------------------------------------------------------------------------------------------------------------------------------





------------------------------------------------------------------------------------------------------------------------------
--													Clear Event(s)															--
------------------------------------------------------------------------------------------------------------------------------

--- Clear BattleGroundEvent(s).
--- Unbinds event handlers for either all BattleGround events, or one type of event.
--- If event_type is nil, all BattleGround event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
---@param event_type number
function ClearBattleGroundEvents(event_type) end


--- Clear CreatureEvent(s).
--- Unbinds event handlers for either all of a Creature's events, or one type of event.
--- If event_type is nil, all the Creature's event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
--- NOTE: this will affect all instances of the Creature, not just one.
--- To bind and unbind events to a single Creature, see Global:RegisterUniqueCreatureEvent and Global:ClearUniqueCreatureEvents.
---@param entry number
---@param event_type number
function ClearCreatureEvents(entry, event_type) end


--- Clear CreatureGossipEvent(s).
--- Unbinds event handlers for either all of a Creature's gossip events, or one type of event.
--- If event_type is nil, all the Creature's gossip event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
--- NOTE: this will affect all instances of the Creature, not just one. 
--- To bind and unbind gossip events to a single Creature, tell the Eluna developers to implement that.
---@param entry number
---@param event_type number
function ClearCreatureGossipEvents(entry, event_type) end



--- Clear GameObjectEvent(s).
--- Unbinds event handlers for either all of a GameObject's events, or one type of event.
--- If event_type is nil, all the GameObject's event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
--- NOTE: this will affect all instances of the GameObject, not just one. To bind and unbind events to a single GameObject, tell the Eluna developers to implement that.
---@param entry number
---@param event_type number
function ClearGameObjectEvents(entry, event_type) end


--- Clear GameObjectGossipEvent(s).
--- Unbinds event handlers for either all of a GameObject's gossip events, or one type of event.
--- If event_type is nil, all the GameObject's gossip event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
--- NOTE: this will affect all instances of the GameObject, not just one. To bind and unbind gossip events to a single GameObject, tell the Eluna developers to implement that.
---@param entry number
---@param event_type number
function ClearGameObjectGossipEvents(entry, event_type) end


--- Clear GroupEvent(s).
--- Unbinds event handlers for either all Group events, or one type of Group event.
--- If event_type is nil, all Group event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
---@param event_type number
function ClearGroupEvents(event_type) end


--- Clear GuildEvent(s).
--- Unbinds event handlers for either all Guild events, or one type of Guild event.
--- If event_type is nil, all Guild event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
---@param event_type number
function ClearGuildEvents(event_type) end


--- Clear InstanceEvent(s).
--- Unbinds event handlers for either all of an instanced Map's events, or one type of event.
--- If event_type is nil, all the instanced Map's event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
---@param instance_id number
---@param event_type number
function ClearInstanceEvents(instance_id, event_type) end


--- Clear ItemEvent(s).
--- Unbinds event handlers for either all of an Item's events, or one type of event.
--- If event_type is nil, all the Item's event handlers are cleared.
--- NOTE: this will affect all instances of the Item, not just one. To bind and unbind events to a single Item, tell the Eluna developers to implement that.
---@param entry number
---@param event_type number
function ClearItemEvents(instance_id, event_type) end


--- Clear ItemGossipEvent(s).
--- Unbinds event handlers for either all of an Item's gossip events, or one type of event.
--- If event_type is nil, all the Item's gossip event handlers are cleared.
--- NOTE: this will affect all instances of the Item, not just one. To bind and unbind gossip events to a single Item, tell the Eluna developers to implement that.
---@param entry number
---@param event_type number
function ClearItemGossipEvents(instance_id, event_type) end

--- Clear MapEvent(s).
--- Unbinds event handlers for either all of a non-instanced Map's events, or one type of event.
--- If event_type is nil, all the non-instanced Map's event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
---@param map_id number
---@param event_type number
function ClearMapEvents(map_id, event_type) end


--- Clear PacketEvent(s).
--- Unbinds event handlers for either all of a WorldPacket opcode's events, or one type of event.
--- If event_type is nil, all the WorldPacket opcode's event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
---@param opcode number
---@param event_type number
function ClearPacketEvents(opcode, event_type) end


--- Clear PlayerEvent(s).
--- Unbinds event handlers for either all Player events, or one type of Player event.
--- If event_type is nil, all Player event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
---@param event_type number
function ClearPlayerEvents(event_type) end


--- Clear PlayerGossipEvent(s).
--- Unbinds event handlers for either all of a Player's gossip events, or one type of event.
--- If event_type is nil, all the Player's gossip event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
---@param entry number
---@param event_type number
function ClearPlayerGossipEvents(entry, event_type) end


--- Clear ServerEvent(s).
--- Unbinds event handlers for either all server events, or one type of event.
--- If event_type is nil, all server event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
---@param event_type number
function ClearServerEvents(event_type) end


--- Clear SpellEvent(s).
--- Unbinds event handlers for either all of a Spell's events, or one type of event.
--- If event_type is nil, all the Spell's event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
---@param entry number
---@param event_type number
function ClearSpellEvents(entry, event_type) end


--- Clear TicketEvent(s).
--- Unbinds event handlers for either all Ticket events, or one type of Ticket event.
--- If event_type is nil, all Ticket event handlers are cleared.
--- Otherwise, only event handlers for event_type are cleared.
---@param event_type number
function ClearTicketEvents(event_type) end

------------------------------------------------------------------------------------------------------------------------------




------------------------------------------------------------------------------------------------------------------------------
--													Register Event(s)														--
------------------------------------------------------------------------------------------------------------------------------

--- Register a creature event handler
---@param creatureID number
---@param eventID number
---@param callback fun(eventID: integer, creature: Creature, ...)
function RegisterCreatureEvent(creatureID, eventID, callback) end


--- Registers a BattleGround event handler.
---@param eventID number
---@param callback fun()
function RegisterBGEvent(eventID, callback) end


--- Registers a Creature gossip event handler.
---@param entry number
---@param eventID number
---@param callback fun()
function RegisterCreatureGossipEvent(entry, eventID, callback) end


--- Registers a GameObject event handler.
---@param entry number
---@param eventID number
---@param callback fun()
function RegisterGameObjectEvent(entry, eventID, callback) end


--- Registers a GameObject gossip event handler.
---@param entry number
---@param eventID number
---@param callback fun()
---@return cancel fun() A function that cancels the binding when called.
function RegisterGameObjectGossipEvent(entry, eventID, callback) end


--- Registers a Group event handler.
---@param eventID number
---@param callback fun()
---@return cancel fun() A function that cancels the binding when called.
function RegisterGroupEvent(eventID, callback) end


--- Registers a Guild event handler.
---@param eventID number
---@param callback fun()
---@return cancel fun() A function that cancels the binding when called.
function RegisterGuildEvent(eventID, callback) end


--- Registers a Map event handler for one instance of a Map.
---@param instance_id number
---@param eventID number
---@param callback fun()
function RegisterInstanceEvent(instance_id, eventID, callback) end


--- Registers an Item event handler.
---@param entry number
---@param eventID number
---@param callback fun()
---@return cancel fun() A function that cancels the binding when called.
function RegisterItemEvent(entry, eventID, callback) end


--- Registers an Item gossip event handler.
---@param entry number
---@param eventID number
---@param callback fun()
---@return cancel fun() A function that cancels the binding when called.
function RegisterItemGossipEvent(entry, eventID, callback) end


--- Registers a Map event handler for all instance of a Map.
---@param map_id number
---@param eventID number
---@param callback fun()
function RegisterMapEvent(map_id, eventID, callback) end


--- Registers a WorldPacket event handler.
---@param entry number
---@param eventID number
---@param callback fun()
---@return cancel fun() A function that cancels the binding when called.
function RegisterPacketEvent(entry, eventID, callback) end


--- Registers a Player event handler.
---@param eventID number
---@param callback fun()
---@return cancel fun() A function that cancels the binding when called.
function RegisterPlayerEvent(eventID, callback) end


--- Registers a Player gossip event handler.
--- Note that you can not use GOSSIP_EVENT_ON_HELLO with this hook. It does nothing since players dont have an "on hello".
---@param menu_id number
---@param eventID number
---@param callback fun()
---@return cancel fun() A function that cancels the binding when called.
function RegisterPlayerGossipEvent(menu_id, eventID, callback) end


--- Registers a Server event handler.
---@param eventID number
---@param callback fun()
---@return cancel fun() A function that cancels the binding when called.
function RegisterServerEvent(eventID, callback) end


--- Registers a Spell event handler.
---@param entry number
---@param eventID number
---@param callback fun()
function RegisterSpellEvent(entry, eventID, callback) end


--- Registers a Ticket event handler.
---@param eventID number
---@param callback fun()
function RegisterTicketEvent(eventID, callback) end


--- Registers a Creature event handler for a single Creature.
---@param guid number
---@param instance_id number
---@param eventID number
---@param callback fun()
---@return cancel fun() A function that cancels the binding when called.
function RegisterUniqueCreatureEvent(guid, instance_id, eventID, callback) end

------------------------------------------------------------------------------------------------------------------------------






---Prints an error (Red Text) to the console
---@param ... string
function PrintError(...) end;

---Prints an information (Yellow Text) to the console
---@param ... string
function PrintInfo(...) end;

---Prints a debug to the console
---@param ... string
function PrintDebug(...) end;