local SM = LibStub:GetLibrary("LibSharedMedia-3.0")
local Astrolabe = AceLibrary("Astrolabe-0.2")
--Astrolabe3 = LibStub("Astrolabe-0.3")
local AceLocale = LibStub("AceLocale-3.0")
local L = AceLocale:GetLocale("Spy")
local ACD3 = LibStub("AceConfigDialog-3.0")
local AceCore = LibStub("AceCore-3.0")
local B = LibStub("LibBabble-Spell-3.0")
local BS = B:GetLookupTable()
local fonts = SM:List("font")

local LDB = LibStub("LibDataBroker-1.1", true)
local ldbIcon = LibStub("LibDBIcon-1.0", true)

local strsplit, strtrim = AceCore.strsplit, AceCore.strtrim
local format, strfind, strsub, find = string.format, string.find, string.sub, string.find

Spy = LibStub("AceAddon-3.0"):NewAddon("Spy", "AceConsole-3.0", "AceEvent-3.0", "AceComm-3.0", "AceTimer-3.0")
Spy.uc = LibStub:GetLibrary("UnitCasting-1.1")
Spy.parser = ParserLib:GetInstance('1.1')
Spy.Version = "3.8.6"
Spy.DatabaseVersion = "1.1"
Spy.Signature = "[Spy]"
Spy.MaximumPlayerLevel = 60
Spy.MapNoteLimit = 20
Spy.MapProximityThreshold = 0.02
Spy.CurrentMapNote = 1
Spy.ZoneID = {}
Spy.KOSGuild = {}
Spy.CurrentList = {}
Spy.NearbyList = {}
Spy.LastHourList = {}
Spy.ActiveList = {}
Spy.InactiveList = {}
Spy.PlayerCommList = {}
Spy.ListAmountDisplayed = 0
Spy.ButtonName = {}
Spy.EnabledInZone = false
Spy.InInstance = false
Spy.AlertType = nil
Spy.UpgradeMessageSent = false
Spy.initTimer = ""
Spy.Skull = -1

-- Localizations for xml
L_STATS = "Spy " .. L["Statistics"]
L_LIST = L["List"]
L_TIME = L["Time"]
L_FILTER = FILTER .. ":"
L_SHOWONLY = L["Show Only"] .. ":"

Spy.options = {
	name = L["Spy"],
	type = "group",
	args = {
		About = {
			name = L["About"],
			desc = L["About"],
			type = "group",
			order = 1,
			args = {
				intro1 = {
					name = L["SpyDescription1"],
					type = "description",
					order = 1,
					fontSize = "medium",
				},
				intro2 = {
					name = L["SpyDescription2"],
					type = "description",
					order = 2,
					fontSize = "medium",
				},
				intro3 = {
					name = L["SpyDescription3"],
					type = "description",
					order = 3,
					fontSize = "medium",
				},
			},
		},
		General = {
			name = L["GeneralSettings"],
			desc = L["GeneralSettings"],
			type = "group",
			order = 1,
			args = {
				intro = {
					name = L["GeneralSettingsDescription"],
					type = "description",
					order = 1,
					fontSize = "medium",
				},
				Enabled = {
					name = L["EnableSpy"],
					desc = L["EnableSpyDescription"],
					type = "toggle",
					order = 2,
					width = "full",
					get = function(info)
						return Spy.db.profile.Enabled
					end,
					set = function(info, value)
						Spy:EnableSpy(value, true)
					end,
				},
				EnabledInBattlegrounds = {
					name = L["EnabledInBattlegrounds"],
					desc = L["EnabledInBattlegroundsDescription"],
					type = "toggle",
					order = 2,
					width = "full",
					get = function(info)
						return Spy.db.profile.EnabledInBattlegrounds
					end,
					set = function(info, value)
						Spy.db.profile.EnabledInBattlegrounds = value
						Spy:ZoneChangedEvent()
					end,
				},
				DisableWhenPVPUnflagged = {
					name = L["DisableWhenPVPUnflagged"],
					desc = L["DisableWhenPVPUnflaggedDescription"],
					type = "toggle",
					order = 5,
					width = "full",
					get = function(info)
						return Spy.db.profile.DisableWhenPVPUnflagged
					end,
					set = function(info, value)
						Spy.db.profile.DisableWhenPVPUnflagged = value
						Spy:ZoneChangedEvent()
					end,
				},
				DisabledInZones = {
					name = L["DisabledInZones"],
					desc = L["DisabledInZonesDescription"],
					type = "multiselect",
					order = 6,
					get = function(info, key)
						return Spy.db.profile.FilteredZones[key]
					end,
					set = function(info, key, value)
						Spy.db.profile.FilteredZones[key] = value
					end,
					values = {
						["Booty Bay"] = L["Booty Bay"],
						["Everlook"] = L["Everlook"],
						["Gadgetzan"] = L["Gadgetzan"],
						["Ratchet"] = L["Ratchet"],
					},
				},
				ShowOnDetection = {
					name = L["ShowOnDetection"],
					desc = L["ShowOnDetectionDescription"],
					type = "toggle",
					order = 7,
					width = "full",
					get = function(info)
						return Spy.db.profile.ShowOnDetection
					end,
					set = function(info, value)
						Spy.db.profile.ShowOnDetection = value
					end,
				},
				HideSpy = {
					name = L["HideSpy"],
					desc = L["HideSpyDescription"],
					type = "toggle",
					order = 8,
					width = "full",
					get = function(info)
						return Spy.db.profile.HideSpy
					end,
					set = function(info, value)
						Spy.db.profile.HideSpy = value
						if Spy.db.profile.HideSpy and Spy:GetNearbyListSize() == 0 then
							Spy.MainWindow:Hide()
						end
					end,
				},
				ShowKoSButton = {
					name = L["ShowKoSButton"],
					desc = L["ShowKoSButtonDescription"],
					type = "toggle",
					order = 9,
					width = "full",
					get = function(info)
						return Spy.db.profile.ShowKoSButton
					end,
					set = function(info, value)
						Spy.db.profile.ShowKoSButton = value
					end,
				},
			},
		},
		DisplayOptions = {
			name = L["DisplayOptions"],
			desc = L["DisplayOptions"],
			type = "group",
			order = 2,
			args = {
				intro = {
					name = L["DisplayOptionsDescription"],
					type = "description",
					order = 1,
					fontSize = "medium",
				},
				ShowNearbyList = {
					name = L["ShowNearbyList"],
					desc = L["ShowNearbyListDescription"],
					type = "toggle",
					order = 2,
					width = "full",
					get = function(info)
						return Spy.db.profile.ShowNearbyList
					end,
					set = function(info, value)
						Spy.db.profile.ShowNearbyList = value
					end,
				},
				PrioritiseKoS = {
					name = L["PrioritiseKoS"],
					desc = L["PrioritiseKoSDescription"],
					type = "toggle",
					order = 3,
					width = "full",
					get = function(info)
						return Spy.db.profile.PrioritiseKoS
					end,
					set = function(info, value)
						Spy.db.profile.PrioritiseKoS = value
					end,
				},
				Alpha = {
					name = L["Alpha"],
					desc = L["AlphaDescription"],
					type = "range",
					order = 4,
					width = "normal",
					min = 0, max = 1, step = 0.01,
					isPercent = true,
					get = function()
						return Spy.db.profile.MainWindow.Alpha
					end,
					set = function(info, value)
						Spy.db.profile.MainWindow.Alpha = value
						Spy:UpdateMainWindow()

					end,
				},
				AlphaBG = {
					name = L["AlphaBG"],
					desc = L["AlphaBGDescription"],
					type = "range",
					order = 5,
					width = "normal",
					min = 0, max = 1, step = 0.01,
					isPercent = true,
					get = function()
						return Spy.db.profile.MainWindow.AlphaBG
					end,
					set = function(info, value)
						Spy.db.profile.MainWindow.AlphaBG = value
						Spy:UpdateMainWindow()
					end,
				},
				Lock = {
					name = L["LockSpy"],
					desc = L["LockSpyDescription"],
					type = "toggle",
					order = 6,
					width = "normal",
					get = function(info)
						return Spy.db.profile.Locked
					end,
					set = function(info, value)
						Spy.db.profile.Locked = value
						Spy:LockWindows(value)
						Spy:RefreshCurrentList()
					end,
				},
				ClampToScreen = {
					name = L["ClampToScreen"],
					desc = L["ClampToScreenDescription"],
					type = "toggle",
					order = 7,
					width = "normal",
					get = function(info)
						return Spy.db.profile.ClampToScreen
					end,
					set = function(info, value)
						Spy.db.profile.ClampToScreen = value
						Spy:ClampToScreen(value)
					end,
					hidden = true, -- not working in Vanilla
				},
				InvertSpy = {
					name = L["InvertSpy"],
					desc = L["InvertSpyDescription"],
					type = "toggle",
					order = 8,
					width = "normal",
					get = function(info)
						return Spy.db.profile.InvertSpy
					end,
					set = function(info, value)
						Spy.db.profile.InvertSpy = value
					end,
				},
				[L["Reload"]] = {
					name = L["Reload"],
					desc = L["ReloadDescription"],
					type = 'execute',
					order = 9,
					width = "half",
					func = function()
						ReloadUI()
					end
				},
				ResizeSpy = {
					name = L["ResizeSpy"],
					desc = L["ResizeSpyDescription"],
					type = "toggle",
					order = 10,
					width = "full",
					get = function(info)
						return Spy.db.profile.ResizeSpy
					end,
					set = function(info, value)
						Spy.db.profile.ResizeSpy = value
						if value then Spy:RefreshCurrentList() end
					end,
				},
				ResizeSpyLimit = {
					type = "range",
					order = 11,
					name = L["ResizeSpyLimit"],
					desc = L["ResizeSpyLimitDescription"],
					min = 1, max = 15, step = 1,
					get = function() return Spy.db.profile.ResizeSpyLimit end,
					set = function(info, value)
						Spy.db.profile.ResizeSpyLimit = value
						if value then
							Spy:ResizeMainWindow()
							Spy:RefreshCurrentList()
						end
					end,
				},
				DisplayListData = {
					name = L["DisplayListData"],
					type = 'select',
					order = 12,
					values = {
						["NameLevelClass"] = L["Name"] .. " / " .. L["Level"] .. " / " .. L["Class"],
						["NameLevelGuild"] = L["Name"] .. " / " .. L["Level"] .. " / " .. L["Guild"],
						["NameLevelOnly"] = L["Name"] .. " / " .. L["Level"],
						["NameGuild"] = L["Name"] .. " / " .. L["Guild"],
						["NameOnly"] = L["Name"],
					},
					get = function()
						return Spy.db.profile.DisplayListData
					end,
					set = function(info, value)
						Spy.db.profile.DisplayListData = value
						Spy:RefreshCurrentList()
					end,
				},
				SelectFont = {
					type = "select",
					order = 13,
					name = L["SelectFont"],
					desc = L["SelectFontDescription"],
					dialogControl = "LSM30_Font",
					values = SM:HashTable("font"),
					get = function()
						return Spy.db.profile.Font
					end,
					set = function(_, value)
						--printT(value)
						Spy.db.profile.Font = value
						if value then
							Spy:UpdateBarTextures(nil, SM.MediaType.FONT, value)
						end
					end,
				},
				RowHeight = {
					type = "range",
					order = 14,
					name = L["RowHeight"],
					desc = L["RowHeightDescription"],
					min = 8, max = 20, step = 1,
					get = function()
						return Spy.db.profile.MainWindow.RowHeight
					end,
					set = function(info, value)
						Spy.db.profile.MainWindow.RowHeight = value
						if value then
							Spy:BarsChanged()
						end
					end,
				},
				BarTexture = {
					type = "select",
					order = 15,
					name = L["Texture"],
					desc = L["TextureDescription"],
					dialogControl = "LSM30_Statusbar",
					width = "double",
					values = SM:HashTable("statusbar"),
					get = function()
						return Spy.db.profile.BarTexture
					end,
					set = function(_, key)
						Spy.db.profile.BarTexture = key
						Spy:UpdateBarTextures(nil, SM.MediaType.STATUSBAR, key)
					end,
				},
				DisplayTooltipNearSpyWindow = {
					name = L["DisplayTooltipNearSpyWindow"],
					desc = L["DisplayTooltipNearSpyWindowDescription"],
					type = "toggle",
					order = 16,
					width = "full",
					get = function(info)
						return Spy.db.profile.DisplayTooltipNearSpyWindow
					end,
					set = function(info, value)
						Spy.db.profile.DisplayTooltipNearSpyWindow = value
					end,
				},
				SelectTooltipAnchor = {
					type = "select",
					order = 17,
					name = L["SelectTooltipAnchor"],
					desc = L["SelectTooltipAnchorDescription"],
					values = {
						["ANCHOR_CURSOR"] = L["ANCHOR_CURSOR"],
						["ANCHOR_TOP"] = L["ANCHOR_TOP"],
						["ANCHOR_BOTTOM"] = L["ANCHOR_BOTTOM"],
						["ANCHOR_LEFT"] = L["ANCHOR_LEFT"],
						["ANCHOR_RIGHT"] = L["ANCHOR_RIGHT"],
					},
					get = function()
						return Spy.db.profile.TooltipAnchor
					end,
					set = function(info, value)
						Spy.db.profile.TooltipAnchor = value
					end,
				},
				DisplayWinLossStatistics = {
					name = L["TooltipDisplayWinLoss"],
					desc = L["TooltipDisplayWinLossDescription"],
					type = "toggle",
					order = 18,
					width = "full",
					get = function(info)
						return Spy.db.profile.DisplayWinLossStatistics
					end,
					set = function(info, value)
						Spy.db.profile.DisplayWinLossStatistics = value
					end,
				},
				DisplayKOSReason = {
					name = L["TooltipDisplayKOSReason"],
					desc = L["TooltipDisplayKOSReasonDescription"],
					type = "toggle",
					order = 19,
					width = "full",
					get = function(info)
						return Spy.db.profile.DisplayKOSReason
					end,
					set = function(info, value)
						Spy.db.profile.DisplayKOSReason = value
					end,
				},
				DisplayLastSeen = {
					name = L["TooltipDisplayLastSeen"],
					desc = L["TooltipDisplayLastSeenDescription"],
					type = "toggle",
					order = 20,
					width = "full",
					get = function(info)
						return Spy.db.profile.DisplayLastSeen
					end,
					set = function(info, value)
						Spy.db.profile.DisplayLastSeen = value
					end,
				},
			},
		},
		AlertOptions = {
			name = L["AlertOptions"],
			desc = L["AlertOptions"],
			type = "group",
			order = 3,
			args = {
				intro = {
					name = L["AlertOptionsDescription"],
					type = "description",
					order = 1,
				},
				EnableSound = {
					name = L["EnableSound"],
					desc = L["EnableSoundDescription"],
					type = "toggle",
					order = 2,
					width = "full",
					get = function(info)
						return Spy.db.profile.EnableSound
					end,
					set = function(info, value)
						Spy.db.profile.EnableSound = value
					end,
				},
				SoundChannel = {
					name = L["SoundChannel"],
					type = 'select',
					order = 3,
					values = {
						["Master"] = L["Master"],
						["SFX"] = L["SFX"],
						["Music"] = L["Music"],
						["Ambience"] = L["Ambience"],
					},
					get = function()
						return Spy.db.profile.SoundChannel
					end,
					set = function(info, value)
						Spy.db.profile.SoundChannel = value
					end,
				},
				OnlySoundKoS = {
					name = L["OnlySoundKoS"],
					desc = L["OnlySoundKoSDescription"],
					type = "toggle",
					order = 4,
					width = "full",
					get = function(info)
						return Spy.db.profile.OnlySoundKoS
					end,
					set = function(info, value)
						Spy.db.profile.OnlySoundKoS = value
					end,
				},
				StopAlertsOnTaxi = {
					name = L["StopAlertsOnTaxi"],
					desc = L["StopAlertsOnTaxiDescription"],
					type = "toggle",
					order = 5,
					width = "full",
					get = function(info)
						return Spy.db.profile.StopAlertsOnTaxi
					end,
					set = function(info, value)
						Spy.db.profile.StopAlertsOnTaxi = value
					end,
				},
				Announce = {
					name = L["Announce"],
					type = "group",
					order = 6,
					inline = true,
					args = {
						None = {
							name = L["None"],
							desc = L["NoneDescription"],
							type = "toggle",
							order = 1,
							get = function(info)
								return Spy.db.profile.Announce == "None"
							end,
							set = function(info, value)
								Spy.db.profile.Announce = "None"
							end,
						},
						Self = {
							name = L["Self"],
							desc = L["SelfDescription"],
							type = "toggle",
							order = 2,
							get = function(info)
								return Spy.db.profile.Announce == "Self"
							end,
							set = function(info, value)
								Spy.db.profile.Announce = "Self"
							end,
						},
						Party = {
							name = L["Party"],
							desc = L["PartyDescription"],
							type = "toggle",
							order = 3,
							get = function(info)
								return Spy.db.profile.Announce == "Party"
							end,
							set = function(info, value)
								Spy.db.profile.Announce = "Party"
							end,
						},
						Guild = {
							name = L["Guild"],
							desc = L["GuildDescription"],
							type = "toggle",
							order = 4,
							get = function(info)
								return Spy.db.profile.Announce == "Guild"
							end,
							set = function(info, value)
								Spy.db.profile.Announce = "Guild"
							end,
						},
						Raid = {
							name = L["Raid"],
							desc = L["RaidDescription"],
							type = "toggle",
							order = 5,
							get = function(info)
								return Spy.db.profile.Announce == "Raid"
							end,
							set = function(info, value)
								Spy.db.profile.Announce = "Raid"
							end,
						},
						LocalDefense = {
							name = L["LocalDefense"],
							desc = L["LocalDefenseDescription"],
							type = "toggle",
							order = 6,
							get = function(info)
								return Spy.db.profile.Announce == "LocalDefense"
							end,
							set = function(info, value)
								Spy.db.profile.Announce = "LocalDefense"
							end,
						},
					},
				},
				OnlyAnnounceKoS = {
					name = L["OnlyAnnounceKoS"],
					desc = L["OnlyAnnounceKoSDescription"],
					type = "toggle",
					order = 7,
					width = "full",
					get = function(info)
						return Spy.db.profile.OnlyAnnounceKoS
					end,
					set = function(info, value)
						Spy.db.profile.OnlyAnnounceKoS = value
					end,
				},
				DisplayWarnings = {
					name = L["DisplayWarnings"],
					type = 'select',
					order = 8,
					values = {
						["Default"] = L["Default"],
						["ErrorFrame"] = L["ErrorFrame"],
						["Moveable"] = L["Moveable"],
					},
					get = function()
						return Spy.db.profile.DisplayWarnings
					end,
					set = function(info, value)
						Spy.db.profile.DisplayWarnings = value
						Spy:UpdateAlertWindow()
					end,
				},
				WarnOnStealth = {
					name = L["WarnOnStealth"],
					desc = L["WarnOnStealthDescription"],
					type = "toggle",
					order = 9,
					width = "full",
					get = function(info)
						return Spy.db.profile.WarnOnStealth
					end,
					set = function(info, value)
						Spy.db.profile.WarnOnStealth = value
					end,
				},
				WarnOnKOS = {
					name = L["WarnOnKOS"],
					desc = L["WarnOnKOSDescription"],
					type = "toggle",
					order = 10,
					width = "full",
					get = function(info)
						return Spy.db.profile.WarnOnKOS
					end,
					set = function(info, value)
						Spy.db.profile.WarnOnKOS = value
					end,
				},
				WarnOnKOSGuild = {
					name = L["WarnOnKOSGuild"],
					desc = L["WarnOnKOSGuildDescription"],
					type = "toggle",
					order = 11,
					width = "full",
					get = function(info)
						return Spy.db.profile.WarnOnKOSGuild
					end,
					set = function(info, value)
						Spy.db.profile.WarnOnKOSGuild = value
					end,
				},
				WarnOnRace = {
					name = L["WarnOnRace"],
					desc = L["WarnOnRaceDescription"],
					type = "toggle",
					order = 12,
					width = "full",
					get = function(info)
						return Spy.db.profile.WarnOnRace
					end,
					set = function(info, value)
						Spy.db.profile.WarnOnRace = value
					end,
				},
				SelectWarnRace = {
					type = "select",
					order = 13,
					name = L["SelectWarnRace"],
					desc = L["SelectWarnRaceDescription"],
					get = function()
						return Spy.db.profile.SelectWarnRace
					end,
					set = function(info, value)
						Spy.db.profile.SelectWarnRace = value
					end,
					values = function()
						local raceOptions = {}
						local races = {
							Alliance = {
								["None"] = L["None"],
								["Human"] = L["Human"],
								["Dwarf"] = L["Dwarf"],
								["Night Elf"] = L["Night Elf"],
								["Gnome"] = L["Gnome"],
							},
							Horde = {
								["None"] = L["None"],
								["Orc"] = L["Orc"],
								["Tauren"] = L["Tauren"],
								["Troll"] = L["Troll"],
								["Undead"] = L["Undead"],
							},
						}
						if Spy.EnemyFactionName == "Alliance" then
							raceOptions = races.Alliance
						end
						if Spy.EnemyFactionName == "Horde" then
							raceOptions = races.Horde
						end
						return raceOptions
					end,
				},
				WarnRaceNote = {
					order = 14,
					type = "description",
					name = L["WarnRaceNote"],
				},
			},
		},
		MapOptions = {
			name = L["MapOptions"],
			desc = L["MapOptions"],
			type = "group",
			order = 4,
			args = {
				intro = {
					name = L["MapOptionsDescription"],
					type = "description",
					order = 1,
					fontSize = "medium",
				},
				MinimapDetection = {
					name = L["MinimapDetection"],
					desc = L["MinimapDetectionDescription"],
					type = "toggle",
					order = 2,
					width = "full",
					get = function(info)
						return Spy.db.profile.MinimapDetection
					end,
					set = function(info, value)
						Spy.db.profile.MinimapDetection = value
					end,
				},
				MinimapNote = {
					order = 3,
					type = "description",
					name = L["MinimapNote"],
				},
				MinimapDetails = {
					name = L["MinimapDetails"],
					desc = L["MinimapDetailsDescription"],
					type = "toggle",
					order = 4,
					width = "full",
					get = function(info)
						return Spy.db.profile.MinimapDetails
					end,
					set = function(info, value)
						Spy.db.profile.MinimapDetails = value
					end,
				},
				DisplayOnMap = {
					name = L["DisplayOnMap"],
					desc = L["DisplayOnMapDescription"],
					type = "toggle",
					order = 5,
					width = "full",
					get = function(info)
						return Spy.db.profile.DisplayOnMap
					end,
					set = function(info, value)
						Spy.db.profile.DisplayOnMap = value
					end,
				},
				SwitchToZone = {
					name = L["SwitchToZone"],
					desc = L["SwitchToZoneDescription"],
					type = "toggle",
					order = 6,
					width = "full",
					get = function(info)
						return Spy.db.profile.SwitchToZone
					end,
					set = function(info, value)
						Spy.db.profile.SwitchToZone = value
					end,
				},
				MapDisplayLimit = {
					name = L["MapDisplayLimit"],
					type = "group",
					order = 7,
					inline = true,
					args = {
						None = {
							name = L["LimitNone"],
							desc = L["LimitNoneDescription"],
							type = "toggle",
							order = 1,
							width = "full",
							get = function(info)
								return Spy.db.profile.MapDisplayLimit == "None"
							end,
							set = function(info, value)
								Spy.db.profile.MapDisplayLimit = "None"
							end,
						},
						SameZone = {
							name = L["LimitSameZone"],
							desc = L["LimitSameZoneDescription"],
							type = "toggle",
							order = 2,
							width = "full",
							get = function(info)
								return Spy.db.profile.MapDisplayLimit == "SameZone"
							end,
							set = function(info, value)
								Spy.db.profile.MapDisplayLimit = "SameZone"
							end,
						},
						SameContinent = {
							name = L["LimitSameContinent"],
							desc = L["LimitSameContinentDescription"],
							type = "toggle",
							order = 3,
							width = "full",
							get = function(info)
								return Spy.db.profile.MapDisplayLimit == "SameContinent"
							end,
							set = function(info, value)
								Spy.db.profile.MapDisplayLimit = "SameContinent"
							end,
						},
					},
				},
			},
		},
		DataOptions = {
			name = L["DataOptions"],
			desc = L["DataOptions"],
			type = "group",
			order = 5,
			args = {
				intro = {
					name = L["ListOptionsDescription"],
					type = "description",
					order = 1,
					fontSize = "medium",
				},
				RemoveUndetected = {
					name = L["RemoveUndetected"],
					type = "group",
					order = 2,
					inline = true,
					args = {
						OneMinute = {
							name = L["1Min"],
							desc = L["1MinDescription"],
							type = "toggle",
							order = 1,
							get = function(info)
								return Spy.db.profile.RemoveUndetected == "OneMinute"
							end,
							set = function(info, value)
								Spy.db.profile.RemoveUndetected = "OneMinute"
								Spy:UpdateTimeoutSettings()
							end,
						},
						TwoMinutes = {
							name = L["2Min"],
							desc = L["2MinDescription"],
							type = "toggle",
							order = 2,
							get = function(info)
								return Spy.db.profile.RemoveUndetected == "TwoMinutes"
							end,
							set = function(info, value)
								Spy.db.profile.RemoveUndetected = "TwoMinutes"
								Spy:UpdateTimeoutSettings()
							end,
						},
						FiveMinutes = {
							name = L["5Min"],
							desc = L["5MinDescription"],
							type = "toggle",
							order = 3,
							get = function(info)
								return Spy.db.profile.RemoveUndetected == "FiveMinutes"
							end,
							set = function(info, value)
								Spy.db.profile.RemoveUndetected = "FiveMinutes"
								Spy:UpdateTimeoutSettings()
							end,
						},
						TenMinutes = {
							name = L["10Min"],
							desc = L["10MinDescription"],
							type = "toggle",
							order = 4,
							get = function(info)
								return Spy.db.profile.RemoveUndetected == "TenMinutes"
							end,
							set = function(info, value)
								Spy.db.profile.RemoveUndetected = "TenMinutes"
								Spy:UpdateTimeoutSettings()
							end,
						},
						FifteenMinutes = {
							name = L["15Min"],
							desc = L["15MinDescription"],
							type = "toggle",
							order = 5,
							get = function(info)
								return Spy.db.profile.RemoveUndetected == "FifteenMinutes"
							end,
							set = function(info, value)
								Spy.db.profile.RemoveUndetected = "FifteenMinutes"
								Spy:UpdateTimeoutSettings()
							end,
						},
						Never = {
							name = L["Never"],
							desc = L["NeverDescription"],
							type = "toggle",
							order = 6,
							get = function(info)
								return Spy.db.profile.RemoveUndetected == "Never"
							end,
							set = function(info, value)
								Spy.db.profile.RemoveUndetected = "Never"
								Spy:UpdateTimeoutSettings()
							end,
						},
					},
				},
				PurgeData = {
					name = L["PurgeData"],
					type = "group",
					order = 7,
					inline = true,
					args = {
						OneDay = {
							name = L["OneDay"],
							desc = L["OneDayDescription"],
							type = "toggle",
							order = 1,
							get = function(info)
								return Spy.db.profile.PurgeData == "OneDay"
							end,
							set = function(info, value)
								Spy.db.profile.PurgeData = "OneDay"
							end,
						},
						FiveDays = {
							name = L["FiveDays"],
							desc = L["FiveDaysDescription"],
							type = "toggle",
							order = 2,
							get = function(info)
								return Spy.db.profile.PurgeData == "FiveDays"
							end,
							set = function(info, value)
								Spy.db.profile.PurgeData = "FiveDays"
							end,
						},
						TenDays = {
							name = L["TenDays"],
							desc = L["TenDaysDescription"],
							type = "toggle",
							order = 3,
							get = function(info)
								return Spy.db.profile.PurgeData == "TenDays"
							end,
							set = function(info, value)
								Spy.db.profile.PurgeData = "TenDays"
							end,
						},
						ThirtyDays = {
							name = L["ThirtyDays"],
							desc = L["ThirtyDaysDescription"],
							type = "toggle",
							order = 4,
							get = function(info)
								return Spy.db.profile.PurgeData == "ThirtyDays"
							end,
							set = function(info, value)
								Spy.db.profile.PurgeData = "ThirtyDays"
							end,
						},
						SixtyDays = {
							name = L["SixtyDays"],
							desc = L["SixtyDaysDescription"],
							type = "toggle",
							order = 5,
							get = function(info)
								return Spy.db.profile.PurgeData == "SixtyDays"
							end,
							set = function(info, value)
								Spy.db.profile.PurgeData = "SixtyDays"
							end,
						},
						NinetyDays = {
							name = L["NinetyDays"],
							desc = L["NinetyDaysDescription"],
							type = "toggle",
							order = 6,
							get = function(info)
								return Spy.db.profile.PurgeData == "NinetyDays"
							end,
							set = function(info, value)
								Spy.db.profile.PurgeData = "NinetyDays"
							end,
						},
					},
				},
				PurgeKoS = {
					name = L["PurgeKoS"],
					desc = L["PurgeKoSDescription"],
					type = "toggle",
					order = 8,
					width = "full",
					get = function(info)
						return Spy.db.profile.PurgeKoS
					end,
					set = function(info, value)
						Spy.db.profile.PurgeKoS = value
					end,
				},
				PurgeWinLossData = {
					name = L["PurgeWinLossData"],
					desc = L["PurgeWinLossDataDescription"],
					type = "toggle",
					order = 9,
					width = "full",
					get = function(info)
						return Spy.db.profile.PurgeWinLossData
					end,
					set = function(info, value)
						Spy.db.profile.PurgeWinLossData = value
					end,
				},
				ShareData = {
					name = L["ShareData"],
					desc = L["ShareDataDescription"],
					type = "toggle",
					order = 10,
					width = "full",
					get = function(info)
						return Spy.db.profile.ShareData
					end,
					set = function(info, value)
						Spy.db.profile.ShareData = value
					end,
				},
				UseData = {
					name = L["UseData"],
					desc = L["UseDataDescription"],
					type = "toggle",
					order = 11,
					width = "full",
					get = function(info)
						return Spy.db.profile.UseData
					end,
					set = function(info, value)
						Spy.db.profile.UseData = value
					end,
				},
				ShareKOSBetweenCharacters = {
					name = L["ShareKOSBetweenCharacters"],
					desc = L["ShareKOSBetweenCharactersDescription"],
					type = "toggle",
					order = 12,
					width = "full",
					get = function(info)
						return Spy.db.profile.ShareKOSBetweenCharacters
					end,
					set = function(info, value)
						Spy.db.profile.ShareKOSBetweenCharacters = value
						if value then Spy:RegenerateKOSCentralList() end
					end,
				},
				census = {
					name = L["Get Census Data"],
					desc = L["GetCensusData"],
					type = 'execute',

					order = 13,
					func = function()
						Spy:GetCensusData()
					end,
				},

			},
		},
	},
}

Spy.optionsSlash = {
	name = L["SlashCommand"],
	order = -3,
	type = "group",
	dialogHidden = true,
	args = {
		intro = {
			name = L["SpySlashDescription"],
			type = "description",
			order = 1,
			cmdHidden = true,
		},
		show = {
			name = L["Show"],
			desc = L["ShowDescription"],
			type = 'execute',
			order = 2,
			func = function()
				Spy:EnableSpy(true, true)
			end,
			dialogHidden = true
		},
		hide = {
			name = L["Hide"],
			desc = L["HideDescription"],
			type = 'execute',
			order = 3,
			func = function()
				Spy:EnableSpy(false, true)
			end,
			dialogHidden = true
		},
		reset = {
			name = L["Reset"],
			desc = L["ResetDescription"],
			type = 'execute',
			order = 4,
			func = function()
				Spy:ResetPositions()
			end,
			dialogHidden = true
		},
		clear = {
			name = L["ClearSlash"],
			desc = L["ClearSlashDescription"],
			type = 'execute',
			order = 5,
			func = function()
				Spy:ClearList()
			end,
			dialogHidden = true
		},
		config = {
			name = L["Config"],
			desc = L["ConfigDescription"],
			type = 'execute',
			order = 6,
			func = function()
				Spy:ShowConfig()
			end,
			dialogHidden = true
		},
		kos = {
			name = L["KOS"],
			desc = L["KOSDescription"],
			type = 'input',
			order = 7,
			pattern = ".", -- Changed so names with special characters can be added
			set = function(info, value)
				if Spy_IgnoreList[value] or strmatch(value, "[%s%d]+") then
					DEFAULT_CHAT_FRAME:AddMessage(value .. " - " .. L["InvalidInput"])
				else
					Spy:ToggleKOSPlayer(not SpyPerCharDB.KOSData[value], value)
				end
			end,
			dialogHidden = true
		},
		ignore = {
			name = L["Ignore"],
			desc = L["IgnoreDescription"],
			type = 'input',
			order = 8,
			pattern = ".",
			set = function(info, value)
				if Spy_IgnoreList[value] or strmatch(value, "[%s%d]+") then
					DEFAULT_CHAT_FRAME:AddMessage(value .. " - " .. L["InvalidInput"])
				else
					Spy:ToggleIgnorePlayer(not SpyPerCharDB.IgnoreData[value], value)
				end
			end,
			dialogHidden = true
		},
		stats = {
			name = L["Statistics"],
			desc = L["StatsDescription"],
			type = 'execute',
			order = 9,
			func = function()
				SpyStats:Toggle()
			end,
			dialogHidden = true
		},
		test = {
			name = L["Test"],
			desc = L["TestDescription"],
			type = 'execute',
			order = 10,
			func = function()
				Spy:AlertStealthPlayer("Bazzalan")
			end
		},
	},
}

local Default_Profile = {
	profile = {
		Colors = {
			["Window"] = {
				["Title"] = { r = 1, g = 1, b = 1, a = 1 },
				["Background"] = { r = 24 / 255, g = 24 / 255, b = 24 / 255, a = 1 },
				["Title Text"] = { r = 1, g = 1, b = 1, a = 1 },
			},
			["Other Windows"] = {
				["Title"] = { r = 1, g = 0, b = 0, a = 1 },
				["Background"] = { r = 24 / 255, g = 24 / 255, b = 24 / 255, a = 1 },
				["Title Text"] = { r = 1, g = 1, b = 1, a = 1 },
			},
			["Bar"] = {
				["Bar Text"] = { r = 1, g = 1, b = 1 },
			},
			["Warning"] = {
				["Warning Text"] = { r = 1, g = 1, b = 1 },
			},
			["Tooltip"] = {
				["Title Text"] = { r = 0.8, g = 0.3, b = 0.22 },
				["Details Text"] = { r = 1, g = 1, b = 1 },
				["Location Text"] = { r = 1, g = 0.82, b = 0 },
				["Reason Text"] = { r = 1, g = 0, b = 0 },
			},
			["Alert"] = {
				["Background"] = { r = 0, g = 0, b = 0, a = 0.4 },
				["Icon"] = { r = 1, g = 1, b = 1, a = 0.5 },
				["KOS Border"] = { r = 1, g = 0, b = 0, a = 0.4 },
				["KOS Text"] = { r = 1, g = 0, b = 0 },
				["KOS Guild Border"] = { r = 1, g = 0.82, b = 0, a = 0.4 },
				["KOS Guild Text"] = { r = 1, g = 0.82, b = 0 },
				["Stealth Border"] = { r = 0.6, g = 0.2, b = 1, a = 0.4 },
				["Stealth Text"] = { r = 0.6, g = 0.2, b = 1 },
				["Away Border"] = { r = 0, g = 1, b = 0, a = 0.4 },
				["Away Text"] = { r = 0, g = 1, b = 0 },
				["Location Text"] = { r = 1, g = 0.82, b = 0 },
				["Name Text"] = { r = 1, g = 1, b = 1 },
			},
			["Class"] = {
				["HUNTER"] = { r = 0.67, g = 0.83, b = 0.45, a = 0.6 },
				["WARLOCK"] = { r = 0.53, g = 0.53, b = 0.93, a = 0.6 },
				["PRIEST"] = { r = 1.00, g = 1.00, b = 1.00, a = 0.6 },
				["PALADIN"] = { r = 0.96, g = 0.55, b = 0.73, a = 0.6 },
				["MAGE"] = { r = 0.25, g = 0.78, b = 0.92, a = 0.6 },
				["ROGUE"] = { r = 1.00, g = 0.96, b = 0.41, a = 0.6 },
				["DRUID"] = { r = 1.00, g = 0.49, b = 0.04, a = 0.6 },
				["SHAMAN"] = { r = 0.00, g = 0.44, b = 0.87, a = 0.6 },
				["WARRIOR"] = { r = 0.78, g = 0.61, b = 0.43, a = 0.6 },
				["DEATHKNIGHT"] = { r = 0.77, g = 0.12, b = 0.23, a = 0.6 },
				["PET"] = { r = 0.09, g = 0.61, b = 0.55, a = 0.6 },
				["MOB"] = { r = 0.58, g = 0.24, b = 0.63, a = 0.6 },
				["UNKNOWN"] = { r = 0.1, g = 0.1, b = 0.1, a = 0.6 },
				["HOSTILE"] = { r = 0.7, g = 0.1, b = 0.1, a = 0.6 },
				["UNGROUPED"] = { r = 0.63, g = 0.58, b = 0.24, a = 0.6 },
			},
		},
		MainWindow = {
			Alpha = 1,
			AlphaBG = 1,
			Buttons = {
				ClearButton = true,
				LeftButton = true,
				RightButton = true,
			},
			RowHeight = 14,
			RowSpacing = 2,
			TextHeight = 12,
			AutoHide = true,
			BarText = {
				RankNum = true,
				PerSec = true,
				Percent = true,
				NumFormat = 1,
			},
			Position = {
				x = 4,
				y = 740,
				w = 160,
				h = 34,
			},
		},
		AlertWindow = {
			Position = {
				--				x = 0,
				--				y = -140,
				x = 750,
				y = 750,
			},
			NameSize = 14,
			LocationSize = 10,
		},
		AlertWindowNameSize = 14,
		AlertWindowLocationSize = 10,
		BarTexture = "Minimalist",
		MainWindowVis = true,
		CurrentList = 1,
		Locked = false,
		Font = "Friz Quadrata TT",
		Scaling = 1,
		Enabled = true,
		EnabledInBattlegrounds = true,
		DisableWhenPVPUnflagged = false,
		MinimapDetection = false,
		MinimapDetails = true,
		DisplayOnMap = true,
		SwitchToZone = false,
		MapDisplayLimit = "SameZone",
		DisplayTooltipNearSpyWindow = false,
		TooltipAnchor = "ANCHOR_CURSOR",
		DisplayWinLossStatistics = true,
		DisplayKOSReason = true,
		DisplayLastSeen = true,
		DisplayListData = "NameLevelClass",
		ShowOnDetection = true,
		HideSpy = false,
		ShowKoSButton = false,
		InvertSpy = false,
		ResizeSpy = true,
		ResizeSpyLimit = 15,
		SoundChannel = "SFX",
		Announce = "None",
		OnlyAnnounceKoS = false,
		WarnOnStealth = true,
		WarnOnKOS = true,
		WarnOnKOSGuild = false,
		WarnOnRace = false,
		SelectWarnRace = "None",
		DisplayWarnings = "Default",
		EnableSound = true,
		OnlySoundKoS = false,
		StopAlertsOnTaxi = true,
		RemoveUndetected = "OneMinute",
		ShowNearbyList = true,
		PrioritiseKoS = true,
		PurgeData = "NinetyDays",
		PurgeKoS = false,
		PurgeWinLossData = false,
		ShareData = false,
		UseData = false,
		ShareKOSBetweenCharacters = true,
		FilteredZones = {
			["Booty Bay"] = false,
			["Gadgetzan"] = false,
			["Ratchet"] = false,
			["Everlook"] = false,

		},
	}
}

SM:Register("statusbar", "blend", [[Interface\Addons\Spy-vanilla\Textures\bar-blend.tga]])
SM:Register("statusbar", "Minimalist", [[Interface\Addons\Spy-vanilla\Textures\Minimalist.tga]])

function Spy:CheckDatabase()
	if not SpyPerCharDB or not SpyPerCharDB.PlayerData then
		SpyPerCharDB = {}
	end
	SpyPerCharDB.version = Spy.DatabaseVersion
	if not SpyPerCharDB.PlayerData then
		SpyPerCharDB.PlayerData = {}
	end
	if not SpyPerCharDB.IgnoreData then
		SpyPerCharDB.IgnoreData = {}
	end
	if not SpyPerCharDB.KOSData then
		SpyPerCharDB.KOSData = {}
	end
	if not SpyDB.FriendsData then
		SpyDB.FriendsData = {}
	end

	if SpyDB.kosData == nil then SpyDB.kosData = {} end
	if SpyDB.kosData[Spy.RealmName] == nil then SpyDB.kosData[Spy.RealmName] = {} end
	if SpyDB.kosData[Spy.RealmName][Spy.FactionName] == nil then SpyDB.kosData[Spy.RealmName][Spy.FactionName] = {} end
	if SpyDB.kosData[Spy.RealmName][Spy.FactionName][Spy.CharacterName] == nil then SpyDB.kosData[Spy.RealmName][
		Spy.FactionName][Spy.CharacterName] = {} end
	if SpyDB.removeKOSData == nil then SpyDB.removeKOSData = {} end
	if SpyDB.removeKOSData[Spy.RealmName] == nil then SpyDB.removeKOSData[Spy.RealmName] = {} end
	if SpyDB.removeKOSData[Spy.RealmName][Spy.FactionName] == nil then SpyDB.removeKOSData[Spy.RealmName][Spy.FactionName] = {} end
	--[[	if Spy.db.profile == nil then Spy.db.profile = Default_Profile.profile end
	if Spy.db.profile.Colors == nil then Spy.db.profile.Colors = Default_Profile.profile.Colors end
	if Spy.db.profile.Colors["Window"] == nil then Spy.db.profile.Colors["Window"] = Default_Profile.profile.Colors["Window"] end
	if Spy.db.profile.Colors["Window"]["Title"] == nil then Spy.db.profile.Colors["Window"]["Title"] = Default_Profile.profile.Colors["Window"]["Title"] end
	if Spy.db.profile.Colors["Window"]["Background"] == nil then Spy.db.profile.Colors["Window"]["Background"] = Default_Profile.profile.Colors["Window"]["Background"] end
	if Spy.db.profile.Colors["Window"]["Title Text"] == nil then Spy.db.profile.Colors["Window"]["Title Text"] = Default_Profile.profile.Colors["Window"]["Title Text"] end
	if Spy.db.profile.Colors["Other Windows"] == nil then Spy.db.profile.Colors["Other Windows"] = Default_Profile.profile.Colors["Other Windows"] end
	if Spy.db.profile.Colors["Other Windows"]["Title"] == nil then Spy.db.profile.Colors["Other Windows"]["Title"] = Default_Profile.profile.Colors["Other Windows"]["Title"] end
	if Spy.db.profile.Colors["Other Windows"]["Background"] == nil then Spy.db.profile.Colors["Other Windows"]["Background"] = Default_Profile.profile.Colors["Other Windows"]["Background"] end
	if Spy.db.profile.Colors["Other Windows"]["Title Text"] == nil then Spy.db.profile.Colors["Other Windows"]["Title Text"] = Default_Profile.profile.Colors["Other Windows"]["Title Text"] end
	if Spy.db.profile.Colors["Bar"] == nil then Spy.db.profile.Colors["Bar"] = Default_Profile.profile.Colors["Bar"] end
	if Spy.db.profile.Colors["Bar"]["Bar Text"] == nil then Spy.db.profile.Colors["Bar"]["Bar Text"] = Default_Profile.profile.Colors["Bar"]["Bar Text"] end
	if Spy.db.profile.Colors["Warning"] == nil then Spy.db.profile.Colors["Warning"] = Default_Profile.profile.Colors["Warning"] end
	if Spy.db.profile.Colors["Warning"]["Warning Text"] == nil then Spy.db.profile.Colors["Warning"]["Warning Text"] = Default_Profile.profile.Colors["Warning"]["Warning Text"] end
	if Spy.db.profile.Colors["Tooltip"] == nil then Spy.db.profile.Colors["Tooltip"] = Default_Profile.profile.Colors["Tooltip"] end
	if Spy.db.profile.Colors["Tooltip"]["Title Text"] == nil then Spy.db.profile.Colors["Tooltip"]["Title Text"] = Default_Profile.profile.Colors["Tooltip"]["Title Text"] end
	if Spy.db.profile.Colors["Tooltip"]["Details Text"] == nil then Spy.db.profile.Colors["Tooltip"]["Details Text"] = Default_Profile.profile.Colors["Tooltip"]["Details Text"] end
	if Spy.db.profile.Colors["Tooltip"]["Location Text"] == nil then Spy.db.profile.Colors["Tooltip"]["Location Text"] = Default_Profile.profile.Colors["Tooltip"]["Location Text"] end
	if Spy.db.profile.Colors["Tooltip"]["Reason Text"] == nil then Spy.db.profile.Colors["Tooltip"]["Reason Text"] = Default_Profile.profile.Colors["Tooltip"]["Reason Text"] end
	if Spy.db.profile.Colors["Alert"] == nil then Spy.db.profile.Colors["Alert"] = Default_Profile.profile.Colors["Alert"] end
	if Spy.db.profile.Colors["Alert"]["Background"] == nil then Spy.db.profile.Colors["Alert"]["Background"] = Default_Profile.profile.Colors["Alert"]["Background"] end
	if Spy.db.profile.Colors["Alert"]["Icon"] == nil then Spy.db.profile.Colors["Alert"]["Icon"] = Default_Profile.profile.Colors["Alert"]["Icon"] end
	if Spy.db.profile.Colors["Alert"]["KOS Border"] == nil then Spy.db.profile.Colors["Alert"]["KOS Border"] = Default_Profile.profile.Colors["Alert"]["KOS Border"] end
	if Spy.db.profile.Colors["Alert"]["KOS Text"] == nil then Spy.db.profile.Colors["Alert"]["KOS Text"] = Default_Profile.profile.Colors["Alert"]["KOS Text"] end
	if Spy.db.profile.Colors["Alert"]["KOS Guild Border"] == nil then Spy.db.profile.Colors["Alert"]["KOS Guild Border"] = Default_Profile.profile.Colors["Alert"]["KOS Guild Border"] end
	if Spy.db.profile.Colors["Alert"]["KOS Guild Text"] == nil then Spy.db.profile.Colors["Alert"]["KOS Guild Text"] = Default_Profile.profile.Colors["Alert"]["KOS Guild Text"] end
	if Spy.db.profile.Colors["Alert"]["Stealth Border"] == nil then Spy.db.profile.Colors["Alert"]["Stealth Border"] = Default_Profile.profile.Colors["Alert"]["Stealth Border"] end
	if Spy.db.profile.Colors["Alert"]["Stealth Text"] == nil then Spy.db.profile.Colors["Alert"]["Stealth Text"] = Default_Profile.profile.Colors["Alert"]["Stealth Text"] end
	if Spy.db.profile.Colors["Alert"]["Away Border"] == nil then Spy.db.profile.Colors["Alert"]["Away Border"] = Default_Profile.profile.Colors["Alert"]["Away Border"] end
	if Spy.db.profile.Colors["Alert"]["Away Text"] == nil then Spy.db.profile.Colors["Alert"]["Away Text"] = Default_Profile.profile.Colors["Alert"]["Away Text"] end
	if Spy.db.profile.Colors["Alert"]["Location Text"] == nil then Spy.db.profile.Colors["Alert"]["Location Text"] = Default_Profile.profile.Colors["Alert"]["Location Text"] end
	if Spy.db.profile.Colors["Alert"]["Name Text"] == nil then Spy.db.profile.Colors["Alert"]["Name Text"] = Default_Profile.profile.Colors["Alert"]["Name Text"] end
	if Spy.db.profile.Colors["Class"] == nil then Spy.db.profile.Colors["Class"] = Default_Profile.profile.Colors["Class"] end
	if Spy.db.profile.Colors["Class"]["HUNTER"] == nil then Spy.db.profile.Colors["Class"]["HUNTER"] = Default_Profile.profile.Colors["Class"]["HUNTER"] end
	if Spy.db.profile.Colors["Class"]["WARLOCK"] == nil then Spy.db.profile.Colors["Class"]["WARLOCK"] = Default_Profile.profile.Colors["Class"]["WARLOCK"] end
	if Spy.db.profile.Colors["Class"]["PRIEST"] == nil then Spy.db.profile.Colors["Class"]["PRIEST"] = Default_Profile.profile.Colors["Class"]["PRIEST"] end
	if Spy.db.profile.Colors["Class"]["PALADIN"] == nil then Spy.db.profile.Colors["Class"]["PALADIN"] = Default_Profile.profile.Colors["Class"]["PALADIN"] end
	if Spy.db.profile.Colors["Class"]["MAGE"] == nil then Spy.db.profile.Colors["Class"]["MAGE"] = Default_Profile.profile.Colors["Class"]["MAGE"] end
	if Spy.db.profile.Colors["Class"]["ROGUE"] == nil then Spy.db.profile.Colors["Class"]["ROGUE"] = Default_Profile.profile.Colors["Class"]["ROGUE"] end
	if Spy.db.profile.Colors["Class"]["DRUID"] == nil then Spy.db.profile.Colors["Class"]["DRUID"] = Default_Profile.profile.Colors["Class"]["DRUID"] end
	if Spy.db.profile.Colors["Class"]["SHAMAN"] == nil then Spy.db.profile.Colors["Class"]["SHAMAN"] = Default_Profile.profile.Colors["Class"]["SHAMAN"] end
	if Spy.db.profile.Colors["Class"]["WARRIOR"] == nil then Spy.db.profile.Colors["Class"]["WARRIOR"] = Default_Profile.profile.Colors["Class"]["WARRIOR"] end
	if Spy.db.profile.Colors["Class"]["DEATHKNIGHT"] == nil then Spy.db.profile.Colors["Class"]["DEATHKNIGHT"] = Default_Profile.profile.Colors["Class"]["DEATHKNIGHT"] end
	if Spy.db.profile.Colors["Class"]["PET"] == nil then Spy.db.profile.Colors["Class"]["PET"] = Default_Profile.profile.Colors["Class"]["PET"] end
	if Spy.db.profile.Colors["Class"]["MOB"] == nil then Spy.db.profile.Colors["Class"]["MOB"] = Default_Profile.profile.Colors["Class"]["MOB"] end
	if Spy.db.profile.Colors["Class"]["UNKNOWN"] == nil then Spy.db.profile.Colors["Class"]["UNKNOWN"] = Default_Profile.profile.Colors["Class"]["UNKNOWN"] end
	if Spy.db.profile.Colors["Class"]["HOSTILE"] == nil then Spy.db.profile.Colors["Class"]["HOSTILE"] = Default_Profile.profile.Colors["Class"]["HOSTILE"] end
	if Spy.db.profile.Colors["Class"]["UNGROUPED"] == nil then Spy.db.profile.Colors["Class"]["UNGROUPED"] = Default_Profile.profile.Colors["Class"]["UNGROUPED"] end
	if Spy.db.profile.MainWindow == nil then Spy.db.profile.MainWindow = Default_Profile.profile.MainWindow end
	if Spy.db.profile.MainWindow.Buttons == nil then Spy.db.profile.MainWindow.Buttons = Default_Profile.profile.MainWindow.Buttons end
	if Spy.db.profile.MainWindow.Buttons.ClearButton == nil then Spy.db.profile.MainWindow.Buttons.ClearButton = Default_Profile.profile.MainWindow.Buttons.ClearButton end
	if Spy.db.profile.MainWindow.Buttons.LeftButton == nil then Spy.db.profile.MainWindow.Buttons.LeftButton = Default_Profile.profile.MainWindow.Buttons.LeftButton end
	if Spy.db.profile.MainWindow.Buttons.RightButton == nil then Spy.db.profile.MainWindow.Buttons.RightButton = Default_Profile.profile.MainWindow.Buttons.RightButton end
	if Spy.db.profile.MainWindow.RowHeight == nil then Spy.db.profile.MainWindow.RowHeight = Default_Profile.profile.MainWindow.RowHeight end
	if Spy.db.profile.MainWindow.RowSpacing == nil then Spy.db.profile.MainWindow.RowSpacing = Default_Profile.profile.MainWindow.RowSpacing end
	if Spy.db.profile.MainWindow.TextHeight == nil then Spy.db.profile.MainWindow.TextHeight = Default_Profile.profile.MainWindow.TextHeight end
	if Spy.db.profile.MainWindow.AutoHide == nil then Spy.db.profile.MainWindow.AutoHide = Default_Profile.profile.MainWindow.AutoHide end
	if Spy.db.profile.MainWindow.BarText == nil then Spy.db.profile.MainWindow.BarText = Default_Profile.profile.MainWindow.BarText end
	if Spy.db.profile.MainWindow.BarText.RankNum == nil then Spy.db.profile.MainWindow.BarText.RankNum = Default_Profile.profile.MainWindow.BarText.RankNum end
	if Spy.db.profile.MainWindow.BarText.PerSec == nil then Spy.db.profile.MainWindow.BarText.PerSec = Default_Profile.profile.MainWindow.BarText.PerSec end
	if Spy.db.profile.MainWindow.BarText.Percent == nil then Spy.db.profile.MainWindow.BarText.Percent = Default_Profile.profile.MainWindow.BarText.Percent end
	if Spy.db.profile.MainWindow.BarText.NumFormat == nil then Spy.db.profile.MainWindow.BarText.NumFormat = Default_Profile.profile.MainWindow.BarText.NumFormat end
	if Spy.db.profile.MainWindow.Position == nil then Spy.db.profile.MainWindow.Position = Default_Profile.profile.MainWindow.Position end
	if Spy.db.profile.MainWindow.Position.x == nil then Spy.db.profile.MainWindow.Position.x = Default_Profile.profile.MainWindow.Position.x end
	if Spy.db.profile.MainWindow.Position.y == nil then Spy.db.profile.MainWindow.Position.y = Default_Profile.profile.MainWindow.Position.y end
	if Spy.db.profile.MainWindow.Position.w == nil then Spy.db.profile.MainWindow.Position.w = Default_Profile.profile.MainWindow.Position.w end
	if Spy.db.profile.MainWindow.Position.h == nil then Spy.db.profile.MainWindow.Position.h = Default_Profile.profile.MainWindow.Position.h end
	if Spy.db.profile.AlertWindowNameSize == nil then Spy.db.profile.AlertWindowNameSize = Default_Profile.profile.AlertWindowNameSize end
	if Spy.db.profile.AlertWindowLocationSize == nil then Spy.db.profile.AlertWindowLocationSize = Default_Profile.profile.AlertWindowLocationSize end
	if Spy.db.profile.BarTexture == nil then Spy.db.profile.BarTexture = Default_Profile.profile.BarTexture end
	if Spy.db.profile.MainWindowVis == nil then Spy.db.profile.MainWindowVis = Default_Profile.profile.MainWindowVis end
	if Spy.db.profile.CurrentList == nil then Spy.db.profile.CurrentList = Default_Profile.profile.CurrentList end
	if Spy.db.profile.Locked == nil then Spy.db.profile.Locked = Default_Profile.profile.Locked end
	if Spy.db.profile.Font == nil then Spy.db.profile.Font = Default_Profile.profile.Font end
	if Spy.db.profile.Scaling == nil then Spy.db.profile.Scaling = Default_Profile.profile.Scaling end
	if Spy.db.profile.Enabled == nil then Spy.db.profile.Enabled = Default_Profile.profile.Enabled end
	if Spy.db.profile.EnabledInBattlegrounds == nil then Spy.db.profile.EnabledInBattlegrounds = Default_Profile.profile.EnabledInBattlegrounds end
	if Spy.db.profile.DisableWhenPVPUnflagged == nil then Spy.db.profile.DisableWhenPVPUnflagged = Default_Profile.profile.DisableWhenPVPUnflagged end
	if Spy.db.profile.MinimapDetection == nil then Spy.db.profile.MinimapDetection = Default_Profile.profile.MinimapDetection end
	if Spy.db.profile.MinimapDetails == nil then Spy.db.profile.MinimapDetails = Default_Profile.profile.MinimapDetails end
	if Spy.db.profile.DisplayOnMap == nil then Spy.db.profile.DisplayOnMap = Default_Profile.profile.DisplayOnMap end
	if Spy.db.profile.SwitchToZone == nil then Spy.db.profile.SwitchToZone = Default_Profile.profile.SwitchToZone end	
	if Spy.db.profile.MapDisplayLimit == nil then Spy.db.profile.MapDisplayLimit = Default_Profile.profile.MapDisplayLimit end
	if Spy.db.profile.DisplayTooltipNearSpyWindow == nil then Spy.db.profile.DisplayTooltipNearSpyWindow = Default_Profile.profile.DisplayTooltipNearSpyWindow end	
	if Spy.db.profile.TooltipAnchor == nil then Spy.db.profile.TooltipAnchor = Default_Profile.profile.TooltipAnchor end	
	if Spy.db.profile.DisplayWinLossStatistics == nil then Spy.db.profile.DisplayWinLossStatistics = Default_Profile.profile.DisplayWinLossStatistics end
	if Spy.db.profile.DisplayKOSReason == nil then Spy.db.profile.DisplayKOSReason = Default_Profile.profile.DisplayKOSReason end
	if Spy.db.profile.DisplayLastSeen == nil then Spy.db.profile.DisplayLastSeen = Default_Profile.profile.DisplayLastSeen end
	if Spy.db.profile.ShowOnDetection == nil then Spy.db.profile.ShowOnDetection = Default_Profile.profile.ShowOnDetection end
	if Spy.db.profile.HideSpy == nil then Spy.db.profile.HideSpy = Default_Profile.profile.HideSpy end
--	if Spy.db.profile.ShowOnlyPvPFlagged == nil then Spy.db.profile.ShowOnlyPvPFlagged = Default_Profile.profile.ShowOnlyPvPFlagged end	
	if Spy.db.profile.ShowKoSButton == nil then Spy.db.profile.ShowKoSButton = Default_Profile.profile.ShowKoSButton end	
	if Spy.db.profile.InvertSpy == nil then Spy.db.profile.InvertSpy = Default_Profile.profile.InvertSpy end
	if Spy.db.profile.ResizeSpy == nil then Spy.db.profile.ResizeSpy = Default_Profile.profile.ResizeSpy end
	if Spy.db.profile.ResizeSpyLimit == nil then Spy.db.profile.ResizeSpyLimit = Default_Profile.profile.ResizeSpyLimit end 
	if Spy.db.profile.Announce == nil then Spy.db.profile.Announce = Default_Profile.profile.Announce end
	if Spy.db.profile.OnlyAnnounceKoS == nil then Spy.db.profile.OnlyAnnounceKoS = Default_Profile.profile.OnlyAnnounceKoS end
	if Spy.db.profile.WarnOnStealth == nil then Spy.db.profile.WarnOnStealth = Default_Profile.profile.WarnOnStealth end
	if Spy.db.profile.WarnOnKOS == nil then Spy.db.profile.WarnOnKOS = Default_Profile.profile.WarnOnKOS end
	if Spy.db.profile.WarnOnKOSGuild == nil then Spy.db.profile.WarnOnKOSGuild = Default_Profile.profile.WarnOnKOSGuild end
	if Spy.db.profile.WarnOnRace == nil then Spy.db.profile.WarnOnRace = Default_Profile.profile.WarnOnRace end
	if Spy.db.profile.SelectWarnRace == nil then Spy.db.profile.SelectWarnRace = Default_Profile.profile.SelectWarnRace end
	if Spy.db.profile.DisplayWarningsInErrorsFrame == nil then Spy.db.profile.DisplayWarningsInErrorsFrame = Default_Profile.profile.DisplayWarningsInErrorsFrame end
	if Spy.db.profile.EnableSound == nil then Spy.db.profile.EnableSound = Default_Profile.profile.EnableSound end
	if Spy.db.profile.OnlySoundKoS == nil then Spy.db.profile.OnlySoundKoS = Default_Profile.profile.OnlySoundKoS end	
	if Spy.db.profile.StopAlertsOnTaxi == nil then Spy.db.profile.StopAlertsOnTaxi = Default_Profile.profile.StopAlertsOnTaxi end 	
	if Spy.db.profile.RemoveUndetected == nil then Spy.db.profile.RemoveUndetected = Default_Profile.profile.RemoveUndetected end
	if Spy.db.profile.ShowNearbyList == nil then Spy.db.profile.ShowNearbyList = Default_Profile.profile.ShowNearbyList end
	if Spy.db.profile.PrioritiseKoS == nil then Spy.db.profile.PrioritiseKoS = Default_Profile.profile.PrioritiseKoS end
	if Spy.db.profile.PurgeData == nil then Spy.db.profile.PurgeData = Default_Profile.profile.PurgeData end
	if Spy.db.profile.PurgeKoS == nil then Spy.db.profile.PurgeKoS = Default_Profile.profile.PurgeKoSData end	
	if Spy.db.profile.PurgeWinLossData == nil then Spy.db.profile.PurgeWinLossData = Default_Profile.profile.PurgeWinLossData end	
	if Spy.db.profile.ShareData == nil then Spy.db.profile.ShareData = Default_Profile.profile.ShareData end
	if Spy.db.profile.UseData == nil then Spy.db.profile.UseData = Default_Profile.profile.UseData end
	if Spy.db.profile.ShareKOSBetweenCharacters == nil then Spy.db.profile.ShareKOSBetweenCharacters = Default_Profile.profile.ShareKOSBetweenCharacters end
	if Spy.db.profile.AppendUnitNameCheck == nil then Spy.db.profile.AppendUnitNameCheck = Default_Profile.profile.AppendUnitNameCheck end
	if Spy.db.profile.AppendUnitKoSCheck == nil then Spy.db.profile.AppendUnitKoSCheck = Default_Profile.profile.AppendUnitKoSCheck end	]] --
end

function Spy:ResetProfile()
	Spy.db.profile = Default_Profile.profile
end

function Spy:HandleProfileChanges()
	Spy:CreateMainWindow()
	Spy:RestoreMainWindowPosition(Spy.db.profile.MainWindow.Position.x, Spy.db.profile.MainWindow.Position.y,
		Spy.db.profile.MainWindow.Position.w, 34)
	Spy:ResizeMainWindow()
	Spy:UpdateTimeoutSettings()
	Spy:LockWindows(Spy.db.profile.Locked)
	--	Spy:ClampToScreen(Spy.db.profile.ClampToScreen)
end

function Spy:RegisterModuleOptions(name, optionTbl, displayName)
	Spy.options.args[name] = (type(optionTbl) == "function") and optionTbl() or optionTbl
	self.optionsFrames[name] = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spy", displayName, "Spy", name)
end

function Spy:SetupOptions()
	self.optionsFrames = {}
	self.acr = LibStub("AceConfigRegistry-3.0")
	self.ac = LibStub("AceConfig-3.0")
	self.acr.RegisterOptionsTable(self, "Spy", Spy.options)
	self.ac.RegisterOptionsTable(self, "Spy Commands", Spy.optionsSlash, "spy")


	self.optionsFrames.Spy = ACD3:AddToBlizOptions("Spy", nil, nil, "About")
	self.optionsFrames.GeneralOptions = ACD3:AddToBlizOptions("Spy", L["GeneralSettings"], "Spy", "General")
	self.optionsFrames.DisplayOptions = ACD3:AddToBlizOptions("Spy", L["DisplayOptions"], "Spy", "DisplayOptions")
	self.optionsFrames.AlertOptions = ACD3:AddToBlizOptions("Spy", L["AlertOptions"], "Spy", "AlertOptions")
	self.optionsFrames.MapOptions = ACD3:AddToBlizOptions("Spy", L["MapOptions"], "Spy", "MapOptions")
	self.optionsFrames.DataOptions = ACD3:AddToBlizOptions("Spy", L["DataOptions"], "Spy", "DataOptions")

	self:RegisterModuleOptions("Profiles", LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db), L["Profiles"])
	Spy.options.args.Profiles.order = -2
	Spy:InitDBIcon()
end

SLASH_SPY1 = '/spygui'


function SlashCmdList.SPY()

	ACD3:Open('Spy')

end

local hintString = "|cffffffff%s:|r %s"
local hintText = {
	"Spy",
	format(hintString, "Left-Click", "Show/Hide Spy"),
	format(hintString, "Right-Click", L["Config"]),
	--format(hintString, "Alt-Click", ""),
	format(hintString, "Ctrl-Click", L["Reset"]),
	format(hintString, "Shift-Click", L["Show/Hide stats"]),
}

local function LDBOnClick(self, button)
	if (button == "LeftButton") then
		if (IsShiftKeyDown()) then
			SpyStats:Toggle()
		elseif (IsControlKeyDown()) then
			Spy:ResetMainWindow()
		elseif (IsAltKeyDown()) then

		else
			Spy:EnableSpy(not Spy.db.profile.Enabled, true)
		end
	elseif (button == "RightButton") then
		InterfaceOptionsFrame_OpenToCategory("Spy")
	end
end

function Spy:InitDBIcon()

	if (LDB) then
		local ldbSpy = LibStub("LibDataBroker-1.1"):NewDataObject("Spy", {
			type = "launcher",
			icon = "Interface\\AddOns\\Spy\\Textures\\spy",
			tocname = "Spy",
			label = "Spy",
			OnClick = LDBOnClick,
			OnTooltipShow = function(tooltip)

				if (tooltip and tooltip.AddLine) then
					for _i, text in ipairs(hintText) do
						tooltip:AddLine(text)
					end
				end
			end,
		})

		if (ldbIcon) then
			if (not Spy.db.profile.ldbIcon) then
				Spy.db.profile.ldbIcon = {}
			end
			ldbIcon:Register("Spy", ldbSpy, Spy.db.profile.ldbIcon)

			self.options.args.DisplayOptions.args.ldbIcon = {
				type = "toggle",
				order = 199,
				width = "normal",
				name = L["Show Minimap Icon"],
				desc = L["Show Minimap Icon"],
				get = function() return not Spy.db.profile.ldbIcon.hide end,
				set = function(info, value)
					value = not value
					Spy.db.profile.ldbIcon.hide = value
					if (value) then
						ldbIcon:Hide("Spy")
					else
						ldbIcon:Show("Spy")
					end
				end,
			}
		end
	end
end

function Spy:UpdateTimeoutSettings()
	if not Spy.db.profile.RemoveUndetected or Spy.db.profile.RemoveUndetected == "OneMinute" then
		Spy.ActiveTimeout = 30
		Spy.InactiveTimeout = 60
	elseif Spy.db.profile.RemoveUndetected == "TwoMinutes" then
		Spy.ActiveTimeout = 60
		Spy.InactiveTimeout = 120
	elseif Spy.db.profile.RemoveUndetected == "FiveMinutes" then
		Spy.ActiveTimeout = 150
		Spy.InactiveTimeout = 300
	elseif Spy.db.profile.RemoveUndetected == "TenMinutes" then
		Spy.ActiveTimeout = 300
		Spy.InactiveTimeout = 600
	elseif Spy.db.profile.RemoveUndetected == "FifteenMinutes" then
		Spy.ActiveTimeout = 450
		Spy.InactiveTimeout = 900
	elseif Spy.db.profile.RemoveUndetected == "Never" then
		Spy.ActiveTimeout = 30
		Spy.InactiveTimeout = -1
	else
		Spy.ActiveTimeout = 150
		Spy.InactiveTimeout = 300
	end
end

function Spy:ResetMainWindow()
	Spy:EnableSpy(true, true)
	Spy:CreateMainWindow()
	Spy:RestoreMainWindowPosition(Default_Profile.profile.MainWindow.Position.x,
		Default_Profile.profile.MainWindow.Position.y, Default_Profile.profile.MainWindow.Position.w, 34)
	Spy:RefreshCurrentList()
end

function Spy:ResetPositions()
	Spy:ResetPositionAllWindows()
end

function Spy:ShowConfig()
	InterfaceOptionsFrame_OpenToCategory('Spy')
end

local combatLogEvents = {

	--	"CHAT_MSG_COMBAT_CREATURE_VS_CREATURE_HITS",
	--	"CHAT_MSG_COMBAT_CREATURE_VS_CREATURE_MISSES",
	--	"CHAT_MSG_COMBAT_CREATURE_VS_PARTY_HITS",
	---	"CHAT_MSG_COMBAT_CREATURE_VS_PARTY_MISSES",
	--	"CHAT_MSG_COMBAT_CREATURE_VS_SELF_HITS",
	--	"CHAT_MSG_COMBAT_CREATURE_VS_SELF_MISSES",
	--	"CHAT_MSG_COMBAT_FACTION_CHANGE",
	--	"CHAT_MSG_COMBAT_FRIENDLYPLAYER_HITS",
	--	"CHAT_MSG_COMBAT_FRIENDLYPLAYER_MISSES",
	"CHAT_MSG_COMBAT_FRIENDLY_DEATH",
	--	"CHAT_MSG_COMBAT_HONOR_GAIN",
	"CHAT_MSG_COMBAT_HOSTILEPLAYER_HITS",
	"CHAT_MSG_COMBAT_HOSTILEPLAYER_MISSES",
	"CHAT_MSG_COMBAT_HOSTILE_DEATH",
	--	"CHAT_MSG_COMBAT_PARTY_HITS",
	--	"CHAT_MSG_COMBAT_PARTY_MISSES",
	--	"CHAT_MSG_COMBAT_PET_HITS",
	--	"CHAT_MSG_COMBAT_PET_MISSES",
	--	"CHAT_MSG_COMBAT_SELF_HITS",
	--	"CHAT_MSG_COMBAT_SELF_MISSES",
	--	"CHAT_MSG_COMBAT_XP_GAIN",
	"CHAT_MSG_SPELL_AURA_GONE_OTHER",
	--	"CHAT_MSG_SPELL_AURA_GONE_SELF",
	--	"CHAT_MSG_SPELL_AURA_GONE_PARTY",
	--	"CHAT_MSG_SPELL_BREAK_AURA",
	--	"CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF",
	--	"CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE",
	--	"CHAT_MSG_SPELL_CREATURE_VS_PARTY_BUFF",
	--	"CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE",
	--	"CHAT_MSG_SPELL_CREATURE_VS_SELF_BUFF",
	--	"CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE",
	--	"CHAT_MSG_SPELL_DAMAGESHIELDS_ON_OTHERS",
	--	"CHAT_MSG_SPELL_DAMAGESHIELDS_ON_SELF",
	--	"CHAT_MSG_SPELL_FAILED_LOCALPLAYER",
	--	"CHAT_MSG_SPELL_FRIENDLYPLAYER_BUFF",
	--	"CHAT_MSG_SPELL_FRIENDLYPLAYER_DAMAGE",
	"CHAT_MSG_SPELL_HOSTILEPLAYER_BUFF",
	"CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE",
	"CHAT_MSG_SPELL_ITEM_ENCHANTMENTS",
	--	"CHAT_MSG_SPELL_PARTY_BUFF",
	--	"CHAT_MSG_SPELL_PARTY_DAMAGE",
	--	"CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS",
	--	"CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE",
	--	"CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_BUFFS",
	--	"CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE",
	"CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_BUFFS",
	"CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_DAMAGE",
	--	"CHAT_MSG_SPELL_PERIODIC_PARTY_BUFFS",
	--	"CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE",
	--	"CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS",
	--	"CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE",
	--	"CHAT_MSG_SPELL_PET_BUFF",
	--	"CHAT_MSG_SPELL_PET_DAMAGE",
	--	"CHAT_MSG_SPELL_SELF_BUFF",
	--	"CHAT_MSG_SPELL_SELF_DAMAGE",
	--	"CHAT_MSG_SPELL_TRADESKILLS",

}

function Spy:OnEnable(first)
	Spy.timeid = Spy:ScheduleRepeatingTimer("ManageExpirations", 10, 1, true)
	Spy:RegisterEvent("ZONE_CHANGED", "ZoneChangedEvent")
	Spy:RegisterEvent("ZONE_CHANGED_NEW_AREA", "ZoneChangedEvent")
	Spy:RegisterEvent("PLAYER_ENTERING_WORLD", "ZoneChangedEvent")
	Spy:RegisterEvent("UNIT_FACTION", "ZoneChangedEvent")
	Spy:RegisterEvent("PLAYER_TARGET_CHANGED", "PlayerTargetEvent")
	Spy:RegisterEvent("UPDATE_MOUSEOVER_UNIT", "PlayerMouseoverEvent")
	Spy:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED", "CombatLogEvent")
	Spy:RegisterEvent("WORLD_MAP_UPDATE", "WorldMapUpdateEvent")
	Spy:RegisterEvent("PLAYER_REGEN_ENABLED", "LeftCombatEvent")
	--Spy:RegisterEvent("PLAYER_DEAD", "PlayerDeadEvent")
	Spy:RegisterComm(Spy.Signature, "CommReceived")

	for _, event in pairs(combatLogEvents) do
		Spy.parser:RegisterEvent("Spy", event, function(event, info) Spy:CombatLogEvent(event, info) end)
	end

	--[[	Spy.uc.RegisterCallback(self, "NewCast", "CombatLogEvent")
	Spy.uc.RegisterCallback(self, "NewBuff", "CombatLogEvent")
	Spy.uc.RegisterCallback(self, "NewHeal", "CombatLogEvent")
	Spy.uc.RegisterCallback(self, "Hit", "CombatLogEvent")
	Spy.uc.RegisterCallback(self, "Death", "DeathLog")
	]]
	Spy.IsEnabled = true
	if not Spy:TimerStatus(Spy.initTimer) then
		Spy:RefreshCurrentList()
	end
end

function Spy:OnDisable()
	if not Spy.IsEnabled then
		return
	end
	if Spy.timeid then
		Spy:CancelTimer(Spy.timeid)
		Spy.timeid = nil
	end
	Spy:UnregisterEvent("ZONE_CHANGED")
	Spy:UnregisterEvent("ZONE_CHANGED_NEW_AREA")
	Spy:UnregisterEvent("PLAYER_ENTERING_WORLD")
	Spy:UnregisterEvent("UNIT_FACTION")
	Spy:UnregisterEvent("PLAYER_TARGET_CHANGED")
	Spy:UnregisterEvent("UPDATE_MOUSEOVER_UNIT")
	Spy:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	Spy:UnregisterEvent("WORLD_MAP_UPDATE")
	Spy:UnregisterEvent("PLAYER_REGEN_ENABLED")
	Spy:UnregisterEvent("PLAYER_DEAD")
	Spy:UnregisterComm(Spy.Signature)

	--	self.uc.UnregisterAllCallbacks(self)

	Spy.parser:UnregisterAllEvents("Spy")

	Spy.IsEnabled = false
end

function Spy:EnableSpy(value, changeDisplay, hideEnabledMessage)
	Spy.db.profile.Enabled = value
	if value then
		if changeDisplay then Spy.MainWindow:Show() end
		Spy:OnEnable()
		if not hideEnabledMessage then DEFAULT_CHAT_FRAME:AddMessage(L["SpyEnabled"]) end
	else
		if changeDisplay then Spy.MainWindow:Hide() end
		Spy:OnDisable()
		DEFAULT_CHAT_FRAME:AddMessage(L["SpyDisabled"])
	end
end

function Spy:BuildZoneIDTable(ContinentList)
	local contIndex = 0
	for C in pairs(ContinentList) do
		contIndex = contIndex + 1
		local zones = { GetMapZones(C) };
		local zoneIndex = 0
		for Z, N in ipairs(zones) do
			zoneIndex = zoneIndex + 1
			Spy.ZoneID[N] = {}
			Spy.ZoneID[N].continentIndex = contIndex
			Spy.ZoneID[N].zoneIndex = zoneIndex
		end
	end
end

function Spy:GetZoneID(zoneName)
	if not Spy.ZoneID[zoneName] then
		return nil
	end
	return Spy.ZoneID[zoneName].continentIndex, Spy.ZoneID[zoneName].zoneIndex
end

function Spy:EnableSound(value)
	Spy.db.profile.EnableSound = value
	if value then
		DEFAULT_CHAT_FRAME:AddMessage(L["SoundEnabled"])
	else
		DEFAULT_CHAT_FRAME:AddMessage(L["SoundDisabled"])
	end
end

function Spy:OnInitialize()
	Spy.FactionName, _ = UnitFactionGroup("player")

	if Spy.FactionName == nil then
		Spy.initTimer = Spy:ScheduleTimer("OnInitialize", 1)
		return
	end

	WorldMapFrame:Show()
	WorldMapFrame:Hide()

	Spy.RealmName = GetCVar("realmName")

	if Spy.FactionName == "Alliance" then
		Spy.EnemyFactionName = "Horde"
	else
		Spy.EnemyFactionName = "Alliance"
	end
	Spy.CharacterName = UnitName("player")

	Spy.ValidClasses = {
		["DRUID"] = true,
		["HUNTER"] = true,
		["MAGE"] = true,
		["PALADIN"] = true,
		["PRIEST"] = true,
		["ROGUE"] = true,
		["SHAMAN"] = true,
		["WARLOCK"] = true,
		["WARRIOR"] = true,
	}

	Spy.ValidRaces = {
		["Human"] = true,
		["Orc"] = true,
		["Dwarf"] = true,
		["Tauren"] = true,
		["Troll"] = true,
		["NightElf"] = true,
		["Scourge"] = true,
		["Gnome"] = true,
		["HighElf"] = true,
		["Goblin"] = true,

	}

	local acedb = LibStub:GetLibrary("AceDB-3.0")

	Spy.db = acedb:New("SpyDB", Default_Profile)
	Spy:CheckDatabase()

	--	self.db.RegisterCallback(self, "OnNewProfile", "ResetProfile")
	self.db.RegisterCallback(self, "OnNewProfile", "HandleProfileChanges")
	--	self.db.RegisterCallback(self, "OnProfileReset", "ResetProfile")
	self.db.RegisterCallback(self, "OnProfileReset", "HandleProfileChanges")
	self.db.RegisterCallback(self, "OnProfileChanged", "HandleProfileChanges")
	self.db.RegisterCallback(self, "OnProfileCopied", "HandleProfileChanges")
	self:SetupOptions()

	local ContinentList, _, _ = { GetMapContinents() };

	Spy:BuildZoneIDTable(ContinentList)

	SpyTempTooltip = CreateFrame("GameTooltip", "SpyTempTooltip", nil, "GameTooltipTemplate")
	SpyTempTooltip:SetOwner(UIParent, "ANCHOR_NONE")

	Spy:RegenerateKOSGuildList()
	if Spy.db.profile.ShareKOSBetweenCharacters then
		Spy:RemoveLocalKOSPlayers()
		Spy:RegenerateKOSCentralList()
		Spy:RegenerateKOSListFromCentral()
	end
	Spy:PurgeUndetectedData()
	Spy:CreateMainWindow()
	Spy:CreateKoSButton()
	Spy:UpdateTimeoutSettings()

	--	SM.RegisterCallback(Spy, "LibSharedMedia_Registered", "UpdateBarTextures")
	SM.RegisterCallback(Spy, "LibSharedMedia_SetGlobal", "UpdateBarTextures")
	if Spy.db.profile.BarTexture then
		Spy:SetBarTextures(Spy.db.profile.BarTexture)
	end

	Spy:RefreshCurrentList()

	Spy:LockWindows(Spy.db.profile.Locked)
	--	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", Spy.FilterNotInParty)
	DEFAULT_CHAT_FRAME:AddMessage(L["LoadDescription"])
end

function Spy:ZoneChangedEvent()

	if not Spy.MainWindow then
		Spy:ScheduleTimer("ZoneChangedEvent", 1)
		return
	end

	Spy.InInstance = false
	local pvpType = GetZonePVPInfo()
	local zone = GetZoneText()
	local subZone = GetSubZoneText()
	local InFilteredZone = Spy:InFilteredZone(subZone)
	if pvpType == "sanctuary" or zone == "" or InFilteredZone then
		Spy.EnabledInZone = false
	else
		Spy.EnabledInZone = true

		local inInstance, instanceType = IsInInstance()
		if inInstance then
			Spy.InInstance = true
			if instanceType == "party" or instanceType == "raid" or
				(not Spy.db.profile.EnabledInBattlegrounds and instanceType == "pvp") then
				Spy.EnabledInZone = false
			end

		elseif (pvpType == "friendly" or pvpType == nil) then
			if UnitIsPVP("player") == nil and Spy.db.profile.DisableWhenPVPUnflagged then
				Spy.EnabledInZone = false
			end
		end
	end

	if Spy.EnabledInZone then
		if not Spy.db.profile.HideSpy then
			Spy.MainWindow:Show()
			Spy:RefreshCurrentList()
		end
	else
		Spy.MainWindow:Hide()
	end
end

function Spy:InFilteredZone(subzone)
	local InFilteredZone = false
	for filteredZone, value in pairs(Spy.db.profile.FilteredZones) do
		if subzone == filteredZone and value then
			InFilteredZone = true
			break
		end
	end
	return InFilteredZone
end

local function populateFactionNames(Name, Level, guild, race, Class, lastSeen)
	if Name then
		Spy:AddFriendsData(Name)
		Spy:RemovePlayerFromList(Name)
		Spy:RemovePlayerData(Name)
	end
end

function Spy:GetCensusData()
	if CensusPlus_ForAllCharacters then
		local realmName = g_CensusPlusLocale .. GetCVar("realmName");
		CensusPlus_ForAllCharacters(realmName, UnitFactionGroup("player"), nil, nil, nil, nil, populateFactionNames)
	end
end

local function scanName(name)
	if UnitName("target") == nil then
		Spy.scanningPlayers = true
		TargetByName(name, true)
		Spy:PlayerTargetEvent()
		ClearTarget()
		Spy.scanningPlayers = nil
	end
end

function Spy:PlayerTargetEvent()
	local name = GetUnitName("target", true)
	if name and UnitIsPlayer("target") and not SpyPerCharDB.IgnoreData[name] then
		local playerData = SpyPerCharDB.PlayerData[name]
		if UnitIsEnemy("player", "target") then
			local learnt = true
			if playerData and playerData.isGuess == false then learnt = false end

			local _, class = UnitClass("target")
			local race, _ = UnitRace("target")
			local level = tonumber(UnitLevel("target"))
			local guild = GetGuildInfo("target")
			local guess = false
			if level == Spy.Skull then
				if playerData and playerData.level then
					if playerData.level > (UnitLevel("player") + 10) and playerData.level < Spy.MaximumPlayerLevel then
						guess = true
						level = nil
					elseif UnitLevel("player") < Spy.MaximumPlayerLevel - 9 then
						guess = true
						level = UnitLevel("player") + 10
					end
				else
					guess = true
					level = UnitLevel("player") + 10
				end
			end

			Spy:UpdatePlayerData(name, class, level, race, guild, true, guess)
			if Spy.EnabledInZone then
				Spy:AddDetected(name, time(), learnt)
			end
		else
			Spy:AddFriendsData(name)
			if playerData then
				Spy:RemovePlayerFromList(name)
				Spy:RemovePlayerData(name)
			end
		end
	else
		Spy:RemovePlayerFromList(name)
		Spy:RemovePlayerData(name)
	end
end

function Spy:PlayerMouseoverEvent()
	local name = GetUnitName("mouseover", true)
	if name and UnitIsPlayer("mouseover") and not SpyPerCharDB.IgnoreData[name] then
		local playerData = SpyPerCharDB.PlayerData[name]
		if UnitIsEnemy("player", "mouseover") then
			local learnt = true
			if playerData and playerData.isGuess == false then learnt = false end

			local _, class = UnitClass("mouseover")
			local race, _ = UnitRace("mouseover")
			local level = tonumber(UnitLevel("mouseover"))
			local guild = GetGuildInfo("mouseover")
			local guess = false
			if level == Spy.Skull then
				if playerData and playerData.level then
					if playerData.level > (UnitLevel("player") + 10) and playerData.level < Spy.MaximumPlayerLevel then
						guess = true
						level = nil
					elseif UnitLevel("player") < Spy.MaximumPlayerLevel - 9 then
						guess = true
						level = UnitLevel("player") + 10
					end
				else
					guess = true
					level = UnitLevel("player") + 10
				end
			end

			Spy:UpdatePlayerData(name, class, level, race, guild, true, guess)
			if Spy.EnabledInZone then
				Spy:AddDetected(name, time(), learnt)
			end
		else
			Spy:AddFriendsData(name)
			if playerData then
				Spy:RemovePlayerFromList(name)
				Spy:RemovePlayerData(name)
			end
		end
	else
		Spy:RemovePlayerFromList(name)
		Spy:RemovePlayerData(name)
	end
end

local playerName = UnitName("player")
function Spy:CombatLogEvent(event, info) --_, timestamp, event, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...)
	if not info then return end
	if info.type == "death" then
		Spy:DeathLog(event, info)
		return
	end
	local source = info.source and (info.source == ParserLib_SELF and playerName or info.source) or nil
	local victim = info.victim and (info.victim == ParserLib_SELF and playerName or info.victim) or nil

	if Spy.EnabledInZone then
		if event == "CHAT_MSG_SPELL_AURA_GONE_OTHER" then
			if (info.skill == BS["Stealth"] or info.skill == BS["Prowl"]) and not Spy:PlayerIsFriend(victim) then
				scanName(victim)
				Spy:AlertStealthPlayer(victim)
			end
			return
		end

		-- analyse the source unit
		if source and source ~= playerName and not Spy:PlayerIsFriend(source) and not SpyPerCharDB.IgnoreData[source] and
			not find(source, " ") and not find(source, "Unknown") then

			local learnt = false
			local detected = true
			local playerData = SpyPerCharDB.PlayerData[source]
			if not playerData or playerData.isGuess then
				learnt, playerData = Spy:ParseUnitAbility(true, info.type, source, info.skill)
			end
			if not learnt then
				scanName(source)
				detected = Spy:UpdatePlayerData(source, nil, nil, nil, nil, true, nil)
			end

			if detected then
				Spy:AddDetected(source, time(), learnt)

			end

			if victim == playerName then
				Spy.LastAttack = info.source
			end

		end

		-- analyse the destination unit
		if victim and victim ~= playerName and not Spy:PlayerIsFriend(victim) and not SpyPerCharDB.IgnoreData[victim] and
			not find(victim, " ") and not find(victim, "Unknown") then
			local learnt = false
			local detected = true
			local playerData = SpyPerCharDB.PlayerData[victim]
			if not playerData or playerData.isGuess then
				learnt, playerData = Spy:ParseUnitAbility(not source, info.type, victim, info.skill)
			end
			if not learnt then
				scanName(victim)
				detected = Spy:UpdatePlayerData(victim, nil, nil, nil, nil, true, nil)
			end

			if detected then
				Spy:AddDetected(victim, time(), learnt)
			end
		end
	end
end

function Spy:DeathLog(event, info)
	-- update win statistics
	--printT({"DeathLog", event, info})
	if info.source == ParserLib_SELF and info.victim then
		local playerData = SpyPerCharDB.PlayerData[info.victim]
		if playerData then
			if not playerData.wins then playerData.wins = 0 end
			playerData.wins = playerData.wins + 1
		end
	end
	if info.victim == ParserLib_SELF and (info.source or Spy.LastAttack) then
		local playerData = SpyPerCharDB.PlayerData[info.source or Spy.LastAttack]
		if playerData then
			if not playerData.loses then playerData.loses = 0 end
			playerData.loses = playerData.loses + 1
		end
	end

end

function Spy:LeftCombatEvent()
	Spy.LastAttack = nil
	Spy:RefreshCurrentList()
end

function Spy:WorldMapUpdateEvent()
	if not Spy.MapNoteList then
		Spy:ScheduleTimer("WorldMapUpdateEvent", 1)
		return
	end
	for i = 1, Spy.MapNoteLimit do
		local note = Spy.MapNoteList[i]
		if note.displayed then
			Astrolabe:PlaceIconOnWorldMap(WorldMapButton, note.worldIcon, note.continentIndex, note.zoneIndex, note.mapX,
				note.mapY)
			Astrolabe:PlaceIconOnMinimap(note.miniIcon, note.continentIndex, note.zoneIndex, note.mapX, note.mapY)
		end
	end
end

function Spy:CommReceived(prefix, message, distribution, source)
	if Spy.EnabledInZone and Spy.db.profile.UseData then
		if prefix == Spy.Signature and message and source ~= Spy.CharacterName then
			local version, player, class, level, race, zone, subZone, mapX, mapY, guild = strsplit(",", message)
			if player ~= nil and (not Spy.InInstance or zone == GetZoneText()) and not Spy:PlayerIsFriend(player) then
				if not Spy.PlayerCommList[player] then
					local upgrade = Spy:VersionCheck(Spy.Version, version)
					if upgrade and not Spy.UpgradeMessageSent then
						DEFAULT_CHAT_FRAME:AddMessage(L["UpgradeAvailable"])
						Spy.UpgradeMessageSent = true
					end
					if strlen(class) > 0 then
						if not Spy.ValidClasses[class] then
							return
						end
					else
						class = nil
					end
					if strlen(level) > 0 then
						level = tonumber(level)
						if type(level) == "number" then
							if level < 1 or level > Spy.MaximumPlayerLevel or math.floor(level) ~= level then
								return
							end
						else
							return
						end
					else
						level = nil
					end
					if strlen(race) > 0 then
						if not Spy.ValidRaces[race] then
							return
						end
						if (
							Spy.EnemyFactionName == "Alliance" and race ~= "Dwarf" and race ~= "Gnome" and race ~= "Human" and
								race ~= "Night Elf" and race ~= "High Elf")
							or
							(
							Spy.EnemyFactionName == "Horde" and race ~= "Orc" and race ~= "Tauren" and race ~= "Troll" and race ~= "Undead"
								and race ~= "Goblin") then
							return
						end
					else
						race = nil
					end
					if strlen(zone) > 0 then
						if not Spy:GetZoneID(zone) then
							return
						end
					else
						zone = nil
					end
					if strlen(subZone) == 0 then
						subZone = nil
					end
					if strlen(mapX) > 0 then
						mapX = tonumber(mapX)
						if type(mapX) == "number" and mapX >= 0 and mapX <= 1 then
							mapX = math.floor(mapX * 100) / 100
						else
							return
						end
					else
						mapX = nil
					end
					if strlen(mapY) > 0 then
						mapY = tonumber(mapY)
						if type(mapY) == "number" and mapY >= 0 and mapY <= 1 then
							mapY = math.floor(mapY * 100) / 100
						else
							return
						end
					else
						mapY = nil
					end
					if strlen(guild) > 0 then
						if strlen(guild) > 24 then
							return
						end
					else
						guild = nil
					end

					local learnt, playerData = Spy:ParseUnitDetails(player, class, level, race, zone, subZone, mapX, mapY, guild)
					if playerData and playerData.isEnemy and not SpyPerCharDB.IgnoreData[player] then
						Spy.PlayerCommList[player] = Spy.CurrentMapNote
						Spy:AddDetected(player, time(), learnt, source)
						if Spy.db.profile.DisplayOnMap then
							Spy:ShowMapNote(player)
						end
					end
				end
			end
		end
	end
end

function Spy:VersionCheck(version1, version2)
	local major1, minor1, update1 = strsplit("%.", version1)
	local major2, minor2, update2 = strsplit("%.", version2)
	major1, minor1, update1 = tonumber(major1), tonumber(minor1), tonumber(update1)
	major2, minor2, update2 = tonumber(major2), tonumber(minor2), tonumber(update2)
	if major1 < major2 then
		return true
	elseif ((major1 == major2) and (minor1 < minor2)) then
		return true
	elseif ((major1 == major2) and (minor1 == minor2) and (update1 < update2)) then
		return true
	else
		return false
	end
end

function Spy:TrackHumanoids()
	local tooltip = GameTooltipTextLeft1:GetText()
	if tooltip and tooltip ~= Spy.LastTooltip then
		tooltip = Spy:ParseMinimapTooltip(tooltip)
		if Spy.db.profile.MinimapDetails then
			GameTooltipTextLeft1:SetText(tooltip)
			Spy.LastTooltip = tooltip
		end
		GameTooltip:Show()
	end
end

function Spy:FilterNotInParty(frame, event, message)
	if (event == ERR_NOT_IN_GROUP or event == ERR_NOT_IN_RAID) then
		return true
	end
	return false
end

function Spy:ShowMapNote(player)
	local playerData = SpyPerCharDB.PlayerData[player]
	if playerData then
		local currentContinentIndex, currentZoneIndex = Spy:GetZoneID(GetZoneText())
		local continentIndex, zoneIndex = Spy:GetZoneID(playerData.zone)
		local mapX, mapY = playerData.mapX, playerData.mapY
		if continentIndex ~= nil and zoneIndex ~= nil and type(playerData.mapX) == "number" and
			type(playerData.mapY) == "number" and
			(
			Spy.db.profile.MapDisplayLimit == "None" or
				(Spy.db.profile.MapDisplayLimit == "SameZone" and zoneIndex == currentZoneIndex) or
				(Spy.db.profile.MapDisplayLimit == "SameContinent" and continentIndex == currentContinentIndex)) then
			local note = Spy.MapNoteList[Spy.CurrentMapNote]
			note.displayed = true
			note.continentIndex = continentIndex
			note.zoneIndex = zoneIndex
			note.mapX = mapX
			note.mapY = mapY
			local mapScale = MinimapCluster:GetScale()
			note.miniIcon:SetWidth(24 / mapScale)
			note.miniIcon:SetHeight(24 / mapScale)
			mapScale = WorldMapFrame:GetScale()
			note.worldIcon:SetWidth(28 * mapScale)
			note.worldIcon:SetHeight(28 * mapScale)
			note.worldIcon:Show()

			Astrolabe:PlaceIconOnWorldMap(WorldMapButton, note.worldIcon, continentIndex, zoneIndex, mapX, mapY)
			Astrolabe:PlaceIconOnMinimap(note.miniIcon, note.continentIndex, note.zoneIndex, note.mapX, note.mapY)

			for i = 1, Spy.MapNoteLimit do
				if i ~= Spy.CurrentMapNote and Spy.MapNoteList[i].displayed then
					if continentIndex == Spy.MapNoteList[i].continentIndex and zoneIndex == Spy.MapNoteList[i].zoneIndex and
						abs(mapX - Spy.MapNoteList[i].mapX) < Spy.MapProximityThreshold and
						abs(mapY - Spy.MapNoteList[i].mapY) < Spy.MapProximityThreshold then
						Spy.MapNoteList[i].displayed = false
						Spy.MapNoteList[i].worldIcon:Hide()
						Astrolabe:RemoveIconFromMinimap(Spy.MapNoteList[i].miniIcon)
						for player in pairs(Spy.PlayerCommList) do
							if Spy.PlayerCommList[player] == i then
								Spy.PlayerCommList[player] = Spy.CurrentMapNote
							end
						end
					end
				end
			end

			Spy.CurrentMapNote = Spy.CurrentMapNote + 1
			if Spy.CurrentMapNote > Spy.MapNoteLimit then
				Spy.CurrentMapNote = 1
			end
		end
	end
end

function Spy:GetPlayerLocation(playerData)
	local location = playerData.zone
	local mapX = playerData.mapX
	local mapY = playerData.mapY
	if location and playerData.subZone and playerData.subZone ~= "" and playerData.subZone ~= location then
		location = playerData.subZone .. ", " .. location
	end
	if mapX and mapX ~= 0 and mapY and mapY ~= 0 then
		location = location .. " (" .. math.floor(tonumber(mapX) * 100) .. "," .. math.floor(tonumber(mapY) * 100) .. ")"
	end
	return location
end

local modf = math.modf or function(num)
	local int = math.floor(num)
	local frac = math.abs(num) - math.abs(int)

	return int, frac
end
function Spy:FormatTime(timestamp)
	if timestamp == 0 then return "Long " end

	local age = time() - timestamp

	local days
	if age >= 86400 then
		days = modf(age / 86400)
		age = age - (days * 86400)
	end

	local hours
	if age >= 3600 then
		hours = modf(age / 3600)
		age = age - (hours * 3600)
	end

	local minutes
	if age >= 60 then
		minutes = modf(age / 60)
		age = age - (minutes * 60)
	end

	local seconds = age

	local text = (days and days .. "d " or "") ..
		((hours and not days) and hours .. "h " or "") ..
		((minutes and not hours and not days) and minutes .. "m " or "") ..
		((seconds and not minutes and not hours and not days) and seconds .. "s " or "")

	return strtrim(text)
end

-- recieves pointer to SpyData db
function Spy:SetDataDb(val)
	Spy_db = val
end
