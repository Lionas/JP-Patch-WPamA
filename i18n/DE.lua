WPamA.i18n = {
-- Marker (substring) in quest name for detect Veteran Pledge
  VeteranM = "Tollkühn",
-- Marker (substring) in active quest step text for detect DONE stage
  DoneM = {
    [1] = "Kehrt",
    [2] = "Sprecht",
  },
-- Keybinding string
  KeyBindShowStr = "Zeige/Verstecke AddOn Fenster",
  KeyBindChgStr  = "Ändere AddOn Fenster Modus",
  KeyBindCharStr = "Zeige/Verstecke Charakter Fenster",
  KeyBindClndStr = "Zeige/Verstecke calendar window",
  KeyBindWWBStr  = "Zeige/Verstecke Wrothgar Bosse Fenster",
  KeyBindInvtStr = "Zeige/Verstecke Verschiedenes Fenster",
  KeyBindPostTd  = "Schreibe 'Daily Dungeons' in den Chat",
  KeyBindRGLA    = "Zeige/Verstecke RGLA (Raid Group Leader Assistant)",
  KeyBindRGLASrt = "RGLA: Start",
  KeyBindRGLAStp = "RGLA: Anhalten",
  KeyBindRGLAPst = "RGLA: In den Chat schreiben",
  KeyBindRGLAShr = "RGLA: Teile Quest",
-- No character error string
  NoCharErr = "Fehler: Charakter Liste kann nicht geladen werden!",
-- More character. It is the result of removing and adding characters
  MoreCharErr = (WPamA.Consts.RowCnt+1) .. " oder mehr Charaktere wurden ermittelt! Schreibe '/wpa rch' in den Chat, um die Charakter Datenbank zurückzusetzen.",
-- Caption
  CaptChar = "Charaktere",
  CaptClnd = "Kalender",
  CaptWWB  = "Wrothgar Welt Bosse",
  CaptInvt = "Verschiedenes",
-- Labels
  TotalRow = "TOTAL",
  ResetChar = "Zurücksetzen",
  HdrLvl = "Lvl",
  HdrName = "Name",
  HdrClnd = "Kalender",
  HdrMSL = "MSL",
  HdrSilver = "Normal / Silver",
  HdrGold = "Veteran / Gold",
  OptLocation = "Ort anstelle des Deungeon Namens",
  OptENDungeon = "Zeige die Namen von Dungeons in Englischer Sprache",
  OptDontShowNone = "Zeige blank anstelle von \"fehlt\"",
  OptTitleToolTip = "Aktiviere Tooltip für den Fenster Titel",
  SendInvTo = "Schicke Einladung zu ",
  RGLABossKilled = "Der Boss wurde getötet. RGLA wurde gestoppt.",
  RGLALeaderChanged = "Der Gruppen Anführer hat gewechselt. RGLA wurde gestoppt.",
  RGLAOptQAutoShare = "Erlaube automatisches Quest Teilen",
  RGLAOptQAlert = "Benachrichtige am Bildschirm",
  RGLAOptQChat = "Benachrichtige in den Chat",
  RGLAOptBossKilled = "RGLA Stoppe wenn der Boss getötet wurde",
  RGLAShare = "Teile",
  RGLAStop = "Stop",
  RGLAPost = "> Chat",
  RGLAStart = "Start",
  RGLAStarted = "Gestartet",
-- RGLA Errors
  RGLA_ErrBoss = "Der Boss wurde bereits getötet. RGLA kann nicht gestartet werden.",
  RGLA_ErrQuest = "Du hast keine täglichen Quests für Wrothgar Welt Bosse!",
  RGLA_ErrWrothgar = "Du bist momentan nicht in Wrothgar!",
  RGLA_ErrLeader = "Du bist kein gruppen Anführer!",
  RGLA_ErrAI = "Addon AutoInvite wurde nicht gefunden, oder ist nicht aktiv!",
-- Dungeons Status
  DungStDone = "FERTIG",
  DungStNA = "N/A",
-- Wrothgar Boss Status
  WWBStNone = "fehlt",
  WWBStDone = "FERTIG",
-- "Current". Need short string.
  WWBStCur  = "AKT",
-- Enlightened
  EnlOn  = "Deine Charaktere sind erholt",
  EnlOff = "Deine Charaktere sind NICHT erholt",
}
WPamA.i18n.ToolTip = {
  [0] = "Schließe Fenster",
  [1] = "Zeige/Verstecke Optionen Fenster",
  [2] = "Ändere Fenster Modus",
  [3] = "Schreibe heutige 'Tägliche Dungeons' (Unerschrockene) in den Chat",
  [4] = "Dein aktueller Fortschritt beim Abschließen der täglichen Dungeons",
  [5] = "Ein Kalender der aktuellen und zukünftigen täglichen Dungeons (Unerschrockene)",
  [6] = "Dein aktueller Fortschritt beim Abschließen der täglichen Quests",
  [7] = "Gold/Silber/Bronze-Schlüssel, Dietrich und Großer Seelenstein",
  [8] = "Das minimale Level auf welches der Dungeon/Verließ skaliert werden kann",
--  [9] = "",
  [10] = "Setze Charakterliste zurück",
  [11] = "Goldschlüssel der Unerschrockenen",
  [12] = "Silberschlüssel der Unerschrockenen",
  [13] = "Bronzeschlüssel der Unerschrockenen",
  [14] = "Dietrich",
  [15] = "Großer Seelenstein",
  [16] = "Leerer großer Seelenstein",
--
  [21] = "Unvollendeter Dolmen\n - Zandadunoz den Wiedergeborenen",
  [22] = "Die Nyzchaleft-Fälle\n - Nyzchaleft, den Dwemerzenturio",
  [23] = "Der Thron des Königshäuptlings\n - Königshäuptling Edu",
  [24] = "Der Altar des verrückten Ogers \n - Den verrückten Urkazbur",
  [25] = "Wildererlager\n - Die alte Snagara",
  [26] = "Die verfluchte Kinderkrippe\n - Corintthac die Abscheulichkeit",
  [27] = "Errungenschaft Countdown",
}
WPamA.i18n.RGLAMsg = {
  [1] = "Z: LFM ...",
  [2] = "Z: LFM kurz",
  [3] = "Z: Start nach 1 Min",
  [4] = "G: Start nach 1 Min",
  [5] = "G: Start",
  [6] = "Z: Boss ist tot",
  [7] = "G: Hast du bereits erledigt",
  [8] = "Über das AddOn",
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
    Mark = "Verbannung",
    Name = "Verbannungszellen",
-- S: Unerschrocken in die Verbannungszellen
-- G: Tollkühn in die Verbannungszellen
  },
  [4] = { -- EP, Stonefalls, Fungal Grotto
    Mark = "Pilzgrotte",
    Name = "Pilzgrotte",
-- S: Unerschrocken in die Pilzgrotte
-- G: Tollkühn in die Pilzgrotte
  },
  [5] = { -- DC, Glenumbra, Spindleclutch
    Mark = "Spindel",
    Name = "Spindeltiefen",
-- S: Unerschrocken in die Spindeltiefen
-- G: Tollkühn in die Spindeltiefen
  },
-- Second location dungeons
  [6] = { -- AD, Grahtwood, Elden Hollow
    Mark = "Eldengrund",
    Name = "Eldengrund",
-- S: Unerschrocken in den Eldengrund
-- G: Tollkühn in den Eldengrund
  },
  [7] = { -- EP, Deshaan, Darkshade Caverns
    Mark = "Dunkelschat",
    Name = "Dunkelschattenkavernen",
-- S: Unerschrocken in die Dunkelschattenkavernen
-- G: Tollkühn in die Dunkelschattenkavernen
  },
  [8] = { -- DC, Stormhaven, Wayrest Sewers
    Mark = "Kanalisation",
    Name = "Kanalisation",
-- S: Unerschrocken in die Kanalisation
-- G: Tollkühn in die Kanalisation von Wegesruh
  },
-- 3 location dungeons
  [9] = { -- AD, Greenshade, City of Ash
    Mark = "Asche",
    Name = "Stadt der Asche",
-- S: Unerschrocken in die Stadt der Asche
-- G: Tollkühn in die Stadt der Asche
  },
  [10] = { -- EP, Shadowfen, Arx Corinium
    Mark = "Arx",
    Name = "Arx Corinium",
-- S: Unerschrocken nach Arx Corinium
  },
  [11] = { -- DC, Rivenspire, Crypt of Hearts
    Mark = "Krypta",
    Name = "Krypta der Herzen",
-- S: Unerschrocken in die Krypta der Herzen
-- G: Tollkühn in die Krypta der Herzen
  },
-- 4 location dungeons
  [12] = { -- AD, Malabal Tor, Tempest Island
    Mark = "Orkaninsel",
    Name = "Orkaninsel",
-- S: Unerschrocken auf die Orkaninsel
  },
  [13] = { -- EP, Eastmarch, Direfrost Keep
    Mark = "Grauenfrost",
    Name = "Burg Grauenfrost",
-- S: Unerschrocken in die Burg Grauenfrost
  },
  [14] = { -- DC, Alik`r Desert, Volenfell
    Mark = "Volenfell",
    Name = "Volenfell",
-- S: Unerschrocken nach Volenfell
  },
-- 5 location dungeons
  [15] = { -- AD, Reaper`s March, Selene`s Web
    Mark = "Selenes",
    Name = "Selenes Netz",
-- S: Unerschrocken in Selenes Netz
  },
  [16] = { -- EP, The Rift, Blessed Crucible
    Mark = "Gesegnete",
    Name = "Gesegnete Feuerprobe",
-- S: Unerschrocken in die Gesegnete Feuerprobe
  },
  [17] = { -- DC, Bangkorai, Blackheart Haven 
    Mark = "Schwarzherz",
    Name = "Schwarzherz-Unterschlupf",
-- S: Unerschrocken in den Schwarzherz-Unterschlupf
  },
-- 6 location dungeons
  [18] = { -- Any, Coldharbour, Vaults of Madness
    Mark = "Wahnsinns",
    Name = "Kammern des Wahnsinns",
-- S: Unerschrocken in die Kammern des Wahnsinns
  },
-- 7 location dungeons
  [19] = { -- Any, Imperial City, IC Prison
    Mark = "Gefängnis",
    Name = "Gefängnis der Kaiserstadt",
-- G: Unerschrocken in das Gefängnis der Kaiserstadt
  },
  [20] = { -- Any, Imperial City, WG Tower
    Mark = "Weißgoldturm",
    Name = "Weißgoldturm",
-- G: Unerschrocken in den Weißgoldturm
  },
}
WPamA.i18n.DayOfWeek = {
  [0] = "So",
  [1] = "Mo",
  [2] = "Di",
  [3] = "Mi",
  [4] = "Do",
  [5] = "Fr",
  [6] = "Sa",
}
WPamA.i18n.DailyBossQ = {
  [1] = "Der Frevel des Unwissens", -- zanda
  [2] = "Schnee und Dampf", -- nyz
  [3] = "So riecht ein falsches Spiel", -- edu
  [4] = "Gelehrtes Bergungsgut", -- ogre
  [5] = "Fleisch für die Massen", -- poa
  [6] = "Die Gabe der Natur", -- cori
}