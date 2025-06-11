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
---@class Aura
Aura = {};



--- Returns the ID of the Spell that caused this Aura to be applied.
--- @return number aura_id
function Aura:GetAuraId() end;


--- Returns the Unit that casted the Spell that caused this Aura to be applied.
--- @return Unit caster
function Aura:GetCaster() end;


--- Returns the GUID of the Unit that casted the Spell that caused this Aura to be applied.
--- @return string caster_guid
function Aura:GetCasterGUID() end;


--- Returns the level of the Unit that casted the Spell that caused this Aura to be applied.
--- @return number caster_level
function Aura:GetCasterLevel() end;


--- Returns the amount of time left until the Aura expires.
--- @return number duration
function Aura:GetDuration() end;


--- Returns the amount of time this Aura lasts when applied.
--- To determine how much time has passed since this Aura was applied, subtract the result of Aura:GetDuration from the result of this method.
--- @return number max_duration
function Aura:GetMaxDuration() end;


--- Returns the Unit that the Aura has been applied to.
--- @return Unit owner
function Aura:GetOwner() end;


--- Returns the number of times the Aura has "stacked".
--- This is the same as the number displayed on the Aura's icon in-game.
--- @return number stack_amount
function Aura:GetStackAmount() end;


--- Remove this Aura from the Unit it is applied to.
function Aura:Remove() end;


--- Change the amount of time before the Aura expires.
--- @param duration number
function Aura:SetDuration(duration) end;


--- Change the maximum amount of time before the Aura expires.
--- This does not affect the current duration of the Aura, but if the Aura is reset to the maximum duration, it will instead change to duration.
--- @param duration number
function Aura:SetMaxDuration(duration) end;


--- Change the amount of times the Aura has "stacked" on the Unit.
---If amount is greater than or equal to the current number of stacks, then the Aura has its duration reset to the maximum duration.
--- @param amount number
function Aura:SetStackAmount(amount) end;