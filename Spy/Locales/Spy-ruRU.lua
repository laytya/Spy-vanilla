local L = LibStub("AceLocale-3.0"):NewLocale("Spy", "ruRU")
if not L then return end
-- TOC Note: Обнаруживает и предупреждает вас о присутствии ближайших вражеских игроков.


-- Addon information
L["Spy"] = "Шпион"
L["Version"] = "Версия"
L["LoadDescription"] = "|cff9933ffАддон Шпион загружен. Введите |cffffffff/spy|cff9933ff для настроек."
L["SpyEnabled"] = "|cff9933ffАддон Шпион включён."
L["SpyDisabled"] = "|cff9933ffАддон Шпион выключен. Введите |cffffffff/spy show|cff9933ff чтобы включить."
L["UpgradeAvailable"] = "|cff9933ffДоступна новая версия Шпиона. Его можно загрузить с:\n|cffffffffhttps://github.com/laytya/Spy"

-- Configuration strings
L["Profiles"] = "Профили"

L["About"] = "Информация"
L["SpyDescription1"] = [[
Шпион это аддон, который будет предупреждать вас о присутствии рядом вражеских игроков..
]]

L["SpyDescription2"] = [[

|cffffd000Список Поблизости|cffffffff
В «Список Поблизости» отображаются все вражеские игроки, которые были обнаружены поблизости. Щелчок по списку позволяет вам нацелиться на игрока, однако это работает только вне боя. Игроки удаляются из списка, если они не были обнаружены в течение определенного периода времени.

Кнопка очистить в строке заголовка может быть использована для очистки списка, а удерживание Control при очистке списка позволит вам быстро включить/отключить Шпион.

|cffffd000Список Последний час|cffffffff
В списке «Последний час» отображаются все враги, обнаруженные за последний час.

|cffffd000Список Игнорировать|cffffffff
Об игроках, добавленных в список игнорирования, Шпион сообщать не будет. Вы можете добавлять и удалять игроков в/из этого списка, используя кнопку выпадающего меню или удерживая клавишу Control при нажатии кнопки.

|cffffd000Список Kill On Sight|cffffffff
Игроки из вашего списка Kill On Sight вызывают звуковой сигнал при обнаружении. Вы можете добавлять и удалять игроков из этого списка, используя кнопку выпадающего меню или или удерживая клавишу Shift при нажатии кнопки.

Выпадающее меню также можно использовать для указания причин, по которым вы добавили кого-либо в список "Убить на месте". Если вы хотите ввести конкретную причину, которой нет в списке, то используйте "Введите свою собственную причину..." в другом списке.

]]

L["SpyDescription3"] = [[
|cffffd000 Окно статистики |cffffffff
Окно статистики содержит список всех встреч с врагами, который можно отсортировать по имени, уровню, гильдии, победам, поражениям и времени последнего обнаружения врага. Он также предоставляет возможность поиска конкретного врага по имени или гильдии и имеет фильтры, позволяющие показывать только врагов, помеченных как "Убить на месте", с указанием победы/поражения или введенных причин.

|cffffd000 Кнопка Kill On Sight |cffffffff
Если эта кнопка включена, она будет расположена в окне цели вражеских игроков. Нажатие на эту кнопку добавит/удалит вражескую цель в/из списка Kill On Sight. Щелчок правой кнопкой мыши на кнопке позволит вам ввести причины убийства на месте.

|cffffd000 Автор:|cffffffff Slipjack
|cffffd000 Партировал на ваниллу:|cffffffff LaYt
]]

-- General Settings
L["GeneralSettings"] = "Основные настройки"
L["GeneralSettingsDescription"] = [[
Параметры, когда Шпион включен или отключен.
]] 
L["EnableSpy"] = "Включить Шпион"
L["EnableSpyDescription"] = "Включить либо отключить Шпион."
L["EnabledInBattlegrounds"] = "Включить Шпион на полях боя"
L["EnabledInBattlegroundsDescription"] = "Включить либо отключить Шпион пока вы на поле боя."
L["DisableWhenPVPUnflagged"] = "Отключить Шпион если у вас выключен PvP режим"
L["DisableWhenPVPUnflaggedDescription"] = "Включить либо отключить Шпион в зависимости от вашего PvP статуса."
L["DisabledInZones"] = "Отключить Шпион, находясь в этих местах:"
L["DisabledInZonesDescription"]	= "Выберите места, где Шпион будет отключен."
L["Booty Bay"] = "Пиратская Бухта"
L["Everlook"] = "Круговзор"
L["Gadgetzan"] = "Прибамбасск"
L["Ratchet"] = "Кабестан"
--L["The Salty Sailor Tavern"] = "Таверна \"Старый моряк\""
--L["Shattrath City"] = "Шаттрат"
--L["Area 52"] = "Зона 52"
--L["Dalaran"] = "Даларан"
--L["Dalaran (Northrend)"] = "Даларан (Нордскол)"
--L["Bogpaddle"] = "Веслотопь"
--L["The Vindicaar"] = "Виндикар"
--L["Krasus' Landing"] = "Площадка Краса"
--L["The Violet Gate"] = "Аметистовые врата"
--L["Magni's Encampment"] = "Лагерь Магни"
--L["Silithus"] = "Силитус"
--L["Chamber of Heart"] = "Зал Сердца"
--L["Hall of Ancient Paths"] = "Зал Древних Путей"
--L["Sanctum of the Sages"] = "Святилище жрецов"
--L["Rustbolt"] = "Ржавый болт"
--L["Oribos"] = "Орибос"


L["DisplayOptions"] = "Отображение"
L["DisplayOptionsDescription"] = [[
Настройки для окна Шпиона и всплывающих подсказок.
]]
L["ShowOnDetection"] = "Показать Шпион, если вражеские игроки обнаружены"
L["ShowOnDetectionDescription"] = "Отображение окна Шпиона и «Список Поблизости», если Шпион скрыт во время обнаружения врага."
L["HideSpy"] = "Скрыть Шпион, если вражеские игроки не обнаружены"
L["HideSpyDescription"] = "Скрыть Шпион если «Список Поблизости» включен для показа и пуст. Шпион не будет скрыт, если вы очистите список вручную."
--L["ShowOnlyPvPFlagged"] = "Показать только вражеских игроков, помеченных для PvP"
--L["ShowOnlyPvPFlaggedDescription"] = "Показывать в Nearby list только врагов с включенным PvP флагом."
L["ShowKoSButton"] = "Показывать Kill On Sight кнопку в окне цели врага"
L["ShowKoSButtonDescription"] = "Включите, чтобы показать кнопку Kill on Sight KOS кнопку в окне цели вражеского игрока."
L["Alpha"] = "Прозрачность"
L["AlphaDescription"] = "Установите прозрачность окна Шпиона."
L["AlphaBG"] = "Прозрачность на полях сражений"
L["AlphaBGDescription"] = "Установите прозрачность окна Шпиона на полях сражений."
L["LockSpy"] = "Зафиксировать окно Шпиона"
L["LockSpyDescription"] = "Блокирует окно Шпиона, чтобы оно не двигалось."
L["ClampToScreen"] = "Прикрепить к экрану"
L["ClampToScreenDescription"] = "Управляет возможностью перемещения окна Шпиона с экрана."
L["InvertSpy"] = "Инвертировать окно Шпиона"
L["InvertSpyDescription"] = "Переворачивает окно Шпиона наоборот."
L["Reload"] = "Перезагрузить UI"
L["ReloadDescription"] = "Требуется при изменении окна Шпиона."
L["ResizeSpy"] = "Изменять размер окна Шпиона автоматически"
L["ResizeSpyDescription"] = "Автоматически измененять размер окна Шпиона, когда вражеские игроки добавляются и удаляются."
L["ResizeSpyLimit"] = "Предел списка"
L["ResizeSpyLimitDescription"] = "Ограничьте количество вражеских игроков, отображаемых в окне Шпиона."
L["DisplayTooltipNearSpyWindow"] = "Отображать всплывающую подсказку возле окна Шпиона"
L["DisplayTooltipNearSpyWindowDescription"] = "Выберите это, чтобы отобразить всплывающую подсказку рядом с окном Шпиона."
L["SelectTooltipAnchor"] = "Точка привязки всплывающей подсказки"
L["SelectTooltipAnchorDescription"] = "Выберите точку привязки для всплывающей подсказки, если предыдущая опция была включена."
L["ANCHOR_CURSOR"] = "Курсор"
L["ANCHOR_TOP"] = "Вверх"
L["ANCHOR_BOTTOM"] = "Низ"
L["ANCHOR_LEFT"] = "Лево"
L["ANCHOR_RIGHT"] = "Право"
L["TooltipDisplayWinLoss"] = "Показывать статистику убийства/смертей в всплывающей подсказке"
L["TooltipDisplayWinLossDescription"] = "Выберите это, чтобы показать статистику убийств / смертей во всплывающей подсказке."
L["TooltipDisplayKOSReason"] = "Показывать причину Kill On Sight в всплывающей подсказке"
L["TooltipDisplayKOSReasonDescription"] = "Выберите это, чтобы показать причину Kill On Sight в подсказке."
L["TooltipDisplayLastSeen"] = "Показывать детали последней встречи"
L["TooltipDisplayLastSeenDescription"] = "Показывать время и местоположение о последней встречи в всплывающей подсказке."
L["DisplayListData"] = "Выберите данные противника для отображения"
L["Name"] = "Имя"
L["Class"] = "Класс"
L["SelectFont"] = "Выберите Шрифт"
L["SelectFontDescription"] = "Выберите Шрифт для окна Шпиона."
L["RowHeight"] = "Выберите высоту строки"
L["RowHeightDescription"] = "Выберите высоту строки для окна Шпиона."
L["Texture"] = "Текстура"
L["TextureDescription"] = "Выберите текстуру для окна Шпиона."


L["AlertOptions"] = "Оповещения"
L["AlertOptionsDescription"] = [[
Варианты оповещений, объявлений и предупреждений при обнаружении вражеских игроков.
]]
L["SoundChannel"] = "Выберите звуковой канал"
L["Master"] = "Общая громкость"
L["SFX"] = "Звук"
L["Music"] = "Музыка"
L["Ambience"] = "Мир"
L["Announce"] = "Отправить сообщать на:"
L["None"] = "Не сообщать"
L["NoneDescription"] = "Не предупреждать о встреченных врагах."
L["Self"] = "Для себя"
L["SelfDescription"] = "Сообщать о встреченных врагах только для игрока."
L["Party"] = "Группа"
L["PartyDescription"] = "Сообщать о встреченных врагах в канал группы."
L["Guild"] = "Гильдия"
L["GuildDescription"] = "Сообщать о встреченных врагах в канал гильдии."
L["Raid"] = "Рейд"
L["RaidDescription"] = "Сообщать о встреченных врагах в канал рейда."
L["LocalDefense"] = "Канал обороны"
L["LocalDefenseDescription"] = "Сообщать о встреченных врагах в канал обороны."
L["OnlyAnnounceKoS"] = "Только сообщать врагов в списке Kill on Sight"
L["OnlyAnnounceKoSDescription"] = "Выберите это, чтобы сообщать только о врагах в списке Kill On Sight."
L["WarnOnStealth"] = "Предупреждать о применении Незаметности"
L["WarnOnStealthDescription"] = "Предупреждать о входе врагов в Незаметность с помощью сообщения и звукового сигнала."
L["WarnOnKOS"] = "Предупреждать о обнаружении врага из списка Kill On Sight"
L["WarnOnKOSDescription"] = "Отображать предупреждение и подавать звуковой сигнал при обнаружении вражеского игрока в вашем списке Kill On Sight."
L["WarnOnKOSGuild"] = "Предупредить об обнаружении гильдии Kill On Sight"
L["WarnOnKOSGuildDescription"] = "Отображать предупреждение и подавать сигнал тревоги, когда обнаружен вражеский игрок из той же гильдии, что и кто-то из вашего списка Kill On Sight."
L["WarnOnRace"] = "Предупреждать об обнаружении нужной расы"
L["WarnOnRaceDescription"] = "Проигрывать сигнал тревоги при обнаружении выбранной расы"
L["SelectWarnRace"] = "Выберите расу для отслеживания"
L["SelectWarnRaceDescription"] = "Выберите расу для звукового предупреждения."
L["WarnRaceNote"] = "Примечание: Вы должны поразить врага хотя бы один раз, чтобы его раса могла быть добавлена в базу данных. При следующем обнаружении прозвучит предупреждение. Это не работает так же, как обнаружение ближайших врагов в бою."
--L["DisplayWarningsInErrorsFrame"] = "Отображать предупреждения в рамке ошибок"
--L["DisplayWarningsInErrorsFrameDescription"] = "Использовать фрейм ошибок для отображения предупреждений вместо использования графических всплывающих фреймов."
L["DisplayWarnings"] = "Выберите местоположение сообщения с предупреждением"
L["Default"] = "По умолчанию"
L["ErrorFrame"] = "Ошибка окна"
L["Moveable"] = "Перемещаемая"
L["EnableSound"] = "Включить звуковые оповещения"
L["EnableSoundDescription"] = "Включить звуковые оповещения при обнаружении вражеских игроков. Разные оповещения звучат, если вражеский игрок получает скрытность или если вражеский игрок находится в списке Kill On Sight."
L["OnlySoundKoS"] = "Оповещать о враге из списка Kill On Sight только звуком"
L["OnlySoundKoSDescription"] = "Воспроизводить звуковые оповещения только при обнаружении вражеских игроков из списка Kill on Sight."
L["StopAlertsOnTaxi"] = "Отключить оповещения, при полёте"
L["StopAlertsOnTaxiDescription"] = "Отключить все новые оповещения, при полёте."

L["ListOptions"] = "Список Поблизости"
L["ListOptionsDescription"] = [[
Вы можете настроить, как Шпион будет добавлять и удалять вражеских игроков в «Список Поблизости».
]]
L["RemoveUndetected"] = "Удалить вражеских игроков из «Списка Поблизости» после:"
L["1Min"] = "1 минуты"
L["1MinDescription"] = "Удалять игрока из «Списка Поблизости» если его видели более 1 минуты назад."
L["2Min"] = "2 минуты"
L["2MinDescription"] = "Удалять игрока из «Списка Поблизости» если его видели более 2 минуты назад."
L["5Min"] = "5 минут"
L["5MinDescription"] = "Удалять игрока из «Списка Поблизости» если его видели более 5 минуты назад."
L["10Min"] = "10 минут"
L["10MinDescription"] = "Удалять игрока из «Списка Поблизости» если его видели более 10 минуты назад."
L["15Min"] = "15 минут"
L["15MinDescription"] = "Удалять игрока из «Списка Поблизости» если его видели более 15 минуты назад."
L["Never"] = "Никогда не удалять"
L["NeverDescription"] = "Никогда не удалять игроков. «Списка Поблизости» может быть очищен вручную."
L["ShowNearbyList"] = "Переключаться на «Список Поблизости» при обнаружении противника"
L["ShowNearbyListDescription"] = "Отображать «Список Поблизости» если в нём ниодного врага."
L["PrioritiseKoS"] = "Расставьте приоритеты врагов Kill on Sight в Списке поблизости"
L["PrioritiseKoSDescription"] = "Всегда показывать врагов из Kill On Sight списка в верху «Списка Поблизости»."

-- Map
L["MapOptions"] = "Карта"
L["MapOptionsDescription"] = [[
Параметры карты мира и миникарты, включая значки и всплывающие подсказки.
]]
L["MinimapDetection"] = "Включить обнаружение миникарты"
L["MinimapDetectionDescription"] = "Наведение курсора на известных вражеских игроков, обнаруженных на миникарте, добавит их в «Список Поблизости»."
L["MinimapNote"] = "          Примечание: работает только для игроков, которые могут отслеживать гуманоидов."
L["MinimapDetails"] = "Отображать уровень/класс в подсказках"
L["MinimapDetailsDescription"] = "Установите это, чтобы обновить всплывающие подсказки карты, чтобы детали уровня/класса отображались вместе с именами врагов."
L["DisplayOnMap"] = "Отображать значки на карте"
L["DisplayOnMapDescription"] = "Отображать значки карты для определения местоположения других пользователей Шпиона в вашей группе, рейде и гильдии, когда они обнаруживают врагов."
L["SwitchToZone"] = "Переключить карту на текущую зону при обнаружении врага"
L["SwitchToZoneDescription"] = "Если открыта карта мира зона просмотра автоматически переключится на текущую локацию при обнаружении врага."
L["MapDisplayLimit"] = "Ограничение отображения иконок на карте:"
L["LimitNone"] = "Везде"
L["LimitNoneDescription"] = "Отображает обнаруженных врагов вне зависимости от того в какой локации вы находитесь."
L["LimitSameZone"] = "Текущая зона"
L["LimitNoneDescription"] = "Отображает обнаруженных врагов вне зависимости от того в какой локации вы находитесь."
L["LimitSameContinent"] = "Текущий континент"
L["LimitSameContinentDescription"] = "Отображает обнаруженных врагов только в пределах вашей текущего континента."

-- Data Management
L["DataOptions"] = "Управление данными"
L["DataOptionsDescription"] = [[

Настройки того, как Шпион поддерживает и собирает данные.
]]
L["PurgeData"] = "Очистить запись игрока, если вы не видели их после:"
L["OneDay"] = "1 день"
L["OneDayDescription"] = "Очищать запись об игроке, если вы не встречали его 1 день."
L["FiveDays"] = "5 дней"
L["FiveDaysDescription"] = "Очищать запись об игроке, если вы не встречали его 5 дней."
L["TenDays"] = "10 дней"
L["TenDaysDescription"] = "Очищать запись об игроке, если вы не встречали его 10 дней."
L["ThirtyDays"] = "30 дней"
L["ThirtyDaysDescription"] = "Очищать запись об игроке, если вы не встречали его 30 дней."
L["SixtyDays"] = "60 дней"
L["SixtyDaysDescription"] = "Очищать запись об игроке, если вы не встречали его 60 дней."
L["NinetyDays"] = "90 дней"
L["NinetyDaysDescription"] = "Очищать запись об игроке, если вы не встречали его 90 дней."
L["PurgeKoS"] = "Очистить игроков Kill on Sight на основе необнаруженного времени"
L["PurgeKoSDescription"] = "Установите это, чтобы очистить игроков Kill on Sight, которые не были обнаружены, основываясь на настройках времени для необнаруженных игроков."
L["PurgeWinLossData"] = "Очистить данные о выигрышах/проигрышах на основе необнаруженного времени"
L["PurgeWinLossDataDescription"] = "Установите это, чтобы очистить данные о выигрышах/поражениях ваших вражеских столкновений на основе настроек времени для необнаруженных игроков."
L["ShareData"] = "Делиться данными с другими пользователями аддона Шпион"
L["ShareDataDescription"] = "Установите это, чтобы поделиться информацией о встречах вашего вражеского игрока с другими пользователями Шпиона в вашей группе, рейде и гильдии."
L["UseData"] = "Использовать данные других пользователей Шпиона"
L["UseDataDescription"] = [[Установите это, чтобы использовать данные, собранные другими пользователями Шпиона в вашей группе, рейде и гильдии.

Если другой пользователь Шпиона обнаружит вражеского игрока, то этот вражеский игрок будет добавлен в ваш «Список Поблизости«, если есть место.
]]
L["ShareKOSBetweenCharacters"] = "Использовать общий список Kill On Sight для ваших персонажей"
L["ShareKOSBetweenCharactersDescription"] = "Использовать общий список Kill On Sight для ваших персонажей на этом сервере и фракции."

L["SlashCommand"] = "Слэш команды"
L["SpySlashDescription"] = "Эти кнопки выполняют те же функции, что и команды слэша /spy"
L["Enable"] = "Enable"
L["EnableDescription"] = "Включить Шпион и показать главное окно."
L["Show"] = "Show"
L["ShowDescription"] = "Показать главное окно."
L["Hide"] = "Hide"
L["HideDescription"] = "Скрывает главное окно."
L["Reset"] = "Reset"
L["ResetDescription"] = "Сбросить позицию и показ главного окна."
L["ClearSlash"] = "Clear"
L["ClearSlashDescription"] = "Очистить «Список Поблизости»."
L["Config"] = "Config"
L["ConfigDescription"] = "Открыть окно настроек аддона Шпион."
L["KOS"] = "KOS"
L["KOSDescription"] = "Добавить/удалить игрока в/из список Kill On Sight."
L["InvalidInput"] = "Неверный Ввод"
L["Ignore"] = "Ignore"
L["IgnoreDescription"] = "Добавить/удалить игрока в/из список игнорируемых."
L["Test"] = "Test"
L["TestDescription"] = "Отображает предупреждение, чтобы вы могли изменить его положение."

-- Lists
L["Nearby"] = "Поблизости"
L["LastHour"] = "Последний час"
L["Ignore"] = "Игнорировать"
L["KillOnSight"] = "Kill On Sight"

--Stats
L["Won"] = "Побед"
L["Lost"] = "Поражений"
L["Time"] = "Время"
L["List"] = "В списке"
L["Filter"] = "Фильтр"
L["Show Only"] = "Показывать только"
L["Realm"] = "Realm" --БК-- ???
L["KOS"] = "KOS"
L["Won/Lost"] = "Побед/поражений"
L["Reason"] = "Причина"
L["HonorKills"] = "Почетные убийства" --БК-- ???
L["PvPDeaths"] = "Смерти в PvP" --БК-- ???

--++ Class descriptions
L["DEATHKNIGHT"] = "рыцарь смерти" --БК--
L["DRUID"] = "|cffff7c0aДруид|cffffffff"
L["HUNTER"] = "|cffaad372Охотник|cffffffff"
L["MAGE"] = "|cff68ccefМаг|cffffffff"
L["PALADIN"] = "|cfff48cbaПаладин|cffffffff"
L["PRIEST"] = "|cffffffffЖрец|cffffffff"
L["ROGUE"] = "|cfffff468Разбойник|cffffffff"
L["SHAMAN"] = "|cff2359ffШаман|cffffffff"
L["WARLOCK"] = "|cff9382c9Чернокнижник|cffffffff"
L["WARRIOR"] = "|cffc69b6dВоин|cffffffff"
L["UNKNOWN"] = "|cff191919Неизвестный|cffffffff"

-- Race descriptions
L["Human"] = "Человек"
L["Orc"] = "Орк"
L["Dwarf"] = "Дворф"
L["Tauren"] = "Таурен"
L["Troll"] = "Тролль"
L["Night Elf"] = "Ночной эльф"
L["Undead"] = "Нежить"
L["Gnome"] = "Гном"

-- Stealth abilities
L["Stealth"] = "Незаметность"
L["Prowl"] = "Крадущийся зверь"

-- Channel names
L["LocalDefenseChannelName"] = "ОборонаЛокальный"

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
--L["VersionCheck"] = "|cffc41e3aПредупреждение! Неправильная версия Шпиона установлена. Эта версия предназначена для Burning Crusade Classic."
--L["SpyEnabled"] = "|cff9933ffАддон Шпион включен."
--L["SpyDisabled"] = "|cff9933ffАддон Шпион отключен. Напишите |cffffffff/spy show|cff9933ff  для включения."
--L["UpgradeAvailable"] = "|cff9933ffA Новая версия Шпиона доступна для скачивания. Вы можете загрузить её тут:\n|cffffffffhttps://www.curseforge.com/wow/addons/spy-tbc"
L["AlertStealthTitle"] = "Обнаружен игрок в невидимости!"
L["AlertKOSTitle"] = "Обнаружен враг из списка Kill On Sight!"
L["AlertKOSGuildTitle"] = "Обнаружен враг из гильдии в списке Kill On Sight!"
L["AlertTitle_kosaway"] = "Враг из списка Kill On Sight был замечен "
L["AlertTitle_kosguildaway"] = "Враг из гильдии в списке Kill On Sight был замечен "
L["StealthWarning"] = "|cff9933ffОбнаружен игрок в невидимости: |cffffffff"
L["KOSWarning"] = "|cffff0000Обнаружен враг из списка Kill On Sight: |cffffffff"
L["KOSGuildWarning"] = "|cffff0000Обнаружен враг из гильдии в списке Kill On Sight: |cffffffff"
L["SpySignatureColored"] = "|cff9933ff[Шпион] "
L["PlayerDetectedColored"] = "|cff40ff00Player detected: |cffffffff"
L["KillOnSightDetectedColored"] = "|cffff0000Обнаружен враг из списка Kill On Sight: |cffffffff"
L["PlayerAddedToIgnoreColored"] = "|cffff0000Игрок добавлен в список игнорируемых: |cffffffff"
L["PlayerRemovedFromIgnoreColored"] = "|cff40ff00Игрок удален из списка игнорируемых: |cffffffff"
L["PlayerAddedToKOSColored"] = "|cffff0000Игрок добавлен в список Kill On Sight: |cffffffff"
L["PlayerRemovedFromKOSColored"] = "|cff40ff00Игрок удален из списка Kill On Sight: |cffffffff"
L["PlayerDetected"] = "[Шпион] Обнаружен враг:"
L["KillOnSightDetected"] = "[Шпион] Обнаружен враг из списка Kill On Sight: "
L["Level"] = "Уровень"
L["LastSeen"] = "Последняя встреча"
L["LessThanOneMinuteAgo"] = "меньше минуты назад"
L["MinutesAgo"] = "минут назад"
L["HoursAgo"] = "часов назад"
L["DaysAgo"] = "дней назад"
L["Close"] = "Закрыть"
L["CloseDescription"] = "|cffffffffПрячёт окно Шпиона. По умолчанию оно появится снова когда вы обнаружете врага."
L["Left/Right"] = "Влево/Вправо"
L["Left/RightDescription"] = "|cffffffffПерещает между списками Поблизости, Последний час, Игнорировать и Kill On Sight."
L["Clear"] = "Очистить"
L["ClearDescription"] = "|cffffffffОчищает список обнаруженных игроков. CTRL-Клик включит/отключит Шпиона. Shift-Клик влючит/отключит все звук."
--L["SoundEnabled"] = "Звуковые оповещения включены"
--L["SoundDisabled"] = "Звуковые оповещения отключены"
L["NearbyCount"] = "Враги поблизости"
L["NearbyCountDescription"] = "|cffffffffОтправляет количество ближайших врагов в чат."
L["Statistics"] = "Статистика"
L["StatsDescription"] = "|cffffffffПоказывает список встреченных врагов, победы/поражения и где вы их последний раз видели."
L["AddToIgnoreList"] = "Добавить в список игнорируемых"
L["AddToKOSList"] = "Добавить в список Kill On Sight"
L["RemoveFromIgnoreList"] = "Удалить из списка игнорируемых"
L["RemoveFromKOSList"] = "Удалить из списка Kill On Sight"
L["RemoveFromStatsList"] = "Удалить из списка статистики"
L["AnnounceDropDownMenu"] = "Сообщить в канал"
L["KOSReasonDropDownMenu"] = "Добавить причину добавления в список Kill On Sight"
L["PartyDropDownMenu"] = "Группу"
L["RaidDropDownMenu"] = "Рейд"
L["GuildDropDownMenu"] = "Гильдию"
L["LocalDefenseDropDownMenu"] = "Локальную Оборону"
L["Player"] = " (Игрок)"
L["KOSReason"] = "Kill On Sight"
L["KOSReasonIndent"] = "    "
L["KOSReasonOther"] = "Введите собственную причину ..."
L["KOSReasonClear"] = "Очистить"
L["StatsWins"] = "|cff40ff00Победы: " --Побед
L["StatsSeparator"] = "  "
L["StatsLoses"] = "|cff0070ddпроигрыши: " --Проигрышей (lowercase)
L["Located"] = "обнаруженный:" --Обнаружен (lowercase)
L["Yards"] = "метры" -- ярдов(lowercase)
--L["LocalDefenseChannelName"] = "ОборонаЛокальный" --был здесь, теперь там -V-

L["Get Census Data"] = "Получить данные переписи"
L["GetCensusData"] = "Получите названия ваших фракций, чтобы отфильтровать их при обнаружении игроков." --врагов?

Spy_KOSReasonListLength = 13
Spy_KOSReasonList = {
	[1] = {
		["title"] = "Начал сражение";
		["content"] = {
			"Устроил мне засаду",
			"Всегда атакует меня, как только увидит",
			"Атаковал меня без причины",
			"Атаковал меня когда я сражался с НПЦ",
			"Атаковал меня около подземелья",
			"Атаковал меня когда я был АФК",
			"Атаковал меня когда я бы на маунте/в полёте",
			"Атаковал меня когда я бы с низким запасом ХП/маны",
			"Столкнул меня с группой врагов",
			"Не атакует без подкрепления",
			"Осмелился бросить мне вызов",
		};
	},
	[2] = {
		["title"] = "Стиль сражения";
		["content"] = {
			"Всегда зовёт помощь",
			"Столкнул меня со скалы",
			"Использует инженерные уловки",
			"Использует слишком много эффектов контроля",
			"Все время спамит одну способность",
			"Заставил меня получить урон прочности",
			"Убил меня и сбежал от моих друзей",
			"Убежал, а потом напал на меня из засады",
			"Всегда удается сбежать",
			"Использует бабл для побега",
			"Удается оставаться в ближнем бою",
			"Удается оставаться на дистанции кайта",
			"Поглощает слишком много урона",
			"Лечение слишком большое",
			"Урон слишком большой",
		};
	},
	[3] = {
		["title"] = "Общее поведение";
		["content"] = {
			"Раздражающий",
			"Грубый",
			"Трусливый",
			"Высокомерный",
			"Самоуверенный",
			"Ненадежный",
			"Эмоциональный",
			"Преследовал меня/друзей",
			"Притворяется хорошим",
			"Эмоция 'этого не произойдет'", --
			"Машет на прощание при слабом здоровье",
			"Пытался успокоить меня помахав рукой",
			"Совершил грязные действия на моем трупе",
			"Смеялся надо мной",
			"Плюнул в меня",
		};
	},
	[4] = {
		["title"] = "Засада";
		["content"] = {
			"Устроил мне засаду",
			"Устроил засаду альту",
			"Устроил засаду малышам",
			"Устроил засаду из невидимости",
			"Устроил засаду на члена гильдии",
			"Устроил засаду на НПЦ/объект задания",
			"Позвал на помощь, чтобы разбить меня толпой",
			"Прокачка превратилась в кошмар",
			"Вынудил меня выйти из системы",
			"Не хочет сражаться с моим мэйном",
		};
	},
	[5] = {
		["title"] = "При выполнении заданий";
		["content"] = {
			"Атаковал меня когда я делал задания",
			"Атаковал меня после того как я помог с заданием",
			"Вмешался в выполнение задания",
			"Начал квест, который я хотел сделать",
			"Убил НПЦ моей фракции",
			"Убил квестового НПЦ",
		};
	},
	[6] = {
		["title"] = "Украл ресурсы";
		["content"] = {
			"Собрал нужную мне траву",
			"Собрал нужную мне руду",
			"Собрал нужные мне ресурсы",
			"Добыл газ из облака, которое я хотел", --"Extracted gas from a cloud I wanted"
			"Убил меня и забрал себе мою цель/редкого НПЦ",
			"Снимал шкуры с убитых мною животных",
			"Забрал мою награду",
			"Рыбачил в моей лунке",
		};
	},
	[7] = {
		["title"] = "Поле боя";
		["content"] = {
			"Всегда грабит трупы",
			"Очень хороший носильщик флага",
			"Backcaps flags or bases", -- возвращает флаги
			"Stealth caps flags or bases", -- крадет флаги
			"Убил меня и взял флаг",
			"Мешает достижению целей на поле боя",
			"Взял усиление, которое я хотел",
			"Forced tank to lose agro", --
			"Вызвал вайп", --
			"Уничтожает осадные машины", --БК--
			"Сбрасывает бомбы", --БК--
			"Обезвреживает бомбы", --БК--
			"Fear bomber", --БК--
		};
	},
	[8] = {
		["title"] = "Реальная жизнь";
		["content"] = {
			"Друг в реальной жизни",
			"Враг в реальной жизни",
			"Распускает обо мне слухи",
			"Жалуется на форумах",
			"Шпионит в пользу другой фракции",
			"Предатель моей фракции",
			"Отказался от сделки",
			"Высокомерный нуб",
			"Ещё один всезнайка",
			"Еще один Джонни-пришедший-недавно",
			"Межфракционный мусорный болтун", --
		};
	},
	[9] = {
		["title"] = "Затруднение";
		["content"] = {
			"Невозможно убить",
			"Выигрывает большую часть времени",
			"Похоже, это честный поединок",
			"Проигрывает большую часть времени",
			"Весело убивать",
			"Легкая честь",
		};
	},
	[10] = {
		["title"] = "Раса";
		["content"] = {
			"Ненавижу расу игрока",
			"Эльфы крови склонны к нарциссизму.", --БК--
			"Дренеи - скользкие космические кальмары", --БК--
			"Дворфы - это короткие волосатые дверные проемы", --табуретки?
			"Гномам место в саду",
			"Люди - праведные зануды",
			"Ночные эльфы обнимают слишком много деревьев",
			"Орки - варвары, разжигающие войну",
			"Таурен должен быть в моем бургере",
			"Тролли должны оставаться на веб-форумах",
			"Нежить - неестественная мерзость",
		};
	},
	[11] = {
		["title"] = "Класс";
		["content"] = {
			"Ненавижу класс игрока",
			"Death Knights are overpowered", --БК--
			"Друиды - грязные животные",
			"Охотники - это легкий режим",
			"Маги - это обманутые интеллектом",
			"Паладины - ханжеские дураки",
			"Священники - благочестивые проповедники",
			"У разбойников нет чести",
			"Шаманы разговаривают с воображаемыми животными",
			"Чернокнижники - некромантские садисты",
			"У воинов проблемы с гневом",
		};
	},
	[12] = {
		["title"] = "Имя";
		["content"] = {
			"У него нелепое имя",
			"Претенциозное имя", --
			"Вариант Леголаса",
			"В имени странные символы",
			"Название гильдии нелепое",
			"В названии гильдии используются только заглавные буквы",
			"В названии гильдии используются заглавные буквы и пробелы.",
			"В названии гильдии указано, что они ненавидят мою фракцию",
		};
	},
	[13] = {
		["title"] = "Прочее";
		["content"] = {
			"Карма",
			"Red is dead", --найти подходящую поговорку
			"Да просто так",
			"Неудачи в PvP",
			"Помеченный для PvP",
			"Не хочет участвовать в PvP",
			"Тратит впустую наше время",
			"Этот игрок - нуб",
			"Я действительно ненавижу этого игрока",
			"Медленно поднимает свой уровень",
			"Использует эксплойты игровой механики",
			"Подозреваемый хакер",
			"Фермер",
			"Прочее...",
		};
	},
}

StaticPopupDialogs["Spy_SetKOSReasonOther"] = {
	text = "Введите причину Kill on Sight для %s:",
	button1 = "Введите",
	button2 = "Отмена",
	timeout = 0,
	hasEditBox = 1,
	whileDead = 1,
	hideOnEscape = 1,
	OnShow = function()
		getglobal(this:GetName().."EditBox"):SetText("");
	end,
    	OnAccept = function(self)
		local reason = getglobal(this:GetParent():GetName().."EditBox"):GetText()
		Spy:SetKOSReason(self.playerName, "Введите собственную причину ...", reason)
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
