local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("Spy", "enUS", true)
if not L then return end

local B = LibStub("LibBabble-Spell-3.0")
local BS = B:GetLookupTable()

-- Addon information
L["Spy"] = "Spy"
L["Version"] = "Version"
L["LoadDescription"] = "|cff9933ffSpy addon loaded. Type |cffffffff/spy|cff9933ff for options."
L["SpyEnabled"] = "|cff9933ffSpy addon enabled."
L["SpyDisabled"] = "|cff9933ffSpy addon disabled. Type |cffffffff/spy show|cff9933ff to enable."
L["UpgradeAvailable"] = "|cff9933ffA new version of Spy is available. It can be downloaded from:\n|cffffffffhttps://github.com/laytya/Spy"
L["Show Minimap Icon"] = "Show Minimap Icon"
L["Show/Hide Spy"] = "Show/Hide Spy"

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
L["DisabledInZonesDescription"] = "Select locations where Spy will be disabled"
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
L["LockSpy"] = "Lock the Spy window"
L["LockSpyDescription"] = "Locks the Spy window in place so it doesn't move."
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
L["Show/Hide stats"] = "Show/Hide stats"
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
L["RemoveFromStatsList"] = "Remove from Statistics List" --++
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
		getglobal(this:GetName() .. "EditBox"):SetText("");
	end,
	OnAccept = function()
		local reason = getglobal(this:GetParent():GetName() .. "EditBox"):GetText()
		Spy:SetKOSReason(this.playerName, "Enter your own reason...", reason)
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

 [BS["Shadowmeld"]] = {
		race = "Night Elf",
		level = 1,
	},
 [BS["Will of the Forsaken"]] = {
		race = "Undead",
		level = 1,
	},
 [BS["Cannibalize"]] = {
		race = "Undead",
		level = 1,
	},
 [BS["Berserking"]] = {
		race = "Troll",
		level = 1,
	},
 [BS["War Stomp"]] = {
		race = "Tauren",
		level = 1,
	},
 [BS["Blood Fury"]] = {
		race = "Orc",
		level = 1,
	},
 [BS["Perception"]] = {
		race = "Human",
		level = 1,
	},
 [BS["Escape Artist"]] = {
		race = "Gnome",
		level = 1,
	},
 [BS["Stoneform"]] = {
		race = "Dwarf",
		level = 1,
	},


	--== Druid ==

 [BS["Healing Touch"]] = {
		class = "DRUID",
		level = 1,
	},
 [BS["Mark of the Wild"]] = {
		class = "DRUID",
		level = 1,
	},
 [BS["Wrath"]] = {
		class = "DRUID",
		level = 1,
	},
 [BS["Moonfire"]] = {
		class = "DRUID",
		level = 4,
	},
 [BS["Rejuvenation"]] = {
		class = "DRUID",
		level = 4,
	},
 [BS["Thorns"]] = {
		class = "DRUID",
		level = 6,
	},
 [BS["Entangling Roots"]] = {
		class = "DRUID",
		level = 8,
	},
 [BS["Bear Form"]] = {
		class = "DRUID",
		level = 10,
	},
 [BS["Demoralizing Roar"]] = {
		class = "DRUID",
		level = 10,
	},
 [BS["Maul"]] = {
		class = "DRUID",
		level = 10,
	},
 [BS["Teleport: Moonglade"]] = {
		class = "DRUID",
		level = 10,
	},
 [BS["Regrowth"]] = {
		class = "DRUID",
		level = 12,
	},
 [BS["Bash"]] = {
		class = "DRUID",
		level = 14,
	},
 [BS["Aquatic Form"]] = {
		class = "DRUID",
		level = 16,
	},
 [BS["Swipe"]] = {
		class = "DRUID",
		level = 16,
	},
 [BS["Hibernate"]] = {
		class = "DRUID",
		level = 18,
	},
 [BS["Faerie Fire"]] = {
		class = "DRUID",
		level = 18,
	},
 [BS["Faerie Fire (Feral)"]] = {
		class = "DRUID",
		level = 30,
	},
 [BS["Cat Form"]] = {
		class = "DRUID",
		level = 20,
	},
 [BS["Claw"]] = {
		class = "DRUID",
		level = 20,
	},
 [BS["Feral Charge"]] = {
		class = "DRUID",
		level = 20,
	},
 [BS["Nature's Grace"]] = {
		class = "DRUID",
		level = 30,
	},
 [BS["Omen of Clarity"]] = {
		class = "DRUID",
		level = 20,
	},
 [BS["Prowl"]] = {
		class = "DRUID",
		level = 20,
	},
 [BS["Starfire"]] = {
		class = "DRUID",
		level = 20,
	},
 [BS["Rebirth"]] = {
		class = "DRUID",
		level = 20,
	},
 [BS["Rip"]] = {
		class = "DRUID",
		level = 20,
	},
 [BS["Soothe Animal"]] = {
		class = "DRUID",
		level = 22,
	},
 [BS["Shred"]] = {
		class = "DRUID",
		level = 22,
	},
 [BS["Tiger's Fury"]] = {
		class = "DRUID",
		level = 24,
	},
 [BS["Rake"]] = {
		class = "DRUID",
		level = 24,
	},
 [BS["Primal Fury"]] = {
		class = "DRUID",
		level = 25,
	},
 [BS["Abolish Poison"]] = {
		class = "DRUID",
		level = 26,
	},
 [BS["Dash"]] = {
		class = "DRUID",
		level = 26,
	},
 [BS["Challenging Roar"]] = {
		class = "DRUID",
		level = 28,
	},
 [BS["Tranquility"]] = {
		class = "DRUID",
		level = 30,
	},
 [BS["Travel Form"]] = {
		class = "DRUID",
		level = 30,
	},
 [BS["Nature's Swiftness"]] = {
		class = "DRUID",
		level = 30,
	},
 [BS["Insect Swarm"]] = {
		class = "DRUID",
		level = 20,
	},
 [BS["Ferocious Bite"]] = {
		class = "DRUID",
		level = 32,
	},
 [BS["Ravage"]] = {
		class = "DRUID",
		level = 32,
	},
 [BS["Pounce"]] = {
		class = "DRUID",
		level = 36,
	},
 [BS["Frenzied Regeneration"]] = {
		class = "DRUID",
		level = 36,
	},
 [BS["Swiftmend"]] = {
		class = "DRUID",
		level = 40,
	},
 [BS["Dire Bear Form"]] = {
		class = "DRUID",
		level = 40,
	},
 [BS["Moonkin Form"]] = {
		class = "DRUID",
		level = 40,
	},
 [BS["Feline Grace"]] = {
		class = "DRUID",
		level = 40,
	},
 [BS["Hurricane"]] = {
		class = "DRUID",
		level = 40,
	},
 [BS["Innervate"]] = {
		class = "DRUID",
		level = 40,
	},
 [BS["Barkskin"]] = {
		class = "DRUID",
		level = 44,
	},
 [BS["Gift of the Wild"]] = {
		class = "DRUID",
		level = 60,
	},


	--== Hunter ==

 [BS["Auto Shot"]] = {
		class = "HUNTER",
		level = 1,
	},
 [BS["Raptor Strike"]] = {
		class = "HUNTER",
		level = 1,
	},
 [BS["Track Beasts"]] = {
		class = "HUNTER",
		level = 1,
	},
 [BS["Aspect of the Monkey"]] = {
		class = "HUNTER",
		level = 4,
	},
 [BS["Serpent Sting"]] = {
		class = "HUNTER",
		level = 4,
	},
 [BS["Arcane Shot"]] = {
		class = "HUNTER",
		level = 6,
	},
 [BS["Hunter's Mark"]] = {
		class = "HUNTER",
		level = 6,
	},
 [BS["Concussive Shot"]] = {
		class = "HUNTER",
		level = 8,
	},
 [BS["Aspect of the Hawk"]] = {
		class = "HUNTER",
		level = 10,
	},
 [BS["Revive Pet"]] = {
		class = "HUNTER",
		level = 10,
	},
 [BS["Dismiss Pet"]] = {
		class = "HUNTER",
		level = 10,
	},
 [BS["Feed Pet"]] = {
		class = "HUNTER",
		level = 10,
	},
 [BS["Call Pet"]] = {
		class = "HUNTER",
		level = 10,
	},
 [BS["Improved Aspect of the Hawk"]] = {
		class = "HUNTER",
		level = 10,
	},
 [BS["Tame Beast"]] = {
		class = "HUNTER",
		level = 10,
	},
 [BS["Wing Clip"]] = {
		class = "HUNTER",
		level = 12,
	},
 [BS["Distracting Shot"]] = {
		class = "HUNTER",
		level = 12,
	},
 [BS["Mend Pet"]] = {
		class = "HUNTER",
		level = 12,
	},
 [BS["Scare Beast"]] = {
		class = "HUNTER",
		level = 14,
	},
 [BS["Eagle Eye"]] = {
		class = "HUNTER",
		level = 14,
	},
 [BS["Eyes of the Beast"]] = {
		class = "HUNTER",
		level = 14,
	},
 [BS["Immolation Trap"]] = {
		class = "HUNTER",
		level = 16,
	},
 [BS["Mongoose Bite"]] = {
		class = "HUNTER",
		level = 16,
	},
 [BS["Multi-Shot"]] = {
		class = "HUNTER",
		level = 18,
	},
 [BS["Track Undead"]] = {
		class = "HUNTER",
		level = 18,
	},
 [BS["Aspect of the Viper"]] = {
		class = "HUNTER",
		level = 20,
	},
 [BS["Aimed Shot"]] = {
		class = "HUNTER",
		level = 20,
	},
 [BS["Aspect of the Cheetah"]] = {
		class = "HUNTER",
		level = 20,
	},
 [BS["Disengage"]] = {
		class = "HUNTER",
		level = 20,
	},
 [BS["Freezing Trap"]] = {
		class = "HUNTER",
		level = 20,
	},
 [BS["Scorpid Sting"]] = {
		class = "HUNTER",
		level = 22,
	},
 [BS["Track Hidden"]] = {
		class = "HUNTER",
		level = 24,
	},
 [BS["Beast Lore"]] = {
		class = "HUNTER",
		level = 24,
	},
 [BS["Rapid Fire"]] = {
		class = "HUNTER",
		level = 26,
	},
 [BS["Track Elementals"]] = {
		class = "HUNTER",
		level = 26,
	},
 [BS["Frost Trap"]] = {
		class = "HUNTER",
		level = 28,
	},
 [BS["Counterattack"]] = {
		class = "HUNTER",
		level = 30,
	},
 [BS["Aspect of the Beast"]] = {
		class = "HUNTER",
		level = 30,
	},
 [BS["Feign Death"]] = {
		class = "HUNTER",
		level = 30,
	},
 [BS["Spirit Bond"]] = {
		class = "HUNTER",
		level = 30,
	},
 [BS["Scatter Shot"]] = {
		class = "HUNTER",
		level = 30,
	},
 [BS["Track Demons"]] = {
		class = "HUNTER",
		level = 32,
	},
 [BS["Flare"]] = {
		class = "HUNTER",
		level = 32,
	},
 [BS["Explosive Trap"]] = {
		class = "HUNTER",
		level = 34,
	},
 [BS["Viper Sting"]] = {
		class = "HUNTER",
		level = 36,
	},
 [BS["Track Giants"]] = {
		class = "HUNTER",
		level = 40,
	},
 [BS["Trueshot Aura"]] = {
		class = "HUNTER",
		level = 40,
	},
 [BS["Volley"]] = {
		class = "HUNTER",
		level = 40,
	},
 [BS["Aspect of the Pack"]] = {
		class = "HUNTER",
		level = 40,
	},
 [BS["Wyvern Sting"]] = {
		class = "HUNTER",
		level = 40,
	},
 [BS["Expose Weakness"]] = {
		class = "HUNTER",
		level = 40,
	},
 [BS["Aspect of the Wild"]] = {
		class = "HUNTER",
		level = 46,
	},
 [BS["Silencing Shot"]] = {
		class = "HUNTER",
		level = 50,
	},
 [BS["Track Dragonkin"]] = {
		class = "HUNTER",
		level = 50,
	},
 [BS["The Beast Within"]] = {
		class = "HUNTER",
		level = 50,
	},

 [BS["Steady Shot"]] = {
		class = "HUNTER",
		level = 50,
	},
 [BS["Readiness"]] = {
		class = "HUNTER",
		level = 50,
	},
 [BS["Tranquilizing Shot"]] = {
		class = "HUNTER",
		level = 60,
	},
 [BS["Deterrence"]] = {
		class = "HUNTER",
		level = 60,
	},
 [BS["Explosive Shot"]] = {
		class = "HUNTER",
		level = 60,
	},

	--== Mage ==

 [BS["Arcane Intellect"]] = {
		class = "MAGE",
		level = 1,
	},
 [BS["Fireball"]] = {
		class = "MAGE",
		level = 1,
	},
 [BS["Frost Armor"]] = {
		class = "MAGE",
		level = 1,
	},
 [BS["Frostbolt"]] = {
		class = "MAGE",
		level = 4,
	},
 [BS["Conjure Water"]] = {
		class = "MAGE",
		level = 4,
	},
 [BS["Conjure Food"]] = {
		class = "MAGE",
		level = 6,
	},
 [BS["Fire Blast"]] = {
		class = "MAGE",
		level = 6,
	},
 [BS["Polymorph"]] = {
		class = "MAGE",
		level = 8,
	},
 [BS["Arcane Missiles"]] = {
		class = "MAGE",
		level = 8,
	},
 [BS["Frost Nova"]] = {
		class = "MAGE",
		level = 10,
	},
 [BS["Slow Fall"]] = {
		class = "MAGE",
		level = 12,
	},
 [BS["Dampen Magic"]] = {
		class = "MAGE",
		level = 12,
	},
 [BS["Arcane Explosion"]] = {
		class = "MAGE",
		level = 14,
	},
 [BS["Frostbite"]] = {
		class = "MAGE",
		level = 15,
	},
 [BS["Ignite"]] = {
		class = "MAGE",
		level = 15,
	},
 [BS["Detect Magic"]] = {
		class = "MAGE",
		level = 16,
	},
 [BS["Flamestrike"]] = {
		class = "MAGE",
		level = 16,
	},
 [BS["Remove Lesser Curse"]] = {
		class = "MAGE",
		level = 18,
	},
 [BS["Amplify Magic"]] = {
		class = "MAGE",
		level = 18,
	},
 [BS["Teleport: Ironforge"]] = {
		class = "MAGE",
		level = 20,
	},
 [BS["Teleport: Orgrimmar"]] = {
		class = "MAGE",
		level = 20,
	},
 [BS["Teleport: Stormwind"]] = {
		class = "MAGE",
		level = 20,
	},
 [BS["Teleport: Undercity"]] = {
		class = "MAGE",
		level = 20,
	},
 [BS["Blink"]] = {
		class = "MAGE",
		level = 20,
	},
 [BS["Blizzard"]] = {
		class = "MAGE",
		level = 20,
	},
 [BS["Cold Snap"]] = {
		class = "MAGE",
		level = 20,
	},
 [BS["Evocation"]] = {
		class = "MAGE",
		level = 20,
	},
 [BS["Fire Ward"]] = {
		class = "MAGE",
		level = 20,
	},
 [BS["Mana Shield"]] = {
		class = "MAGE",
		level = 20,
	},
 [BS["Pyroblast"]] = {
		class = "MAGE",
		level = 20,
	},
 [BS["Scorch"]] = {
		class = "MAGE",
		level = 22,
	},
 [BS["Frost Ward"]] = {
		class = "MAGE",
		level = 22,
	},
 [BS["Counterspell"]] = {
		class = "MAGE",
		level = 24,
	},
 [BS["Master of Elements"]] = {
		class = "MAGE",
		level = 25,
	},
 [BS["Improved Scorch"]] = {
		class = "MAGE",
		level = 25,
	},
 [BS["Cone of Cold"]] = {
		class = "MAGE",
		level = 26,
	},
 [BS["Ice Block"]] = {
		class = "MAGE",
		level = 30,
	},
 [BS["Ice Armor"]] = {
		class = "MAGE",
		level = 30,
	},
 [BS["Presence of Mind"]] = {
		class = "MAGE",
		level = 30,
	},
 [BS["Teleport: Darnassus"]] = {
		class = "MAGE",
		level = 30,
	},
 [BS["Teleport: Thunder Bluff"]] = {
		class = "MAGE",
		level = 30,
	},
 [BS["Blast Wave"]] = {
		class = "MAGE",
		level = 30,
	},
 [BS["Mage Armor"]] = {
		class = "MAGE",
		level = 34,
	},
 [BS["Winter's Chill"]] = {
		class = "MAGE",
		level = 35,
	},
 [BS["Combustion"]] = {
		class = "MAGE",
		level = 40,
	},
 [BS["Ice Barrier"]] = {
		class = "MAGE",
		level = 40,
	},
 [BS["Portal: Ironforge"]] = {
		class = "MAGE",
		level = 40,
	},
 [BS["Portal: Orgrimmar"]] = {
		class = "MAGE",
		level = 40,
	},
 [BS["Portal: Stormwind"]] = {
		class = "MAGE",
		level = 40,
	},
 [BS["Portal: Undercity"]] = {
		class = "MAGE",
		level = 40,
	},
 [BS["Portal: Thunder Bluff"]] = {
		class = "MAGE",
		level = 50,
	},
 [BS["Portal: Darnassus"]] = {
		class = "MAGE",
		level = 50,
	},
 [BS["Dragon's Breath"]] = {
		class = "MAGE",
		level = 50,
	},
 [BS["Arcane Brilliance"]] = {
		class = "MAGE",
		level = 56,
	},
 [BS["Polymorph: Pig"]] = {
		class = "MAGE",
		level = 60,
	},
 [BS["Polymorph: Turtle"]] = {
		class = "MAGE",
		level = 60,
	},


	--== Paladin ==

 [BS["Devotion Aura"]] = {
		class = "PALADIN",
		level = 1,
	},
 [BS["Holy Light"]] = {
		class = "PALADIN",
		level = 1,
	},
 [BS["Seal of Righteousness"]] = {
		class = "PALADIN",
		level = 1,
	},
 [BS["Blessing of Might"]] = {
		class = "PALADIN",
		level = 4,
	},
 [BS["Judgement of Light"]] = {
		class = "PALADIN",
		level = 4,
	},
 [BS["Seal of the Crusader"]] = {
		class = "PALADIN",
		level = 6,
	},
 [BS["Divine Protection"]] = {
		class = "PALADIN",
		level = 6,
	},
 [BS["Purify"]] = {
		class = "PALADIN",
		level = 8,
	},
 [BS["Hammer of Justice"]] = {
		class = "PALADIN",
		level = 8,
	},
 [BS["Lay on Hands"]] = {
		class = "PALADIN",
		level = 10,
	},

 [BS["Redemption"]] = {
		class = "PALADIN",
		level = 12,
	},
 [BS["Judgement of Wisdom"]] = {
		class = "PALADIN",
		level = 12,
	},
 [BS["Righteous Defense"]] = {
		class = "PALADIN",
		level = 14,
	},
 [BS["Blessing of Wisdom"]] = {
		class = "PALADIN",
		level = 14,
	},
 [BS["Retribution Aura"]] = {
		class = "PALADIN",
		level = 16,
	},
 [BS["Righteous Fury"]] = {
		class = "PALADIN",
		level = 16,
	},
 [BS["Spiritual Attunement"]] = {
		class = "PALADIN",
		level = 18,
	},
 [BS["Seal of Command"]] = {
		class = "PALADIN",
		level = 20,
	},
 [BS["Exorcism"]] = {
		class = "PALADIN",
		level = 20,
	},
 [BS["Flash of Light"]] = {
		class = "PALADIN",
		level = 20,
	},
 [BS["Blessing of Kings"]] = {
		class = "PALADIN",
		level = 20,
	},
 [BS["Vindication"]] = {
		class = "PALADIN",
		level = 20,
	},
 [BS["Sense Undead"]] = {
		class = "PALADIN",
		level = 20,
	},
 [BS["Consecration"]] = {
		class = "PALADIN",
		level = 20,
	},
 [BS["Concentration Aura"]] = {
		class = "PALADIN",
		level = 22,
	},
 [BS["Seal of Justice"]] = {
		class = "PALADIN",
		level = 22,
	},
 [BS["Illumination"]] = {
		class = "PALADIN",
		level = 25,
	},
 [BS["Eye for an Eye"]] = {
		class = "PALADIN",
		level = 25,
	},
 [BS["Shadow Resistance Aura"]] = {
		class = "PALADIN",
		level = 28,
	},
 [BS["Judgement of Justice"]] = {
		class = "PALADIN",
		level = 28,
	},
 [BS["Divine Favor"]] = {
		class = "PALADIN",
		level = 30,
	},
 [BS["Divine Intervention"]] = {
		class = "PALADIN",
		level = 30,
	},
 [BS["Reckoning"]] = {
		class = "PALADIN",
		level = 30,
	},
 [BS["Sanctity Aura"]] = {
		class = "PALADIN",
		level = 30,
	},
 [BS["Seal of Light"]] = {
		class = "PALADIN",
		level = 30,
	},
 [BS["Summon Warhorse"]] = {
		class = "PALADIN",
		level = 30,
	},
 [BS["Blessing of Sanctuary"]] = {
		class = "PALADIN",
		level = 30,
	},
 [BS["Frost Resistance Aura"]] = {
		class = "PALADIN",
		level = 32,
	},
 [BS["Divine Shield"]] = {
		class = "PALADIN",
		level = 36,
	},
 [BS["Vengeance"]] = {
		class = "PALADIN",
		level = 35,
	},
 [BS["Fire Resistance Aura"]] = {
		class = "PALADIN",
		level = 36,
	},
 [BS["Seal of Wisdom"]] = {
		class = "PALADIN",
		level = 38,
	},
 [BS["Blessing of Light"]] = {
		class = "PALADIN",
		level = 40,
	},
 [BS["Holy Shock"]] = {
		class = "PALADIN",
		level = 40,
	},
 [BS["Repentance"]] = {
		class = "PALADIN",
		level = 40,
	},
 [BS["Holy Shield"]] = {
		class = "PALADIN",
		level = 40,
	},
 [BS["Cleanse"]] = {
		class = "PALADIN",
		level = 42,
	},
 [BS["Hammer of Wrath"]] = {
		class = "PALADIN",
		level = 44,
	},
 [BS["Redoubt"]] = {
		class = "PALADIN",
		level = 45,
	},
 [BS["Holy Wrath"]] = {
		class = "PALADIN",
		level = 50,
	},
 [BS["Divine Illumination"]] = {
		class = "PALADIN",
		level = 50,
	},
 [BS["Avenger's Shield"]] = {
		class = "PALADIN",
		level = 50,
	},
 [BS["Crusader Strike"]] = {
		class = "PALADIN",
		level = 50,
	},
 [BS["Greater Blessing of Might"]] = {
		class = "PALADIN",
		level = 52,
	},
 [BS["Greater Blessing of Wisdom"]] = {
		class = "PALADIN",
		level = 54,
	},
 [BS["Greater Blessing of Sanctuary"]] = {
		class = "PALADIN",
		level = 60,
	},
 [BS["Greater Blessing of Kings"]] = {
		class = "PALADIN",
		level = 60,
	},
 [BS["Greater Blessing of Might"]] = {
		class = "PALADIN",
		level = 60,
	},
 [BS["Summon Charger"]] = {
		class = "PALADIN",
		level = 60,
	},

	--== Priest ==

 [BS["Power Word: Fortitude"]] = {
		class = "PRIEST",
		level = 1,
	},
 [BS["Lesser Heal"]] = {
		class = "PRIEST",
		level = 1,
	},
 [BS["Smite"]] = {
		class = "PRIEST",
		level = 1,
	},
 [BS["Shadow Word: Pain"]] = {
		class = "PRIEST",
		level = 4,
	},
 [BS["Power Word: Shield"]] = {
		class = "PRIEST",
		level = 6,
	},
 [BS["Fade"]] = {
		class = "PRIEST",
		level = 8,
	},
 [BS["Renew"]] = {
		class = "PRIEST",
		level = 8,
	},
 [BS["Mind Blast"]] = {
		class = "PRIEST",
		level = 10,
	},
 [BS["Resurrection"]] = {
		class = "PRIEST",
		level = 10,
	},
 [BS["Spirit Tap"]] = {
		class = "PRIEST",
		level = 10,
	},
 [BS["Touch of Weakness"]] = {
		class = "PRIEST",
		level = 10,
	},
 [BS["Inner Fire"]] = {
		class = "PRIEST",
		level = 12,
	},
 [BS["Psychic Scream"]] = {
		class = "PRIEST",
		level = 14,
	},
 [BS["Heal"]] = {
		class = "PRIEST",
		level = 16,
	},
 [BS["Dispel Magic"]] = {
		class = "PRIEST",
		level = 18,
	},
 [BS["Desperate Prayer"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Flash Heal"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Shackle Undead"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Holy Fire"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Mind Flay"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Mind Soothe"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Inner Focus"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Holy Nova"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Blessed Recovery"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Inspiration"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Devouring Plague"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Fear Ward"]] = {
		class = "PRIEST",
		level = 20,
	},
 [BS["Mind Vision"]] = {
		class = "PRIEST",
		level = 22,
	},
 [BS["Mana Burn"]] = {
		class = "PRIEST",
		level = 24,
	},
 [BS["Shadow Vulnerability"]] = {
		class = "PRIEST",
		level = 25,
	},
 [BS["Mind Control"]] = {
		class = "PRIEST",
		level = 30,
	},
 [BS["Prayer of Healing"]] = {
		class = "PRIEST",
		level = 30,
	},
 [BS["Shadow Protection"]] = {
		class = "PRIEST",
		level = 30,
	},
 [BS["Silence"]] = {
		class = "PRIEST",
		level = 30,
	},
 [BS["Spirit of Redemption"]] = {
		class = "PRIEST",
		level = 30,
	},
 [BS["Vampiric Embrace"]] = {
		class = "PRIEST",
		level = 30,
	},
 [BS["Divine Spirit"]] = {
		class = "PRIEST",
		level = 30,
	},
 [BS["Abolish Disease"]] = {
		class = "PRIEST",
		level = 32,
	},
 [BS["Levitate"]] = {
		class = "PRIEST",
		level = 34,
	},
 [BS["Greater Heal"]] = {
		class = "PRIEST",
		level = 40,
	},
 [BS["Shadowform"]] = {
		class = "PRIEST",
		level = 40,
	},
 [BS["Power Infusion"]] = {
		class = "PRIEST",
		level = 40,
	},
 [BS["Lightwell"]] = {
		class = "PRIEST",
		level = 40,
	},
 [BS["Prayer of Fortitude"]] = {
		class = "PRIEST",
		level = 48,
	},
 [BS["Circle of Healing"]] = {
		class = "PRIEST",
		level = 50,
	},
 [BS["Pain Suppression"]] = {
		class = "PRIEST",
		level = 50,
	},
 [BS["Vampiric Touch"]] = {
		class = "PRIEST",
		level = 50,
	},
 [BS["Prayer of Shadow Protection"]] = {
		class = "PRIEST",
		level = 56,
	},
 [BS["Prayer of Spirit"]] = {
		class = "PRIEST",
		level = 60,
	},


	--== Rogue ==

 [BS["Stealth"]] = {
		class = "ROGUE",
		level = 1,
	},
 [BS["Sinister Strike"]] = {
		class = "ROGUE",
		level = 1,
	},
 [BS["Eviscerate"]] = {
		class = "ROGUE",
		level = 1,
	},
 [BS["Backstab"]] = {
		class = "ROGUE",
		level = 4,
	},
 [BS["Pick Pocket"]] = {
		class = "ROGUE",
		level = 4,
	},
 [BS["Gouge"]] = {
		class = "ROGUE",
		level = 6,
	},
 [BS["Evasion"]] = {
		class = "ROGUE",
		level = 8,
	},
 [BS["Remorseless"]] = {
		class = "ROGUE",
		level = 10,
	},
 [BS["Sap"]] = {
		class = "ROGUE",
		level = 10,
	},
 [BS["Slice and Dice"]] = {
		class = "ROGUE",
		level = 10,
	},
 [BS["Master of Deception"]] = {
		class = "ROGUE",
		level = 10,
	},
 [BS["Sprint"]] = {
		class = "ROGUE",
		level = 10,
	},
 [BS["Relentless Strikes"]] = {
		class = "ROGUE",
		level = 10,
	},
 [BS["Remorseless Attacks"]] = {
		class = "ROGUE",
		level = 10,
	},
 [BS["Kick"]] = {
		class = "ROGUE",
		level = 12,
	},
 [BS["Expose Armor"]] = {
		class = "ROGUE",
		level = 14,
	},
 [BS["Garrote"]] = {
		class = "ROGUE",
		level = 14,
	},
 [BS["Feint"]] = {
		class = "ROGUE",
		level = 16,
	},
 [BS["Pick Lock"]] = {
		class = "ROGUE",
		level = 16,
	},
 [BS["Ambush"]] = {
		class = "ROGUE",
		level = 18,
	},
 [BS["Riposte"]] = {
		class = "ROGUE",
		level = 20,
	},
 [BS["Rupture"]] = {
		class = "ROGUE",
		level = 20,
	},
 [BS["Crippling Poison"]] = {
		class = "ROGUE",
		level = 20,
	},
 [BS["Ghostly Strike"]] = {
		class = "ROGUE",
		level = 20,
	},
 [BS["Instant Poison"]] = {
		class = "ROGUE",
		level = 20,
	},
 [BS["Vanish"]] = {
		class = "ROGUE",
		level = 22,
	},
 [BS["Distract"]] = {
		class = "ROGUE",
		level = 22,
	},
 [BS["Detect Traps"]] = {
		class = "ROGUE",
		level = 24,
	},
 [BS["Mind-numbing Poison"]] = {
		class = "ROGUE",
		level = 24,
	},
 [BS["Cheap Shot"]] = {
		class = "ROGUE",
		level = 26,
	},
 [BS["Instant Poison II"]] = {
		class = "ROGUE",
		level = 28,
	},
 [BS["Cold Blood"]] = {
		class = "ROGUE",
		level = 30,
	},
 [BS["Preparation"]] = {
		class = "ROGUE",
		level = 30,
	},
 [BS["Disarm Trap"]] = {
		class = "ROGUE",
		level = 30,
	},
 [BS["Blade Flurry"]] = {
		class = "ROGUE",
		level = 30,
	},
 [BS["Deadly Poison"]] = {
		class = "ROGUE",
		level = 30,
	},
 [BS["Kidney Shot"]] = {
		class = "ROGUE",
		level = 30,
	},
 [BS["Hemorrhage"]] = {
		class = "ROGUE",
		level = 30,
	},
 [BS["Wound Poison"]] = {
		class = "ROGUE",
		level = 32,
	},
 [BS["Blind"]] = {
		class = "ROGUE",
		level = 34,
	},
 [BS["Blinding Powder"]] = {
		class = "ROGUE",
		level = 34,
	},
 [BS["Instant Poison III"]] = {
		class = "ROGUE",
		level = 36,
	},
 [BS["Deadly Poison II"]] = {
		class = "ROGUE",
		level = 38,
	},
 [BS["Wound Poison II"]] = {
		class = "ROGUE",
		level = 40,
	},
 [BS["Premeditation"]] = {
		class = "ROGUE",
		level = 40,
	},
 [BS["Adrenaline Rush"]] = {
		class = "ROGUE",
		level = 40,
	},
 [BS["Instant Poison IV"]] = {
		class = "ROGUE",
		level = 44,
	},
 [BS["Deadly Poison III"]] = {
		class = "ROGUE",
		level = 46,
	},
 [BS["Wound Poison III"]] = {
		class = "ROGUE",
		level = 48,
	},
 [BS["Instant Poison V"]] = {
		class = "ROGUE",
		level = 52,
	},
 [BS["Deadly Poison IV"]] = {
		class = "ROGUE",
		level = 54,
	},
 [BS["Wound Poison IV"]] = {
		class = "ROGUE",
		level = 56,
	},
 [BS["Deadly Poison V"]] = {
		class = "ROGUE",
		level = 60,
	},
 [BS["Instant Poison VI"]] = {
		class = "ROGUE",
		level = 60,
	},

	--== Shaman ==


 [BS["Rockbiter Weapon"]] = {
		class = "SHAMAN",
		level = 1,
	},
 [BS["Healing Wave"]] = {
		class = "SHAMAN",
		level = 1,
	},
 [BS["Lightning Bolt"]] = {
		class = "SHAMAN",
		level = 1,
	},
 [BS["Stoneskin Totem"]] = {
		class = "SHAMAN",
		level = 4,
	},
 [BS["Earth Shock"]] = {
		class = "SHAMAN",
		level = 4,
	},
 [BS["Earthbind Totem"]] = {
		class = "SHAMAN",
		level = 6,
	},
 [BS["Stoneclaw Totem"]] = {
		class = "SHAMAN",
		level = 8,
	},
 [BS["Lightning Shield"]] = {
		class = "SHAMAN",
		level = 8,
	},
 [BS["Flame Shock"]] = {
		class = "SHAMAN",
		level = 10,
	},
 [BS["Flametongue Weapon"]] = {
		class = "SHAMAN",
		level = 10,
	},
 [BS["Strength of Earth Totem"]] = {
		class = "SHAMAN",
		level = 10,
	},
 [BS["Searing Totem"]] = {
		class = "SHAMAN",
		level = 10,
	},
 [BS["Ancestral Spirit"]] = {
		class = "SHAMAN",
		level = 12,
	},
 [BS["Fire Nova Totem"]] = {
		class = "SHAMAN",
		level = 12,
	},
 [BS["Purge"]] = {
		class = "SHAMAN",
		level = 12,
	},
 [BS["Ancestral Fortitude"]] = {
		class = "SHAMAN",
		level = 15,
	},
 [BS["Tremor Totem"]] = {
		class = "SHAMAN",
		level = 18,
	},
 [BS["Frost Shock"]] = {
		class = "SHAMAN",
		level = 20,
	},
 [BS["Frostbrand Weapon"]] = {
		class = "SHAMAN",
		level = 20,
	},
 [BS["Ghost Wolf"]] = {
		class = "SHAMAN",
		level = 20,
	},
 [BS["Elemental Focus"]] = {
		class = "SHAMAN",
		level = 20,
	},
 [BS["Lesser Healing Wave"]] = {
		class = "SHAMAN",
		level = 20,
	},
 [BS["Healing Stream Totem"]] = {
		class = "SHAMAN",
		level = 20,
	},
 [BS["Water Shield"]] = {
		class = "SHAMAN",
		level = 20,
	},
 [BS["Poison Cleansing Totem"]] = {
		class = "SHAMAN",
		level = 22,
	},
 [BS["Water Breathing"]] = {
		class = "SHAMAN",
		level = 22,
	},
 [BS["Frost Resistance Totem"]] = {
		class = "SHAMAN",
		level = 24,
	},
 [BS["Far Sight"]] = {
		class = "SHAMAN",
		level = 26,
	},
 [BS["Magma Totem"]] = {
		class = "SHAMAN",
		level = 26,
	},
 [BS["Mana Spring Totem"]] = {
		class = "SHAMAN",
		level = 26,
	},
 [BS["Fire Resistance Totem"]] = {
		class = "SHAMAN",
		level = 28,
	},
 [BS["Flametongue Totem"]] = {
		class = "SHAMAN",
		level = 28,
	},
 [BS["Water Walking"]] = {
		class = "SHAMAN",
		level = 28,
	},
 [BS["Astral Recall"]] = {
		class = "SHAMAN",
		level = 30,
	},
 [BS["Grounding Totem"]] = {
		class = "SHAMAN",
		level = 30,
	},
 [BS["Nature Resistance Totem"]] = {
		class = "SHAMAN",
		level = 30,
	},
 [BS["Nature's Swiftness"]] = {
		class = "SHAMAN",
		level = 30,
	},
 [BS["Reincarnation"]] = {
		class = "SHAMAN",
		level = 30,
	},
 [BS["Healing Way"]] = {
		class = "SHAMAN",
		level = 30,
	},
 [BS["Windfury Weapon"]] = {
		class = "SHAMAN",
		level = 30,
	},
 [BS["Chain Lightning"]] = {
		class = "SHAMAN",
		level = 32,
	},
 [BS["Windfury Totem"]] = {
		class = "SHAMAN",
		level = 32,
	},
 [BS["Sentry Totem"]] = {
		class = "SHAMAN",
		level = 34,
	},
 [BS["Unleashed Rage"]] = {
		class = "SHAMAN",
		level = 35,
	},
 [BS["Windwall Totem"]] = {
		class = "SHAMAN",
		level = 36,
	},
  [BS["Chain Heal"]] = {
		class = "SHAMAN",
		level = 40,
	},
 [BS["Elemental Mastery"]] = {
		class = "SHAMAN",
		level = 40,
	},
 [BS["Mana Tide Totem"]] = {
		class = "SHAMAN",
		level = 40,
	},
 [BS["Stormstrike"]] = {
		class = "SHAMAN",
		level = 40,
	},
 [BS["Grace of Air Totem"]] = {
		class = "SHAMAN",
		level = 42,
	},
 [BS["Totem of Wrath"]] = {
		class = "SHAMAN",
		level = 50,
	},
 [BS["Shamanistic Rage"]] = {
		class = "SHAMAN",
		level = 50,
	},
 [BS["Earth Shield"]] = {
		class = "SHAMAN",
		level = 50,
	},
 [BS["Tranquil Air Totem"]] = {
		class = "SHAMAN",
		level = 50,
	},

	--== Warlock ==

 [BS["Blood Pact"]] = {
		class = "WARLOCK",
		level = 1,
	},
 [BS["Immolate"]] = {
		class = "WARLOCK",
		level = 1,
	},
 [BS["Summon Imp"]] = {
		class = "WARLOCK",
		level = 1,
	},
 [BS["Demon Skin"]] = {
		class = "WARLOCK",
		level = 1,
	},
 [BS["Shadow Bolt"]] = {
		class = "WARLOCK",
		level = 1,
	},
 [BS["Corruption"]] = {
		class = "WARLOCK",
		level = 4,
	},
 [BS["Curse of Weakness"]] = {
		class = "WARLOCK",
		level = 4,
	},
 [BS["Life Tap"]] = {
		class = "WARLOCK",
		level = 6,
	},
 [BS["Curse of Agony"]] = {
		class = "WARLOCK",
		level = 8,
	},
 [BS["Fear"]] = {
		class = "WARLOCK",
		level = 8,
	},
 [BS["Create Healthstone"]] = {
		class = "WARLOCK",
		level = 10,
	},
 [BS["Summon Voidwalker"]] = {
		class = "WARLOCK",
		level = 10,
	},
 [BS["Drain Soul"]] = {
		class = "WARLOCK",
		level = 10,
	},
 [BS["Shadow Vulnerability"]] = {
		class = "WARLOCK",
		level = 10,
	},
 [BS["Health Funnel"]] = {
		class = "WARLOCK",
		level = 12,
	},
 [BS["Curse of Recklessness"]] = {
		class = "WARLOCK",
		level = 14,
	},
 [BS["Drain Life"]] = {
		class = "WARLOCK",
		level = 14,
	},
 [BS["Unending Breath"]] = {
		class = "WARLOCK",
		level = 16,
	},
 [BS["Create Soulstone"]] = {
		class = "WARLOCK",
		level = 18,
	},
 [BS["Searing Pain"]] = {
		class = "WARLOCK",
		level = 18,
	},
 [BS["Demon Armor"]] = {
		class = "WARLOCK",
		level = 20,
	},
 [BS["Amplify Curse"]] = {
		class = "WARLOCK",
		level = 20,
	},
 [BS["Fel Domination"]] = {
		class = "WARLOCK",
		level = 20,
	},
 [BS["Rain of Fire"]] = {
		class = "WARLOCK",
		level = 20,
	},
 [BS["Ritual of Summoning"]] = {
		class = "WARLOCK",
		level = 20,
	},
 [BS["Shadowburn"]] = {
		class = "WARLOCK",
		level = 20,
	},
 [BS["Summon Succubus"]] = {
		class = "WARLOCK",
		level = 20,
	},
 [BS["Soul Link"]] = {
		class = "WARLOCK",
		level = 20,
	},
 [BS["Eye of Kilrogg"]] = {
		class = "WARLOCK",
		level = 22,
	},
 [BS["Sense Demons"]] = {
		class = "WARLOCK",
		level = 24,
	},
 [BS["Drain Mana"]] = {
		class = "WARLOCK",
		level = 24,
	},
 [BS["Shadow Trance"]] = {
		class = "WARLOCK",
		level = 25,
	},
 [BS["Detect Invisibility"]] = {
		class = "WARLOCK",
		level = 26,
	},
 [BS["Curse of Tongues"]] = {
		class = "WARLOCK",
		level = 26,
	},
 [BS["Banish"]] = {
		class = "WARLOCK",
		level = 28,
	},
 [BS["Create Firestone"]] = {
		class = "WARLOCK",
		level = 28,
	},
 [BS["Curse of Exhaustion"]] = {
		class = "WARLOCK",
		level = 30,
	},
 [BS["Demonic Sacrifice"]] = {
		class = "WARLOCK",
		level = 30,
	},
 [BS["Enslave Demon"]] = {
		class = "WARLOCK",
		level = 30,
	},
 [BS["Summon Felsteed"]] = {
		class = "WARLOCK",
		level = 30,
	},
 [BS["Hellfire"]] = {
		class = "WARLOCK",
		level = 30,
	},
 [BS["Siphon Life"]] = {
		class = "WARLOCK",
		level = 30,
	},
 [BS["Summon Felhunter"]] = {
		class = "WARLOCK",
		level = 30,
	},
 [BS["Backlash"]] = {
		class = "WARLOCK",
		level = 30,
	},
 [BS["Curse of the Elements"]] = {
		class = "WARLOCK",
		level = 32,
	},
 [BS["Shadow Ward"]] = {
		class = "WARLOCK",
		level = 32,
	},
 [BS["Master Demonologist"]] = {
		class = "WARLOCK",
		level = 35,
	},
 [BS["Create Spellstone"]] = {
		class = "WARLOCK",
		level = 36,
	},
 [BS["Howl of Terror"]] = {
		class = "WARLOCK",
		level = 40,
	},
 [BS["Pyroclasm"]] = {
		class = "WARLOCK",
		level = 40,
	},
 [BS["Conflagrate"]] = {
		class = "WARLOCK",
		level = 40,
	},
 [BS["Dark Pact"]] = {
		class = "WARLOCK",
		level = 40,
	},
 [BS["Curse of Shadow"]] = {
		class = "WARLOCK",
		level = 44,
	},
 [BS["Soul Fire"]] = {
		class = "WARLOCK",
		level = 48,
	},
 [BS["Inferno"]] = {
		class = "WARLOCK",
		level = 50,
	},
 [BS["Summon Felguard"]] = {
		class = "WARLOCK",
		level = 50,
	},
 [BS["Unstable Affliction"]] = {
		class = "WARLOCK",
		level = 50,
	},
 [BS["Shadowfury"]] = {
		class = "WARLOCK",
		level = 50,
	},
 [BS["Ritual of Doom"]] = {
		class = "WARLOCK",
		level = 60,
	},
 [BS["Curse of Doom"]] = {
		class = "WARLOCK",
		level = 60,
	},
 [BS["Summon Dreadsteed"]] = {
		class = "WARLOCK",
		level = 60,
	},


	--== Warrior ==

 [BS["Battle Shout"]] = {
		class = "WARRIOR",
		level = 1,
	},
 [BS["Heroic Strike"]] = {
		class = "WARRIOR",
		level = 1,
	},
 [BS["Battle Stance"]] = {
		class = "WARRIOR",
		level = 1,
	},
 [BS["Rend"]] = {
		class = "WARRIOR",
		level = 4,
	},
 [BS["Charge"]] = {
		class = "WARRIOR",
		level = 4,
	},
 [BS["Thunder Clap"]] = {
		class = "WARRIOR",
		level = 6,
	},
 [BS["Hamstring"]] = {
		class = "WARRIOR",
		level = 8,
	},
 [BS["Sunder Armor"]] = {
		class = "WARRIOR",
		level = 10,
	},
 [BS["Bloodrage"]] = {
		class = "WARRIOR",
		level = 10,
	},
 [BS["Taunt"]] = {
		class = "WARRIOR",
		level = 10,
	},
 [BS["Defensive Stance"]] = {
		class = "WARRIOR",
		level = 10,
	},
 [BS["Shield Bash"]] = {
		class = "WARRIOR",
		level = 12,
	},
 [BS["Overpower"]] = {
		class = "WARRIOR",
		level = 12,
	},
 [BS["Demoralizing Shout"]] = {
		class = "WARRIOR",
		level = 14,
	},
 [BS["Revenge"]] = {
		class = "WARRIOR",
		level = 14,
	},
 [BS["Shield Specialization"]] = {
		class = "WARRIOR",
		level = 10,
	},
 [BS["Unbridled Wrath"]] = {
		class = "WARRIOR",
		level = 15,
	},
 [BS["Mocking Blow"]] = {
		class = "WARRIOR",
		level = 16,
	},
 [BS["Shield Block"]] = {
		class = "WARRIOR",
		level = 16,
	},
 [BS["Disarm"]] = {
		class = "WARRIOR",
		level = 18,
	},
 [BS["Piercing Howl"]] = {
		class = "WARRIOR",
		level = 20,
	},
 [BS["Retaliation"]] = {
		class = "WARRIOR",
		level = 20,
	},
 [BS["Blood Craze"]] = {
		class = "WARRIOR",
		level = 20,
	},
 [BS["Cleave"]] = {
		class = "WARRIOR",
		level = 20,
	},
 [BS["Last Stand"]] = {
		class = "WARRIOR",
		level = 20,
	},
 [BS["Deep Wound"]] = {
		class = "WARRIOR",
		level = 20,
	},
 [BS["Intimidating Shout"]] = {
		class = "WARRIOR",
		level = 22,
	},
 [BS["Execute"]] = {
		class = "WARRIOR",
		level = 24,
	},
 [BS["Challenging Shout"]] = {
		class = "WARRIOR",
		level = 26,
	},
 [BS["Shield Wall"]] = {
		class = "WARRIOR",
		level = 28,
	},
 [BS["Concussion Blow"]] = {
		class = "WARRIOR",
		level = 30,
	},
 [BS["Death Wish"]] = {
		class = "WARRIOR",
		level = 30,
	},
 [BS["Intercept"]] = {
		class = "WARRIOR",
		level = 30,
	},
 [BS["Slam"]] = {
		class = "WARRIOR",
		level = 30,
	},
 [BS["Sweeping Strikes"]] = {
		class = "WARRIOR",
		level = 30,
	},
 [BS["Berserker Stance"]] = {
		class = "WARRIOR",
		level = 30,
	},
 [BS["Berserker Rage"]] = {
		class = "WARRIOR",
		level = 32,
	},
 [BS["Whirlwind"]] = {
		class = "WARRIOR",
		level = 36,
	},
 [BS["Pummel"]] = {
		class = "WARRIOR",
		level = 38,
	},
 [BS["Shield Slam"]] = {
		class = "WARRIOR",
		level = 40,
	},
 [BS["Mortal Strike"]] = {
		class = "WARRIOR",
		level = 40,
	},
 [BS["Bloodthirst"]] = {
		class = "WARRIOR",
		level = 40,
	},
 [BS["Recklessness"]] = {
		class = "WARRIOR",
		level = 50,
	},

}
