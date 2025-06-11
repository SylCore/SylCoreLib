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

UI_Utils = {
	fades = {},
    extra = {}
}

-- Makes a frame dragable.
function UI_Utils.extra.MakeDraggable(frame)
	frame:RegisterForDrag("LeftButton")
	frame:SetMovable(true);
	frame:EnableMouse(true);

    frame:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not self.isMoving then
		  self:StartMoving();
		  self.isMoving = true;
		 end
	end)

	frame:SetScript("OnMouseUp", function(self, button)
		 if button == "LeftButton" and self.isMoving then
		  self:StopMovingOrSizing();
		  self.isMoving = false;
		 end
	end)

	frame:SetScript("OnHide", function(self)
		 if ( self.isMoving ) then
		  self:StopMovingOrSizing();
		  self.isMoving = false;
		 end
	end)
end

-- Adds a GameTooltip to the buttons on hover, and hides on leave.
function UI_Utils.extra.AddToolTip(button, text, GameTooltip)
		button:SetScript("OnEnter", function ()
			GameTooltip:SetOwner(button, "ANCHOR_RIGHT");
			GameTooltip:SetText(text);
			GameTooltip:Show();
		end)

		button:SetScript("OnLeave", function ()
			GameTooltip:Hide();
		end)
end

-- Uses Blizzards "UIFrameFadeIn" to make our frame in question do a fade-in based on the arguments sent.
function UI_Utils.fades.FadeInFrame(frame, timeToFade, startAlpha, endAlpha)
    frame:SetAlpha(0)                       -- Set fully transparent before showing
    frame:Show()                            -- Show the frame that was sent as argument.
    UIFrameFadeIn(frame, timeToFade, startAlpha, endAlpha)
end

-- Uses Blizzards "UIFrameFadeOut" to make our frame in question do a fade-out based on the arguments sent.
-- Suggest only calling this after a timer has been ran first, if you call it instantly, with a high "timeToFade", it will start fading out instantly.
function UI_Utils.fades.FadeOutFrame(frame, timeToFade, startAlpha, endAlpha)
    UIFrameFadeOut(frame, timeToFade, startAlpha, endAlpha)
    frame:Hide();
end

function UI_Utils:Init()
    print("[SylCoreLib.UI-Utils] UI utils ready.")
end


return UI_Utils;