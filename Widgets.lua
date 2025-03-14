local AceLocale = LibStub("AceLocale-3.0")
local L = AceLocale:GetLocale("Spy")

function Spy:CreateFrame(Name, Title, Height, Width, ShowFunc, HideFunc)
	local theFrame = CreateFrame("Frame", Name, UIParent)

	theFrame:ClearAllPoints()
	theFrame:SetPoint("TOPLEFT", UIParent)
	theFrame:SetHeight(Height)
	theFrame:SetWidth(Width)

	theFrame:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 16,
		edgeFile = "Interface\\AddOns\\Spy-vanilla\\Textures\\title-industrial.tga", edgeSize = 32,
		insets = {left = 0, right = 0, top = 31, bottom = 0},
	})

	if Name == "Spy_MainWindow" then
		Spy.Colors:RegisterBorder("Window", "Title", theFrame)
		Spy.Colors:RegisterBackground("Window", "Background", theFrame)
	else
		Spy.Colors:RegisterBorder("Other Windows", "Title", theFrame)
		Spy.Colors:RegisterBackground("Other Windows", "Background", theFrame)
	end

	theFrame:EnableMouse(true)
	theFrame:SetMovable(true)

	theFrame:SetScript("OnMouseDown",
	function() 
		if (((not this.isLocked) or (this.isLocked == 0)) and (arg1 == "LeftButton")) then
			Spy:SetWindowTop(this)
			this:StartMoving();
			this.isMoving = true;
		end
	end)
	theFrame:SetScript("OnMouseUp",
	function() 
		if (this.isMoving) then
			this:StopMovingOrSizing();
			this.isMoving = false;
			Spy:SaveMainWindowPosition()
		end
	end)
	theFrame.ShowFunc = ShowFunc
	theFrame:SetScript("OnShow",
	function()
		Spy:SetWindowTop(this)
		if (this.ShowFunc) then
			this:ShowFunc()
		end
	end)
	theFrame.HideFunc = HideFunc
	theFrame:SetScript("OnHide",
	function() 
		if (this.isMoving) then
			this:StopMovingOrSizing();
			this.isMoving = false;
		end
		if (this.HideFunc) then
			this:HideFunc()
		end
	end)

	theFrame.Background = theFrame:CreateTexture(nil, "BACKGROUND")	
	theFrame.Background:ClearAllPoints()
	theFrame.Background:SetTexture("Interface\\CHARACTERFRAME\\UI-Party-Background")
	if not Spy.db.profile.InvertSpy then
		theFrame.Background:SetPoint("TOPLEFT", theFrame, "TOPLEFT", 0, -32)
		theFrame.Background:SetPoint("BOTTOMRIGHT", theFrame, "BOTTOMRIGHT", 0, 2)
	else
		theFrame.Background:SetPoint("TOPLEFT", theFrame, "TOPLEFT", 0, -34)
		theFrame.Background:SetPoint("BOTTOMRIGHT", theFrame, "BOTTOMRIGHT", 0, 0)
	end
	theFrame.Background:SetHeight(Height)
	theFrame.Background:SetWidth(Width)	
	theFrame.Background:SetAlpha(1)

	theFrame.TitleBar = CreateFrame("Frame", "TestFrame", theFrame)	
	theFrame.TitleBar:SetFrameStrata("BACKGROUND")
	if not Spy.db.profile.InvertSpy then	
		theFrame.TitleBar:SetPoint("TOPLEFT", theFrame, "TOPLEFT", 0, -11)
		theFrame.TitleBar:SetPoint("TOPRIGHT", theFrame, "TOPRIGHT", 0, -11)
	else
		theFrame.TitleBar:SetPoint("BOTTOMLEFT", theFrame, "BOTTOMLEFT", 0, -21)
		theFrame.TitleBar:SetPoint("BOTTOMRIGHT", theFrame, "BOTTOMRIGHT", 0, -21)
	end
	theFrame.TitleBar:SetHeight(22)
	theFrame.TitleBar:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 8,
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 12,
			insets = {left = 2, right = 2, top = 2, bottom = 2},
		})
	theFrame.TitleBar:SetBackdropColor(0,0,0,1) 
	theFrame.TitleBar:SetBackdropBorderColor(1,1,1,1)

	theFrame.Title = theFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	if not Spy.db.profile.InvertSpy then 	
	theFrame.Title:SetPoint("TOPLEFT", theFrame, "TOPLEFT", 8, -16)
	else
		theFrame.Title:SetPoint("BOTTOMLEFT", theFrame, "BOTTOMLEFT", 8, -15)
	end	
	theFrame.Title:SetJustifyH("LEFT")
	theFrame.Title:SetTextColor(1.0, 1.0, 1.0, 1.0)
	theFrame.Title:SetText(Title)
	theFrame.Title:SetHeight(Spy.db.profile.MainWindow.TextHeight)
	Spy:AddFontString(theFrame.Title)

	if Name == "Spy_MainWindow" then
		Spy.Colors:UnregisterItem(theFrame.Title)
		Spy.Colors:RegisterFont("Window", "Title Text", theFrame.Title)
	else
		Spy.Colors:UnregisterItem(theFrame.Title)
		Spy.Colors:RegisterFont("Other Windows", "Title Text", theFrame.Title)
	end

	theFrame.CloseButton = CreateFrame("Button", nil, theFrame)
	theFrame.CloseButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up.blp")
	theFrame.CloseButton:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down.blp")
	theFrame.CloseButton:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight.blp")
	theFrame.CloseButton:SetWidth(20)
	theFrame.CloseButton:SetHeight(20)
	if not Spy.db.profile.InvertSpy then
	theFrame.CloseButton:SetPoint("TOPRIGHT", theFrame, "TOPRIGHT", -4, -12)
	else
		theFrame.CloseButton:SetPoint("BOTTOMRIGHT", theFrame, "BOTTOMRIGHT", -4, -19)
	end		
	theFrame.CloseButton:SetScript("OnEnter", function()
		GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
		GameTooltip:AddLine(L["Close"], 1, 0.82, 0, 1)
		GameTooltip:AddLine(L["CloseDescription"],0,0,0,1)
		GameTooltip:Show()
	end)
	theFrame.CloseButton:SetScript("OnLeave", function(self)
		GameTooltip:Hide() 
	end)
	theFrame.CloseButton:SetScript("OnClick", function() this:GetParent():Hide() end)

	return theFrame
end
