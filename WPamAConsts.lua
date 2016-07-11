WPamA = {}
WPamA.Name = "WPamA"
WPamA.Version = "1.0.1"
WPamA.IsDebugMode = false
WPamA.Colors = {
  Mdl = {
    [1] = "F1FF77", -- AD
    [2] = "FF7D77", -- EP
    [3] = "779CFF", -- DC
    [4] = "CFDCBD", -- Any
    [5] = "999999", -- NA
    [6] = "77FF77", -- Green for Sun & Sat
    [7] = "004000AA", -- centerColor for current char
    [8] = "7F8C6D99", -- edgeColor for current char 335544 7F8C6D99
    [9] = "D0D0FF", -- Blue
  },
  DungStDone = 6,
  DungStNA   = 5,
  WWBStNone  = 5,
  WWBStDone  = 6,
  WWBStCur   = 2,
  LabelLvl   = 4,
  Weekend    = 6,
  Workday    = 4,
  BGCenter   = 7,
  BGEdge     = 8,
  WWBAchiev  = 4,
  MenuDisabled = 5,
  MenuEnabled  = 4,
  MenuActive   = 6,
}
WPamA.Consts = {
  WinSizeMinX = 610,
  WinSizeMinY = 65,
  WinSizeStepY= 24,
  MsgSizeMinX = 184,
  MsgSizeMaxX = 580,
  MsgSizeMinY = 24,
  RowCnt = 12,
  BaseTimeStamp = 1454299200, -- 2016-02-01 07:00 UTC
  BaseDayOfWeek = 1, -- 2016-02-01 is Monday (0-Sun, 1-Mon, 2-Tue, 3-Wed, 4-Thu, 5-Fri, 6-Sat)
  DateTimeFrmt = 1, -- 0 default: m.d.yyy hh:mi:ss ; 1: yyyy-mm-dd hh:mi ; 2: yyyy-mm-dd ; 3: dd.mm.yy
  SecInDay = 86400, -- 24h * 60m * 60s
  MinCharLvlForSilver = 45,
  RGLAMaxGrMember = 24,
  RGLAMsgCnt = 8,
  WrothgarMZI = 396, -- Wrothgar Map Zone Index
  WWBAchiev = 1335,
  TTShiftInvt = 10,
  TTShiftWWB  = 20,
  InvtIco = {
    [1] = {
      I = "/esoui/art/icons/quest_key_003.dds",
      W = "|t24:24:esoui/art/icons/undaunted_gold_key_01.dds|t",
      IT = ITEMTYPE_TROPHY, -- = 5
    },
    [2] = {
      I = "/esoui/art/icons/quest_key_002.dds",
      W = "|t24:24:esoui/art/icons/undaunted_silver_key_01.dds|t",
      IT = ITEMTYPE_TROPHY,
    },
    [3] = {
      I = "/esoui/art/icons/quest_key_001.dds",
      W = "|t24:24:esoui/art/icons/undaunted_bronze_key_01.dds|t",
      IT = ITEMTYPE_TROPHY,
    },
    [4] = {
      I = "/esoui/art/icons/lockpick.dds",
      W = "|t24:24:esoui/art/icons/lockpick.dds|t",
      IT = ITEMTYPE_TOOL, -- = 9
    },
    [5] = {
      I = "/esoui/art/icons/soulgem_006_filled.dds",
      W = "|t24:24:esoui/art/icons/soulgem_006_filled.dds|t",
      IT = ITEMTYPE_SOUL_GEM, -- = 19
    },
    [6] = {
      I = "/esoui/art/icons/soulgem_006_empty.dds",
      W = "|t24:24:esoui/art/icons/soulgem_006_empty.dds|t",
      IT = ITEMTYPE_SOUL_GEM, -- = 19
    },
  },
  IconsW = {
    A = "|t24:24:esoui/art/journal/journal_tabicon_achievements_up.dds|t",
    ChmEnl = "|t20:20:EsoUI/Art/Champion/champion_icon.dds|t",
    Chm = "|t24:24:esoui/art/mainmenu/menubar_champion_up.dds|t",
  },
  Dungeons = {
-- Virtual dungeon
    [1] = {
      Lvl = 0,
      Alli = 0,
      Loc = 1, -- None
    },
    [2] = {
      Lvl = 0,
      Alli = 9, -- For color N9
      Loc = 1, -- Unknown
    },
-- First location dungeons
    [3] = {
      Lvl = 10,
      Alli = 1, -- AD
      Loc = 15, -- Auridon
    },
    [4] = {
      Lvl = 10,
      Alli = 2, -- EP
      Loc = 11, -- Stonefalls
    },
    [5] = {
      Lvl = 10,
      Alli = 3, -- DC
      Loc = 2, -- Glenumbra
    },
-- Second location dungeons
    [6] = {
      Lvl = 17,
      Alli = 1, -- AD
      Loc = 7, -- Grahtwood
    },
    [7] = {
      Lvl = 17,
      Alli = 2, -- EP
      Loc = 10, -- Deshaan
    },
    [8] = {
      Lvl = 17,
      Alli = 3, -- DC
      Loc = 4, -- Stormhaven
    },
-- 3 location dungeons
    [9] = {
      Lvl = 24,
      Alli = 1, -- AD
      Loc = 16, -- Greenshade
    },
    [10] = {
      Lvl = 24,
      Alli = 2, -- EP
      Loc = 9, -- Shadowfen
    },
    [11] = {
      Lvl = 24,
      Alli = 3, -- DC
      Loc = 3, -- Rivenspire
    },
-- 4 location dungeons
    [12] = {
      Lvl = 31,
      Alli = 1, -- AD
      Loc = 8, -- Malabal Tor
    },
    [13] = {
      Lvl = 31,
      Alli = 2, -- EP
      Loc = 13, -- Eastmarch
    },
    [14] = {
      Lvl = 31,
      Alli = 3, -- DC
      Loc = 5, -- Alik`r Desert
    },
-- 5 location dungeons
    [15] = {
      Lvl = 38,
      Alli = 1, -- AD
      Loc = 17, -- Reaper`s March
    },
    [16] = {
      Lvl = 38,
      Alli = 2, -- EP
      Loc = 12, -- The Rift
    },
    [17] = {
      Lvl = 38,
      Alli = 3, -- DC
      Loc = 6, -- Bangkorai
    },
-- 6 location dungeons
    [18] = {
      Lvl = 43,
      Alli = 4, -- Any
      Loc = 23, -- Coldharbour
    },
-- 7 location dungeons
    [19] = {
      Lvl = 50,
      Alli = 4, -- Any
      Loc = 26, -- Imperial City - IC Prison
      Gold = true,
    },
    [20] = {
      Lvl = 50,
      Alli = 4, -- Any
      Loc = 26, -- Imperial City - WG Tower
      Gold = true,
    },
  },
  OrdSilver = {
    [1]  = 16, -- Blessed Crucible
    [2]  =  8, -- Wayrest Sewers
    [3]  =  4, -- Fungal Grotto
    [4]  = 11, -- Crypt of Hearts
    [5]  = 13, -- Direfrost Keep
    [6]  = 14, -- Volenfell
    [7]  =  7, -- Darkshade Caverns
    [8]  =  6, -- Elden Hollow
    [9]  =  3, -- The Banished Cells
    [10] = 17, -- Blackheart Haven
    [11] = 10, -- Arx Corinium
    [12] =  9, -- City of Ash
    [13] = 12, -- Tempest Island
    [14] = 15, -- Selene`s Web
    [15] = 18, -- Vaults of Madness
    [16] =  5, -- Spindleclutch
  },
  OrdGold = {
    [1]  =  5, -- Spindleclutch
    [2]  = 19, -- ICP
    [3]  = 20, -- WGT
    [4]  =  7, -- Darkshade Caverns
    [5]  =  8, -- Wayrest Sewers
    [6]  =  4, -- Fungal Grotto
    [7]  = 11, -- Crypt of Hearts
    [8]  =  3, -- The Banished Cells
    [9]  =  9, -- City of Ash
    [10] =  6, -- Elden Hollow
  },
  LootGold = {
    [5]  = "|H1:item:59427:363:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:1:0:10000:0|h|h", -- Spindleclutch
    [19] = "|H1:item:59459:363:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:1:0:10000:0|h|h", -- ICP
    [20] = "|H1:item:68112:363:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:1:0:10000:0|h|h", -- WGT
    [7]  = "|H1:item:59529:363:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:1:0:10000:0|h|h", -- Darkshade Caverns
    [8]  = "|H1:item:59505:363:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:1:0:10000:0|h|h", -- Wayrest Sewers
    [4]  = "|H1:item:59393:363:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:1:0:10000:0|h|h", -- Fungal Grotto
    [11] = "|H1:item:59601:363:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:1:0:10000:0|h|h", -- Crypt of Hearts
    [3]  = "|H1:item:59673:363:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:1:0:10000:0|h|h", -- The Banished Cells
    [9]  = "|H1:item:59637:363:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:1:0:10000:0|h|h", -- City of Ash
    [6]  = "|H1:item:59565:363:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:1:0:10000:0|h|h", -- Elden Hollow
  },
  DailyBoss = {
    [1] = {
      H = "ZANDA",
      S = {
        [1] = "+zanda",
        [2] = "+zan",
        [3] = "+dolmen",
      },
    },
    [2] = {
      H = "NYZ",
      S = {
        [1] = "+nyz",
      },
    },
    [3] = {
      H = "EDU",
      S = {
        [1] = "+edu",
      },
    },
    [4] = {
      H = "OGRE",
      S = {
        [1] = "+ogre",
        [2] = "+mad",
      },
    },
    [5] = {
      H = "POA",
      S = {
        [1] = "+poa",
      },
    },
    [6] = {
      H = "CORI",
      S = {
        [1] = "+cori",
      },
    },
  },
}
