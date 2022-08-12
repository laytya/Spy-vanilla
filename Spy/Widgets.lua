function Spy:CreateFrame(Name, Title, Height, Width, ShowFunc, HideFunc)
	local theFrame = CreateFrame("Frame", Name, UIParent)

	theFrame:ClearAllPoints()
	theFrame:SetPoint("TOPLEFT", UIParent)
	theFrame:SetHeight(Height)
	theFrame:SetWidth(Width)

	theFrame:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 16,
		edgeFile = "Interface\\AddOns\\Spy\\Textures\\title-industrial.tga", edgeSize = 32,
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
	theFrame.Title = theFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	theFrame.Title:SetPoint("TOPLEFT", theFrame, "TOPLEFT", 8, -16)
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
	theFrame.CloseButton:SetPoint("TOPRIGHT", theFrame, "TOPRIGHT", -4, -12)
	theFrame.CloseButton:SetScript("OnClick", function() this:GetParent():Hide() end)

	return theFrame
end
