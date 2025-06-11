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

ServerTimer = {
    timers = {},
    isActive = false;
}

function ServerTimer.Schedule(tag, delaySeconds, callback)
    ServerTimer.Cancel(tag)
    ServerTimer.timers[tag] = {
        delay = delaySeconds,
        elapsed = 0,
        callback = callback,
    }
end

function ServerTimer.Repeat(tag, interval, callback)
    ServerTimer.Cancel(tag)
    ServerTimer.timers[tag] = {
        delay = interval,
        elapsed = 0,
        callback = callback,
        repeatable = true,
    }
end

function ServerTimer.Cancel(tag)
    ServerTimer.timers[tag] = nil
end

function ServerTimer:Disable()
    if ServerTimer.isActive then
        ClearServerEvents(13);
        print("[SylCoreLib.ServerTimer] ServerTimer has been disabled")
    end
end

function ServerTimer:Enable()

    if ServerTimer.isActive then
        return;
    end

    -- Called every ~100ms by the core
    RegisterServerEvent(13, function(diff) -- diff = ms since last update
        for tag, timer in pairs(ServerTimer.timers) do
            timer.elapsed = timer.elapsed + (diff / 1000) -- Convert to seconds
            if timer.elapsed >= timer.delay then
                local success, err = pcall(timer.callback)
                if not success then
                    print("[ServerTimer] Error in timer '" .. tag .. "': " .. err)
                end
                if timer.repeatable then
                    timer.elapsed = 0
                else
                    ServerTimer.timers[tag] = nil
                end
            end
        end
    end)

    print("[SylCoreLib.ServerTimer] ServerTimer has been enabled")
end

function ServerTimer:Init()
    print("[SylCoreLib.ServerTimer] ServerTimer ready, use via ServerTimer:Enable()")
end

return ServerTimer;