--          Welcome to Unknown's Unlocker

-- Requires Trusted Mode to be turned ON
-- Do not contact me if you tried to edit/change anything and the script stopped working.

-- This project is a fork of the following script, with some of my own additions added:
-- https://github.com/jhowkNx/Heist-Control-v2




-- Functions
local function stat_set_float(hash, prefix, value, save)
    save = save or true
    local hash0, hash1 = hash
    if prefix then
        hash0 = "MP0_" .. hash
        hash1 = "MP1_" .. hash
        hash1 = gameplay.get_hash_key(hash1)
    end
    hash0 = gameplay.get_hash_key(hash0)
    local value0, e = stats.stat_get_float(hash0, -1)
    if value0 ~= value then
        stats.stat_set_float(hash0, value, save)
    end
    if prefix then
        local value1, e = stats.stat_get_float(hash1, -1)
        if value1 ~= value then
            stats.stat_set_float(hash1, value, save)
        end
    end
end
local function stat_set_int(hash, prefix, value, save)
    save = save or true
    local hash0, hash1 = hash
    if prefix then
        hash0 = "MP0_" .. hash
        hash1 = "MP1_" .. hash
        hash1 = gameplay.get_hash_key(hash1)
    end
    hash0 = gameplay.get_hash_key(hash0)
    local value0, e = stats.stat_get_int(hash0, -1)
    if value0 ~= value then
        stats.stat_set_int(hash0, value, save)
    end
    if prefix then
        local value1, e = stats.stat_get_int(hash1, -1)
        if value1 ~= value then
            stats.stat_set_int(hash1, value, save)
        end
    end
end
local function stat_set_bool(hash, prefix, value, save)
    save = save or true
    local hash0, hash1 = hash
    if prefix then
        hash0 = "MP0_" .. hash
        hash1 = "MP1_" .. hash
        hash1 = gameplay.get_hash_key(hash1)
    end
    hash0 = gameplay.get_hash_key(hash0)
    local value0, e = stats.stat_get_bool(hash0, -1)
    if value0 ~= value then
        stats.stat_set_bool(hash0, value, save)
    end
    if prefix then
        local value1, e = stats.stat_get_bool(hash1, -1)
        if value1 ~= value then
            stats.stat_set_bool(hash1, value, save)
        end
    end
end

-- Inventory Definitions
local INVTRY_SNCK = {
    {"NO_BOUGHT_YUM_SNACKS", 30},
    {"NO_BOUGHT_HEALTH_SNACKS", 15},
    {"NO_BOUGHT_EPIC_SNACKS", 5},
    {"NUMBER_OF_ORANGE_BOUGHT", 10},
    {"NUMBER_OF_BOURGE_BOUGHT", 10},
}
local INVTRY_ARMOR = {
    {"MP_CHAR_ARMOUR_1_COUNT", 10},
    {"MP_CHAR_ARMOUR_2_COUNT", 10},
    {"MP_CHAR_ARMOUR_3_COUNT", 10},
    {"MP_CHAR_ARMOUR_4_COUNT", 10},
    {"MP_CHAR_ARMOUR_5_COUNT", 10},
}

-- Unlockables Definitions
local UNLK_XMAS = {
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
local ARENA_W_UNLK = {   
    {"ARN_BS_TRINKET_TICKERS", -1},
    {"ARN_BS_TRINKET_SAVED", -1},
    {"AWD_WATCH_YOUR_STEP", 50},
    {"AWD_TOWER_OFFENSE", 50},
    {"AWD_READY_FOR_WAR", 50},
    {"AWD_THROUGH_A_LENS", 50},
    {"AWD_SPINNER", 50},
    {"AWD_YOUMEANBOOBYTRAPS", 50},
    {"AWD_MASTER_BANDITO", 50},
    {"AWD_SITTING_DUCK", 50},
    {"AWD_CROWDPARTICIPATION", 50},
    {"AWD_KILL_OR_BE_KILLED", 50},
    {"AWD_MASSIVE_SHUNT", 50},
    {"AWD_YOURE_OUTTA_HERE", 200},
    {"AWD_WEVE_GOT_ONE", 50},
    {"AWD_ARENA_WAGEWORKER", 1000000},
    {"AWD_TIME_SERVED", 1000},
    {"AWD_TOP_SCORE", 55000},
    {"AWD_CAREER_WINNER", 1000},
    {"ARENAWARS_SP", 209},
    {"ARENAWARS_SKILL_LEVEL", 20},
    {"ARENAWARS_SP_LIFETIME", 209},
    {"ARENAWARS_AP_TIER", 1000},
    {"ARENAWARS_AP_LIFETIME", 47551850},
    {"ARENAWARS_CARRER_UNLK", 44},
    {"ARN_W_THEME_SCIFI", 1000},
    {"ARN_W_THEME_APOC", 1000},
    {"ARN_W_THEME_CONS", 1000},
    {"ARN_W_PASS_THE_BOMB", 1000},
    {"ARN_W_DETONATION", 1000},
    {"ARN_W_ARCADE_RACE", 1000},
    {"ARN_W_CTF", 1000},
    {"ARN_W_TAG_TEAM", 1000},
    {"ARN_W_DESTR_DERBY", 1000},
    {"ARN_W_CARNAGE", 1000},
    {"ARN_W_MONSTER_JAM", 1000},
    {"ARN_W_GAMES_MASTERS", 1000},
    {"ARN_L_PASS_THE_BOMB", 500},
    {"ARN_L_DETONATION", 500},
    {"ARN_L_ARCADE_RACE", 500},
    {"ARN_L_CTF", 500},
    {"ARN_L_TAG_TEAM", 500},
    {"ARN_L_DESTR_DERBY", 500},
    {"ARN_L_CARNAGE", 500},
    {"ARN_L_MONSTER_JAM", 500},
    {"ARN_L_GAMES_MASTERS", 500},
    {"NUMBER_OF_CHAMP_BOUGHT", 1000},
    {"ARN_SPECTATOR_KILLS", 1000},
    {"ARN_LIFETIME_KILLS", 1000},
    {"ARN_LIFETIME_DEATHS", 500},
    {"ARENAWARS_CARRER_WINS", 1000},
    {"ARENAWARS_CARRER_WINT", 1000},
    {"ARENAWARS_MATCHES_PLYD", 1000},
    {"ARENAWARS_MATCHES_PLYDT", 1000},
    {"ARN_SPEC_BOX_TIME_MS", 86400000},
    {"ARN_SPECTATOR_DRONE", 1000},
    {"ARN_SPECTATOR_CAMS", 1000},
    {"ARN_SMOKE", 1000},
    {"ARN_DRINK", 1000},
    {"ARN_VEH_MONSTER", 31000},
    {"ARN_VEH_MONSTER", 41000},
    {"ARN_VEH_MONSTER", 51000},
    {"ARN_VEH_CERBERUS", 1000},
    {"ARN_VEH_CERBERUS2", 1000},
    {"ARN_VEH_CERBERUS3", 1000},
    {"ARN_VEH_BRUISER", 1000},
    {"ARN_VEH_BRUISER2", 1000},
    {"ARN_VEH_BRUISER3", 1000},
    {"ARN_VEH_SLAMVAN4", 1000},
    {"ARN_VEH_SLAMVAN5", 1000},
    {"ARN_VEH_SLAMVAN6", 1000},
    {"ARN_VEH_BRUTUS", 1000},
    {"ARN_VEH_BRUTUS2", 1000},
    {"ARN_VEH_BRUTUS3", 1000},
    {"ARN_VEH_SCARAB", 1000},
    {"ARN_VEH_SCARAB2", 1000},
    {"ARN_VEH_SCARAB3", 1000},
    {"ARN_VEH_DOMINATOR4", 1000},
    {"ARN_VEH_DOMINATOR5", 1000},
    {"ARN_VEH_DOMINATOR6", 1000},
    {"ARN_VEH_IMPALER2", 1000},
    {"ARN_VEH_IMPALER3", 1000},
    {"ARN_VEH_IMPALER4", 1000},
    {"ARN_VEH_ISSI4", 1000},
    {"ARN_VEH_ISSI5", 1000},
    {"ARN_VEH_ISSI", 61000},
    {"ARN_VEH_IMPERATOR", 1000},
    {"ARN_VEH_IMPERATOR2", 1000},
    {"ARN_VEH_IMPERATOR3", 1000},
    {"ARN_VEH_ZR380", 1000},
    {"ARN_VEH_ZR3802", 1000},
    {"ARN_VEH_ZR3803", 1000},
    {"ARN_VEH_DEATHBIKE", 1000},
    {"ARN_VEH_DEATHBIKE2", 1000},
    {"ARN_VEH_DEATHBIKE3", 1000}
}
local ARENA_W_UNLK_BL = {
    {"AWD_BEGINNER", true},
    {"AWD_FIELD_FILLER", true},
    {"AWD_ARMCHAIR_RACER", true},
    {"AWD_LEARNER", true},
    {"AWD_SUNDAY_DRIVER", true},
    {"AWD_THE_ROOKIE", true},
    {"AWD_BUMP_AND_RUN", true},
    {"AWD_GEAR_HEAD", true},
    {"AWD_DOOR_SLAMMER", true},
    {"AWD_HOT_LAP", true},
    {"AWD_ARENA_AMATEUR", true},
    {"AWD_PAINT_TRADER", true},
    {"AWD_SHUNTER", true},
    {"AWD_JOCK", true},
    {"AWD_WARRIOR", true},
    {"AWD_T_BONE", true},
    {"AWD_MAYHEM", true},
    {"AWD_WRECKER", true},
    {"AWD_CRASH_COURSE", true},
    {"AWD_ARENA_LEGEND", true},
    {"AWD_PEGASUS", true},
    {"AWD_UNSTOPPABLE", true},
    {"AWD_CONTACT_SPORT", true}

}
local SHT_UNLK = {  
    {"CRDEADLINE", 5}
}
local SUMR2020_AWARDS_BL = { 
    {"AWD_KINGOFQUB3D", true},
    {"AWD_QUBISM", true},
    {"AWD_QUIBITS", true},
    {"AWD_GODOFQUB3D", true},
    {"AWD_GOFOR11TH", true},
    {"AWD_ELEVENELEVEN", true}
}
local DCTL_UNLK = {
    {"DCTL_WINS", 500},
    {"DCTL_PLAY_COUNT", 750}
}
local YCHT_MS = {
    {"YACHT_MISSION_PROG", 0},
    {"YACHT_MISSION_FLOW", 21845},
    {"CASINO_DECORATION_GIFT_1", -1}
}
local LMAR_UNLK_B = {    
    {"LOW_FLOW_CS_DRV_SEEN", true},
    {"LOW_FLOW_CS_TRA_SEEN", true},
    {"LOW_FLOW_CS_FUN_SEEN", true},
    {"LOW_FLOW_CS_PHO_SEEN", true},
    {"LOW_FLOW_CS_FIN_SEEN", true},
    {"LOW_BEN_INTRO_CS_SEEN", true}
}
local LMAR_UNLK_I = {
    {"LOWRIDER_FLOW_COMPLETE", 3},
    {"LOW_FLOW_CURRENT_PROG", 9},
    {"LOW_FLOW_CURRENT_CALL", 9}
}
local CYPRC_UNLK_I = {
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
    {"H4_PROGRESS", 131055}, -- 131055 = Hard | 126823 = Normal
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
local FLY_SCHOOL_I = {   
    {"PILOT_SCHOOL_MEDAL_0", -1},
    {"PILOT_SCHOOL_MEDAL_1", -1},
    {"PILOT_SCHOOL_MEDAL_2", -1},
    {"PILOT_SCHOOL_MEDAL_3", -1},
    {"PILOT_SCHOOL_MEDAL_4", -1},
    {"PILOT_SCHOOL_MEDAL_5", -1},
    {"PILOT_SCHOOL_MEDAL_6", -1},
    {"PILOT_SCHOOL_MEDAL_7", -1},
    {"PILOT_SCHOOL_MEDAL_8", -1},
    {"PILOT_SCHOOL_MEDAL_9", -1}
}
local FLY_SCHOOL_B = {
    {"PILOT_ASPASSEDLESSON_0", true},
    {"PILOT_ASPASSEDLESSON_1", true},
    {"PILOT_ASPASSEDLESSON_2", true},
    {"PILOT_ASPASSEDLESSON_3", true},
    {"PILOT_ASPASSEDLESSON_4", true},
    {"PILOT_ASPASSEDLESSON_5", true},
    {"PILOT_ASPASSEDLESSON_6", true},
    {"PILOT_ASPASSEDLESSON_7", true},
    {"PILOT_ASPASSEDLESSON_8", true},
    {"PILOT_ASPASSEDLESSON_9", true}
}
local FAST_RUN_ON = {
   
    {"CHAR_FM_ABILITY_1_UNLCK", -1},
    {"CHAR_FM_ABILITY_2_UNLCK", -1},
    {"CHAR_FM_ABILITY_3_UNLCK", -1},
    {"CHAR_ABILITY_1_UNLCK", -1},
    {"CHAR_ABILITY_2_UNLCK", -1},
    {"CHAR_ABILITY_3_UNLCK", -1}
}
local FAST_RUN_OFF = {
    {"CHAR_FM_ABILITY_1_UNLCK", 0},
    {"CHAR_FM_ABILITY_2_UNLCK", 0},
    {"CHAR_FM_ABILITY_3_UNLCK", 0},
    {"CHAR_ABILITY_1_UNLCK", 0},
    {"CHAR_ABILITY_2_UNLCK", 0},
    {"CHAR_ABILITY_3_UNLCK", 0}
}
local CONTACTx_UNLCK = {    
    {"FM_ACT_PHN", -1},
    {"FM_ACT_PH2", -1},
    {"FM_ACT_PH3", -1},
    {"FM_ACT_PH4", -1},
    {"FM_ACT_PH5", -1},
    {"FM_VEH_TX1", -1},
    {"FM_ACT_PH6", -1},
    {"FM_ACT_PH7", -1},
    {"FM_ACT_PH8", -1},
    {"FM_ACT_PH9", -1},
    {"FM_CUT_DONE", -1},
    {"FM_CUT_DONE_2", -1}
}
local BUNKR_UNLCK = {   
    {"SR_HIGHSCORE_1", 690},
    {"SR_HIGHSCORE_2", 1860},
    {"SR_HIGHSCORE_3", 2690},
    {"SR_HIGHSCORE_4", 2660},
    {"SR_HIGHSCORE_5", 2650},
    {"SR_HIGHSCORE_6", 450},
    {"SR_TARGETS_HIT", 269},
    {"SR_WEAPON_BIT_SET", -1}
}
local BUNKR_UNLCK_B = {
    {"SR_TIER_1_REWARD", true},
    {"SR_TIER_3_REWARD", true},
    {"SR_INCREASE_THROW_CAP", true}
}
local ALN_EG_MS = {    
    {"LFETIME_BIKER_BUY_COMPLET5", 599},
    {"LFETIME_BIKER_BUY_UNDERTA5", 599}
}
local VANNIL_AWD = {    
    {"LAP_DANCED_BOUGHT", 0},
    {"LAP_DANCED_BOUGHT", 5},
    {"LAP_DANCED_BOUGHT", 10},
    {"LAP_DANCED_BOUGHT", 15},
    {"LAP_DANCED_BOUGHT", 25},
    {"PROSTITUTES_FREQUENTED", 1000}
}
local LS_TUNERS_PRIZE_BL = {
    {"CARMEET_PV_CHLLGE_CMPLT", true},
    {"CARMEET_PV_CLMED", false}

}
local LS_TUNERS_PRICE_IT = {
    {"CARMEET_PV_CHLLGE_PRGRSS", 3},
    {"CARMEET_PV_CHLLGE_POXIS", -1}
}
local NIGH_C_UNLK = {  
    {"AWD_DANCE_TO_SOLOMUN", 120},
    {"AWD_DANCE_TO_TALEOFUS", 120},
    {"AWD_DANCE_TO_DIXON", 120},
    {"AWD_DANCE_TO_BLKMAD", 120},
    {"AWD_CLUB_DRUNK", 200},
    {"NIGHTCLUB_VIP_APPEAR", 700},
    {"NIGHTCLUB_JOBS_DONE", 700},
    {"NIGHTCLUB_EARNINGS", 20721002},
    {"HUB_SALES_COMPLETED", 1001},
    {"HUB_EARNINGS", 320721002},
    {"DANCE_COMBO_DURATION_MINS", 3600000},
    {"NIGHTCLUB_PLAYER_APPEAR", 9506},
    {"LIFETIME_HUB_GOODS_SOLD", 784672},
    {"LIFETIME_HUB_GOODS_MADE", 507822},
    {"DANCEPERFECTOWNCLUB", 120},
    {"NUMUNIQUEPLYSINCLUB", 120},
    {"DANCETODIFFDJS", 4},
    {"NIGHTCLUB_HOTSPOT_TIME_MS", 3600000},
    {"NIGHTCLUB_CONT_TOTAL", 20},
    {"NIGHTCLUB_CONT_MISSION", -1},
    {"CLUB_CONTRABAND_MISSION", 1000},
    {"HUB_CONTRABAND_MISSION", 1000}
}
local NIGH_C_UNLK_B = {
    {"AWD_CLUB_HOTSPOT", true},
    {"AWD_CLUB_CLUBBER", true},
    {"AWD_CLUB_COORD", true}
}
local MENTAL_PLAYER_MODIFIER_ON = {
    {"PLAYER_MENTAL_STATE", 100.0}
}
local MENTAL_PLAYER_MODIFIER_HF = {
    {"PLAYER_MENTAL_STATE", 50.0}
}
local MENTAL_PLAYER_MODIFIER_OFF = {
    {"PLAYER_MENTAL_STATE", 0.0}
}
local APRTMNT_PLANSTAGE = {

    {"HEIST_PLANNING_STAGE", -1}
}
local APRTMNT_AWD_B = {    
    {"MPPLY_AWD_COMPLET_HEIST_MEM", true},
    {"MPPLY_AWD_COMPLET_HEIST_1STPER", true},
    {"MPPLY_AWD_FLEECA_FIN", true},
    {"MPPLY_AWD_HST_ORDER", true},
    {"MPPLY_AWD_HST_SAME_TEAM", true},
    {"MPPLY_AWD_HST_ULT_CHAL", true},
    {"MPPLY_AWD_HUMANE_FIN", true},
    {"MPPLY_AWD_PACIFIC_FIN", true},
    {"MPPLY_AWD_PRISON_FIN", true},
    {"MPPLY_AWD_SERIESA_FIN", true},
    {"AWD_FINISH_HEIST_NO_DAMAGE", true},
    {"AWD_SPLIT_HEIST_TAKE_EVENLY", true},
    {"AWD_ALL_ROLES_HEIST", true},
    {"AWD_MATCHING_OUTFIT_HEIST", true},
    {"HEIST_PLANNING_DONE_PRINT", true},
    {"HEIST_PLANNING_DONE_HELP_0", true},
    {"HEIST_PLANNING_DONE_HELP_1", true},
    {"HEIST_PRE_PLAN_DONE_HELP_0", true},
    {"HEIST_CUTS_DONE_FINALE", true},
    {"HEIST_IS_TUTORIAL", false},
    {"HEIST_STRAND_INTRO_DONE", true},
    {"HEIST_CUTS_DONE_ORNATE", true},
    {"HEIST_CUTS_DONE_PRISON", true},
    {"HEIST_CUTS_DONE_BIOLAB", true},
    {"HEIST_CUTS_DONE_NARCOTIC", true},
    {"HEIST_CUTS_DONE_TUTORIAL", true},
    {"HEIST_AWARD_DONE_PREP", true},
    {"HEIST_AWARD_BOUGHT_IN", true}

}
local APRTMNT_AWD_I = {
    {"AWD_FINISH_HEISTS", 900},
    {"MPPLY_WIN_GOLD_MEDAL_HEISTS", 900},
    {"AWD_DO_HEIST_AS_MEMBER", 900},
    {"AWD_DO_HEIST_AS_THE_LEADER", 900},
    {"AWD_FINISH_HEIST_SETUP_JOB", 900},
    {"AWD_FINISH_HEIST", 900},
    {"HEIST_COMPLETION", 900},
    {"HEISTS_ORGANISED", 900},
    {"AWD_CONTROL_CROWDS", 900},
    {"AWD_WIN_GOLD_MEDAL_HEISTS", 900},
    {"AWD_COMPLETE_HEIST_NOT_DIE", 900},
    {"HEIST_START", 900},
    {"HEIST_END", 900},
    {"CUTSCENE_MID_PRISON", 900},
    {"CUTSCENE_MID_HUMANE", 900},
    {"CUTSCENE_MID_NARC", 900},
    {"CUTSCENE_MID_ORNATE", 900},
    {"CR_FLEECA_PREP_1", 5000},
    {"CR_FLEECA_PREP_2", 5000},
    {"CR_FLEECA_FINALE", 5000},
    {"CR_PRISON_PLANE", 5000},
    {"CR_PRISON_BUS", 5000},
    {"CR_PRISON_STATION", 5000},
    {"CR_PRISON_UNFINISHED_BIZ", 5000},
    {"CR_PRISON_FINALE", 5000},
    {"CR_HUMANE_KEY_CODES", 5000},
    {"CR_HUMANE_ARMORDILLOS", 5000},
    {"CR_HUMANE_EMP", 5000},
    {"CR_HUMANE_VALKYRIE", 5000},
    {"CR_HUMANE_FINALE", 5000},
    {"CR_NARC_COKE", 5000},
    {"CR_NARC_TRASH_TRUCK", 5000},
    {"CR_NARC_BIKERS", 5000},
    {"CR_NARC_WEED", 5000},
    {"CR_NARC_STEAL_METH", 5000},
    {"CR_NARC_FINALE", 5000},
    {"CR_PACIFIC_TRUCKS ", 5000},
    {"CR_PACIFIC_WITSEC", 5000},
    {"CR_PACIFIC_HACK", 5000},
    {"CR_PACIFIC_BIKES", 5000},
    {"CR_PACIFIC_CONVOY", 5000},
    {"CR_PACIFIC_FINALE", 5000},
    {"MPPLY_HEIST_ACH_TRACKER", -1}
}
local DD_AWARDS_I = {
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
local DD_AWARDS_B = {
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
local CP_AWRD_BL = {
    {"AWD_INTELGATHER", true},
    {"AWD_COMPOUNDINFILT", true},
    {"AWD_LOOT_FINDER", true},
    {"AWD_MAX_DISRUPT", true},
    {"AWD_THE_ISLAND_HEIST", true},
    {"AWD_GOING_ALONE", true},
    {"AWD_TEAM_WORK", true},
    {"AWD_MIXING_UP", true},
    {"AWD_PRO_THIEF", true},
    {"AWD_CAT_BURGLAR", true},
    {"AWD_ONE_OF_THEM", true},
    {"AWD_GOLDEN_GUN", true},
    {"AWD_ELITE_THIEF", true},
    {"AWD_PROFESSIONAL", true},
    {"AWD_HELPING_OUT", true},
    {"AWD_COURIER", true},
    {"AWD_PARTY_VIBES", true},
    {"AWD_HELPING_HAND", true},
    {"AWD_ELEVENELEVEN", true},
    {"COMPLETE_H4_F_USING_VETIR", true},
    {"COMPLETE_H4_F_USING_LONGFIN", true},
    {"COMPLETE_H4_F_USING_ANNIH", true},
    {"COMPLETE_H4_F_USING_ALKONOS", true},
    {"COMPLETE_H4_F_USING_PATROLB", true}
}   
local CP_AWRD_IT = {   
    {"AWD_LOSTANDFOUND", 500000},
    {"AWD_SUNSET", 1800000},
    {"AWD_TREASURE_HUNTER", 1000000},
    {"AWD_WRECK_DIVING", 1000000},
    {"AWD_KEINEMUSIK", 1800000},
    {"AWD_PALMS_TRAX", 1800000},
    {"AWD_MOODYMANN", 1800000},
    {"AWD_FILL_YOUR_BAGS", 1000000000},
    {"AWD_WELL_PREPARED", 80},
    {"H4_H4_DJ_MISSIONS", 65535}
}
local CH_AWRD_BL = {
    {"AWD_FIRST_TIME1", true},
    {"AWD_FIRST_TIME2", true},
    {"AWD_FIRST_TIME3", true},
    {"AWD_FIRST_TIME4", true},
    {"AWD_FIRST_TIME5", true},
    {"AWD_FIRST_TIME6", true},
    {"AWD_ALL_IN_ORDER", true},
    {"AWD_SUPPORTING_ROLE", true},
    {"AWD_LEADER", true},
    {"AWD_ODD_JOBS", true},
    {"AWD_SURVIVALIST", true},
    {"AWD_SCOPEOUT", true},
    {"AWD_CREWEDUP", true},
    {"AWD_MOVINGON", true},
    {"AWD_PROMOCAMP", true},
    {"AWD_GUNMAN", true},
    {"AWD_SMASHNGRAB", true},
    {"AWD_INPLAINSI", true},
    {"AWD_UNDETECTED", true},
    {"AWD_ALLROUND", true},
    {"AWD_ELITETHEIF", true},
    {"AWD_PRO", true},
    {"AWD_SUPPORTACT", true},
    {"AWD_SHAFTED", true},
    {"AWD_COLLECTOR", true},
    {"AWD_DEADEYE", true},
    {"AWD_PISTOLSATDAWN", true},
    {"AWD_TRAFFICAVOI", true},
    {"AWD_CANTCATCHBRA", true},
    {"AWD_WIZHARD", true},
    {"AWD_APEESCAPE", true},
    {"AWD_MONKEYKIND", true},
    {"AWD_AQUAAPE", true},
    {"AWD_KEEPFAITH", true},
    {"AWD_TRUELOVE", true},
    {"AWD_NEMESIS", true},
    {"AWD_FRIENDZONED", true},
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
local CH_AWRD_IT = {
    {"CH_ARC_CAB_CLAW_TROPHY", -1},
    {"CH_ARC_CAB_LOVE_TROPHY", -1},
    {"SIGNAL_JAMMERS_COLLECTED", 50},
    {"AWD_ODD_JOBS", 52},
    {"AWD_PREPARATION", 40},
    {"AWD_ASLEEPONJOB", 20},
    {"AWD_DAICASHCRAB", 100000},
    {"AWD_BIGBRO", 40},
    {"AWD_SHARPSHOOTER", 40},
    {"AWD_RACECHAMP", 40},
    {"AWD_BATSWORD", 1000000},
    {"AWD_COINPURSE", 950000},
    {"AWD_ASTROCHIMP", 3000000},
    {"AWD_MASTERFUL", 40000},
    {"VCM_FLOW_PROGRESS", 1839072},
    {"VCM_STORY_PROGRESS", 0},
    {"H3_BOARD_DIALOGUE0", -1},
    {"H3_BOARD_DIALOGUE1", -1},
    {"H3_BOARD_DIALOGUE2", -1},
    {"H3_VEHICLESUSED", -1}
}
local UNLCK_PATRICK = {
    {"CAS_HEIST_FLOW", -1}
}
local DD_H_ULCK = {    
    {"GANGOPS_HEIST_STATUS", -1},
    {"GANGOPS_HEIST_STATUS", -229384}
}
local LS_TUNERS_DLC_BL = {
    {"AWD_CAR_CLUB", true},
    {"AWD_PRO_CAR_EXPORT", true},
    {"AWD_UNION_DEPOSITORY", true},
    {"AWD_MILITARY_CONVOY", true},
    {"AWD_FLEECA_BANK", true},
    {"AWD_FREIGHT_TRAIN", true},
    {"AWD_BOLINGBROKE_ASS", true},
    {"AWD_IAA_RAID", true},
    {"AWD_METH_JOB", true},
    {"AWD_BUNKER_RAID", true},
    {"AWD_STRAIGHT_TO_VIDEO", true},
    {"AWD_MONKEY_C_MONKEY_DO", true},
    {"AWD_TRAINED_TO_KILL", true},
    {"AWD_DIRECTOR", true}
}
local LS_TUNERS_DLC_IT = {
    {"AWD_CAR_CLUB_MEM", 100},
    {"AWD_SPRINTRACER", 50},
    {"AWD_STREETRACER", 50},
    {"AWD_PURSUITRACER", 50},
    {"AWD_TEST_CAR", 240},
    {"AWD_AUTO_SHOP", 50},
    {"AWD_CAR_EXPORT", 100},
    {"AWD_GROUNDWORK", 40},
    {"AWD_ROBBERY_CONTRACT", 100},
    {"AWD_FACES_OF_DEATH", 100}

}

local UNLCK_FCIOU = {
    {"GANGOPS_FM_MISSION_PROG", 2147483647},
    {"GANGOPS_FLOW_MISSION_PROG", 2147483647}
}
local UNLCK_PARGR_I = {
    {"VCM_STORY_PROGRESS", -1},
    {"VCM_FLOW_PROGRESS", -1}
}
local UNLCK_PARGR_B = {
    {"CASINOPSTAT_BOOL0", true},
    {"CASINOPSTAT_BOOL1", true},
    {"VCM_FLOW_CS_RSC_SEEN", true},
    {"VCM_FLOW_CS_BWL_SEEN", true},
    {"VCM_FLOW_CS_MTG_SEEN", true},
    {"VCM_FLOW_CS_OIL_SEEN", true},
    {"VCM_FLOW_CS_DEF_SEEN", true},
    {"VCM_FLOW_CS_FIN_SEEN", true},
    {"CAS_VEHICLE_REWARD", false}
}
local UNLCK_BGHTO = {
    {"AWD_FM_DM_WINS", 50}
}
local UNLCK_CPPSL = {
    {"CAS_HEIST_NOTS", -1},
    {"CAS_HEIST_FLOW", -1}
}
local UNLCK_IESVW = {
    {"AT_FLOW_IMPEXP_NUM", 32}
}


-- Trusted Mode is required
if not menu.is_trusted_mode_enabled() then
    menu.notify("Unknown's Unlocker requires Trusted Mode to be activated", "Unknown's Unlocker", 8, 2552550)
    return
end




-- Interface
local UKN_MAIN = menu.add_feature("Unknown's Unlocker", "parent", 0)
local UKN_MISHES = menu.add_feature("Missions / Heists", "parent", UKN_MAIN.id)
local UKN_UNLKS = menu.add_feature("Unlockables", "parent", UKN_MAIN.id)
local UKN_INV = menu.add_feature("Inventory", "parent", UKN_MAIN.id)
local UKN_BIZ = menu.add_feature("Businesses", "parent", UKN_MAIN.id)
local UKN_HELP = menu.add_feature("Helpers", "parent", UKN_MAIN.id)
local UKN_CLTB = menu.add_feature("Collectables", "parent", UKN_MAIN.id)
local UKN_MISC = menu.add_feature("Miscellaneous", "parent", UKN_MAIN.id)

menu.add_feature("About Unknown's Unlocker", "action", UKN_MAIN.id, function()
    menu.notify("This project is a fork of\njhowkNx's 'Heist Control V2'", "Unknown's Unlocker", 5, 3578712200220)
end)




-- Missions / Heists
menu.add_feature("Skip Lamar Missions to the finale", "action", UKN_MISHES.id, function()
    menu.notify("Done, switch sessions.", "Unknown's Unlocker", 4, 257818)
    for i = 1, #LMAR_UNLK_B do
        stat_set_bool(LMAR_UNLK_B[i][1], true, LMAR_UNLK_B[i][2])
    for i = 2, #LMAR_UNLK_I do
        stat_set_int(LMAR_UNLK_I[i][1], true, LMAR_UNLK_I[i][2])
        end
    end
end)
menu.add_feature("Skip Cayo Perico to the finale", "action", UKN_MISHES.id, function()
    menu.notify("Done, exit Kosatka and then enter it again.", "Unknown's Unlocker", 4, 257818)
    for i = 1, #CYPRC_UNLK_I do
        stat_set_int(CYPRC_UNLK_I[i][1], true, CYPRC_UNLK_I[i][2])
    end
end)



-- Individual Unlocks
--local UKN_AWARDLIST = menu.add_feature("Awards", "parent", UKN_UNLKS.id)



-- Unlockables
local UKNHEIST_AWARDS = menu.add_feature("Heist Awards", "parent", UKN_UNLKS.id)
menu.add_feature("Unlock High-End Apartment Heist Awards", "action", UKNHEIST_AWARDS.id, function()
    menu.notify("High-End Apartment Awards Unlocked!", "Unknown's Unlocker", 4, 257818)
    for i = 1, #APRTMNT_AWD_I do
        stat_set_int(APRTMNT_AWD_I[i][1], true, APRTMNT_AWD_I[i][2])
        stat_set_int(APRTMNT_AWD_I[i][1], false, APRTMNT_AWD_I[i][2])
    for i = 1, #APRTMNT_AWD_B do
        stat_set_bool(APRTMNT_AWD_B[i][1], true, APRTMNT_AWD_B[i][2])
        stat_set_bool(APRTMNT_AWD_B[i][1], false, APRTMNT_AWD_B[i][2])
        end
    end
end)
menu.add_feature("Unlock Doomsday Heist Awards", "action", UKNHEIST_AWARDS.id, function()
    menu.notify("Doomsday Awards Unlocked!", "Unknown's Unlocker", 4, 257818)
    for i = 1, #DD_AWARDS_I do
        stat_set_int(DD_AWARDS_I[i][1], true, DD_AWARDS_I[i][2])
        stat_set_int(DD_AWARDS_I[i][1], false, DD_AWARDS_I[i][2])
    end
    for i = 2, #DD_AWARDS_B do
        stat_set_bool(DD_AWARDS_B[i][1], true, DD_AWARDS_B[i][2])
        stat_set_bool(DD_AWARDS_B[i][1], false, DD_AWARDS_B[i][2])
    end
end)
menu.add_feature("Unlock All Doomsday Heist", "action", UKNHEIST_AWARDS.id, function()
    menu.notify("Call Lester and ask to cancel the Doomsday Heist (Three Times)\nDo this only once", "Unknown's Unlocker", 6, 780000)
    for i = 1, #DD_H_ULCK do
        stat_set_int(DD_H_ULCK[i][1], true, DD_H_ULCK[i][2])
    end
end)
menu.add_feature("Unlock Cayo Perico Awards", "action", UKNHEIST_AWARDS.id, function()
    menu.notify("Cayo Perico Awards Unlocked!", "Unknown's Unlocker", 5, 257818)
    for i = 1, #CP_AWRD_IT do
        stat_set_int(CP_AWRD_IT[i][1], true, CP_AWRD_IT[i][2])
    for i = 2, #CP_AWRD_BL do
        stat_set_bool(CP_AWRD_BL[i][1], true, CP_AWRD_BL[i][2])
        end
    end
end)
menu.add_feature("Unlock Casino Awards", "action", UKNHEIST_AWARDS.id, function()
    menu.notify("Casino Heist Awards Unlocked!", "Unknown's Unlocker", 4, 257818)
    for i = 1, #CH_AWRD_IT do
        stat_set_int(CH_AWRD_IT[i][1], true, CH_AWRD_IT[i][2])
    for i = 2, #CH_AWRD_BL do
        stat_set_bool(CH_AWRD_BL[i][1], true, CH_AWRD_BL[i][2])
        end
    end
end)


local UKNBNKR_AWARDS = menu.add_feature("Bunker Awards", "parent", UKN_UNLKS.id)    
menu.add_feature("Trigger Alien Egg Mission", "action", UKNBNKR_AWARDS.id, function()
    menu.notify("Change the clock time to between 9pm and 11pm", "Unknown's Unlocker", 4, 257818)
    for i = 1, #ALN_EG_MS do
        stat_set_int(ALN_EG_MS[i][1], true, ALN_EG_MS[i][2])
    end
end)
menu.add_feature("Unlock Bunker Awards", "action", UKNBNKR_AWARDS.id, function()
    menu.notify("Bunker Awards Unlocked!", "Unknown's Unlocker", 4, 257818)
    for i = 1, #BUNKR_UNLCK do
        stat_set_int(BUNKR_UNLCK[i][1], true, BUNKR_UNLCK[i][2])
    for i = 2, #BUNKR_UNLCK_B do
        stat_set_bool(BUNKR_UNLCK_B[i][1], true, BUNKR_UNLCK_B[i][2])
        end
    end
end)


local UKNNCLUB_AWARDS = menu.add_feature("Nightclub Awards", "parent", UKN_UNLKS.id)    
menu.add_feature("Unlock Nightclub Awards", "action", UKNNCLUB_AWARDS.id, function()
    menu.notify("Nightclub Awards Unlocked", "Unknown's Unlocker", 4, 257818)
    for i = 1, #NIGH_C_UNLK do
        stat_set_int(NIGH_C_UNLK[i][1], true, NIGH_C_UNLK[i][2])
    for i = 2, #NIGH_C_UNLK_B do
        stat_set_bool(NIGH_C_UNLK_B[i][1], true, NIGH_C_UNLK_B[i][2])
        stat_set_bool(NIGH_C_UNLK_B[i][1], false, NIGH_C_UNLK_B[i][2])
        end
    end
end)


local UKNTNR_AWARDS = menu.add_feature("LS Tuner Awards", "parent", UKN_UNLKS.id)    
menu.add_feature("Unlock Awards", "action", UKNTNR_AWARDS.id, function()
    menu.notify("Tuners Awards Unlocked", "Unknown's Unlocker", 4, 257818)
    for i = 1, #LS_TUNERS_DLC_IT do
        stat_set_int(LS_TUNERS_DLC_IT[i][1], true, LS_TUNERS_DLC_IT[i][2])
    for i = 2, #LS_TUNERS_DLC_BL do
        stat_set_bool(LS_TUNERS_DLC_BL[i][1], true, LS_TUNERS_DLC_BL[i][2])
        end
    end
end)
menu.add_feature("Unlock Vehicle Challenge", "action", UKNTNR_AWARDS.id, function()
    menu.notify("Successfully Unlocked Challenge", "Unknown's Unlocker", 4, 257818)
    for i = 1, #LS_TUNERS_PRIZE_BL do
        stat_set_bool(LS_TUNERS_PRIZE_BL[i][1], true, LS_TUNERS_PRIZE_BL[i][2])
    for i = 2, #LS_TUNERS_PRICE_IT do
        stat_set_int(LS_TUNERS_PRICE_IT[i][1], true, LS_TUNERS_PRICE_IT[i][2])
        end
    end
end)
menu.add_feature("Unlock Drip Feed Vehicles", "toggle", UKNTNR_AWARDS.id, function(bit)
    menu.notify("You can leave this option active if you want to play with the new cars in missions, heists and free mode\n\nThe cars are available for purchase!", "Unknown's Unlocker", 5, 3578712200220)
    while bit.on do 
    script.set_global_i(262145 + 30494, 1)
    script.set_global_i(262145 + 30498, 1)
    script.set_global_i(262145 + 30499, 1)
    script.set_global_i(262145 + 30500, 1)
    script.set_global_i(262145 + 30488, 1)
    script.set_global_i(262145 + 30486, 1)
    script.set_global_i(262145 + 30493, 1)
    system.wait(1)
        if not bit.on then return end
    end
end)
menu.add_feature("Unlock Drip Feed Outfits", "toggle", UKNTNR_AWARDS.id, function(hk)
    menu.notify("Sprunk Bodysuit\nCola Parachute Bag\nSprunk Parachute Bag\nHalloween Parachute Bag\nLos Santos Customs tee-shirt\nKnuckleduster Tee\nRampage Tee", "Unknown's Unlocker", 15, 3578712200220)
    menu.notify("Several items have been unlocked:\n\nPenitentiary Coverall outfit (delayed)\nBanshee Logo black & blue t-shirt\nBorn X Raised black, blue and white t-shirt\nCircoloco Tee\nBaseball Bat Tee\nWasted! Tee\nRockstar Games Typeface Tee\nSprunk x eCola", "Unknown's Unlocker", 15, 3578712200220)
    while hk.on do
        script.set_global_i(262145 + 30657, 1)
        script.set_global_i(262145 + 30658, 1)
        script.set_global_i(262145 + 30659, 1)
        script.set_global_i(262145 + 30660, 1)
        script.set_global_i(262145 + 30661, 1)
        script.set_global_i(262145 + 30662, 1)
        script.set_global_i(262145 + 30663, 1)
        script.set_global_i(262145 + 30664, 1)
        script.set_global_i(262145 + 30665, 1)
        script.set_global_i(262145 + 30666, 1)
        script.set_global_i(262145 + 30667, 1)
        script.set_global_i(262145 + 30668, 1)
        script.set_global_i(262145 + 30669, 1)
        script.set_global_i(262145 + 30670, 1)
        script.set_global_i(262145 + 30671, 1)
        script.set_global_i(262145 + 30672, 1)
        script.set_global_i(262145 + 30673, 1)
        script.set_global_i(262145 + 30674, 1)
        script.set_global_i(262145 + 30675, 1)
        script.set_global_i(262145 + 30676, 1)
        script.set_global_i(262145 + 30677, 1)
        script.set_global_i(262145 + 30678, 1)
        script.set_global_i(262145 + 30679, 1)
    if not hk.on then return end
    system.wait(1)
    end
end)



menu.add_feature("Unlock All", "action", UKN_UNLKS.id, function()
    menu.notify("Unlocking Everything..", "Unknown's Unlocker", 4, 257818)

    system.yield(2000)

    menu.notify("Unlocked Nothing LOL", "Unknown's Unlocker", 4, 257818)
end)



menu.add_feature("Unlock XMAS Liveries", "action", UKN_UNLKS.id, function()
    menu.notify("All XMAS Liveries Unlocked", "Unknown's Unlocker", 4, 257818)
    for i = 1, #UNLK_XMAS do
        stat_set_int(UNLK_XMAS[i][1], false, UNLK_XMAS[i][2])
    end
end)
menu.add_feature("Unlock all Arena Wars Trophy and Toys", "action", UKN_UNLKS.id, function()
    menu.notify("Arena Wars Trophy & Toys unlocked, switch sessions.", "Unknown's Unlocker", 4, 257818)
    for i = 1, #ARENA_W_UNLK do
        stat_set_int(ARENA_W_UNLK[i][1], true, ARENA_W_UNLK[i][2])
    for i = 2, #ARENA_W_UNLK_BL do
        stat_set_bool(ARENA_W_UNLK_BL[i][1], true, ARENA_W_UNLK_BL[i][2])
        stat_set_bool(ARENA_W_UNLK_BL[i][1], false, ARENA_W_UNLK_BL[i][2])
    end
    end
end)
menu.add_feature("Unlock Don't Cross the Line Tee", "action", UKN_UNLKS.id, function()
    menu.notify("Unlocked Don't Cross The Line Tee, Available at any clothing store.", "Unknown's Unlocker", 4, 257818)
    for i = 1, #DCTL_UNLK do
        stat_set_int(DCTL_UNLK[i][1], true, DCTL_UNLK[i][2])
    end
end)
menu.add_feature("Unlock Shotaro", "action", UKN_UNLKS.id, function()
    menu.notify("Shotaro is now avaliable to purchase at Legendary Motorsport", "Unknown's Unlocker", 4, 257818)
    for i = 1, #SHT_UNLK do
        stat_set_int(SHT_UNLK[i][1], true, SHT_UNLK[i][2])
    end
end)
menu.add_feature("Unlock Summer 2020 Awards", "action", UKN_UNLKS.id, function()
    menu.notify("Summer 2020 Awards Unlocked", "Unknown's Unlocker", 4, 257818)
    for i = 1, #SUMR2020_AWARDS_BL do
        stat_set_bool(SUMR2020_AWARDS_BL[i][1], true, SUMR2020_AWARDS_BL[i][2])
        stat_set_bool(SUMR2020_AWARDS_BL[i][1], false, SUMR2020_AWARDS_BL[i][2])
    end
end)
menu.add_feature("Unlock Yacht Missions", "action", UKN_UNLKS.id, function()
    menu.notify("Yacht Missions Unlocked~s~", "Unknown's Unlocker", 4, 257818)
    for i = 1, #YCHT_MS do
        stat_set_int(YCHT_MS[i][1], true, YCHT_MS[i][2])
    end
end)
menu.add_feature("Unlock Flight School Awards", "action", UKN_UNLKS.id, function()
    menu.notify("Flight School Awards Unlocked", "Unknown's Unlocker", 4, 257818)
    for i = 1, #FLY_SCHOOL_I do
        stat_set_int(FLY_SCHOOL_I[i][1], true, FLY_SCHOOL_I[i][2])
    for i = 2, #FLY_SCHOOL_B do
        stat_set_bool(FLY_SCHOOL_B[i][1], true, FLY_SCHOOL_B[i][2])
        end
    end
end)
--[[menu.add_feature("Unlock All Contacts", "action", UKN_UNLKS.id, function()
    menu.notify("All Contacts Unlocked", "Unknown's Unlocker", 4, 257818)
    for i = 1, #CONTACTx_UNLCK do
        stat_set_int(CONTACTx_UNLCK[i][1], true, CONTACTx_UNLCK[i][2])
    end
end)--]]
menu.add_feature("Unlock Vanilla Unicorn Awards", "action", UKN_UNLKS.id, function()
    menu.notify("Vanilla Unicorn Awards Unlocked", "Unknown's Unlocker", 4, 257818)
    for i = 1, #VANNIL_AWD do
        stat_set_int(VANNIL_AWD[i][1], true, VANNIL_AWD[i][2])
    end
end)
menu.add_feature("Unlock Packie McReary", "action", UKN_UNLKS.id, function()
    menu.notify("NOTE: it is experimental, it may not work correctly.", "Unknown's Unlocker", 4, 780000)
    for i = 1, #UNLCK_PATRICK do
        stat_set_int(UNLCK_PATRICK[i][1], true, UNLCK_PATRICK[i][2])
    end
end)
menu.add_feature("Unlock All Outfits in Facility", "action", UKN_UNLKS.id, function()
    for i = 1, #UNLCK_FCIOU do
        stat_set_int(UNLCK_FCIOU[i][1], true, UNLCK_FCIOU[i][2])
    end
    menu.notify("Unlocked all Facility outfits!", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Unlock Burning Heart Tattoo", "action", UKN_UNLKS.id, function()
    for i = 1, #UNLCK_BGHTO do
        stat_set_int(UNLCK_BGHTO[i][1], true, UNLCK_BGHTO[i][2])
    end
    menu.notify("Unlocked Burning Heart Tattoo!", "Unknown's Unlocker", 4, 257818)
end)
--[[menu.add_feature("Unlock Paragon R", "action", UKN_UNLKS.id, function()
    for i = 1, #UNLCK_PARGR_I do
        stat_set_int(UNLCK_PARGR_I[i][1], true, UNLCK_PARGR_I[i][2])
    end
    for i = 2, #UNLCK_PARGR_B do
        stat_set_bool(UNLCK_PARGR_B[i][1], true, UNLCK_PARGR_B[i][2])
    end
    menu.notify("Unlocked Paragon R!", "Unknown's Unlocker", 4, 257818)
end)--]]
menu.add_feature("Unlock All IMP/EXP Special Vehicle Work", "action", UKN_UNLKS.id, function()
    for i = 1, #UNLCK_IESVW do
        stat_set_int(UNLCK_IESVW[i][1], true, UNLCK_IESVW[i][2])
    end
    menu.notify("Unlocked all Import/Export Special Vehicle Work!", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Unlock Ceramic Pistol", "action", UKN_UNLKS.id, function()
    for i = 1, #UNLCK_CPPSL do
        stat_set_int(UNLCK_CPPSL[i][1], true, UNLCK_CPPSL[i][2])
    end
    menu.notify("Unlocked Ceramic Pistol!", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Unlock Cayo Perico Unlockables", "action", UKN_UNLKS.id, function()
    menu.notify("These items will be in the store unlocked for purchase\n\nT-shirts\nJackets\nSweaters\nCaps\nGlow glasses\nGlow necklaces\nSpecial glasses\nDJ T-shirts", "Unknown's Unlocker", 5, 3578712200220)
        -- T-shirts/Jackets/Sweaters
        script.set_global_i(262145 + 29688, 1)
        script.set_global_i(262145 + 29689, 1)
        script.set_global_i(262145 + 29690, 1)
        script.set_global_i(262145 + 29691, 1)
        script.set_global_i(262145 + 29692, 1)
        script.set_global_i(262145 + 29693, 1)
        script.set_global_i(262145 + 29694, 1)
        script.set_global_i(262145 + 29695, 1)
        script.set_global_i(262145 + 29696, 1)
        script.set_global_i(262145 + 29697, 1)
        script.set_global_i(262145 + 29698, 1)
        script.set_global_i(262145 + 29699, 1)
        script.set_global_i(262145 + 29700, 1)
        script.set_global_i(262145 + 29701, 1)
        script.set_global_i(262145 + 29702, 1)
        script.set_global_i(262145 + 29703, 1)
        script.set_global_i(262145 + 29704, 1)
        script.set_global_i(262145 + 29705, 1)
        script.set_global_i(262145 + 29706, 1)
        script.set_global_i(262145 + 29707, 1)
        -- Shorts
        script.set_global_i(262145 + 29708, 1)
        script.set_global_i(262145 + 29709, 1)
        script.set_global_i(262145 + 29710, 1)
        script.set_global_i(262145 + 29711, 1)
        -- Caps
        script.set_global_i(262145 + 29712, 1)
        script.set_global_i(262145 + 29713, 1)
        script.set_global_i(262145 + 29714, 1)
        script.set_global_i(262145 + 29715, 1)
        script.set_global_i(262145 + 29716, 1)
        -- Glow bracelets
        script.set_global_i(262145 + 29717, 1)
        script.set_global_i(262145 + 29718, 1)
        script.set_global_i(262145 + 29719, 1)
        script.set_global_i(262145 + 29720, 1)
        script.set_global_i(262145 + 29721, 1)
        script.set_global_i(262145 + 29722, 1)
        script.set_global_i(262145 + 29723, 1)
        script.set_global_i(262145 + 29724, 1)
        script.set_global_i(262145 + 29725, 1)
        script.set_global_i(262145 + 29726, 1)
        script.set_global_i(262145 + 29727, 1)
        script.set_global_i(262145 + 29728, 1)
        -- Glow glasses
        script.set_global_i(262145 + 29729, 1)
        script.set_global_i(262145 + 29730, 1)
        script.set_global_i(262145 + 29731, 1)
        script.set_global_i(262145 + 29732, 1)
        script.set_global_i(262145 + 29733, 1)
        script.set_global_i(262145 + 29734, 1)
        script.set_global_i(262145 + 29735, 1)
        script.set_global_i(262145 + 29736, 1)
        script.set_global_i(262145 + 29737, 1)
        script.set_global_i(262145 + 29738, 1)
        script.set_global_i(262145 + 29739, 1)
        script.set_global_i(262145 + 29740, 1)
        -- Glow necklaces
        script.set_global_i(262145 + 29741, 1)
        script.set_global_i(262145 + 29742, 1)
        script.set_global_i(262145 + 29743, 1)
        script.set_global_i(262145 + 29744, 1)
        script.set_global_i(262145 + 29745, 1)
        script.set_global_i(262145 + 29746, 1)
        script.set_global_i(262145 + 29747, 1)
        script.set_global_i(262145 + 29748, 1)
        script.set_global_i(262145 + 29749, 1)
        script.set_global_i(262145 + 29750, 1)
        script.set_global_i(262145 + 29751, 1)
        script.set_global_i(262145 + 29752, 1)
        script.set_global_i(262145 + 29753, 1)
        script.set_global_i(262145 + 29754, 1)
        script.set_global_i(262145 + 29755, 1)
        script.set_global_i(262145 + 29756, 1)
        -- Full head masks
        script.set_global_i(262145 + 29761, 1)
        script.set_global_i(262145 + 29762, 1)
        script.set_global_i(262145 + 29763, 1)
        script.set_global_i(262145 + 29764, 1)
        script.set_global_i(262145 + 29765, 1)
        script.set_global_i(262145 + 29766, 1)
        script.set_global_i(262145 + 29767, 1)
        script.set_global_i(262145 + 29768, 1)
        script.set_global_i(262145 + 29769, 1)
        script.set_global_i(262145 + 29770, 1)
        script.set_global_i(262145 + 29771, 1)
        script.set_global_i(262145 + 29772, 1)
        script.set_global_i(262145 + 29773, 1)
        script.set_global_i(262145 + 29774, 1)
        script.set_global_i(262145 + 29775, 1)
        script.set_global_i(262145 + 29776, 1)
        script.set_global_i(262145 + 29777, 1)
        script.set_global_i(262145 + 29778, 1)
        script.set_global_i(262145 + 29779, 1)
        script.set_global_i(262145 + 29780, 1)
        -- Special glasses
        script.set_global_i(262145 + 30345, 1)
        script.set_global_i(262145 + 30346, 1)
        script.set_global_i(262145 + 30347, 1)
        script.set_global_i(262145 + 30348, 1)
        script.set_global_i(262145 + 30349, 1)
        script.set_global_i(262145 + 30350, 1)
        script.set_global_i(262145 + 30351, 1)
        script.set_global_i(262145 + 30352, 1)
        script.set_global_i(262145 + 30353, 1)
        script.set_global_i(262145 + 30354, 1)
        script.set_global_i(262145 + 30355, 1)
        script.set_global_i(262145 + 30356, 1)
        script.set_global_i(262145 + 30357, 1)
        script.set_global_i(262145 + 30358, 1)
        script.set_global_i(262145 + 30359, 1)
        script.set_global_i(262145 + 30360, 1)
        script.set_global_i(262145 + 30361, 1)
        script.set_global_i(262145 + 30362, 1)
        script.set_global_i(262145 + 30363, 1)
        script.set_global_i(262145 + 30364, 1)
        script.set_global_i(262145 + 30365, 1)
        script.set_global_i(262145 + 30366, 1)
        script.set_global_i(262145 + 30367, 1)
        script.set_global_i(262145 + 30368, 1)
        script.set_global_i(262145 + 30369, 1)
        script.set_global_i(262145 + 30370, 1)
        script.set_global_i(262145 + 30371, 1)
        script.set_global_i(262145 + 30372, 1)
        script.set_global_i(262145 + 30373, 1)
        script.set_global_i(262145 + 30374, 1)
        script.set_global_i(262145 + 30375, 1)
        script.set_global_i(262145 + 30376, 1)
        script.set_global_i(262145 + 30377, 1)
        script.set_global_i(262145 + 30378, 1)
        script.set_global_i(262145 + 30379, 1)
        script.set_global_i(262145 + 30380, 1)
        -- DJ's T-shirts
        script.set_global_i(262145 + 30390, 1)
        script.set_global_i(262145 + 30391, 1)
        script.set_global_i(262145 + 30392, 1)
        script.set_global_i(262145 + 30393, 1)
        script.set_global_i(262145 + 30394, 1)
        script.set_global_i(262145 + 30395, 1)
end)





-- Inventory
menu.add_feature("Refill Snacks", "action", UKN_INV.id, function()
    for i = 1, #INVTRY_SNCK do
        stat_set_int(INVTRY_SNCK[i][1], true, INVTRY_SNCK[i][2])
    menu.notify("Refilled Snacks", "Unknown's Unlocker", 4, 257818)
    end
end)
menu.add_feature("Refill Armor", "action", UKN_INV.id, function()
    for i = 1, #INVTRY_ARMOR do
        stat_set_int(INVTRY_ARMOR[i][1], true, INVTRY_ARMOR[i][2])
    menu.notify("Refilled Armor", "Unknown's Unlocker", 4, 257818)
    end
end)
menu.add_feature("Refill Cigarettes", "action", UKN_INV.id, function()
    stat_set_int("CIGARETTES_BOUGHT", true, 20)
    menu.notify("Refilled Cigarettes", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Refill Champagne", "action", UKN_INV.id, function()
    stat_set_int("NUMBER_OF_CHAMP_BOUGHT", true, 5)
    menu.notify("Refilled Champagne", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Refill Rebreather", "action", UKN_INV.id, function()
    stat_set_int("BREATHING_APPAR_BOUGHT", true, 20)
    menu.notify("Refilled Rebreathers", "Unknown's Unlocker", 4, 257818)
end)




-- Businesses
menu.add_feature("Max Nightclub Popularity", "action", UKN_BIZ.id, function()
    stat_set_int("CLUB_POPULARITY", true, 1000)
    menu.notify("Maxed out your Nightclub's popularity!", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Fill your Office with money", "action", UKN_BIZ.id, function()
    stat_set_int("LIFETIME_BUY_COMPLETE", true, 2000)
    stat_set_int("LIFETIME_BUY_UNDERTAKEN", true, 2000)
    stat_set_int("LIFETIME_SELL_COMPLETE", true, 2000)
    stat_set_int("LIFETIME_SELL_UNDERTAKEN", true, 2000)
    stat_set_int("LIFETIME_CONTRA_EARNINGS", true, 20000000)
    menu.notify("Filled your Office with money! (Sell some cargo for it to show)", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Fill Clubhouse with clutter", "action", UKN_BIZ.id, function()
    stat_set_int("LIFETIME_BIKER_BUY_COMPLET", true, 2000)
    stat_set_int("LIFETIME_BIKER_BUY_UNDERTA", true, 2000)

    stat_set_int("LIFETIME_BIKER_SELL_COMPLET", true, 2000)
    stat_set_int("LIFETIME_BIKER_SELL_UNDERTA", true, 2000)

    stat_set_int("LIFETIME_BIKER_BUY_COMPLET1", true, 2000)
    stat_set_int("LIFETIME_BIKER_BUY_UNDERTA1", true, 2000)
    stat_set_int("LIFETIME_BIKER_SELL_COMPLET1", true, 2000)
    stat_set_int("LIFETIME_BIKER_SELL_UNDERTA1", true, 2000)

    stat_set_int("LIFETIME_BIKER_BUY_COMPLET2", true, 2000)
    stat_set_int("LIFETIME_BIKER_BUY_UNDERTA2", true, 2000)
    stat_set_int("LIFETIME_BIKER_SELL_COMPLET2", true, 2000)
    stat_set_int("LIFETIME_BIKER_SELL_UNDERTA2", true, 2000)

    stat_set_int("LIFETIME_BIKER_BUY_COMPLET3", true, 2000)
    stat_set_int("LIFETIME_BIKER_BUY_UNDERTA3", true, 2000)
    stat_set_int("LIFETIME_BIKER_SELL_COMPLET3", true, 2000)
    stat_set_int("LIFETIME_BIKER_SELL_UNDERTA3", true, 2000)

    stat_set_int("LIFETIME_BIKER_BUY_COMPLET4", true, 2000)
    stat_set_int("LIFETIME_BIKER_BUY_UNDERTA4", true, 2000)
    stat_set_int("LIFETIME_BIKER_SELL_COMPLET4", true, 2000)
    stat_set_int("LIFETIME_BIKER_SELL_UNDERTA4", true, 2000)

    stat_set_int("LIFETIME_BIKER_BUY_COMPLET5", true, 2000)
    stat_set_int("LIFETIME_BIKER_BUY_UNDERTA5", true, 2000)
    stat_set_int("LIFETIME_BIKER_SELL_COMPLET5", true, 2000)
    stat_set_int("LIFETIME_BIKER_SELL_UNDERTA5", true, 2000)


    stat_set_int("LIFETIME_BKR_SELL_EARNINGS0", true, 20000000)
    stat_set_int("LIFETIME_BKR_SELL_EARNINGS1", true, 20000000)
    stat_set_int("LIFETIME_BKR_SELL_EARNINGS2", true, 20000000)
    stat_set_int("LIFETIME_BKR_SELL_EARNINGS3", true, 20000000)
    stat_set_int("LIFETIME_BKR_SELL_EARNINGS4", true, 20000000)
    stat_set_int("LIFETIME_BKR_SELL_EARNINGS5", true, 20000000)

    menu.notify("Filled your Clubhouse with clutter! (Do a sell mission to activate)", "Unknown's Unlocker", 4, 257818)
end)




-- Helpers
local UKN_HELPWCHL = menu.add_feature("Weapon Challenges", "parent", UKN_HELP.id)
menu.add_feature("The frozen ped can be used for all challenges!", "action", UKN_HELPWCHL.id)
menu.add_feature("Spawn Frozen Ped", "action", UKN_HELPWCHL.id, function()
    local coords = player.get_player_coords(player.player_id())
    local model = 0xE7A963D9 --a_m_y_beach_03

    streaming.request_model(model)
    while (not streaming.has_model_loaded(model)) do
        system.wait(10)
    end

    local ped = ped.create_ped(26, model, v3(coords.x - 2, coords.y, coords.z -1), 0, true, false)

    network.request_control_of_entity(ped)
    entity.freeze_entity(ped, true)
end)


local UKN_HELPSRKL = menu.add_feature("Serial Killer", "parent", UKN_HELP.id)
menu.add_feature("Clue 1 - Bloody Handprint", "action", UKN_HELPSRKL.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-678.9984, 5797.6851, 17.3309))
end)
menu.add_feature("Clue 2 - Machete", "action", UKN_HELPSRKL.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(1901.4042, 4911.5479, 48.6951))
end)
menu.add_feature("Clue 3 - Severed Hand", "action", UKN_HELPSRKL.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(1111.7750, 3142.0457, 38.4241))
end)
menu.add_feature("Clue 4 - Message", "action", UKN_HELPSRKL.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-136.5509, 1912.8038, 197.2982))
end)

local UKN_HELPSRKLC = menu.add_feature("Clue 5 - Multiple Locations", "parent", UKN_HELPSRKL.id)
menu.add_feature("Clue 5 - Black Van (1)", "action", UKN_HELPSRKLC.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2576.0391, 1251.7494, 43.6099))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (2)", "action", UKN_HELPSRKLC.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2903.4150, 3644.0413, 43.8774))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (3)", "action", UKN_HELPSRKLC.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2432.3904, 5846.0757, 58.8891))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (4)", "action", UKN_HELPSRKLC.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1567.880, 4424.6104, 7.2154))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (5)", "action", UKN_HELPSRKLC.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1715.793, 2618.7686, 2.9409))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Unknown's Unlocker", 4, 257818)
end)




--Collectables | TO DO
--[[local UKN_PLCR = menu.add_feature("Playing Cards", "parent", UKN_CLTB.id)
menu.add_feature("Playing Card #1", "action", UKN_PLCR.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(1992.183, 3046.28, 47.125))
end)
menu.add_feature("Playing Card #2", "action", UKN_PLCR.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(120.38, -1297.669, 28.705))
end)
menu.add_feature("Playing Card #3", "action", UKN_PLCR.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(79.293, 3704.578, 40.945))
end)
menu.add_feature("Playing Card #4", "action", UKN_PLCR.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2937.738, 5325.846, 100.176))
end)
menu.add_feature("Playing Card #5", "action", UKN_PLCR.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(727.153, 4189.818, 40.476))
end)
menu.add_feature("Playing Card #6", "action", UKN_PLCR.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-103.14, 369.008, 112.267))
end)
menu.add_feature("Playing Card #7", "action", UKN_PLCR.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(99.959, 6619.539, 32.314))
end)
menu.add_feature("Playing Card #8", "action", UKN_PLCR.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-282.6689, 6226.274, 31.3554))
end)--]]




local UKN_MDIS = menu.add_feature("Media Sticks", "parent", UKN_CLTB.id)
menu.add_feature("CircoLoco Record - Black EP", "action", UKN_MDIS.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-2172.050, 1159.195, -24.372))
end)
menu.add_feature("CircoLoco Record - Blue EP", "action", UKN_MDIS.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(955.299, 48.904, 112.553))
end)
menu.add_feature("CircoLoco Record - Violet EP", "action", UKN_MDIS.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1618.841, -3010.627, -75.205))
end)
menu.add_feature("CircoLoco Record - Green EP", "action", UKN_MDIS.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2726.694, -387.484, -48.993))
    menu.notify("You now unlocked the Circoloco Tee & Media!", "UnknownHax", 5, 3578712200220)
end)

local UKN_KBBL = menu.add_feature("Kenny's Backyard Boogie Locations", "parent", UKN_MDIS.id)
menu.add_feature("Kenny's Backyard Boogie - #1", "action", UKN_KBBL.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-2163.025, 1083.473, -24.362))
end)
menu.add_feature("Kenny's Backyard Boogie - #2", "action", UKN_KBBL.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-2180.532, 1082.276, -24.367))
end)
menu.add_feature("Kenny's Backyard Boogie - #3", "action", UKN_KBBL.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-2162.992, 1089.790, -24.363))
end)
menu.add_feature("Kenny's Backyard Boogie - #4", "action", UKN_KBBL.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-2162.770, 1115.913, -24.371))
end)





-- Miscellaneous
local UKN_MISCRUN = menu.add_feature("Fast Run and Reload", "parent", UKN_MISC.id)
menu.add_feature("ON", "action", UKN_MISCRUN.id, function()
    menu.notify("Fast Run and Reload: Enabled", "Unknown's Unlocker", 4, 257818)
    for i = 1, #FAST_RUN_ON do
        stat_set_int(FAST_RUN_ON[i][1], true, FAST_RUN_ON[i][2])
    end
end)
menu.add_feature("OFF", "action", UKN_MISCRUN.id, function()
    menu.notify("Fast Run and Reload: Disabled", "Unknown's Unlocker", 4, 75000)
    for i = 1, #FAST_RUN_OFF do
        stat_set_int(FAST_RUN_OFF[i][1], true, FAST_RUN_OFF[i][2])
    end
end)


local UKN_MISCMNTL = menu.add_feature("Mental State", "parent", UKN_MISC.id)
menu.add_feature("Maximum", "action", UKN_MISCMNTL.id, function()
    menu.notify("Mental State modified to the maximum, change sessions.", "Unknown's Unlocker", 4, 257818)
    for i = 1, #MENTAL_PLAYER_MODIFIER_ON do
    stat_set_float(MENTAL_PLAYER_MODIFIER_ON[i][1], true, MENTAL_PLAYER_MODIFIER_ON[i][2])
    end
end)
menu.add_feature("Half", "action", UKN_MISCMNTL.id, function()
    menu.notify("Mental State modified to the Half, change sessions.", "Unknown's Unlocker", 4, 257818)
    for i = 1, #MENTAL_PLAYER_MODIFIER_HF do
    stat_set_float(MENTAL_PLAYER_MODIFIER_HF[i][1], true, MENTAL_PLAYER_MODIFIER_HF[i][2])
    end
end)
menu.add_feature("Remove", "action", UKN_MISCMNTL.id, function()
    menu.notify("Mental State has been removed, change sessions.", "Unknown's Unlocker", 4, 257818)
    for i = 1, #MENTAL_PLAYER_MODIFIER_OFF do
    stat_set_float(MENTAL_PLAYER_MODIFIER_OFF[i][1], true, MENTAL_PLAYER_MODIFIER_OFF[i][2])
    end
end)


menu.add_feature("Get Plane Access", "action", UKN_MISC.id, function()
    stat_set_bool("PLANE_ACCESS", true, true)
    menu.notify("You have gained plane access", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Get Heli Access", "action", UKN_MISC.id, function()
    stat_set_bool("HELI_ACCESS", true, true)
    menu.notify("You have gained heli access", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Get Boat Access", "action", UKN_MISC.id, function()
    stat_set_bool("BOAT_ACCESS", true, true)
    menu.notify("You have gained boat access", "Unknown's Unlocker", 4, 257818)
end)

menu.add_feature("Alien Tattoo (Male)", "action", UKN_MISC.id, function()
    stat_set_int("TATTOO_FM_CURRENT_32", true, 32768)
    menu.notify("Unlocked Alien Tattoo, requires new session", "Unknown's Unlocker", 4, 257818)
end)
menu.add_feature("Alien Tattoo (Female)", "action", UKN_MISC.id, function()
    stat_set_int("TATTOO_FM_CURRENT_32", true, 67108864)
    menu.notify("Unlocked Alien Tattoo, requires new session", "Unknown's Unlocker", 4, 257818)
end)