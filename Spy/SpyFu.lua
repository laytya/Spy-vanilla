-- Do not load if FuBar is not loaded
if not IsAddOnLoaded("FuBar") or not AceLibrary then
	return
end

if not (AceLibrary:HasInstance("Tablet-2.0") and AceLibrary:HasInstance("Dewdrop-2.0") 
        and  AceLibrary:HasInstance("AceAddon-2.0") and AceLibrary:HasInstance("AceEvent-2.0")
        and  AceLibrary:HasInstance("AceDB-2.0") and AceLibrary:HasInstance("FuBarPlugin-2.0")) then
    return
end

local AceLocale = LibStub("AceLocale-3.0")
local L = AceLocale:GetLocale("Spy")
local tablet = AceLibrary("Tablet-2.0");
local dewdrop = AceLibrary("Dewdrop-2.0")
local refreshTime = 1;

SpyFu = AceLibrary("AceAddon-2.0"):new("AceEvent-2.0", "AceDB-2.0", "FuBarPlugin-2.0");

SpyFu.hasIcon = "Interface\\AddOns\\Spy\\Textures\\spy";
SpyFu.defaultPosition = "RIGHT";
SpyFu.defaultMinimapPosition = 180;
SpyFu.cannotDetachTooltip = true;
SpyFu.overrideMenu = true

SpyFu.hasNoColor = true;

SpyFu:RegisterDB("SpyFuDB");

function SpyFu:OnEnable()
	self:Update();

	self:ScheduleRepeatingEvent(self.name, self.Update, refreshTime, self)
end

function SpyFu:OnDisable()
	self:CancelScheduledEvent(self.name)
end

function SpyFu:OnTooltipUpdate()
	local cat = tablet:AddCategory()
	cat:AddLine("text", "|cff1eff00Left-Click|r |cffffffffShow/Hide Spy|r")
	cat:AddLine("text", "|cff1eff00Right-Click|r |cffffffffShow/Hide Spy Menu|r")
end

function SpyFu:OnClick(button)
	Spy:EnableSpy(not Spy.db.profile.Enabled, true)
end

function SpyFu:OnTextUpdate()
	self:SetText("Spy")
end

function SpyFu:OnMenuRequest(level,value)
	if level == 1 then
		dewdrop:AddLine(
				'text',  "Stats",
				'desc', "Show/Hide stats",
				'func', function() 
					SpyStats:Toggle()
				end,
				'disabled', false,
				'closeWhenClicked', true
		)
		dewdrop:AddLine(
				'text',  L["Config"],
				'desc', L["ConfigDescription"],
				'func', function() 
					Spy:ShowConfig()
				end,
				'disabled', false,
				'closeWhenClicked', true
		)
		dewdrop:AddLine(
				'text', L["Reset"],
				'desc', L["ResetDescription"],
				'func', function() 
					Spy:ResetMainWindow()
				end,
				'disabled', false,
				'closeWhenClicked', true
		)
		dewdrop:AddLine(
				'text', L["KOS"],
				'tooltipTitle', L["KOS"],
				'tooltipText', L["KOSDescription"],
				'hasArrow', true,
				'hasEditBox', true,
				'editBoxText', UnitName("target") and UnitName("target") or UnitName("mouseover") and UnitName("mouseover") or "",
				'editBoxFunc', function(value) 
					print(value)
					Spy:ToggleKOSPlayer(not SpyPerCharDB.KOSData[value], value)
				end,
				'disabled', false,
				'closeWhenClicked', true
		)
		dewdrop:AddLine(
				'text', L["Ignore"],
				'tooltipTitle', L["Ignore"],
				'tooltipText', L["IgnoreDescription"],
				'hasArrow', true,
				'hasEditBox', true,
				'editBoxText', UnitName("target") and UnitName("target") or UnitName("mouseover") and UnitName("mouseover") or "",
				'editBoxFunc', function(value) 
					print(value)
					Spy:ToggleIgnorePlayer(not SpyPerCharDB.IgnoreData[value], value)
				end,
				'disabled', false,
				'closeWhenClicked', true
		)
		dewdrop:AddLine()
		dewdrop:AddLine(
			'text', "FuBar Options",
			'hasArrow', true,
			'value', "fubar"
		)
	elseif level > 1 and (value == "fubar" or value == "position") then
		level = value == "position" and 2 or level
		self:AddImpliedMenuOptions(level )	
	end
end