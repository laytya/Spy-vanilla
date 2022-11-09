local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("Spy", "enUS", true)
if not L then return end

-- Addon information
L["Spy"] = "Spy"
L["Version"] = "Version"
L["LoadDescription"] = "|cff9933ffSpy addon loaded. Type |cffffffff/spy|cff9933ff for options."
L["SpyEnabled"] = "|cff9933ffSpy addon enabled."
L["SpyDisabled"] = "|cff9933ffSpy addon disabled. Type |cffffffff/spy show|cff9933ff to enable."
L["UpgradeAvailable"] = "|cff9933ffA new version of Spy is available. It can be downloaded from:\n|cffffffffhttps://github.com/laytya/Spy"

-- Configuration strings
L["Profiles"] = "Profiles"

L["About"] = "About"
L["SpyDescription1"] = [[
Spy is an addon that will alert you to the presence of nearby enemy players.
]]

L["SpyDescription2"] = [[

|cffffd000Nearby list|cffffffff
The Nearby list displays any enemy players that have been detected nearby. Clicking the list allows you to target the player, however this only works out of combat. Players are removed from the list if they have not been detected after a period of time.

The clear button in the title bar can be used to clear the list, and holding Control while clearing the list will allow you to quickly enable/disable Spy.

|cffffd000Last Hour list|cffffffff
The Last Hour list displays all enemies that have been detected in the last hour.

|cffffd000Ignore list|cffffffff
Players that are added to the Ignore list will not be reported by Spy. You can add and remove players to/from this list by using the button's drop down menu or by holding the Control key while clicking the button.

|cffffd000Kill On Sight list|cffffffff
Players on your Kill On Sight list cause an alarm to sound when detected. You can add and remove players to/from this list by using the button's drop down menu or by holding the Shift key while clicking the button.

The drop down menu can also be used to set the reasons why you have added someone to the Kill On Sight list. If you want to enter a specific reason that is not in the list, then use the "Enter your own reason..." in the Other list.

]]

L["SpyDescription3"] = [[
|cffffd000 Statistics Window |cffffffff
The Statistics Window contains a list of all enemy encounters which can be sorted by name, level, guild, wins, losses and the last time an enemy was detected. It also provides the ability to search for a specific enemy by name or guild and has filters to show only enemies that are marked as Kill on Sight, with a Win/Loss or entered Reasons.

|cffffd000 Kill On Sight Button |cffffffff
If enabled, this button will be located on the enemy players target frame. Clicking on this button will add/remove the enemy target to/from the Kill On Sight list. Right clicking on the button will allow you to enter Kill on Sight reasons.

|cffffd000 Author:|cffffffff Slipjack
|cffffd000 Ported to Vanilla:|cffffffff LaYt
]]

-- General Settings
L["GeneralSettings"] = "General Settings"
L["GeneralSettingsDescription"] = [[
Options for when Spy is Enabled or Disabled.
]] 
L["EnableSpy"] = "Enable Spy"
L["EnableSpyDescription"] = "Enables or disables Spy both now and also on login."
L["EnabledInBattlegrounds"] = "Enable Spy in battlegrounds"
L["EnabledInBattlegroundsDescription"] = "Enables or disables Spy when you are in a battleground."
L["DisableWhenPVPUnflagged"] = "Disable Spy when not flagged for PVP"
L["DisableWhenPVPUnflaggedDescription"] = "Enables or disables Spy depending on your PVP status."
L["DisabledInZones"] = "Disable Spy while in these locations"
L["DisabledInZonesDescription"]	= "Select locations where Spy will be disabled"
L["Booty Bay"] = "Booty Bay"
L["Everlook"] = "Everlook"						
L["Gadgetzan"] = "Gadgetzan"
L["Ratchet"] = "Ratchet"

L["DisplayOptions"] = "Display"
L["DisplayOptionsDescription"] = [[
Spy can be shown or hidden automatically.
]]
L["ShowOnDetection"] = "Show Spy when enemy players are detected"
L["ShowOnDetectionDescription"] = "Set this to display the Spy window and the Nearby list if Spy is hidden when enemy players are detected."
L["HideSpy"] = "Hide Spy when no enemy players are detected"
L["HideSpyDescription"] = "Set this to hide Spy when the Nearby list is displayed and it becomes empty. Spy will not be hidden if you clear the list manually."
L["ShowKoSButton"] = "Show KOS button on the enemy target frame"
L["ShowKoSButtonDescription"] = "Set this to show the KOS button on the enemy player's target frame."
L["Alpha"] = "Transparency"
L["AlphaDescription"] = "Set the transparency of the Spy window."
L["AlphaBG"] = "Transparency in BGs"
L["AlphaBGDescription"] = "Set the transparency of the Spy window in battlegrounds."
L["LockSpy"] = "Lock the Spy window"
L["LockSpyDescription"] = "Locks the Spy window in place so it doesn't move."
L["ClampToScreen"] = "Clamp to Screen"
L["ClampToScreenDescription"] = "Controls whether the Spy window can be dragged off screen."
L["InvertSpy"] = "Invert the Spy window"
L["InvertSpyDescription"] = "Flips the Spy window upside down."
L["Reload"] = "Reload UI"
L["ReloadDescription"] = "Required when changing the Spy window."
L["ResizeSpy"] = "Resize the Spy window automatically"
L["ResizeSpyDescription"] = "Set this to automatically resize the Spy window as enemy players are added and removed."
L["ResizeSpyLimit"] = "List Limit"
L["ResizeSpyLimitDescription"] = "Limit the number of enemy players shown in the Spy window."
L["DisplayTooltipNearSpyWindow"] = "Display tooltip near the Spy window"
L["DisplayTooltipNearSpyWindowDescription"] = "Set this to display tooltips near the Spy window."
L["SelectTooltipAnchor"] = "Tooltip Anchor Point"
L["SelectTooltipAnchorDescription"] = "Select the anchor point for the tooltip if the option above has been checked"
L["ANCHOR_CURSOR"] = "Cursor"
L["ANCHOR_TOP"] = "Top"
L["ANCHOR_BOTTOM"] = "Bottom"
L["ANCHOR_LEFT"] = "Left"			
L["ANCHOR_RIGHT"] = "Right"
L["TooltipDisplayWinLoss"] = "Display win/loss statistics in tooltip"
L["TooltipDisplayWinLossDescription"] = "Set this to display the win/loss statistics of a player in the player's tooltip."
L["TooltipDisplayKOSReason"] = "Display Kill On Sight reasons in tooltip"
L["TooltipDisplayKOSReasonDescription"] = "Set this to display the Kill On Sight reasons of a player in the player's tooltip."
L["TooltipDisplayLastSeen"] = "Display last seen details in tooltip"
L["TooltipDisplayLastSeenDescription"] = "Set this to display the last known time and location of a player in the player's tooltip."
L["DisplayListData"] = "Select enemy data to display"
L["Name"] = "Name"
L["Class"] = "Class"
L["SelectFont"] = "Select a Font"
L["SelectFontDescription"] = "Select a Font for the Spy Window."
L["RowHeight"] = "Select the Row Height"
L["RowHeightDescription"] = "Select the Row Height for the Spy window."
L["Texture"] = "Texture"
L["TextureDescription"] = "Select a texture for the Spy Window"


L["AlertOptions"] = "Alerts"
L["AlertOptionsDescription"] = [[
You can announce the details on an encounter to a chat channel and control how Spy alerts you when enemy players are detected.
]]
L["SoundChannel"] = "Select Sound Channel"
L["Master"] = "Master"
L["SFX"] = "Sound Effects"
L["Music"] = "Music"
L["Ambience"] = "Ambience"
L["Announce"] = "Announce to:"
L["None"] = "None"
L["NoneDescription"] = "Do not announce when enemy players are detected."
L["Self"] = "Self"
L["SelfDescription"] = "Announce to yourself when enemy players are detected."
L["Party"] = "Party"
L["PartyDescription"] = "Announce to your party when enemy players are detected."
L["Guild"] = "Guild"
L["GuildDescription"] = "Announce to your guild when enemy players are detected."
L["Raid"] = "Raid"
L["RaidDescription"] = "Announce to your raid when enemy players are detected."
L["LocalDefense"] = "Local Defense"
L["LocalDefenseDescription"] = "Announce to the Local Defense channel when enemy players are detected."
L["OnlyAnnounceKoS"] = "Only announce enemy players that are Kill On Sight"
L["OnlyAnnounceKoSDescription"] = "Set this to only announce enemy players that are on your Kill On Sight list."
L["WarnOnStealth"] = "Warn upon stealth detection"
L["WarnOnStealthDescription"] = "Set this to display a warning and sound an alert when an enemy player gains stealth."
L["WarnOnKOS"] = "Warn upon Kill On Sight detection"
L["WarnOnKOSDescription"] = "Set this to display a warning and sound an alert when an enemy player on your Kill On Sight list is detected."
L["WarnOnKOSGuild"] = "Warn upon Kill On Sight guild detection"
L["WarnOnKOSGuildDescription"] = "Set this to display a warning and sound an alert when an enemy player in the same guild as someone on your Kill On Sight list is detected."
L["WarnOnRace"] = "Warn upon Race detection"
L["WarnOnRaceDescription"] = "Set this to sound an alert when the selected Race is detected."
L["SelectWarnRace"] = "Select Race for detection"
L["SelectWarnRaceDescription"] = "Select a Race for audio alert."
L["WarnRaceNote"] = "Note: You must target an enemy at least once so their Race can be added to the database. Upon the next detection an alert will sound. This does not work the same as detecting nearby enemies in combat."
L["DisplayWarnings"] = "Select warnings message location"
L["Default"] = "Default"
L["ErrorFrame"] = "Error Frame"
L["Moveable"] = "Moveable"
L["EnableSound"] = "Enable audio alerts"
L["EnableSoundDescription"] = "Set this to enable audio alerts when enemy players are detected. Different alerts sound if an enemy player gains stealth or if an enemy player is on your Kill On Sight list."
L["OnlySoundKoS"] = "Only sound audio alerts for Kill On Sight detection"
L["OnlySoundKoSDescription"] = "Set this to only play audio alerts when enemy players on the Kill on Sight list are detected."
L["StopAlertsOnTaxi"] = "Turn off alerts while on a flight path"
L["StopAlertsOnTaxiDescription"] = "Stop all new alerts and warnings while on a flight path."

L["ListOptions"] = "Nearby List"
L["ListOptionsDescription"] = [[
You can configure how Spy adds and removes enemy players to and from the Nearby list.
]]
L["RemoveUndetected"] = "Remove enemy players from the Nearby list after:"
L["1Min"] = "1 minute"
L["1MinDescription"] = "Remove an enemy player who has been undetected for over 1 minute."
L["2Min"] = "2 minutes"
L["2MinDescription"] = "Remove an enemy player who has been undetected for over 2 minutes."
L["5Min"] = "5 minutes"
L["5MinDescription"] = "Remove an enemy player who has been undetected for over 5 minutes."
L["10Min"] = "10 minutes"
L["10MinDescription"] = "Remove an enemy player who has been undetected for over 10 minutes."
L["15Min"] = "15 minutes"
L["15MinDescription"] = "Remove an enemy player who has been undetected for over 15 minutes."
L["Never"] = "Never remove"
L["NeverDescription"] = "Never remove enemy players. The Nearby list can still be cleared manually."
L["ShowNearbyList"] = "Switch to the Nearby list upon enemy player detection"
L["ShowNearbyListDescription"] = "Set this to display the Nearby list if it is not already visible when enemy players are detected."
L["PrioritiseKoS"] = "Prioritise Kill On Sight enemy players in the Nearby list"
L["PrioritiseKoSDescription"] = "Set this to always show Kill On Sight enemy players first in the Nearby list."

-- Map
L["MapOptions"] = "Map"
L["MapOptionsDescription"] = [[
Options for world map and minimap including icons and tooltips.
]]
L["MinimapDetection"] = "Enable minimap detection"
L["MinimapDetectionDescription"] = "Rolling the cursor over known enemy players detected on the minimap will add them to the Nearby list."
L["MinimapNote"] = "          Note: Only works for players that can Track Humanoids."
L["MinimapDetails"] = "Display level/class details"
L["MinimapDetailsDescription"] = "Set this to update the minimap tooltip so that level/class details are displayed alongside enemy names."
L["DisplayOnMap"] = "Display enemy location on map"
L["DisplayOnMapDescription"] = "Set this to display on the world map and minimap the location of enemies detected by other Spy users in your party, raid and guild."
L["SwitchToZone"] = "Switch to current zone map on enemy detection"
L["SwitchToZoneDescription"] = "Change the map to the players current zone map when enemies are detected."
L["MapDisplayLimit"] = "Limit displayed map icons to:"
L["LimitNone"] = "Everywhere"
L["LimitNoneDescription"] = "Displayes all detected enemies on the map regardless of your current location."
L["LimitSameZone"] = "Same zone"
L["LimitSameZoneDescription"] = "Only displays detected enemies on the map if you are in the same zone."
L["LimitSameContinent"] = "Same continent"
L["LimitSameContinentDescription"] = "Only displays detected enemies on the map if you are on the same continent."

-- Data Management
L["DataOptions"] = "Data Management"
L["DataOptionsDescription"] = [[

Options on how Spy maintains and gathers data.
]]
L["PurgeData"] = "Purge undetected enemy player data after:"
L["OneDay"] = "1 day"
L["OneDayDescription"] = "Purge data for enemy players that have been undetected for 1 day."
L["FiveDays"] = "5 days"
L["FiveDaysDescription"] = "Purge data for enemy players that have been undetected for 5 days."
L["TenDays"] = "10 days"
L["TenDaysDescription"] = "Purge data for enemy players that have been undetected for 10 days."
L["ThirtyDays"] = "30 days"
L["ThirtyDaysDescription"] = "Purge data for enemy players that have been undetected for 30 days."
L["SixtyDays"] = "60 days"
L["SixtyDaysDescription"] = "Purge data for enemy players that have been undetected for 60 days."
L["NinetyDays"] = "90 days"
L["NinetyDaysDescription"] = "Purge data for enemy players that have been undetected for 90 days."
L["PurgeKoS"] = "Purge Kill on Sight players based on undetected time."
L["PurgeKoSDescription"] = "Set this to purge Kill on Sight players that have been undetected based on the time settings for undetected players."
L["PurgeWinLossData"] = "Purge win/loss data based on undetected time."
L["PurgeWinLossDataDescription"] = "Set this to purge win/loss data of your enemy encounters based on the time settings for undetected players."
L["ShareData"] = "Share data with other Spy addon users"
L["ShareDataDescription"] = "Set this to share the details of your enemy player encounters with other Spy users in your party, raid and guild."
L["UseData"] = "Use data from other Spy addon users"
L["UseDataDescription"] = [[Set this to use the data collected by other Spy users in your party, raid and guild.

If another Spy user detects an enemy player then that enemy player will be added to your Nearby list if there is room.
]]
L["ShareKOSBetweenCharacters"] = "Share Kill On Sight players between your characters"
L["ShareKOSBetweenCharactersDescription"] = "Set this to share the players you mark as Kill On Sight between other characters that you play on the same server and faction."

L["SlashCommand"] = "Slash Command"
L["SpySlashDescription"] = "These buttons execute the same functions as the ones in the slash command /spy"
L["Enable"] = "Enable"
L["EnableDescription"] = "Enables Spy and shows the main window."
L["Show"] = "Show"
L["ShowDescription"] = "Shows the main window."
L["Hide"] = "Hide"
L["HideDescription"] = "Hides the main window."
L["Reset"] = "Reset"
L["ResetDescription"] = "Resets the position and appearance of the main window."
L["ClearSlash"] = "Clear"
L["ClearSlashDescription"] = "Clears the list of players that have been detected."
L["Config"] = "Config"
L["ConfigDescription"] = "Open the Interface Addons configuration window for Spy."
L["KOS"] = "KOS"
L["KOSDescription"] = "Add/remove a player to/from the Kill On Sight list."
L["Ignore"] = "Ignore"
L["IgnoreDescription"] = "Add/remove a player to/from the Ignore list."
L["InvalidInput"] = "Invalid Input"
L["Test"] = "Test"
L["TestDescription"] = "Shows a warning so it can be repositioned."

-- Lists
L["Nearby"] = "Nearby"
L["LastHour"] = "Last Hour"
L["Ignore"] = "Ignore"
L["KillOnSight"] = "Kill On Sight"

--Stats
L["Won"] = "Won"
L["Lost"] = "Lost"
L["Time"] = "Time"	
L["List"] = "List"	
L["Filter"] = "Filter"
L["Show Only"] = "Show Only"
L["Realm"] = "Realm"
L["KOS"] = "KOS"
L["Won/Lost"] = "Won/Lost"
L["Reason"] = "Reason"	  
L["HonorKills"] = "Honor Kills"
L["PvPDeaths"] = "PvP Deaths"

--++ Class descriptions
L["DEATHKNIGHT"] = "Death Knight"
L["DRUID"] = "|cffff7c0aDruid|cffffffff"
L["HUNTER"] = "|cffaad372Hunter|cffffffff"
L["MAGE"] = "|cff68ccefMage|cffffffff"
L["PALADIN"] = "|cfff48cbaPaladin|cffffffff"
L["PRIEST"] = "|cffffffffPriest|cffffffff"
L["ROGUE"] = "|cfffff468Rogue|cffffffff"
L["SHAMAN"] = "|cff2359ffShaman|cffffffff"
L["WARLOCK"] = "|cff9382c9Warlock|cffffffff"
L["WARRIOR"] = "|cffc69b6dWarrior|cffffffff"
L["UNKNOWN"] = "|cff191919Unknown|cffffffff"

-- Race descriptions
L["Human"] = "Human"
L["Orc"] = "Orc"
L["Dwarf"] = "Dwarf"
L["Tauren"] = "Tauren"
L["Troll"] = "Troll"
L["Night Elf"] = "Night Elf"
L["Undead"] = "Undead"
L["Gnome"] = "Gnome"

-- Stealth abilities
L["Stealth"] = "Stealth"
L["Prowl"] = "Prowl"

-- Channel names
L["LocalDefenseChannelName"] = "LocalDefense"

-- Minimap color codes
L["MinimapClassTextDEATHKNIGHT"] = "|cffc41e3a"
L["MinimapClassTextDRUID"] = "|cffff7c0a"
L["MinimapClassTextHUNTER"] = "|cffaad372"
L["MinimapClassTextMAGE"] = "|cff68ccef"
L["MinimapClassTextPALADIN"] = "|cfff48cba"
L["MinimapClassTextPRIEST"] = "|cffffffff"
L["MinimapClassTextROGUE"] = "|cfffff468"
L["MinimapClassTextSHAMAN"] = "|cff2359ff"
L["MinimapClassTextWARLOCK"] = "|cff9382c9"
L["MinimapClassTextWARRIOR"] = "|cffc69b6d"
L["MinimapClassTextUNKNOWN"] = "|cff191919"
L["MinimapGuildText"] = "|cffffffff"

-- Output messages
L["AlertStealthTitle"] = "Stealthed player detected!"
L["AlertKOSTitle"] = "Kill On Sight player detected!"
L["AlertKOSGuildTitle"] = "Kill On Sight player guild detected!"
L["AlertTitle_kosaway"] = "Kill On Sight player located by "
L["AlertTitle_kosguildaway"] = "Kill On Sight player guild located by "
L["StealthWarning"] = "|cff9933ffStealthed player detected: |cffffffff"
L["KOSWarning"] = "|cffff0000Kill On Sight player detected: |cffffffff"
L["KOSGuildWarning"] = "|cffff0000Kill On Sight player guild detected: |cffffffff"
L["SpySignatureColored"] = "|cff9933ff[Spy] "
L["PlayerDetectedColored"] = "|cff40ff00Player detected: |cffffffff"
L["KillOnSightDetectedColored"] = "|cffff0000Kill On Sight player detected: |cffffffff"
L["PlayerAddedToIgnoreColored"] = "|cffff0000Added player to Ignore list: |cffffffff"
L["PlayerRemovedFromIgnoreColored"] = "|cff40ff00Removed player from Ignore list: |cffffffff"
L["PlayerAddedToKOSColored"] = "|cffff0000Added player to Kill On Sight list: |cffffffff"
L["PlayerRemovedFromKOSColored"] = "|cff40ff00Removed player from Kill On Sight list: |cffffffff"
L["PlayerDetected"] = "[Spy] Player detected: "
L["KillOnSightDetected"] = "[Spy] Kill On Sight player detected: "
L["Level"] = "Level"
L["LastSeen"] = "Last seen"
L["LessThanOneMinuteAgo"] = "less than a minute ago"
L["MinutesAgo"] = "minutes ago"
L["HoursAgo"] = "hours ago"
L["DaysAgo"] = "days ago"
L["Close"] = "Close"
L["CloseDescription"] = "|cffffffffHides the Spy window. By default will show again when the next enemy player is detected."
L["Left/Right"] = "Left/Right"
L["Left/RightDescription"] = "|cffffffffNavigates between the Nearby, Last Hour, Ignore and Kill On Sight lists."
L["Clear"] = "Clear"
L["ClearDescription"] = "|cffffffffClears the list of players that have been detected. CTRL click will Enable/Disable Spy while displayed."
L["NearbyCount"] = "Nearby Count"
L["NearbyCountDescription"] = "|cffffffffSends the count of nearby players to chat."
L["Statistics"] = "Statistics"
L["StatsDescription"] = "|cffffffffShows a list of enemy players encountered, win/loss records and where they were last seen."
L["AddToIgnoreList"] = "Add to Ignore list"
L["AddToKOSList"] = "Add to Kill On Sight list"
L["RemoveFromIgnoreList"] = "Remove from Ignore list"
L["RemoveFromKOSList"] = "Remove from Kill On Sight list"
L["RemoveFromStatsList"] = "Remove from Statistics List"   --++
L["AnnounceDropDownMenu"] = "Announce"
L["KOSReasonDropDownMenu"] = "Set Kill On Sight reason"
L["PartyDropDownMenu"] = "Party"
L["RaidDropDownMenu"] = "Raid"
L["GuildDropDownMenu"] = "Guild"
L["LocalDefenseDropDownMenu"] = "Local Defense"
L["Player"] = " (Player)"
L["KOSReason"] = "Kill On Sight"
L["KOSReasonIndent"] = "    "
L["KOSReasonOther"] = "Enter your own reason..."
L["KOSReasonClear"] = "Clear"
L["StatsWins"] = "|cff40ff00Wins: "
L["StatsSeparator"] = "  "
L["StatsLoses"] = "|cff0070ddLoses: "
L["Located"] = "located:"
L["Yards"] = "yards"

L["Get Census Data"] = "Get Census Data"
L["GetCensusData"] = "Get names of your factions to filter them in player detection."

Spy_KOSReasonListLength = 13
Spy_KOSReasonList = {
	[1] = {
		["title"] = "Started combat";
		["content"] = {
			"Ambushed me",
			"Always attacks me on sight",
			"Attacked me for no reason",
			"Attacked me while fighting mobs",
			"Attacked me while entering/leaving instances",
			"Attacked me while I was AFK",
			"Attacked me while I was mounted/flying",
			"Attacked me while I had low health/mana",
			"Steamrolled me with a group of enemies",
			"Doesn't attack without backup",
			"Dared to challenge me",
		};
	},
	[2] = {
		["title"] = "Style of combat";
		["content"] = {
			"Always calls for help",
			"Pushed me off a cliff",
			"Uses engineering tricks",
			"Uses too much crowd control",
			"Spams one ability all the time",
			"Forced me to take durability damage",
			"Killed me and escaped from my friends",
			"Ran away then ambushed me",
			"Always manages to escape",
			"Bubble hearths to escape",
			"Manages to stay in melee range",
			"Manages to stay at kiting range",
			"Absorbs too much damage",
			"Heals too much",
			"DPS's too much",
		};
	},
	[3] = {
		["title"] = "General behaviour";
		["content"] = {
			"Annoying",
			"Rudeness",
			"Cowardice",
			"Arrogance",
			"Overconfidence",
			"Untrustworthy",
			"Emotes too much",
			"Stalked me/friends",
			"Pretends to be good",
			"Emotes 'not going to happen'",
			"Waves goodbye at low health",
			"Tried to placate me with a wave",
			"Performed foul acts on my corpse",
			"Laughed at me",
			"Spat on me",
		};
	},
	[4] = {
		["title"] = "Camping";
		["content"] = {
			"Camped me",
			"Camped an alt",
			"Camped lowbies",
			"Camped from stealth",
			"Camped guild members",
			"Camped game NPCs/objectives",
			"Called in help to camp me",
			"Made levelling a nightmare",
			"Forced me to logout",
			"Won't fight my main",
		};
	},
	[5] = {
		["title"] = "Questing";
		["content"] = {
			"Attacked me while questing",
			"Attacked me after I helped with a quest",
			"Interfered with quest objectives",
			"Started a quest I wanted to do",
			"Killed my faction's NPCs",
			"Killed a quest NPC",
		};
	},
	[6] = {
		["title"] = "Stole resources";
		["content"] = {
			"Gathered herbs I wanted",
			"Gathered minerals I wanted",
			"Gathered resources I wanted",
			"Extracted gas from a cloud I wanted",
			"Killed me and stole my mob",
			"Skinned my kills",
			"Salvaged my kills",
			"Fished in my pool",
		};
	},
	[7] = {
		["title"] = "Battlegrounds";
		["content"] = {
			"Always loots corpses",
			"Very good flag runner",
			"Backcaps flags or bases",
			"Stealth caps flags or bases",
			"Killed me and took the flag",
			"Interferes with battleground objectives",
			"Took a power-up I wanted",
			"Forced tank to lose agro",
			"Caused a wipe",
			"Destroys siege engines",
			"Drops bombs",
			"Disarms bombs",
			"Fear bomber",
		};
	},
	[8] = {
		["title"] = "Real life";
		["content"] = {
			"Friend in real life",
			"Enemy in real life",
			"Spreads rumours about me",
			"Complains on the forums",
			"Spy for the other faction",
			"Traitor to my faction",
			"Reneged on a deal",
			"Pretentious nub",
			"Another know-it-all",
			"Another Johnny-come-lately",
			"Cross faction trash talker",
		};
	},
	[9] = {
		["title"] = "Difficulty";
		["content"] = {
			"Impossible to kill",
			"Wins most of the time",
			"Seems like a fair match",
			"Loses most of the time",
			"Fun to kill",
			"Easy honor",
		};
	},
	[10] = {
		["title"] = "Race";
		["content"] = {
			"Hate the player's race",
			"Blood Elves are narcissistic",
			"Draenei are slimy space squids",
			"Dwarves are short hairy doorstops",
			"Gnomes belong in a garden",
			"Humans are righteous busybodies",
			"Night Elves hug too many trees",
			"Orcs are warmongering barbarians",
			"Tauren should be on my burger",
			"Trolls should stay on web forums",
			"Undead are unnatural abominations",
		};
	},
	[11] = {
		["title"] = "Class";
		["content"] = {
			"Hate the player's class",
			"Death Knights are overpowered",
			"Druids are dirty animals",
			"Hunters are easy mode",
			"Mages are deluded intellects",
			"Paladins are sanctimonious fools",
			"Priests are pious preachers",
			"Rogues have no honor",
			"Shamans talk to imaginary animals",
			"Warlocks are necromantic sadists",
			"Warriors have anger issues",
		};
	},
	[12] = {
		["title"] = "Name";
		["content"] = {
			"Has a ridiculous name",
			"Pretentious name",
			"Variant of Legolas",
			"Name has weird characters",
			"Guild name is ridiculous",
			"Guild name uses only capital letters",
			"Guild name uses capital letters and spaces",
			"Guild name states they hate my faction",
		};
	},
	[13] = {
		["title"] = "Other";
		["content"] = {
			"Karma",
			"Red is dead",
			"Just because",
			"Fails at PvP",
			"Flagged for PvP",
			"Doesn't want to PvP",
			"Wastes both our time",
			"This player is a noob",
			"I really hate this player",
			"Doesn't level fast enough",
			"Exploits game mechanics",
			"Suspected hacker",
			"Farmer",
			"Other...",
		};
	},
}

StaticPopupDialogs["Spy_SetKOSReasonOther"] = {
	text = "Enter the Kill On Sight reason for %s:",
	button1 = "Set",
	button2 = "Cancel",
	timeout = 0,
	hasEditBox = 1,
	whileDead = 1,
	hideOnEscape = 1,
	OnShow = function()
		getglobal(this:GetName().."EditBox"):SetText("");
	end,
    	OnAccept = function(self)
		local reason = getglobal(this:GetParent():GetName().."EditBox"):GetText()
		Spy:SetKOSReason(self.playerName, "Enter your own reason...", reason)
	end,
};

Spy_IgnoreList = {}

Spy_AbilityList = {

-----------------------------------------------------------
-- Allows an estimation of the race, class and level of a
-- player to be determined from what abilities are observed
-- in the combat log.
--
-- Some abilities cannot be used as they are not unique:
--   "Arcane Power"         (Mage/Trinket)
--   "Enrage"               (Druid/Warrior)
--   "Flurry"               (Warrior/Shaman)
--   "Focused Casting"      (Priest/Shaman)
--   "Sword Specialization" (Warrior/Rogue)
--   "Death Coil"           (Warlock/Death Knight)
--   "Track Humanoids"      (Druid/Hunter)
--   "Remove Curse"         (Mage/Druid)
--   "Cure Poison"          (Druid/Shaman)
--   "Cure Disease"         (Priest/Shaman)
-----------------------------------------------------------

--== Racials ==

	["Shadowmeld"] = {
		race = "Night Elf",
		level = 1,
	},
	["Will of the Forsaken"] = {
		race = "Undead",
		level = 1,
	},
	["Cannibalize"] = {
		race = "Undead",
		level = 1,
	},
	["Berserking"] = {
		race = "Troll",
		level = 1,
	},
	["War Stomp"] = {
		race = "Tauren",
		level = 1,
	},
	["Blood Fury"] = {
		race = "Orc",
		level = 1,
	},
	["Perception"] = {
		race = "Human",
		level = 1,
	},
	["Escape Artist"] = {
		race = "Gnome",
		level = 1,
	},
	["Stoneform"] = {
		race = "Dwarf",
		level = 1,
	},


--== Druid == 

	["Healing Touch"] = {
		class = "DRUID",
		level = 1,
	},
	["Mark of the Wild"] = {
		class = "DRUID",
		level = 1,
	},
	["Wrath"] = {
		class = "DRUID",
		level = 1,
	},
	["Moonfire"] = {
		class = "DRUID",
		level = 4,
	},
	["Rejuvenation"] = {
		class = "DRUID",
		level = 4,
	},
	["Thorns"] = {
		class = "DRUID",
		level = 6,
	},
	["Entangling Roots"] = {
		class = "DRUID",
		level = 8,
	},
	["Bear Form"] = {
		class = "DRUID",
		level = 10,
	},
	["Demoralizing Roar"] = {
		class = "DRUID",
		level = 10,
	},
	["Maul"] = {
		class = "DRUID",
		level = 10,
	},
	["Teleport: Moonglade"] = {
		class = "DRUID",
		level = 10,
	},
	["Regrowth"] = {
		class = "DRUID",
		level = 12,
	},
	["Bash"] = {
		class = "DRUID",
		level = 14,
	},
	["Aquatic Form"] = {
		class = "DRUID",
		level = 16,
	},
	["Swipe"] = {
		class = "DRUID",
		level = 16,
	},
	["Hibernate"] = {
		class = "DRUID",
		level = 18,
	},
	["Faerie Fire"] = {
		class = "DRUID",
		level = 18,
	},
	["Faerie Fire (Feral)"] = {
		class = "DRUID",
		level = 30,
	},
	["Cat Form"] = {
		class = "DRUID",
		level = 20,
	},
	["Claw"] = {
		class = "DRUID",
		level = 20,
	},
	["Feral Charge"] = {
		class = "DRUID",
		level = 20,
	},
	["Nature's Grace"] = {
		class = "DRUID",
		level = 30,
	},
	["Omen of Clarity"] = {
		class = "DRUID",
		level = 20,
	},
	["Prowl"] = {
		class = "DRUID",
		level = 20,
	},
	["Starfire"] = {
		class = "DRUID",
		level = 20,
	},
	["Rebirth"] = {
		class = "DRUID",
		level = 20,
	},
	["Rip"] = {
		class = "DRUID",
		level = 20,
	},
	["Soothe Animal"] = {
		class = "DRUID",
		level = 22,
	},
	["Shred"] = {
		class = "DRUID",
		level = 22,
	},
	["Tiger's Fury"] = {
		class = "DRUID",
		level = 24,
	},
	["Rake"] = {
		class = "DRUID",
		level = 24,
	},
	["Primal Fury"] = {
		class = "DRUID",
		level = 25,
	},
	["Abolish Poison"] = {
		class = "DRUID",
		level = 26,
	},
	["Dash"] = {
		class = "DRUID",
		level = 26,
	},
	["Challenging Roar"] = {
		class = "DRUID",
		level = 28,
	},
	["Tranquility"] = {
		class = "DRUID",
		level = 30,
	},
	["Travel Form"] = {
		class = "DRUID",
		level = 30,
	},
	["Nature's Swiftness"] = {
		class = "DRUID",
		level = 30,
	},
	["Insect Swarm"] = {
		class = "DRUID",
		level = 20,
	},
	["Ferocious Bite"] = {
		class = "DRUID",
		level = 32,
	},
	["Ravage"] = {
		class = "DRUID",
		level = 32,
	},
	["Pounce"] = {
		class = "DRUID",
		level = 36,
	},
	["Frenzied Regeneration"] = {
		class = "DRUID",
		level = 36,
	},
	["Swiftmend"] = {
		class = "DRUID",
		level = 40,
	},
	["Dire Bear Form"] = {
		class = "DRUID",
		level = 40,
	},
	["Moonkin Form"] = {
		class = "DRUID",
		level = 40,
	},
	["Feline Grace"] = {
		class = "DRUID",
		level = 40,
	},
	["Hurricane"] = {
		class = "DRUID",
		level = 40,
	},
	["Innervate"] = {
		class = "DRUID",
		level = 40,
	},
	["Barkskin"] = {
		class = "DRUID",
		level = 44,
	},
	["Gift of the Wild"] = {
		class = "DRUID",
		level = 60,
	},


--== Hunter == 

	["Auto Shot"] = {
		class = "HUNTER",
		level = 1,
	}, 
	["Raptor Strike"] = {
		class = "HUNTER",
		level = 1,
	}, 
	["Track Beasts"] = {
		class = "HUNTER",
		level = 1,
	},
	["Aspect of the Monkey"] = {
		class = "HUNTER",
		level = 4,
	},
	["Serpent Sting"] = {
		class = "HUNTER",
		level = 4,
	},
	["Arcane Shot"] = {
		class = "HUNTER",
		level = 6,
	},
	["Hunter's Mark"] = {
		class = "HUNTER",
		level = 6,
	},
	["Concussive Shot"] = {
		class = "HUNTER",
		level = 8,
	},
	["Aspect of the Hawk"] = {
		class = "HUNTER",
		level = 10,
	},
	["Revive Pet"] = {
		class = "HUNTER",
		level = 10,
	},
	["Dismiss Pet"] = {
		class = "HUNTER",
		level = 10,
	},
	["Feed Pet"] = {
		class = "HUNTER",
		level = 10,
	},
	["Call Pet"] = {
		class = "HUNTER",
		level = 10,
	},
	["Improved Aspect of the Hawk"] = {
		class = "HUNTER",
		level = 10,
	}, 
	["Tame Beast"] = {
		class = "HUNTER",
		level = 10,
	},
	["Wing Clip"] = {
		class = "HUNTER",
		level = 12,
	},
	["Distracting Shot"] = {
		class = "HUNTER",
		level = 12,
	},
	["Mend Pet"] = {
		class = "HUNTER",
		level = 12,
	},
	["Scare Beast"] = {
		class = "HUNTER",
		level = 14,
	},
	["Eagle Eye"] = {
		class = "HUNTER",
		level = 14,
	},
	["Eyes of the Beast"] = {
		class = "HUNTER",
		level = 14,
	},
	["Immolation Trap"] = {
		class = "HUNTER",
		level = 16,
	},
	["Mongoose Bite"] = {
		class = "HUNTER",
		level = 16,
	},
	["Multi-Shot"] = {
		class = "HUNTER",
		level = 18,
	},
	["Track Undead"] = {
		class = "HUNTER",
		level = 18,
	},
	["Aspect of the Viper"] = {
		class = "HUNTER",
		level = 20,
	},
	["Rapid Killing"] = {
		class = "HUNTER",
		level = 20,
	},
	["Aimed Shot"] = {
		class = "HUNTER",
		level = 20,
	},
	["Aspect of the Cheetah"] = {
		class = "HUNTER",
		level = 20,
	},
	["Disengage"] = {
		class = "HUNTER",
		level = 20,
	},
	["Freezing Trap"] = {
		class = "HUNTER",
		level = 20,
	},
	["Scorpid Sting"] = {
		class = "HUNTER",
		level = 22,
	},
	["Track Hidden"] = {
		class = "HUNTER",
		level = 24,
	},
	["Beast Lore"] = {
		class = "HUNTER",
		level = 24,
	},
	["Lock and Load"] = {
		class = "HUNTER",
		level = 25,
	}, 
	["Rapid Fire"] = {
		class = "HUNTER",
		level = 26,
	},
	["Track Elementals"] = {
		class = "HUNTER",
		level = 26,
	},
	["Frost Trap"] = {
		class = "HUNTER",
		level = 28,
	},
	["Counterattack"] = {
		class = "HUNTER",
		level = 30,
	},
	["Aspect of the Beast"] = {
		class = "HUNTER",
		level = 30,
	},
	["Feign Death"] = {
		class = "HUNTER",
		level = 30,
	},
	["Spirit Bond"] = {
		class = "HUNTER",
		level = 30,
	}, 
	["Scatter Shot"] = {
		class = "HUNTER",
		level = 30,
	},
	["Track Demons"] = {
		class = "HUNTER",
		level = 32,
	},
	["Flare"] = {
		class = "HUNTER",
		level = 32,
	},
	["Explosive Trap"] = {
		class = "HUNTER",
		level = 34,
	},
	["Viper Sting"] = {
		class = "HUNTER",
		level = 36,
	},
	["Track Giants"] = {
		class = "HUNTER",
		level = 40,
	},
	["Thrill of the Hunt"] = {
		class = "HUNTER",
		level = 40,
	}, 
	["Trueshot Aura"] = {
		class = "HUNTER",
		level = 40,
	},
	["Ferocious Inspiration"] = {
		class = "HUNTER",
		level = 40,
	}, 
	["Volley"] = {
		class = "HUNTER",
		level = 40,
	},
	["Aspect of the Pack"] = {
		class = "HUNTER",
		level = 40,
	},
	["Wyvern Sting"] = {
		class = "HUNTER",
		level = 40,
	},
	["Expose Weakness"] = {
		class = "HUNTER",
		level = 40,
	},
	["Master Tactician"] = {
		class = "HUNTER",
		level = 45,
	}, 
	["Rapid Recuperation"] = {
		class = "HUNTER",
		level = 45,
	}, 
	["Aspect of the Wild"] = {
		class = "HUNTER",
		level = 46,
	},
	["Silencing Shot"] = {
		class = "HUNTER",
		level = 50,
	},
	["Track Dragonkin"] = {
		class = "HUNTER",
		level = 50,
	},
	["The Beast Within"] = {
		class = "HUNTER",
		level = 50,
	},
	["Sniper Training"] = {
		class = "HUNTER",
		level = 50,
	}, 
	["Steady Shot"] = {
		class = "HUNTER",
		level = 50,
	},
	["Readiness"] = {
		class = "HUNTER",
		level = 50,
	},
	["Kindred Spirits"] = {
		class = "HUNTER",
		level = 55,
	}, 
	["Hunting Party"] = {
		class = "HUNTER",
		level = 55,
	}, 
	["Tranquilizing Shot"] = {
		class = "HUNTER",
		level = 60,
	},
	["Chimera Shot"] = {
		class = "HUNTER",
		level = 60,
	}, 
	["Deterrence"] = {
		class = "HUNTER",
		level = 60,
	},
	["Explosive Shot"] = {
		class = "HUNTER",
		level = 60,
	}, 
	
--== Mage == 

	["Arcane Intellect"] = {
		class = "MAGE",
		level = 1,
	},
	["Fireball"] = {
		class = "MAGE",
		level = 1,
	},
	["Frost Armor"] = {
		class = "MAGE",
		level = 1,
	},
	["Frostbolt"] = {
		class = "MAGE",
		level = 4,
	},
	["Conjure Water"] = {
		class = "MAGE",
		level = 4,
	},
	["Conjure Food"] = {
		class = "MAGE",
		level = 6,
	},
	["Fire Blast"] = {
		class = "MAGE",
		level = 6,
	},
	["Polymorph"] = {
		class = "MAGE",
		level = 8,
	},
	["Arcane Missiles"] = {
		class = "MAGE",
		level = 8,
	},
	["Frost Nova"] = {
		class = "MAGE",
		level = 10,
	},
	["Slow Fall"] = {
		class = "MAGE",
		level = 12,
	},
	["Dampen Magic"] = {
		class = "MAGE",
		level = 12,
	},
	["Arcane Explosion"] = {
		class = "MAGE",
		level = 14,
	},
	["Magic Absorption"] = {
		class = "MAGE",
		level = 15,
	},
	["Frostbite"] = {
		class = "MAGE",
		level = 15,
	},
	["Ignite"] = {
		class = "MAGE",
		level = 15,
	},
	["Detect Magic"] = {
		class = "MAGE",
		level = 16,
	},
	["Flamestrike"] = {
		class = "MAGE",
		level = 16,
	},
	["Remove Lesser Curse"] = {
		class = "MAGE",
		level = 18,
	},
	["Amplify Magic"] = {
		class = "MAGE",
		level = 18,
	},
	["Teleport: Ironforge"] = {
		class = "MAGE",
		level = 20,
	},
	["Teleport: Orgrimmar"] = {
		class = "MAGE",
		level = 20,
	},
	["Teleport: Stormwind"] = {
		class = "MAGE",
		level = 20,
	},
	["Teleport: Undercity"] = {
		class = "MAGE",
		level = 20,
	},
	["Blink"] = {
		class = "MAGE",
		level = 20,
	},
	["Blizzard"] = {
		class = "MAGE",
		level = 20,
	},
	["Cold Snap"] = {
		class = "MAGE",
		level = 20,
	},
	["Evocation"] = {
		class = "MAGE",
		level = 20,
	},
	["Fire Ward"] = {
		class = "MAGE",
		level = 20,
	},
	["Mana Shield"] = {
		class = "MAGE",
		level = 20,
	},
	["Pyroblast"] = {
		class = "MAGE",
		level = 20,
	},
	["Scorch"] = {
		class = "MAGE",
		level = 22,
	},
	["Frost Ward"] = {
		class = "MAGE",
		level = 22,
	},
	["Counterspell"] = {
		class = "MAGE",
		level = 24,
	},
	["Master of Elements"] = {
		class = "MAGE",
		level = 25,
	},
	["Improved Scorch"] = {
		class = "MAGE",
		level = 25,
	},
	["Cone of Cold"] = {
		class = "MAGE",
		level = 26,
	},
	["Ice Block"] = {
		class = "MAGE",
		level = 30,
	},
	["Ice Armor"] = {
		class = "MAGE",
		level = 30,
	},
	["Presence of Mind"] = {
		class = "MAGE",
		level = 30,
	},
	["Teleport: Darnassus"] = {
		class = "MAGE",
		level = 30,
	},
	["Teleport: Thunder Bluff"] = {
		class = "MAGE",
		level = 30,
	},
	["Blast Wave"] = {
		class = "MAGE",
		level = 30,
	},
	["Mage Armor"] = {
		class = "MAGE",
		level = 34,
	},
	["Winter's Chill"] = {
		class = "MAGE",
		level = 35,
	},
	["Combustion"] = {
		class = "MAGE",
		level = 40,
	},
	["Ice Barrier"] = {
		class = "MAGE",
		level = 40,
	},
	["Portal: Ironforge"] = {
		class = "MAGE",
		level = 40,
	},
	["Portal: Orgrimmar"] = {
		class = "MAGE",
		level = 40,
	},
	["Portal: Stormwind"] = {
		class = "MAGE",
		level = 40,
	},
	["Portal: Undercity"] = {
		class = "MAGE",
		level = 40,
	},
	["Portal: Thunder Bluff"] = {
		class = "MAGE",
		level = 50,
	},
	["Portal: Darnassus"] = {
		class = "MAGE",
		level = 50,
	},
	["Dragon's Breath"] = {
		class = "MAGE",
		level = 50,
	},
	["Arcane Brilliance"] = {
		class = "MAGE",
		level = 56,
	},
	["Polymorph: Pig"] = {
		class = "MAGE",
		level = 60,
	},
	["Polymorph: Turtle"] = {
		class = "MAGE",
		level = 60,
	},
	

--== Paladin ==

	["Devotion Aura"] = {
		class = "PALADIN",
		level = 1,
	},
	["Holy Light"] = {
		class = "PALADIN",
		level = 1,
	},
	["Seal of Righteousness"] = {
		class = "PALADIN",
		level = 1,
	},
	["Blessing of Might"] = {
		class = "PALADIN",
		level = 4,
	},
	["Judgement of Light"] = {
		class = "PALADIN",
		level = 4,
	},
	["Seal of the Crusader"] = {
		class = "PALADIN",
		level = 6,
	},
	["Divine Protection"] = {
		class = "PALADIN",
		level = 6,
	},
	["Purify"] = {
		class = "PALADIN",
		level = 8,
	},
	["Hammer of Justice"] = {
		class = "PALADIN",
		level = 8,
	},
	["Lay on Hands"] = {
		class = "PALADIN",
		level = 10,
	},
	["Hand of Protection"] = {
		class = "PALADIN",
		level = 10,
	},
	["Redemption"] = {
		class = "PALADIN",
		level = 12,
	},
	["Judgement of Wisdom"] = {
		class = "PALADIN",
		level = 12,
	},
	["Righteous Defense"] = {
		class = "PALADIN",
		level = 14,
	},
	["Blessing of Wisdom"] = {
		class = "PALADIN",
		level = 14,
	},
	["Hand of Reckoning"] = {
		class = "PALADIN",
		level = 16,
	},
	["Retribution Aura"] = {
		class = "PALADIN",
		level = 16,
	},
	["Righteous Fury"] = {
		class = "PALADIN",
		level = 16,
	},
	["Hand of Freedom"] = {
		class = "PALADIN",
		level = 18,
	},
	["Spiritual Attunement"] = {
		class = "PALADIN",
		level = 18,
	},
	["Seal of Command"] = {
		class = "PALADIN",
		level = 20,
	},
	["Exorcism"] = {
		class = "PALADIN",
		level = 20,
	},
	["Flash of Light"] = {
		class = "PALADIN",
		level = 20,
	},
	["Blessing of Kings"] = {
		class = "PALADIN",
		level = 20,
	},
	["Vindication"] = {
		class = "PALADIN",
		level = 20,
	},
	["Aura Mastery"] = {
		class = "PALADIN",
		level = 20,
	},
	["Divine Sacrifice"] = {
		class = "PALADIN",
		level = 20,
	},
	["Sense Undead"] = {
		class = "PALADIN",
		level = 20,
	},
	["Consecration"] = {
		class = "PALADIN",
		level = 20,
	},
	["Concentration Aura"] = {
		class = "PALADIN",
		level = 22,
	},
	["Seal of Justice"] = {
		class = "PALADIN",
		level = 22,
	},
	["Turn Evil"] = {
		class = "PALADIN",
		level = 24,
	},
	["Illumination"] = {
		class = "PALADIN",
		level = 25,
	},
	["Eye for an Eye"] = {
		class = "PALADIN",
		level = 25,
	},
	["Hand of Salvation"] = {
		class = "PALADIN",
		level = 26,
	},
	["Shadow Resistance Aura"] = {
		class = "PALADIN",
		level = 28,
	},
	["Judgement of Justice"] = {
		class = "PALADIN",
		level = 28,
	},
	["Divine Favor"] = {
		class = "PALADIN",
		level = 30,
	},
	["Divine Intervention"] = {
		class = "PALADIN",
		level = 30,
	},
	["Reckoning"] = {
		class = "PALADIN",
		level = 30,
	},
	["Sanctity Aura"] = {
		class = "PALADIN",
		level = 30,
	},
	["Seal of Light"] = {
		class = "PALADIN",
		level = 30,
	},
	["Summon Warhorse"] = {
		class = "PALADIN",
		level = 30,
	},
	["Warhorse"] = {
		class = "PALADIN",
		level = 30,
	},
	["Blessing of Sanctuary"] = {
		class = "PALADIN",
		level = 30,
	},
	["Frost Resistance Aura"] = {
		class = "PALADIN",
		level = 32,
	},
	["Divine Shield"] = {
		class = "PALADIN",
		level = 36,
	},
	["Vengeance"] = {
		class = "PALADIN",
		level = 35,
	},
	["Fire Resistance Aura"] = {
		class = "PALADIN",
		level = 36,
	},
	["Seal of Wisdom"] = {
		class = "PALADIN",
		level = 38,
	},
	["Light's Grace"] = {
		class = "PALADIN",
		level = 40,
	},
	["Blessing of Light"] = {
		class = "PALADIN",
		level = 40,
	},
	["Holy Shock"] = {
		class = "PALADIN",
		level = 40,
	},
	["Repentance"] = {
		class = "PALADIN",
		level = 40,
	},
	["Holy Shield"] = {
		class = "PALADIN",
		level = 40,
	},
	["The Art of War"] = {
		class = "PALADIN",
		level = 40,
	},
	["Cleanse"] = {
		class = "PALADIN",
		level = 42,
	},
	["Hammer of Wrath"] = {
		class = "PALADIN",
		level = 44,
	},
	["Redoubt"] = {
		class = "PALADIN",
		level = 45,
	},
	["Sacred Cleansing"] = {
		class = "PALADIN",
		level = 45,
	},
	["Hand of Sacrifice"] = {
		class = "PALADIN",
		level = 46,
	},
	["Holy Wrath"] = {
		class = "PALADIN",
		level = 50,
	},
	["Divine Illumination"] = {
		class = "PALADIN",
		level = 50,
	},
	["Avenger's Shield"] = {
		class = "PALADIN",
		level = 50,
	},
	["Crusader Strike"] = {
		class = "PALADIN",
		level = 50,
	},
	["Greater Blessing of Might"] = {
		class = "PALADIN",
		level = 52,
	},
	["Greater Blessing of Wisdom"] = {
		class = "PALADIN",
		level = 54,
	},
	["Silenced - Shield of the Templar"] = {
		class = "PALADIN",
		level = 55,
	},
	["Greater Blessing of Sanctuary"] = {
		class = "PALADIN",
		level = 60,
	},
	["Greater Blessing of Kings"] = {
		class = "PALADIN",
		level = 60,
	},
	["Greater Blessing of Might"] = {
		class = "PALADIN",
		level = 60,
	},
	["Summon Charger"] = {
		class = "PALADIN",
		level = 60,
	},
	["Charger"] = {
		class = "PALADIN",
		level = 60,
	},
	["Beacon of Light"] = {
		class = "PALADIN",
		level = 60,
	},
	["Light's Beacon"] = {
		class = "PALADIN",
		level = 60,
	},
	["Divine Storm"] = {
		class = "PALADIN",
		level = 60,
	},
	["Hammer of the Righteous"] = {
		class = "PALADIN",
		level = 60,
	},
	
--== Priest == 

	["Power Word: Fortitude"] = {
		class = "PRIEST",
		level = 1,
	},
	["Glyph of Dispel Magic"] = {
		class = "PRIEST",
		level = 1,
	},
	["Glyph of Power Word: Shield"] = {
		class = "PRIEST",
		level = 1,
	},
	["Glyph of Prayer of Healing"] = {
		class = "PRIEST",
		level = 1,
	},
	["Lesser Heal"] = {
		class = "PRIEST",
		level = 1,
	},
	["Smite"] = {
		class = "PRIEST",
		level = 1,
	},
	["Shadow Word: Pain"] = {
		class = "PRIEST",
		level = 4,
	},
	["Power Word: Shield"] = {
		class = "PRIEST",
		level = 6,
	},
	["Fade"] = {
		class = "PRIEST",
		level = 8,
	},
	["Renew"] = {
		class = "PRIEST",
		level = 8,
	},
	["Mind Blast"] = {
		class = "PRIEST",
		level = 10,
	},
	["Resurrection"] = {
		class = "PRIEST",
		level = 10,
	},
	["Spirit Tap"] = {
		class = "PRIEST",
		level = 10,
	},
	["Touch of Weakness"] = {
		class = "PRIEST",
		level = 10,
	},
	["Inner Fire"] = {
		class = "PRIEST",
		level = 12,
	},
	["Psychic Scream"] = {
		class = "PRIEST",
		level = 14,
	},
	["Heal"] = {
		class = "PRIEST",
		level = 16,
	},
	["Dispel Magic"] = {
		class = "PRIEST",
		level = 18,
	},
	["Desperate Prayer"] = {
		class = "PRIEST",
		level = 20,
	},
	["Flash Heal"] = {
		class = "PRIEST",
		level = 20,
	},
	["Shackle Undead"] = {
		class = "PRIEST",
		level = 20,
	},
	["Holy Fire"] = {
		class = "PRIEST",
		level = 20,
	},
	["Mind Flay"] = {
		class = "PRIEST",
		level = 20,
	},
	["Mind Soothe"] = {
		class = "PRIEST",
		level = 20,
	},
	["Inner Focus"] = {
		class = "PRIEST",
		level = 20,
	},
	["Holy Nova"] = {
		class = "PRIEST",
		level = 20,
	},
	["Blessed Recovery"] = {
		class = "PRIEST",
		level = 20,
	},
	["Inspiration"] = {
		class = "PRIEST",
		level = 20,
	},
	["Devouring Plague"] = {
		class = "PRIEST",
		level = 20,
	},
	["Fear Ward"] = {
		class = "PRIEST",
		level = 20,
	},
	["Mind Vision"] = {
		class = "PRIEST",
		level = 22,
	},
	["Mana Burn"] = {
		class = "PRIEST",
		level = 24,
	},
	["Shadow Vulnerability"] = {
		class = "PRIEST",
		level = 25,
	},
	["Mind Control"] = {
		class = "PRIEST",
		level = 30,
	},
	["Reflective Shield"] = {
		class = "PRIEST",
		level = 30,
	},
	["Prayer of Healing"] = {
		class = "PRIEST",
		level = 30,
	},
	["Shadow Protection"] = {
		class = "PRIEST",
		level = 30,
	},
	["Silence"] = {
		class = "PRIEST",
		level = 30,
	},
	["Spirit of Redemption"] = {
		class = "PRIEST",
		level = 30,
	},
	["Vampiric Embrace"] = {
		class = "PRIEST",
		level = 30,
	},
	["Divine Spirit"] = {
		class = "PRIEST",
		level = 30,
	},
	["Abolish Disease"] = {
		class = "PRIEST",
		level = 32,
	},
	["Levitate"] = {
		class = "PRIEST",
		level = 34,
	},
	["Surge of Light"] = {
		class = "PRIEST",
		level = 35,
	},
	["Greater Heal"] = {
		class = "PRIEST",
		level = 40,
	},
	["Shadowform"] = {
		class = "PRIEST",
		level = 40,
	},
	["Focused Will"] = {
		class = "PRIEST",
		level = 40,
	},
	["Power Infusion"] = {
		class = "PRIEST",
		level = 40,
	},
	["Lightwell"] = {
		class = "PRIEST",
		level = 40,
	},
	["Blessed Resilience"] = {
		class = "PRIEST",
		level = 40,
	},
	["Serendipity"] = {
		class = "PRIEST",
		level = 45,
	},
	["Prayer of Fortitude"] = {
		class = "PRIEST",
		level = 48,
	},
	["Focused Will"] = {
		class = "PRIEST",
		level = 50,
	},
	["Circle of Healing"] = {
		class = "PRIEST",
		level = 50,
	},
	["Pain Suppression"] = {
		class = "PRIEST",
		level = 50,
	},
	["Vampiric Touch"] = {
		class = "PRIEST",
		level = 50,
	},
	["Psychic Horror"] = {
		class = "PRIEST",
		level = 50,
	},
	["Prayer of Shadow Protection"] = {
		class = "PRIEST",
		level = 56,
	},
	["Prayer of Spirit"] = {
		class = "PRIEST",
		level = 60,
	},
	["Guardian Spirit"] = {
		class = "PRIEST",
		level = 60,
	},
	["Dispersion"] = {
		class = "PRIEST",
		level = 60,
	},
	["Penance"] = {
		class = "PRIEST",
		level = 60,
	},
	

--== Rogue == 

	["Stealth"] = {
		class = "ROGUE",
		level = 1,
	},
	["Sinister Strike"] = {
		class = "ROGUE",
		level = 1,
	},
	["Eviscerate"] = {
		class = "ROGUE",
		level = 1,
	},
	["Backstab"] = {
		class = "ROGUE",
		level = 4,
	},
	["Pick Pocket"] = {
		class = "ROGUE",
		level = 4,
	},
	["Gouge"] = {
		class = "ROGUE",
		level = 6,
	},
	["Evasion"] = {
		class = "ROGUE",
		level = 8,
	},
	["Remorseless"] = {
		class = "ROGUE",
		level = 10,
	},
	["Sap"] = {
		class = "ROGUE",
		level = 10,
	},
	["Slice and Dice"] = {
		class = "ROGUE",
		level = 10,
	},
	["Master of Deception"] = {
		class = "ROGUE",
		level = 10,
	},
	["Sprint"] = {
		class = "ROGUE",
		level = 10,
	},
	["Relentless Strikes"] = {
		class = "ROGUE",
		level = 10,
	},
	["Remorseless Attacks"] = {
		class = "ROGUE",
		level = 10,
	},
	["Kick"] = {
		class = "ROGUE",
		level = 12,
	},
	["Expose Armor"] = {
		class = "ROGUE",
		level = 14,
	},
	["Garrote"] = {
		class = "ROGUE",
		level = 14,
	},
	["Feint"] = {
		class = "ROGUE",
		level = 16,
	},
	["Pick Lock"] = {
		class = "ROGUE",
		level = 16,
	},
	["Ambush"] = {
		class = "ROGUE",
		level = 18,
	},
	["Riposte"] = {
		class = "ROGUE",
		level = 20,
	},
	["Dismantle"] = {
		class = "ROGUE",
		level = 20,
	},
	["Rupture"] = {
		class = "ROGUE",
		level = 20,
	},
	["Crippling Poison"] = {
		class = "ROGUE",
		level = 20,
	},
	["Ghostly Strike"] = {
		class = "ROGUE",
		level = 20,
	},
	["Instant Poison"] = {
		class = "ROGUE",
		level = 20,
	},
	["Vanish"] = {
		class = "ROGUE",
		level = 22,
	},
	["Distract"] = {
		class = "ROGUE",
		level = 22,
	},
	["Detect Traps"] = {
		class = "ROGUE",
		level = 24,
	},
	["Mind-numbing Poison"] = {
		class = "ROGUE",
		level = 24,
	},
	["Cheap Shot"] = {
		class = "ROGUE",
		level = 26,
	},
	["Instant Poison II"] = {
		class = "ROGUE",
		level = 28,
	},
	["Cold Blood"] = {
		class = "ROGUE",
		level = 30,
	},
	["Preparation"] = {
		class = "ROGUE",
		level = 30,
	},
	["Disarm Trap"] = {
		class = "ROGUE",
		level = 30,
	},
	["Blade Flurry"] = {
		class = "ROGUE",
		level = 30,
	},
	["Deadly Poison"] = {
		class = "ROGUE",
		level = 30,
	},
	["Kidney Shot"] = {
		class = "ROGUE",
		level = 30,
	},
	["Hemorrhage"] = {
		class = "ROGUE",
		level = 30,
	},
	["Wound Poison"] = {
		class = "ROGUE",
		level = 32,
	},
	["Blind"] = {
		class = "ROGUE",
		level = 34,
	},
	["Blinding Powder"] = {
		class = "ROGUE",
		level = 34,
	},
	["Find Weakness"] = {
		class = "ROGUE",
		level = 35,
	},
	["Instant Poison III"] = {
		class = "ROGUE",
		level = 36,
	},
	["Deadly Poison II"] = {
		class = "ROGUE",
		level = 38,
	},
	["Wound Poison II"] = {
		class = "ROGUE",
		level = 40,
	},
	["Premeditation"] = {
		class = "ROGUE",
		level = 40,
	},
	["Adrenaline Rush"] = {
		class = "ROGUE",
		level = 40,
	},
	["Instant Poison IV"] = {
		class = "ROGUE",
		level = 44,
	},
	["Combat Potency"] = {
		class = "ROGUE",
		level = 45,
	},
	["Deadly Poison III"] = {
		class = "ROGUE",
		level = 46,
	},
	["Wound Poison III"] = {
		class = "ROGUE",
		level = 48,
	},
	["Mutilate"] = {
		class = "ROGUE",
		level = 50,
	},
	["Shadowstep"] = {
		class = "ROGUE",
		level = 50,
	},
	["Honor Among Thieves"] = {
		class = "ROGUE",
		level = 50,
	},
	["Turn the Tables"] = {
		class = "ROGUE",
		level = 50,
	},
	["Unfair Advantage"] = {
		class = "ROGUE",
		level = 50,
	},
	["Instant Poison V"] = {
		class = "ROGUE",
		level = 52,
	},
	["Deadly Poison IV"] = {
		class = "ROGUE",
		level = 54,
	},
	["Wound Poison IV"] = {
		class = "ROGUE",
		level = 56,
	},
	["Deadly Poison V"] = {
		class = "ROGUE",
		level = 60,
	},
	["Instant Poison VI"] = {
		class = "ROGUE",
		level = 60,
	},
	["Hunger For Blood"] = {
		class = "ROGUE",
		level = 60,
	},
	["Killing Spree"] = {
		class = "ROGUE",
		level = 60,
	},
	["Shadow Dance"] = {
		class = "ROGUE",
		level = 60,
	},
	

--== Shaman == 

	["Freeze"] = {
		class = "SHAMAN",
		level = 1,
	},
	["Glyph of Healing Wave"] = {
		class = "SHAMAN",
		level = 1,
	},
	["Rockbiter Weapon"] = {
		class = "SHAMAN",
		level = 1,
	},
	["Healing Wave"] = {
		class = "SHAMAN",
		level = 1,
	},
	["Lightning Bolt"] = {
		class = "SHAMAN",
		level = 1,
	},
	["Stoneskin Totem"] = {
		class = "SHAMAN",
		level = 4,
	},
	["Earth Shock"] = {
		class = "SHAMAN",
		level = 4,
	},
	["Earthbind Totem"] = {
		class = "SHAMAN",
		level = 6,
	},
	["Stoneclaw Totem"] = {
		class = "SHAMAN",
		level = 8,
	},
	["Lightning Shield"] = {
		class = "SHAMAN",
		level = 8,
	},
	["Flame Shock"] = {
		class = "SHAMAN",
		level = 10,
	},
	["Flametongue Weapon"] = {
		class = "SHAMAN",
		level = 10,
	},
	["Strength of Earth Totem"] = {
		class = "SHAMAN",
		level = 10,
	},
	["Searing Totem"] = {
		class = "SHAMAN",
		level = 10,
	},
	["Ancestral Spirit"] = {
		class = "SHAMAN",
		level = 12,
	},
	["Fire Nova Totem"] = {
		class = "SHAMAN",
		level = 12,
	},
	["Purge"] = {
		class = "SHAMAN",
		level = 12,
	},
	["Ancestral Fortitude"] = {
		class = "SHAMAN",
		level = 15,
	},
	["Elemental Devastation"] = {
		class = "SHAMAN",
		level = 15,
	},
	["Wind Shock"] = {
		class = "SHAMAN",
		level = 16,
	},
	["Tremor Totem"] = {
		class = "SHAMAN",
		level = 18,
	},
	["Frost Shock"] = {
		class = "SHAMAN",
		level = 20,
	},
	["Frostbrand Weapon"] = {
		class = "SHAMAN",
		level = 20,
	},
	["Ghost Wolf"] = {
		class = "SHAMAN",
		level = 20,
	},
	["Tidal Force"] = {
		class = "SHAMAN",
		level = 20,
	},
	["Elemental Focus"] = {
		class = "SHAMAN",
		level = 20,
	},
	["Lesser Healing Wave"] = {
		class = "SHAMAN",
		level = 20,
	},
	["Healing Stream Totem"] = {
		class = "SHAMAN",
		level = 20,
	},
	["Water Shield"] = {
		class = "SHAMAN",
		level = 20,
	},
	["Poison Cleansing Totem"] = {
		class = "SHAMAN",
		level = 22,
	},
	["Water Breathing"] = {
		class = "SHAMAN",
		level = 22,
	},
	["Frost Resistance Totem"] = {
		class = "SHAMAN",
		level = 24,
	},
	["Far Sight"] = {
		class = "SHAMAN",
		level = 26,
	},
	["Magma Totem"] = {
		class = "SHAMAN",
		level = 26,
	},
	["Mana Spring Totem"] = {
		class = "SHAMAN",
		level = 26,
	},
	["Fire Resistance Totem"] = {
		class = "SHAMAN",
		level = 28,
	},
	["Flametongue Totem"] = {
		class = "SHAMAN",
		level = 28,
	},
	["Water Walking"] = {
		class = "SHAMAN",
		level = 28,
	},
	["Astral Recall"] = {
		class = "SHAMAN",
		level = 30,
	},
	["Grounding Totem"] = {
		class = "SHAMAN",
		level = 30,
	},
	["Nature Resistance Totem"] = {
		class = "SHAMAN",
		level = 30,
	},
	["Nature's Swiftness"] = {
		class = "SHAMAN",
		level = 30,
	},
	["Reincarnation"] = {
		class = "SHAMAN",
		level = 30,
	},
	["Healing Way"] = {
		class = "SHAMAN",
		level = 30,
	},
	["Earthliving Weapon"] = {
		class = "SHAMAN",
		level = 30,
	},
	["Windfury Weapon"] = {
		class = "SHAMAN",
		level = 30,
	},
	["Spirit Weapons"] = {
		class = "SHAMAN",
		level = 30,
	},
	["Totemic Call"] = {
		class = "SHAMAN",
		level = 30,
	},
	["Chain Lightning"] = {
		class = "SHAMAN",
		level = 32,
	},
	["Windfury Totem"] = {
		class = "SHAMAN",
		level = 32,
	},
	["Sentry Totem"] = {
		class = "SHAMAN",
		level = 34,
	},
	["Unleashed Rage"] = {
		class = "SHAMAN",
		level = 35,
	},
	["Windwall Totem"] = {
		class = "SHAMAN",
		level = 36,
	},
	["Cleansing Totem"] = {
		class = "SHAMAN",
		level = 38,
	},
	["Nature's Guardian"] = {
		class = "SHAMAN",
		level = 40,
	},
	["Cleanse Spirit"] = {
		class = "SHAMAN",
		level = 40,
	},
	["Chain Heal"] = {
		class = "SHAMAN",
		level = 40,
	},
	["Elemental Mastery"] = {
		class = "SHAMAN",
		level = 40,
	},
	["Mana Tide Totem"] = {
		class = "SHAMAN",
		level = 40,
	},
	["Stormstrike"] = {
		class = "SHAMAN",
		level = 40,
	},
	["Grace of Air Totem"] = {
		class = "SHAMAN",
		level = 42,
	},
	["Elemental Oath"] = {
		class = "SHAMAN",
		level = 45,
	},
	["Lava Lash"] = {
		class = "SHAMAN",
		level = 45,
	},
	["Totem of Wrath"] = {
		class = "SHAMAN",
		level = 50,
	},
	["Shamanistic Rage"] = {
		class = "SHAMAN",
		level = 50,
	},
	["Earth Shield"] = {
		class = "SHAMAN",
		level = 50,
	},
	["Tranquil Air Totem"] = {
		class = "SHAMAN",
		level = 50,
	},
	["Maelstrom Weapon"] = {
		class = "SHAMAN",
		level = 55,
	},
	["Feral Spirit"] = {
		class = "SHAMAN",
		level = 60,
	},
	["Riptide"] = {
		class = "SHAMAN",
		level = 60,
	},
	["Thunderstorm"] = {
		class = "SHAMAN",
		level = 60,
	},
	

--== Warlock == 

	["Challenging Howl"] = {
		class = "WARLOCK",
		level = 1,
	},
	["Blood Pact"] = {
		class = "WARLOCK",
		level = 1,
	},
	["Immolate"] = {
		class = "WARLOCK",
		level = 1,
	},
	["Summon Imp"] = {
		class = "WARLOCK",
		level = 1,
	},
	["Demon Skin"] = {
		class = "WARLOCK",
		level = 1,
	},
	["Shadow Bolt"] = {
		class = "WARLOCK",
		level = 1,
	},
	["Corruption"] = {
		class = "WARLOCK",
		level = 4,
	},
	["Curse of Weakness"] = {
		class = "WARLOCK",
		level = 4,
	},
	["Life Tap"] = {
		class = "WARLOCK",
		level = 6,
	},
	["Curse of Agony"] = {
		class = "WARLOCK",
		level = 8,
	},
	["Fear"] = {
		class = "WARLOCK",
		level = 8,
	},
	["Create Healthstone"] = {
		class = "WARLOCK",
		level = 10,
	},
	["Summon Voidwalker"] = {
		class = "WARLOCK",
		level = 10,
	},
	["Drain Soul"] = {
		class = "WARLOCK",
		level = 10,
	},
	["Shadow Vulnerability"] = {
		class = "WARLOCK",
		level = 10,
	},
	["Health Funnel"] = {
		class = "WARLOCK",
		level = 12,
	},
	["Curse of Recklessness"] = {
		class = "WARLOCK",
		level = 14,
	},
	["Drain Life"] = {
		class = "WARLOCK",
		level = 14,
	},
	["Unending Breath"] = {
		class = "WARLOCK",
		level = 16,
	},
	["Create Soulstone"] = {
		class = "WARLOCK",
		level = 18,
	},
	["Searing Pain"] = {
		class = "WARLOCK",
		level = 18,
	},
	["Demon Armor"] = {
		class = "WARLOCK",
		level = 20,
	},
	["Amplify Curse"] = {
		class = "WARLOCK",
		level = 20,
	},
	["Fel Domination"] = {
		class = "WARLOCK",
		level = 20,
	},
	["Rain of Fire"] = {
		class = "WARLOCK",
		level = 20,
	},
	["Ritual of Summoning"] = {
		class = "WARLOCK",
		level = 20,
	},
	["Shadowburn"] = {
		class = "WARLOCK",
		level = 20,
	},
	["Summon Succubus"] = {
		class = "WARLOCK",
		level = 20,
	},
	["Soul Link"] = {
		class = "WARLOCK",
		level = 20,
	},
	["Eye of Kilrogg"] = {
		class = "WARLOCK",
		level = 22,
	},
	["Sense Demons"] = {
		class = "WARLOCK",
		level = 24,
	},
	["Drain Mana"] = {
		class = "WARLOCK",
		level = 24,
	},
	["Shadow Trance"] = {
		class = "WARLOCK",
		level = 25,
	},
	["Detect Invisibility"] = {
		class = "WARLOCK",
		level = 26,
	},
	["Curse of Tongues"] = {
		class = "WARLOCK",
		level = 26,
	},
	["Banish"] = {
		class = "WARLOCK",
		level = 28,
	},
	["Create Firestone"] = {
		class = "WARLOCK",
		level = 28,
	},
	["Curse of Exhaustion"] = {
		class = "WARLOCK",
		level = 30,
	},
	["Demonic Sacrifice"] = {
		class = "WARLOCK",
		level = 30,
	},
	["Enslave Demon"] = {
		class = "WARLOCK",
		level = 30,
	},
	["Summon Felsteed"] = {
		class = "WARLOCK",
		level = 30,
	},
	["Felsteed"] = {
		class = "WARLOCK",
		level = 30,
	},
	["Hellfire"] = {
		class = "WARLOCK",
		level = 30,
	},
	["Siphon Life"] = {
		class = "WARLOCK",
		level = 30,
	},
	["Summon Felhunter"] = {
		class = "WARLOCK",
		level = 30,
	},
	["Backlash"] = {
		class = "WARLOCK",
		level = 30,
	},
	["Shadow Embrace"] = {
		class = "WARLOCK",
		level = 30,
	},
	["Curse of the Elements"] = {
		class = "WARLOCK",
		level = 32,
	},
	["Shadow Ward"] = {
		class = "WARLOCK",
		level = 32,
	},
	["Master Demonologist"] = {
		class = "WARLOCK",
		level = 35,
	},
	["Molten Core"] = {
		class = "WARLOCK",
		level = 35,
	},
	["Nether Protection"] = {
		class = "WARLOCK",
		level = 35,
	},
	["Create Spellstone"] = {
		class = "WARLOCK",
		level = 36,
	},
	["Howl of Terror"] = {
		class = "WARLOCK",
		level = 40,
	},
	["Eradication"] = {
		class = "WARLOCK",
		level = 40,
	},
	["Pyroclasm"] = {
		class = "WARLOCK",
		level = 40,
	},
	["Demonic Empowerment"] = {
		class = "WARLOCK",
		level = 40,
	},
	["Demonic Knowledge"] = {
		class = "WARLOCK",
		level = 40,
	},
	["Conflagrate"] = {
		class = "WARLOCK",
		level = 40,
	},
	["Dark Pact"] = {
		class = "WARLOCK",
		level = 40,
	},
	["Soul Leech"] = {
		class = "WARLOCK",
		level = 40,
	},
	["Curse of Shadow"] = {
		class = "WARLOCK",
		level = 44,
	},
	["Decimation"] = {
		class = "WARLOCK",
		level = 45,
	},
	["Improved Soul Leech"] = {
		class = "WARLOCK",
		level = 45,
	},
	["Soul Fire"] = {
		class = "WARLOCK",
		level = 48,
	},
	["Inferno"] = {
		class = "WARLOCK",
		level = 50,
	},
	["Backdraft"] = {
		class = "WARLOCK",
		level = 50,
	},
	["Summon Felguard"] = {
		class = "WARLOCK",
		level = 50,
	},
	["Unstable Affliction"] = {
		class = "WARLOCK",
		level = 50,
	},
	["Shadowfury"] = {
		class = "WARLOCK",
		level = 50,
	},
	["Ritual of Doom"] = {
		class = "WARLOCK",
		level = 60,
	},
	["Curse of Doom"] = {
		class = "WARLOCK",
		level = 60,
	},
	["Demonic Charge"] = {
		class = "WARLOCK",
		level = 60,
	},
	["Immolation Aura"] = {
		class = "WARLOCK",
		level = 60,
	},
	["Shadow Cleave"] = {
		class = "WARLOCK",
		level = 60,
	},
	["Summon Dreadsteed"] = {
		class = "WARLOCK",
		level = 60,
	},
	

--== Warrior == 

	["Battle Shout"] = {
		class = "WARRIOR",
		level = 1,
	},
	["Heroic Strike"] = {
		class = "WARRIOR",
		level = 1,
	},
	["Battle Stance"] = {
		class = "WARRIOR",
		level = 1,
	},
	["Rend"] = {
		class = "WARRIOR",
		level = 4,
	},
	["Charge"] = {
		class = "WARRIOR",
		level = 4,
	},
	["Thunder Clap"] = {
		class = "WARRIOR",
		level = 6,
	},
	["Hamstring"] = {
		class = "WARRIOR",
		level = 8,
	},
	["Sunder Armor"] = {
		class = "WARRIOR",
		level = 10,
	},
	["Bloodrage"] = {
		class = "WARRIOR",
		level = 10,
	},
	["Taunt"] = {
		class = "WARRIOR",
		level = 10,
	},
	["Defensive Stance"] = {
		class = "WARRIOR",
		level = 10,
	},
	["Shield Bash"] = {
		class = "WARRIOR",
		level = 12,
	},
	["Overpower"] = {
		class = "WARRIOR",
		level = 12,
	},
	["Demoralizing Shout"] = {
		class = "WARRIOR",
		level = 14,
	},
	["Revenge"] = {
		class = "WARRIOR",
		level = 14,
	},
	["Shield Specialization"] = {
		class = "WARRIOR",
		level = 10,
	},
	["Unbridled Wrath"] = {
		class = "WARRIOR",
		level = 15,
	},
	["Mocking Blow"] = {
		class = "WARRIOR",
		level = 16,
	},
	["Shield Block"] = {
		class = "WARRIOR",
		level = 16,
	},
	["Disarm"] = {
		class = "WARRIOR",
		level = 18,
	},
	["Piercing Howl"] = {
		class = "WARRIOR",
		level = 20,
	},
	["Retaliation"] = {
		class = "WARRIOR",
		level = 20,
	},
	["Blood Craze"] = {
		class = "WARRIOR",
		level = 20,
	},
	["Cleave"] = {
		class = "WARRIOR",
		level = 20,
	},
	["Last Stand"] = {
		class = "WARRIOR",
		level = 20,
	},
	["Deep Wound"] = {
		class = "WARRIOR",
		level = 20,
	},
	["Intimidating Shout"] = {
		class = "WARRIOR",
		level = 22,
	},
	["Execute"] = {
		class = "WARRIOR",
		level = 24,
	},
	["Challenging Shout"] = {
		class = "WARRIOR",
		level = 26,
	},
	["Shield Wall"] = {
		class = "WARRIOR",
		level = 28,
	},
	["Concussion Blow"] = {
		class = "WARRIOR",
		level = 30,
	},
	["Death Wish"] = {
		class = "WARRIOR",
		level = 30,
	},
	["Intercept"] = {
		class = "WARRIOR",
		level = 30,
	},
	["Slam"] = {
		class = "WARRIOR",
		level = 30,
	},
	["Sweeping Strikes"] = {
		class = "WARRIOR",
		level = 30,
	},
	["Berserker Stance"] = {
		class = "WARRIOR",
		level = 30,
	},
	["Berserker Rage"] = {
		class = "WARRIOR",
		level = 32,
	},
	["Whirlwind"] = {
		class = "WARRIOR",
		level = 36,
	},
	["Pummel"] = {
		class = "WARRIOR",
		level = 38,
	},
	["Shield Slam"] = {
		class = "WARRIOR",
		level = 40,
	},
	["Mortal Strike"] = {
		class = "WARRIOR",
		level = 40,
	},
	["Bloodthirst"] = {
		class = "WARRIOR",
		level = 40,
	},
	["Recklessness"] = {
		class = "WARRIOR",
		level = 50,
	},

}
