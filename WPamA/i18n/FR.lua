WPamA.i18n = {
-- Marker (substring) in quest name for detect Veteran Pledge
  VeteranM = "étéran",
-- Marker (substring) in active quest step text for detect DONE stage
  DoneM = {
    [1] = "Retournez",
    [2] = "Parlez",
  },
-- Keybinding string
  KeyBindShowStr = "Afficher/Cacher la fenêtre",
  KeyBindChgStr  = "Changer le mode d'affichage de la fenêtre",
  KeyBindCharStr = "Afficher/Cacher la fenêtre des personnages",
  KeyBindClndStr = "Afficher/Cacher la fenêtre de calendrier",
  KeyBindWWBStr  = "Afficher/Cacher la fenêtre des Boss de Wrothgar",
  KeyBindInvtStr = "Show/hide Miscellaneous window",
  KeyBindPostTd  = "Poster dans le chat les serments indomptables du jour",
  KeyBindRGLA = "Afficher/Cacher RGLA (Assistant pour Chef de Groupe Raid)",
  KeyBindRGLASrt = "Démarrer RGLA",
  KeyBindRGLAStp = "Stopper RGLA",
  KeyBindRGLAPst = "Poster dans le chat RGLA",
  KeyBindRGLAShr = "RGLA Share quest",
-- No character error string
  NoCharErr = "Erreur de lecture de la liste des personnages!",
-- More character. It is the result of removing and adding characters
  MoreCharErr = (WPamA.Consts.RowCnt+1) .. " personnages ou plus detectés! Tapez '/wpa rch' pour remettre à zero la base de données des personnages.",
-- Caption
  CaptChar = "Personnages",
  CaptClnd = "Calendrier",
  CaptWWB  = "Boss de groupe de Wrothgar",
  CaptInvt = "Miscellaneous",
-- Labels
  TotalRow = "TOTAL",
  ResetChar = "Reset",
  HdrLvl = "Niv.",
  HdrName = "Nom",
  HdrClnd = "Calendrier",
  HdrMSL = "MSL",
  HdrSilver = "Normale / Argent",
  HdrGold = "Vétéran / Or",
  OptLocation = "Afficher la zone plutôt que le nom du donjon",
  OptENDungeon = "Afficher les noms des donjons en Anglais", 
  OptDontShowNone = "Show blank instead of \"none\"",
  OptTitleToolTip = "Enable tooltip for the window title",
  SendInvTo = "Invitation envoyée à ",
  RGLABossKilled = "The boss was killed. RGLA is stopped.",
  RGLALeaderChanged = "The group leader was changed. RGLA is stopped.",
  RGLAOptQAutoShare = "Allow auto-sharing of the quest",
  RGLAOptQAlert = "Notify at screen",
  RGLAOptQChat = "Notify to chat",
  RGLAOptBossKilled = "RGLA stop once the boss is killed",
  RGLAShare = "Share",
  RGLAStop = "Stopper",
  RGLAPost = "Poster",
  RGLAStart = "Démarrer",
  RGLAStarted = "En cours",
-- RGLA Errors
  RGLA_ErrBoss = "The boss already killed. RGLA can not be started.",
  RGLA_ErrQuest = "Vous n'avez pas de quête de Groupe des Boss de Wrothgar!",
  RGLA_ErrWrothgar = "Vous n'êtes pas à Wrothgar actuellement!",
  RGLA_ErrLeader = "Vous n'êtes pas Chef de Groupe!",
  RGLA_ErrAI = "Addon AutoInvite n'a pas été trouvé ou n'est pas activé!",
-- Dungeons Status
  DungStDone = "Terminé",
  DungStNA = "N/A",
-- Wrothgar Boss Status
  WWBStNone = "aucun",
  WWBStDone = "Terminé",
  WWBStCur  = "En cours",
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
  [7] = "Or/argent/bronze clef, crochet et pierre d'âme grandiose",
  [8] = "The minimum level which can be scaled dungeon",
--  [9] = "",
  [10] = "Réinitialiser la liste de caractères",
  [11] = "Clef des Indomptables (or)",
  [12] = "Clef des Indomptables (argent)",
  [13] = "Clef des Indomptables (bronze)",
  [14] = "Crochet",
  [15] = "Pierre d'âme grandiose",
  [16] = "Pierre d'âme grandiose Vide",
--
  [21] = "Le Dolmen Inachevé\n - Zanadunoz la Renaissante",
  [22] = "Les Chutes de Nuzchaleft\n - Nuzchaleft le centurion dwemer",
  [23] = "Le Trône du Roi-Chef\n - Roi-Chef Edu",
  [24] = "L'Autel de l'Ogre Fou\n - Urkazbur le Fou",
  [25] = "Le Campement des Braconniers\n - Vieille Snagara",
  [26] = "La Pouponnière Maudite\n - Corintthac l'Abomination",
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
    Name = "Aucun",
  },
  [2] = { -- Unknown
    Mark = "-2-",
    Name = "Inconnu",
  },
-- First location dungeons
  [3] = { -- AD, Auridon, Banished Cells
    Mark = "Cachot",
    Name = "Cachot Interdit",
-- S: Serment du Cachot interdit
-- G: Serment du Cachot interdit Vétéran
  },
  [4] = { -- EP, Stonefalls, Fungal Grotto
    Mark = "Champi",
    Name = "Champignonnière",
-- S: Serment de la Champignonnière	
-- G: Serment de la Champignonnière Vétéran
  },
  [5] = { -- DC, Glenumbra, Spindleclutch
    Mark = "Tressefuseau",
    Name = "Tressefuseau",
-- S: Serment de Tressefuseau
-- G: Serment de Tressefuseau Vétéran	
  },
-- Second location dungeons
  [6] = { -- AD, Grahtwood, Elden Hollow
    Mark = "creuset",
    Name = "Creuset des Aînés",
-- S: Serment du creuset des aînés
-- G: Le creuset des aînés en vétéran
  },
  [7] = { -- EP, Deshaan, Darkshade Caverns
    Mark = "avernes",
    Name = "Cav. d'Ombre-Noire",
-- S: Serment des cavernes d'Ombre-noire
-- G: Cavernes d'Ombre-noire Vétéran
  },
  [8] = { -- DC, Stormhaven, Wayrest Sewers
    Mark = "Haltevoie",
    Name = "Égouts d'Haltevoie",
-- S: Serment des égouts d'Haltevoie
-- G: Serment des égouts d'Haltevoie en vétéran
  },
-- 3 location dungeons
  [9] = { -- AD, Greenshade, City of Ash
    Mark = "cendres",
    Name = "Cité des Cendres",
-- S: Serment de la Cité des cendres
-- G: Serment de la Cité des cendres Vétéran
  },
  [10] = { -- EP, Shadowfen, Arx Corinium
    Mark = "Arx",
    Name = "Arx Corinium",
-- S: Serment d'Arx Corinium
  },
  [11] = { -- DC, Rivenspire, Crypt of Hearts
    Mark = "Crypte",
    Name = "Crypte des Coeurs",
-- S: Serment de la Crypte des cœurs
-- G: Serment de la Crypte des cœurs Vétéran
  },
-- 4 location dungeons
  [12] = { -- AD, Malabal Tor, Tempest Island
    Mark = "Tempêtes",
    Name = "L'île des Tempêtes",
-- S: Serment de l'île des Tempêtes
  },
  [13] = { -- EP, Eastmarch, Direfrost Keep
    Mark = "Affregivre",
    Name = "Donjon d'Affregivre",
-- S: Serment du donjon d'Affregivre
  },
  [14] = { -- DC, Alik`r Desert, Volenfell
    Mark = "Volenfell",
    Name = "Volenfell",
-- S: Serment de Volenfell
  },
-- 5 location dungeons
  [15] = { -- AD, Reaper`s March, Selene`s Web
    Mark = "toile",
    Name = "Toile de Sélène",
-- S: Le serment de la toile de Sélène
  },
  [16] = { -- EP, The Rift, Blessed Crucible
    Mark = "Creuset",
    Name = "Creuset Béni",
-- S: Serment du Creuset béni
  },
  [17] = { -- DC, Bangkorai, Blackheart Haven 
    Mark = "havre",
    Name = "Havre de Cœurnoir",
-- S:Serment du havre de Cœurnoir
  },
-- 6 location dungeons
  [18] = { -- Any, Coldharbour, Vaults of Madness
    Mark = "folie",
    Name = "Chambres de la Folie",
-- S: Serment des Chambres de la folie
  },
-- 7 location dungeons
  [19] = { -- Any, Imperial City, IC Prison
    Mark = "prison",
    Name = "Prison Cité Impériale",
--G: Serment de la prison de la cité impériale
  },
  [20] = { -- Any, Imperial City, WG Tower
    Mark = "Tour",
    Name = "Tour d'Or Blanc",
-- G: Serment de la Tour d'or blanc
  },
}
WPamA.i18n.DayOfWeek = {
  [0] = "Dim",
  [1] = "Lun",
  [2] = "Mar",
  [3] = "Mer",
  [4] = "Jeu",
  [5] = "Ven",
  [6] = "Sam",
}
WPamA.i18n.DailyBossQ = {
  [1] = "Hérésie par l'ignorance", -- zanda
  [2] = "Neige et vapeur", -- nyz
  [3] = "L'odeur du crime", -- edu
  [4] = "Sauvetage académique", -- ogre
  [5] = "Nourrir les foules", -- poa
  [6] = "Abondance de la nature", -- cori
}