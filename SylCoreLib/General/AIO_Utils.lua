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






--------------------------------------------------------------------------------------------------------------------
--												WoW Addon Utilites                                                --
--------------------------------------------------------------------------------------------------------------------

-- File: AIO_Utils.lua
AIO_Utils = {}

AIO_Utils.Payload = {}


-- Converts our table data, this is needed, because when you send things via AIO, it needs to be converted to bytes.
-- Below is a little showcase of how it all works:

-- Lua Table   --->   Serialize to string   --->   Send over AIO   --->   Receive on client   --->   loadstring() to get original table
--                      (SerializeTable)                (AIO)                    (Lua)                      (Deserialize)

function AIO_Utils.Payload.SerializeTable(tbl)
    local function serialize(val)
        if type(val) == "table" then
            local s = "{"
            for k, v in pairs(val) do
                local key = "[" .. serialize(k) .. "]"
                s = s .. key .. "=" .. serialize(v) .. ","
            end
            return s .. "}"
        elseif type(val) == "string" then
            return string.format("%q", val)
        else
            return tostring(val)
        end
    end

    return "return " .. serialize(tbl)
end


function AIO_Utils:Init()
    print("[SylCoreLib.AIO_Utils] AIO_Utils ready");
end


-- Measure the size, if its over 30.000 (30KB), split into more strings to send it to the player.
function AIO_Utils.Payload.MeasureTableSize(tbl)
    local serialized = AIO_Utils.Payload.SerializeTable(tbl)
    print("[AIO Debug] Serialized table size: " .. #serialized .. " bytes")
    return serialized
end


return AIO_Utils