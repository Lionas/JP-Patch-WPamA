WPamA.i18n = {
-- Marker (substring) in quest name for detect Veteran Pledge
  VeteranM = "Veteran",
-- Marker (substring) in active quest step text for detect DONE stage
  DoneM = {
    [1] = "Return to",
    [2] = "Talk to",
  },
-- Keybinding string
  KeyBindShowStr = "Show/hide addon window",
  KeyBindChgStr  = "Change addon window mode",
  KeyBindCharStr = "Show/hide characters window",
  KeyBindClndStr = "Show/hide calendar window",
  KeyBindWWBStr  = "Show/hide Wrothgar bosses window",
  KeyBindInvtStr = "Show/hide Miscellaneous window",
  KeyBindPostTd  = "Post today pledges to chat",
  KeyBindRGLA    = "Show/hide RGLA (Raid Group Leader Assistant)",
  KeyBindRGLASrt = "RGLA: Start",
  KeyBindRGLAStp = "RGLA: Stop",
  KeyBindRGLAPst = "RGLA: Post to chat",
  KeyBindRGLAShr = "RGLA: Share quest",
-- No character error string
  NoCharErr = "Error reading character list!",
-- More character. It is the result of removing and adding characters
  MoreCharErr = (WPamA.Consts.RowCnt+1).." or more character detected! Type '/wpa rch' for reset character base.",
-- Caption
  CaptChar = "Characters",
  CaptClnd = "Calendar",
  CaptWWB  = "Wrothgar World Bosses",
  CaptInvt = "Miscellaneous",
-- Labels
  TotalRow = "TOTAL",
  ResetChar = "Reset",
  HdrLvl = "Lvl",
  HdrName = "Name",
  HdrClnd = "Calendar",
  HdrMSL = "MSL",
  HdrSilver = "Normal / Silver",
  HdrGold = "Veteran / Gold",
  OptLocation = "Location instead dungeon name",
  OptENDungeon = "Show the names of dungeons in English", 
  OptDontShowNone = "Show blank instead of \"none\"",
  OptTitleToolTip = "Enable tooltip for the window title",
  SendInvTo = "Sending invite to ",
  RGLABossKilled = "The boss was killed. RGLA is stopped.",
  RGLALeaderChanged = "The group leader was changed. RGLA is stopped.",
  RGLAOptQAutoShare = "Allow auto-sharing of the quest",
  RGLAOptQAlert = "Notify at screen",
  RGLAOptQChat = "Notify to chat",
  RGLAOptBossKilled = "RGLA stop once the boss is killed",
  RGLAShare = "Share",
  RGLAStop = "Stop",
  RGLAPost = "Post",
  RGLAStart = "Start",
  RGLAStarted = "Started",
-- RGLA Errors
  RGLA_ErrBoss = "The boss already killed. RGLA can not be started.",
  RGLA_ErrQuest = "You are don't have daily quest for Wrothgar World Bosses!",
  RGLA_ErrWrothgar = "You are not in Wrothgar right now!",
  RGLA_ErrLeader = "You are not a group leader!",
  RGLA_ErrAI = "Addon AutoInvite is not found or not activated!",
-- Dungeons Status
  DungStDone = "DONE",
  DungStNA = "N/A",
-- Wrothgar Boss Status
  WWBStNone = "none",
  WWBStDone = "DONE",
  WWBStCur  = "CUR",
-- Enlightened
  EnlOn  = "Your characters are Enlightened",
  EnlOff = "Your characters are not Enlightened",
}
WPamA.i18n.ToolTip = {
  [0] = "Close window",
  [1] = "Show/hide Options window",
  [2] = "Change window mode",
  [3] = "Post today pledges to chat",
  [4] = "Your current progress in completing Pledges",
  [5] = "A calendar of current and future pledges",
  [6] = "Your current progress in completing daily quests",
  [7] = "Gold/silver/bronze keys, lockpicks and grand soulgems",
  [8] = "The minimum level which can be scaled dungeon",
--  [9] = "",
  [10] = "Reset characters list",
  [11] = "Gold Undaunted Key",
  [12] = "Silver Undaunted Key",
  [13] = "Bronze Undaunted Key",
  [14] = "Lockpick",
  [15] = "Grand Soul Gem",
  [16] = "Grand Soul Gem (Empty)",
--
  [21] = "Unfinished Dolmen\n - Zandadunoz the Reborn",
  [22] = "Nyzchaleft Falls\n - Nyzchaleft the Dwarven Centurion",
  [23] = "King-Chief's Throne\n - King-Chief Edu",
  [24] = "The Mad Ogre's Altar\n - Mad Urkazbur",
  [25] = "Poacher's Encampment\n - Old Snagara",
  [26] = "The Accursed Nursery\n - Corintthac the Abomination",
  [27] = "Achievement countdown",
}
WPamA.i18n.RGLAMsg = {
  [1] = "Z: LFM ...",
  [2] = "Z: LFM short",
  [3] = "Z: Start after 1 min",
  [4] = "G: Start after 1 min",
  [5] = "G: Start",
  [6] = "Z: Boss is down",
  [7] = "G: You already done it",
  [8] = "About addon",
}
-- In Dungeons structure:
-- Mark - The substring in quest name which indicates the dungeon
-- Name - Short name of the dungeon displayed by the addon
WPamA.i18n.Dungeons = {
-- Virtual dungeon
  [1] = { -- None
    Mark = "-1-",
    Name = "none",
  },
  [2] = { -- Unknown
    Mark = "-2-",
    Name = "Unknown",
  },
-- First location dungeons
  [3] = { -- AD, Auridon, Banished Cells
    Mark = "Banished",
    Name = "Banished Cells",
  },
  [4] = { -- EP, Stonefalls, Fungal Grotto
    Mark = "Fungal",
    Name = "Fungal Grotto",
  },
  [5] = { -- DC, Glenumbra, Spindleclutch
    Mark = "Spindle",
    Name = "Spindleclutch",
  },
-- Second location dungeons
  [6] = { -- AD, Grahtwood, Elden Hollow
    Mark = "Elden",
    Name = "Elden Hollow",
  },
  [7] = { -- EP, Deshaan, Darkshade Caverns
    Mark = "Darkshade",
    Name = "Darkshade Caverns",
  },
  [8] = { -- DC, Stormhaven, Wayrest Sewers
    Mark = "Wayrest",
    Name = "Wayrest Sewers",
  },
-- 3 location dungeons
  [9] = { -- AD, Greenshade, City of Ash
    Mark = "Ash",
    Name = "City of Ash",
  },
  [10] = { -- EP, Shadowfen, Arx Corinium
    Mark = "Arx",
    Name = "Arx Corinium",
  },
  [11] = { -- DC, Rivenspire, Crypt of Hearts
    Mark = "Crypt",
    Name = "Crypt of Hearts",
  },
-- 4 location dungeons
  [12] = { -- AD, Malabal Tor, Tempest Island
    Mark = "Island",
    Name = "Tempest Island",
  },
  [13] = { -- EP, Eastmarch, Direfrost Keep
    Mark = "Direfrost",
    Name = "Direfrost Keep",
  },
  [14] = { -- DC, Alik`r Desert, Volenfell
    Mark = "Volenfell",
    Name = "Volenfell",
  },
-- 5 location dungeons
  [15] = { -- AD, Reaper`s March, Selene`s Web
    Mark = "Selene",
    Name = "Selene`s Web",
  },
  [16] = { -- EP, The Rift, Blessed Crucible
    Mark = "Crucible",
    Name = "Blessed Crucible",
  },
  [17] = { -- DC, Bangkorai, Blackheart Haven 
    Mark = "Haven",
    Name = "Blackheart Haven",
  },
-- 6 location dungeons
  [18] = { -- Any, Coldharbour, Vaults of Madness
    Mark = "Madness",
    Name = "Vaults of Madness",
  },
-- 7 location dungeons
  [19] = { -- Any, Imperial City, IC Prison
    Mark = "Prison",
    Name = "IC Prison",
  },
  [20] = { -- Any, Imperial City, WG Tower
    Mark = "Tower",
    Name = "WG Tower",
  },
}
WPamA.i18n.DailyBossQ = {
  [1] = "Heresy of Ignorance", -- zanda
  [2] = "Snow and Steam", -- nyz
  [3] = "Reeking of Foul Play", -- edu
  [4] = "Scholarly Salvage", -- ogre
  [5] = "Meat for the Masses", -- poa
  [6] = "Nature's Bounty", -- cori
}
WPamA.i18n.DayOfWeek = {
  [0] = "Sun",
  [1] = "Mon",
  [2] = "Tue",
  [3] = "Wed",
  [4] = "Thu",
  [5] = "Fri",
  [6] = "Sat",
}
-- The message in chat should always be English. This part should be only in English localization.
WPamA.EN = {
-- Chat
  Chat = {
    Td1 = "Today Pledges: (from ",
    Td2 = "): ",
    Silver = "Silver - ",
    Gold = "; Gold - ",
    Loot1 = " (can loot ",
    Loot2 = " )",
    Use1 = " (Used: ",
    Use2 = ")",
  },
  RGLA = {
    CZ = "/z ",
    CP = "/p ",
    D1 = "\", \"",
    D2 = "\" or \"",
    C0 = "\"",
    C1 = "/z LFM ",
    C2 = " can share quest. Type \"",
    C3 = "\" for auto-invite",
    C4 = " and auto-share",
    C5 = "\", auto-invite",
    C6 = ", auto-share",
    C7 = " start after 1 min",
    C8 = " START",
    C9 = " is down",
    A1 = "Addon ",
    A2 = " from ESOUI.COM: The tracker for Pledges and Wrothgar Bosses daily, auto-invite and auto-sharing.",
    Q1 = "Quest is auto-shared. Maybe you already have a quest to another boss or today you have already done it.",
  },
  ShareSubstr = "share",
  DayOfWeek = {},
  DungeonsName = {},
}
for i=0,6 do
  WPamA.EN.DayOfWeek[i] = WPamA.i18n.DayOfWeek[i]
end
for n, v in pairs(WPamA.i18n.Dungeons) do
  WPamA.EN.DungeonsName[n] = v.Name
end

