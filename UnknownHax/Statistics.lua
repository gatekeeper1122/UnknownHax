-- MissionFucker
SKIP_LAMARFINAL_BOOL = { -- Skips all Lamar missions to finale (Booleans)
    {"LOW_FLOW_CS_DRV_SEEN", true},
    {"LOW_FLOW_CS_TRA_SEEN", true},
    {"LOW_FLOW_CS_FUN_SEEN", true},
    {"LOW_FLOW_CS_PHO_SEEN", true},
    {"LOW_FLOW_CS_FIN_SEEN", true},
    {"LOW_BEN_INTRO_CS_SEEN", true}
}
SKIP_LAMARFINAL_INT = { -- Skip all Lamar missions to finale (Integers)
    {"LOWRIDER_FLOW_COMPLETE", 3},
    {"LOW_FLOW_CURRENT_PROG", 9},
    {"LOW_FLOW_CURRENT_CALL", 9}
}
SKIP_CAYOFINAL = { -- Skips the Cayo Perico heist to the finale with the Panther Statue target & Hard Difficulty 
    {"H4CNF_BS_GEN", 131071},
    {"H4CNF_BS_ENTR", 63},
    {"H4CNF_BS_ABIL", 63},
    {"H4CNF_WEAPONS", 5},
    {"H4CNF_WEP_DISRP", 3},
    {"H4CNF_ARM_DISRP", 3},
    {"H4CNF_HEL_DISRP", 3},
    {"H4CNF_TARGET", 5},
    {"H4CNF_TROJAN", 2},
    {"H4CNF_APPROACH", -1},
    {"H4LOOT_CASH_I", 0},
    {"H4LOOT_CASH_C", 0},
    {"H4LOOT_WEED_I", 0},
    {"H4LOOT_WEED_C", 0},
    {"H4LOOT_COKE_I", 0},
    {"H4LOOT_COKE_C", 0},
    {"H4LOOT_GOLD_I", -1},
    {"H4LOOT_GOLD_C", -1},
    {"H4LOOT_PAINT", -1},
    {"H4_PROGRESS", 131055}, -- (131055 = Hard Difficulty | 126823 = Normal Difficulty)
    {"H4LOOT_CASH_I_SCOPED", 0},
    {"H4LOOT_CASH_C_SCOPED", 0},
    {"H4LOOT_WEED_I_SCOPED", 0},
    {"H4LOOT_WEED_C_SCOPED", 0},
    {"H4LOOT_COKE_I_SCOPED", 0},
    {"H4LOOT_COKE_C_SCOPED", 0},
    {"H4LOOT_GOLD_I_SCOPED", -1},
    {"H4LOOT_GOLD_C_SCOPED", -1},
    {"H4LOOT_PAINT_SCOPED", -1},
    {"H4_MISSIONS", 65535},
    {"H4_PLAYTHROUGH_STATUS", 40000}
}
TRIG_ALIEN_SELL = { -- Triggers the Alien Sell Mission for Bunkers
    {"LFETIME_BIKER_BUY_COMPLET5", 599},
    {"LFETIME_BIKER_BUY_UNDERTA5", 599}
}
COMPLETE_VIPCONTRACT1_1 = { -- The Nightclub
    {"FIXER_GENERAL_BS", -1},
    {"FIXER_COMPLETED_BS", -1},
    {"FIXER_STORY_BS", 3},
    {"FIXER_STORY_COOLDOWN", -1}
}
COMPLETE_VIPCONTRACT1_2 = { -- The Marina
    {"FIXER_GENERAL_BS", -1},
    {"FIXER_COMPLETED_BS", -1},
    {"FIXER_STORY_BS", 4},
    {"FIXER_STORY_COOLDOWN", -1}
}
COMPLETE_VIPCONTRACT1_3 = { -- NightLife Leak (Finale)
    {"FIXER_GENERAL_BS", -1},
    {"FIXER_COMPLETED_BS", -1},
    {"FIXER_STORY_BS", 12},
    {"FIXER_STORY_COOLDOWN", -1}
}
COMPLETE_VIPCONTRACT2_1 = { -- The Country Club
    {"FIXER_GENERAL_BS", -1},
    {"FIXER_COMPLETED_BS", -1},
    {"FIXER_STORY_STRAND", -1},
    {"FIXER_STORY_BS", 28},
    {"FIXER_STORY_COOLDOWN", -1}
}
COMPLETE_VIPCONTRACT2_2 = { -- Guest List
    {"FIXER_GENERAL_BS", -1},
    {"FIXER_COMPLETED_BS", -1},
    {"FIXER_STORY_STRAND", -1},
    {"FIXER_STORY_BS", 60},
    {"FIXER_STORY_COOLDOWN", -1}
}
COMPLETE_VIPCONTRACT2_3 = { -- High Society (Finale)
    {"FIXER_GENERAL_BS", -1},
    {"FIXER_COMPLETED_BS", -1},
    {"FIXER_STORY_STRAND", -1},
    {"FIXER_STORY_BS", 124},
    {"FIXER_STORY_COOLDOWN", -1}
}
COMPLETE_VIPCONTRACT3_1 = { -- Davis
    {"FIXER_GENERAL_BS", -1},
    {"FIXER_COMPLETED_BS", -1},
    {"FIXER_STORY_STRAND", -1},
    {"FIXER_STORY_BS", 252},
    {"FIXER_STORY_COOLDOWN", -1}
}
COMPLETE_VIPCONTRACT3_2 = { -- The Ballas
    {"FIXER_GENERAL_BS", -1},
    {"FIXER_COMPLETED_BS", -1},
    {"FIXER_STORY_STRAND", -1},
    {"FIXER_STORY_BS", 508},
    {"FIXER_STORY_COOLDOWN", -1}
}
COMPLETE_VIPCONTRACT3_3 = { -- Agency Studio (Finale)
    {"FIXER_GENERAL_BS", -1},
    {"FIXER_COMPLETED_BS", -1},
    {"FIXER_STORY_STRAND", -1},
    {"FIXER_STORY_BS", 2044},
    {"FIXER_STORY_COOLDOWN", -1}
}
COMPLETE_VIPCONTRACT_FINAL = { -- Don't Fuck with Dre (Final VIP Contract)
    {"FIXER_GENERAL_BS", -1},
    {"FIXER_COMPLETED_BS", -1},
    {"FIXER_STORY_STRAND", -1},
    {"FIXER_STORY_BS", 4092},
    {"FIXER_STORY_COOLDOWN", -1}
}
COMPLETE_CONTRACT_MISSIONS = { -- Completes all contract from 'The Contract' DLC
    {"FIXER_GENERAL_BS", -1},
    {"FIXER_COMPLETED_BS", -1},
    {"FIXER_STORY_BS", -1},
    {"FIXER_STORY_COOLDOWN", -1}
} -- Unlocks last Dr. Dre Media Stick which allows you to get the 'Marathon Hoodie'
-- Above also unlocks the 'Organics' finish for the Micro SMG
CASINO_HEIST_NO_NPC_CUT = { -- Removes the npc crew cut
    {"H3OPT_CREWWEAP", 6},
    {"H3OPT_CREWDRIVER", 6},
    {"H3OPT_CREWHACKER", 6}
}




-- Unlockable Awards
COMBAT_AWARDS_INT = {
    {"PLAYER_HEADSHOTS", 500}, -- Head Banger (Unlocks '' Tattoo)
    {"AWD_FMOVERALLKILLS", 1000}, -- The Widow Maker
    {"AWD_FMKILLBOUNTY", 25}, -- The Bounty Hunter (Unlocks '' Tattoo)
    {"AWD_FM_DM_3KILLSAMEGUY", 50}, -- 3 For 1
    {"AWD_FM_DM_KILLSTREAK", 100}, -- Streaker
    {"AWD_FM_DM_STOLENKILL", 50}, -- Stolen Kills
    {"AWD_FM_DM_TOTALKILLS", 500}, -- Death Toll
    {"DM_HIGHEST_KILLSTREAK", 10}, -- Required for Killstreaker
    {"AWD_FMREVENGEKILLSDM", 50}, -- The Equalizer (Unlocks '' Tattoo)
    {"", 25}, -- Pistol Whipped
    {"", }, -- SMG Head
    {"", }, -- Shotgun Blues
    {"", }, -- Looking Down The Barrel
    {"", }, -- Scoping Out
    {"", }, -- Rapid Fire
    {"", }, -- Ended In A Sticky Situation
    {"", }, -- Grenade Friend
    {"", }, -- The Rocket Man
    {"", }, -- The Melee Murderer
    {"", }, -- The Car Bomber
    {"", }, -- No You Don't
    {"", }, -- Lights Out
    {"", } -- Physcho Killer
}
COMBAT_AWARDS_BOOL = {
    {"AWD_FMKILLSTREAKSDM", true}, -- Killstreaker
    {"AWD_FMMOSTKILLSGANGHIDE", true}, -- Smoke 'Em Out
    {"AWD_FMMOSTKILLSSURVIVE", true} -- Bloodiest Of The Bunch
}
DOOMSDAY_AWARDS_INT = {
    {"GANGOPS_FM_MISSION_PROG", -1},
    {"GANGOPS_FLOW_MISSION_PROG", -1},
    {"MPPLY_GANGOPS_ALLINORDER", 100},
    {"MPPLY_GANGOPS_LOYALTY", 100},
    {"MPPLY_GANGOPS_CRIMMASMD", 100},
    {"MPPLY_GANGOPS_LOYALTY2", 100},
    {"MPPLY_GANGOPS_LOYALTY3", 100},
    {"MPPLY_GANGOPS_CRIMMASMD2", 100},
    {"MPPLY_GANGOPS_CRIMMASMD3", 100},
    {"MPPLY_GANGOPS_SUPPORT", 100},
    {"CR_GANGOP_MORGUE", 10},
    {"CR_GANGOP_DELUXO", 10},
    {"CR_GANGOP_SERVERFARM", 10},
    {"CR_GANGOP_IAABASE_FIN", 10},
    {"CR_GANGOP_STEALOSPREY", 10},
    {"CR_GANGOP_FOUNDRY", 10},
    {"CR_GANGOP_RIOTVAN", 10},
    {"CR_GANGOP_SUBMARINECAR", 10},
    {"CR_GANGOP_SUBMARINE_FIN", 10},
    {"CR_GANGOP_PREDATOR", 10},
    {"CR_GANGOP_BMLAUNCHER", 10},
    {"CR_GANGOP_BCCUSTOM", 10},
    {"CR_GANGOP_STEALTHTANKS", 10},
    {"CR_GANGOP_SPYPLANE", 10},
    {"CR_GANGOP_FINALE", 10},
    {"CR_GANGOP_FINALE_P2", 10},
    {"CR_GANGOP_FINALE_P3", 10}
}
DOOMSDAY_AWARDS_BOOL = {
    {"MPPLY_AWD_GANGOPS_IAA", true},
    {"MPPLY_AWD_GANGOPS_SUBMARINE", true},
    {"MPPLY_AWD_GANGOPS_MISSILE", true},
    {"MPPLY_AWD_GANGOPS_ALLINORDER", true},
    {"MPPLY_AWD_GANGOPS_LOYALTY", true},
    {"MPPLY_AWD_GANGOPS_LOYALTY2", true},
    {"MPPLY_AWD_GANGOPS_LOYALTY3", true},
    {"MPPLY_AWD_GANGOPS_CRIMMASMD", true},
    {"MPPLY_AWD_GANGOPS_CRIMMASMD2", true},
    {"MPPLY_AWD_GANGOPS_CRIMMASMD3", true}
}
LSTUNER_AWARDS_INT = {
    {"AWD_CAR_CLUB_MEM", 100}, -- LS Car Meet Member
    {"AWD_SPRINTRACER", 50}, -- Sprint Racer
    {"AWD_STREETRACER", 50}, -- Street Racer
    {"AWD_PURSUITRACER", 50}, -- Pursuit Racer
    {"AWD_TEST_CAR", 240}, -- Tried And Tested
    {"AWD_AUTO_SHOP", 50}, -- Special Delivery
    {"AWD_CAR_EXPORT", 100}, -- Car Exporter
    {"AWD_GROUNDWORK", 40}, -- Groundwork
    {"AWD_ROBBERY_CONTRACT", 100}, -- Contractual Criminal
    {"AWD_FACES_OF_DEATH", 30} -- Faces Of Death
}
LSTUNER_AWARDS_BOOL = {
    {"AWD_CAR_CLUB", true}, -- LS Car Meet
    {"AWD_PRO_CAR_EXPORT", true}, -- Pro Car Exporter
    {"AWD_FLEECA_BANK", true}, -- The Bank Contract ($75,000 Reward)
    {"AWD_MILITARY_CONVOY", true}, -- The Superdollar Deal ($75,000 Reward)
    {"AWD_FREIGHT_TRAIN", true}, -- The E.C.U. Job ($75,000 Reward)
    {"AWD_BOLINGBROKE_ASS", true}, -- The Prison Contract ($75,000 Reward)
    {"AWD_IAA_RAID", true}, -- The Agency Deal ($75,000 Reward)
    {"AWD_UNION_DEPOSITORY", true}, -- The Data Contract ($75,000 Reward)
    {"AWD_STRAIGHT_TO_VIDEO", true}, -- Straight To Video
    {"AWD_MONKEY_C_MONKEY_DO", true}, -- Monkey See Monkey Do
    {"AWD_TRAINED_TO_KILL", true}, -- Trained To Kill
    {"AWD_DIRECTOR", true} -- The Director
}
CONTRACT_AWARDS_INT = {
    {"AWD_CONTRACTOR", 50}, -- Contractual Obligations
    {"AWD_COLD_CALLER", 50}, -- Cold Caller
    {"AWD_PRODUCER", 60} -- Producer
}
CONTRACT_AWARDS_BOOL = {
    {"AWD_TEEING_OFF", true}, -- On Course ($50,000 Reward)
    {"AWD_PARTY_NIGHT", true}, -- Gospel ($100,000 Reward)
    {"AWD_BILLIONAIRE_GAMES", true}, -- The Scenic Route ($100,000 Reward)
    {"AWD_HOOD_PASS", true}, -- Black Privilege ($100,000 Reward)
    {"AWD_STUDIO_TOUR", true}, -- ETA ($100,000 Reward)
    {"AWD_DONT_MESS_DRE", true}, -- Fallin' Up ($250,000 Reward)
    {"AWD_BACKUP", true}, -- Diamond Mind ($100,000 Reward)
    {"AWD_SHORTFRANK_1", true}, -- Seed Capital - Franklin ($100,000 Reward)
    {"AWD_SHORTLAMAR_1", true}, -- Seed Capital - Lamar ($100,000 Reward)
    {"AWD_SHORTFRANK_2", true}, -- Fire It Up - Franklin ($100,000 Reward)
    {"AWD_SHORTLAMAR_2", true}, -- Fire It Up - Lamar ($100,000 Reward)
    {"AWD_SHORTFRANK_3", true}, -- OG Kush - Franklin ($100,000 Reward)
    {"AWD_SHORTLAMAR_3", true}, -- OG Kush - Lamar ($100,000 Reward)
    {"AWD_CONTR_KILLER", true}, -- Contract Killer
    {"AWD_DOGS_BEST_FRIEND", true}, -- A Dog's Best Friend 
    {"AWD_MUSIC_STUDIO", true} -- Sound Check
}
CAYO_AWARDS_BOOL = {
    {"AWD_THE_ISLAND_HEIST", true}, -- The Cayo Perico Heist ($200,000 Reward)
    {"AWD_GOING_ALONE", true}, -- Going Alone ($100,000 Reward) 
    {"AWD_TEAM_WORK", true}, -- Team Work ($100,000 Reward)
    {"AWD_PRO_THIEF", true}, -- Professional Thief ($150,000 Reward)
    {"AWD_CAT_BURGLAR", true}, -- Cat Burglar ($200,000 Reward)
    {"AWD_ONE_OF_THEM", true}, -- One Of Them
    {"AWD_GOLDEN_GUN", true}, -- Go For Gold 
    {"AWD_ELITE_THIEF", true}, -- Elitist ($200,000 Reward)
    {"AWD_PROFESSIONAL", true}, -- Blow Hard ($200,000 Reward)
    {"AWD_PARTY_VIBES", true}, -- Party Vibes 
    {"AWD_HELPING_HAND", true}, -- Helping Hand
    {"AWD_HELPING_OUT", true}, -- Helping Out
    {"AWD_COURIER", true}, -- Courier (Gives you Dave's Weevil)
    {"COMPLETE_H4_F_USING_VETIR", true}, -- Travel Plans ($250,000 Reward)
    {"COMPLETE_H4_F_USING_LONGFIN", true}, -- Required for Travel Plans
    {"COMPLETE_H4_F_USING_ANNIH", true}, -- Required for Travel Plans
    {"COMPLETE_H4_F_USING_ALKONOS", true}, -- Required for Travel Plans
    {"COMPLETE_H4_F_USING_PATROLB", true} -- Required for Travel Plans
}   
CAYO_AWARDS_INT = {   
    {"AWD_SUNSET", 1800000}, --Sun Set
    {"AWD_TREASURE_HUNTER", 1000000}, -- Treasure Hunter
    {"AWD_WRECK_DIVING", 1000000}, -- Wreck Diving
    {"AWD_KEINEMUSIK", 1800000}, -- Keine Musik
    {"AWD_PALMS_TRAX", 1800000}, -- Palms Trax
    {"AWD_MOODYMANN", 1800000}, -- Moodymann
    {"AWD_FILL_YOUR_BAGS", 1000000000}, -- Fill Your Bags
    {"AWD_WELL_PREPARED", 50}, -- Prepped
    {"H4_H4_DJ_MISSIONS", 65535} 
}
LS_SUMMER_AWARDS_BOOL = {
    {"AWD_KINGOFQUB3D", true}, -- King Of QUB3D
    {"AWD_QUBISM", true}, -- Qubism
    {"AWD_GODOFQUB3D", true}, -- God Of QUB3D
    {"AWD_QUIBITS", true}, -- Qubits
    {"AWD_ELEVENELEVEN", true}, -- 11 11
    {"AWD_GOFOR11TH", true} -- Crank It To 11
}
CASINO_HEIST_AWARDS_BOOL = {
    -- {"AWD_SCOPEOUT", true}, -- Scope Out ???????????
    {"AWD_CREWEDUP", true}, -- All Crewed Up
    {"AWD_MOVINGON", true}, -- Moving On
    {"AWD_PROMOCAMP", true}, -- After Party
    {"AWD_GUNMAN", true}, -- Gun Man 
    {"AWD_SMASHNGRAB", true}, -- Smash & Grab ($100,000 Reward)
    {"AWD_INPLAINSI", true}, -- Hidden In Plain Sight ($150,000 Reward)
    {"AWD_UNDETECTED", true}, -- Undetected ($200,000 Reward)
    {"AWD_ALLROUND", true}, -- All Rounder ($300,000 Reward)
    {"AWD_ELITETHEIF", true}, -- Elite Thief ($350,000 Reward)
    {"AWD_PRO", true}, -- Professional ($250,000 Reward)
    {"AWD_SUPPORTACT", true}, -- Support Act
    {"AWD_SHAFTED", true}, -- Shafted
    {"AWD_COLLECTOR", true}, -- Collector
    {"AWD_DEADEYE", true}, -- Dead Eye
    {"AWD_PISTOLSATDAWN", true}, -- Pistols At Dawn
    {"AWD_TRAFFICAVOI", true}, -- Beat The Traffic
    {"AWD_CANTCATCHBRA", true}, -- All Wheels
    {"AWD_WIZHARD", true}, -- Feelin' Groggy
    {"AWD_APEESCAPE", true}, -- Ape Escape
    {"AWD_MONKEYKIND", true}, -- Monkey Mind 
    {"AWD_AQUAAPE", true}, -- Aquatic Ape
    {"AWD_KEEPFAITH", true}, -- Keeping The Faith
    {"AWD_TRUELOVE", true}, -- True Love
    {"AWD_NEMESIS", true}, -- Nemesis
    {"AWD_FRIENDZONED", true}, -- Friendzoned

    {"AWD_ALL_IN_ORDER", true},
    {"AWD_SUPPORTING_ROLE", true},
    {"AWD_LEADER", true},
    {"AWD_ODD_JOBS", true},
    {"AWD_SURVIVALIST", true},

    {"AWD_FIRST_TIME1", true},
    {"AWD_FIRST_TIME2", true},
    {"AWD_FIRST_TIME3", true},
    {"AWD_FIRST_TIME4", true},
    {"AWD_FIRST_TIME5", true},
    {"AWD_FIRST_TIME6", true},
    {"VCM_FLOW_CS_RSC_SEEN", true},
    {"VCM_FLOW_CS_BWL_SEEN", true},
    {"VCM_FLOW_CS_MTG_SEEN", true},
    {"VCM_FLOW_CS_OIL_SEEN", true},
    {"VCM_FLOW_CS_DEF_SEEN", true},
    {"VCM_FLOW_CS_FIN_SEEN", true},
    {"CAS_VEHICLE_REWARD", false},
    {"HELP_FURIA", true},
    {"HELP_MINITAN", true},
    {"HELP_YOSEMITE2", true},
    {"HELP_ZHABA", true},
    {"HELP_IMORGEN", true},
    {"HELP_SULTAN2", true},
    {"HELP_VAGRANT", true},
    {"HELP_VSTR", true},
    {"HELP_STRYDER", true},
    {"HELP_SUGOI", true},
    {"HELP_KANJO", true},
    {"HELP_FORMULA", true},
    {"HELP_FORMULA2", true},
    {"HELP_JB7002", true}
}
CASINO_HEIST_AWARDS_INT = {
    {"AWD_PREPARATION", 40}, -- Preperation
    {"AWD_ASLEEPONJOB", 20}, -- Asleep On The Job
    {"AWD_DAICASHCRAB", 100000}, -- Daily Cash Grab
    {"AWD_BIGBRO", 40}, -- Big Brother
    {"AWD_SHARPSHOOTER", 40}, -- Sharpshooter
    {"AWD_RACECHAMP", 40}, -- Race Champion
    {"AWD_BATSWORD", 1000000}, -- Platinum Sword
    {"AWD_COINPURSE", 950000}, -- Coin Purse
    {"AWD_ASTROCHIMP", 3000000}, -- Astrochimp
    {"AWD_MASTERFUL", 40000}, -- Masterful

    {"SIGNAL_JAMMERS_COLLECTED", 50},
    {"AWD_ODD_JOBS", 52},

    {"CH_ARC_CAB_CLAW_TROPHY", -1},
    {"CH_ARC_CAB_LOVE_TROPHY", -1},
    {"SIGNAL_JAMMERS_COLLECTED", 50},
    {"VCM_FLOW_PROGRESS", 1839072},
    {"VCM_STORY_PROGRESS", 0},
    {"H3_BOARD_DIALOGUE0", -1},
    {"H3_BOARD_DIALOGUE1", -1},
    {"H3_BOARD_DIALOGUE2", -1},
    {"H3_VEHICLESUSED", -1}
}


-- Unlockable Clothing
ALL_FAC_OUTFIT = { -- Unlocks All the Outfits in Facility
    {"GANGOPS_FM_MISSION_PROG", 2147483647},
    {"GANGOPS_FLOW_MISSION_PROG", 2147483647}
}
DNT_CRSS_LINE = { -- Unlocks the 'Do Not Cross The Line' Tee
    {"DCTL_WINS", 500},
    {"DCTL_PLAY_COUNT", 750}
}

-- Unlockable Vehicles
LS_TUNER_PRIZE_INT = {
    {"CARMEET_PV_CHLLGE_PRGRSS", 3},
    {"CARMEET_PV_CHLLGE_POXIS", -1}
}
LS_TUNER_PRIZE_BOOL = {
    {"CARMEET_PV_CHLLGE_CMPLT", true},
    {"CARMEET_PV_CLMED", false}
}

-- Christmas Unlocks 
UNLK_CHRISTMAS_LIVERIES = {
    {"MPPLY_XMASLIVERIES0", 2147483647},
    {"MPPLY_XMASLIVERIES1", 2147483647},
    {"MPPLY_XMASLIVERIES2", 2147483647},
    {"MPPLY_XMASLIVERIES3", 2147483647},
    {"MPPLY_XMASLIVERIES4", 2147483647},
    {"MPPLY_XMASLIVERIES5", 2147483647},
    {"MPPLY_XMASLIVERIES6", 2147483647},
    {"MPPLY_XMASLIVERIES7", 2147483647},
    {"MPPLY_XMASLIVERIES8", 2147483647},
    {"MPPLY_XMASLIVERIES9", 2147483647},
    {"MPPLY_XMASLIVERIES10", 2147483647},
    {"MPPLY_XMASLIVERIES11", 2147483647},
    {"MPPLY_XMASLIVERIES12", 2147483647},
    {"MPPLY_XMASLIVERIES13", 2147483647},
    {"MPPLY_XMASLIVERIES14", 2147483647},
    {"MPPLY_XMASLIVERIES15", 2147483647},
    {"MPPLY_XMASLIVERIES16", 2147483647},
    {"MPPLY_XMASLIVERIES17", 2147483647},
    {"MPPLY_XMASLIVERIES18", 2147483647},
    {"MPPLY_XMASLIVERIES19", 2147483647},
    {"MPPLY_XMASLIVERIES20", 2147483647}
}


-- Inventory
INV_SNACKS = {
    {"NO_BOUGHT_YUM_SNACKS", 30}, -- P's & Q's
    {"NO_BOUGHT_HEALTH_SNACKS", 15}, -- EgoChaser
    {"NO_BOUGHT_EPIC_SNACKS", 5}, -- Meteorite
    {"NUMBER_OF_ORANGE_BOUGHT", 10}, -- eCola
    {"NUMBER_OF_BOURGE_BOUGHT", 10} -- Pisswasser
}
INV_ARMOR = {
    {"MP_CHAR_ARMOUR_1_COUNT", 10}, -- Super Light Armor
    {"MP_CHAR_ARMOUR_2_COUNT", 10}, -- Light Armor
    {"MP_CHAR_ARMOUR_3_COUNT", 10}, -- Standard Armor
    {"MP_CHAR_ARMOUR_4_COUNT", 10}, -- Heavy Armor
    {"MP_CHAR_ARMOUR_5_COUNT", 10} -- Super Heavy Armor
}
INV_CIGARETTES = {
    {"CIGARETTES_BOUGHT", 20} 
}
INV_CHAMPAGNE = {
    {"NUMBER_OF_CHAMP_BOUGHT", 5}
}
INV_REBREATHER = {
    {"BREATHING_APPAR_BOUGHT", 20}
}


-- Businesses
BUSINESS_OFFICE = {
    {"LIFETIME_BUY_COMPLETE", 2000},
    {"LIFETIME_BUY_UNDERTAKEN", 2000},
    {"LIFETIME_SELL_COMPLETE", 2000},
    {"LIFETIME_SELL_UNDERTAKEN", 2000},
    {"LIFETIME_CONTRA_EARNINGS", 20000000} 
}
BUSINESS_CLUBHOUSE = {
    {"LIFETIME_BIKER_BUY_COMPLET", 2000}, 
    {"LIFETIME_BIKER_BUY_UNDERTA", 2000}, 

    {"LIFETIME_BIKER_SELL_COMPLET", 2000},
    {"LIFETIME_BIKER_SELL_UNDERTA", 2000}, 

    {"LIFETIME_BIKER_BUY_COMPLET1", 2000}, 
    {"LIFETIME_BIKER_BUY_UNDERTA1", 2000}, 
    {"LIFETIME_BIKER_SELL_COMPLET1", 2000}, 
    {"LIFETIME_BIKER_SELL_UNDERTA1", 2000}, 

    {"LIFETIME_BIKER_BUY_COMPLET2", 2000}, 
    {"LIFETIME_BIKER_BUY_UNDERTA2", 2000}, 
    {"LIFETIME_BIKER_SELL_COMPLET2", 2000}, 
    {"LIFETIME_BIKER_SELL_UNDERTA2", 2000}, 

    {"LIFETIME_BIKER_BUY_COMPLET3", 2000}, 
    {"LIFETIME_BIKER_BUY_UNDERTA3", 2000}, 
    {"LIFETIME_BIKER_SELL_COMPLET3", 2000}, 
    {"LIFETIME_BIKER_SELL_UNDERTA3", 2000}, 

    {"LIFETIME_BIKER_BUY_COMPLET4", 2000}, 
    {"LIFETIME_BIKER_BUY_UNDERTA4", 2000}, 
    {"LIFETIME_BIKER_SELL_COMPLET4", 2000}, 
    {"LIFETIME_BIKER_SELL_UNDERTA4", 2000}, 

    {"LIFETIME_BIKER_BUY_COMPLET5", 2000}, 
    {"LIFETIME_BIKER_BUY_UNDERTA5", 2000}, 
    {"LIFETIME_BIKER_SELL_COMPLET5", 2000}, 
    {"LIFETIME_BIKER_SELL_UNDERTA5", 2000}, 

    {"LIFETIME_BKR_SELL_EARNINGS0", 20000000}, 
    {"LIFETIME_BKR_SELL_EARNINGS1", 20000000}, 
    {"LIFETIME_BKR_SELL_EARNINGS2", 20000000}, 
    {"LIFETIME_BKR_SELL_EARNINGS3", 20000000},
    {"LIFETIME_BKR_SELL_EARNINGS4", 20000000},
    {"LIFETIME_BKR_SELL_EARNINGS5", 20000000}
}


-- Misc
FAST_RUN_ON = {
   
    {"CHAR_FM_ABILITY_1_UNLCK", -1},
    {"CHAR_FM_ABILITY_2_UNLCK", -1},
    {"CHAR_FM_ABILITY_3_UNLCK", -1},
    {"CHAR_ABILITY_1_UNLCK", -1},
    {"CHAR_ABILITY_2_UNLCK", -1},
    {"CHAR_ABILITY_3_UNLCK", -1}
}
FAST_RUN_OFF = {
    {"CHAR_FM_ABILITY_1_UNLCK", 0},
    {"CHAR_FM_ABILITY_2_UNLCK", 0},
    {"CHAR_FM_ABILITY_3_UNLCK", 0},
    {"CHAR_ABILITY_1_UNLCK", 0},
    {"CHAR_ABILITY_2_UNLCK", 0},
    {"CHAR_ABILITY_3_UNLCK", 0}
}
MENTAL_STATE_MAX = {
    {"PLAYER_MENTAL_STATE", 100.0}
}
MENTAL_STATE_HALF = {
    {"PLAYER_MENTAL_STATE", 50.0}
}
MENTAL_STATE_MIN = {
    {"PLAYER_MENTAL_STATE", 0.0}
}





DEEZNUTZ = {
    
}

-- Unlockables