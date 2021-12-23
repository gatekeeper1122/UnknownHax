--          Welcome to UnknownHax

-- Requires Trusted Mode to be turned ON
-- Report any issues in my DM's or the github page
-- This script has been made to put everything I make into one script

-- This script makes use of some elements from Heist Control & Master Unlocker from jhowkNx


local statz  = require "UnknownHax\\Statistics"

-- Functions
local function DrawableCallback(f)
    ped.set_ped_component_variation(player.get_player_ped(player.player_id()), 10, f.data, 0, 0)
end
-- [ From Master Unlocker by jhowkNx ]
function GTAO_USER_MP()
    MP_ = stats.stat_get_int(gameplay.get_hash_key("MPPLY_LAST_MP_CHAR"), 1)
       return tostring(MP_)
   end
local CharID = "" .. GTAO_USER_MP()
local PlayerMP = "MP" ..GTAO_USER_MP()
--   
local	hash
local	mask
-- 
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
-- [ From Master Unlocker by jhowkNx ]

-- Unlockables 

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
local YCHT_MS = {
    {"YACHT_MISSION_PROG", 0},
    {"YACHT_MISSION_FLOW", 21845},
    {"CASINO_DECORATION_GIFT_1", -1}
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
local VANNIL_AWD = {    
    {"LAP_DANCED_BOUGHT", 0},
    {"LAP_DANCED_BOUGHT", 5},
    {"LAP_DANCED_BOUGHT", 10},
    {"LAP_DANCED_BOUGHT", 15},
    {"LAP_DANCED_BOUGHT", 25},
    {"PROSTITUTES_FREQUENTED", 1000}
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

local DD_H_ULCK = {    
    {"GANGOPS_HEIST_STATUS", -1},
    {"GANGOPS_HEIST_STATUS", -229384}
}
local UNLCK_BGHTO = {
    {"AWD_FM_DM_WINS", 50}
}
local UNLCK_IESVW = {
    {"AT_FLOW_IMPEXP_NUM", 32}
}


-- Perform the Trusted Mode check
if not menu.is_trusted_mode_enabled() then
    menu.notify("UnknownHax requires Trusted Mode to be activated", "UnknownHax", 8, 2552550)
    return
end




local HAX_MAIN = menu.add_feature("UnknownHax", "parent", 0)
local UKN_MAIN = menu.add_feature("Unknown's Stat Editor", "parent", HAX_MAIN.id)
local MISFKR_MAIN = menu.add_feature("MissionFucker", "parent", HAX_MAIN.id)
local DC_MAIN = menu.add_feature("Decal Changer", "parent", HAX_MAIN.id)
local GH_MAIN = menu.add_feature("GlobalHax", "parent", HAX_MAIN.id)
local MISC_FT_MAIN = menu.add_feature("Other Features", "parent", HAX_MAIN.id)
menu.add_feature("About UnknownHax", "action", HAX_MAIN.id, function()
    menu.clear_all_notifications() -- Clear all other notifications so we can spam the screen with them.
    menu.notify("UnknownHax is the script that combines the following scripts in a neat package: Unknown's Stat Editor, MissionFucker, Decal Changer and GlobalHax.", "Script Information", 10, 0x2400ff)

    menu.notify("Unknown's Stat Editor is my customized version of jhowkNx's 'Master Unlocker'", "Script Information", 10, 0x2400ff)
    menu.notify("MissionFucker is my customized version of jhowkNx's 'Heist Control'", "Script Information", 10, 0x2400ff)
    menu.notify("Decal Changer is a script that allows you to add Decals to your Character.", "Script Information", 10, 0x2400ff)
    menu.notify("GlobalHax is a script that can bypass cooldowns, edit value's of RP Multipliers and much more!", "Script Information", 10, 0x2400ff)
end)




-- Unknown's Stat Editor
local UKN_UNLKS = menu.add_feature("Unlockables", "parent", UKN_MAIN.id)
local UKN_INV = menu.add_feature("Inventory", "parent", UKN_MAIN.id)
local UKN_BIZ = menu.add_feature("Businesses", "parent", UKN_MAIN.id)
local UKN_HELP = menu.add_feature("Helpers", "parent", UKN_MAIN.id)
local UKN_CLTB = menu.add_feature("Collectables", "parent", UKN_MAIN.id)
local UKN_MISC = menu.add_feature("Miscellaneous", "parent", UKN_MAIN.id)


-- Unlockables
local UKN_UNLKS_AWD = menu.add_feature("Awards", "parent", UKN_UNLKS.id)
menu.add_feature("Unlock All Victory Awards", "action", UKN_UNLKS_AWD.id, function()
    stat_set_int("AWD_FM_DM_WINS", true, 50) -- The Slayer (Unlocks 'Burning Heart' Tattoo)
    stat_set_int("AWD_FM_TDM_WINS", true, 50) -- Death Brigade
    stat_set_int("AWD_FM_TDM_MVP", true, 50) -- Team Carrier (Unlocks 'Grim Reaper' Tattoo)
    stat_set_int("AWD_RACES_WON", true, 50) -- The Champion (Unlocks 'Racing Brunette' Tattoo)
    stat_set_int("AWD_FMWINAIRRACE", true, 25) -- The Aviator
    stat_set_int("AWD_FMWINSEARACE", true, 25) -- Making Waves
    stat_set_int("AWD_FM_GTA_RACES_WON", true, 50) -- Cruisin' For A Bruisin'
    stat_set_bool("AWD_FMKILL3ANDWINGTARACE", true, true) -- Road Rage (Unlocks 'Ride or Die' Tattoo)
    stat_set_int("AWD_FMRALLYWONDRIVE", true, 25) -- Follow To A Tee
    stat_set_int("AWD_FMRALLYWONNAV", true, 25) -- The Dictator
    stat_set_int("AWD_FMWINRACETOPOINTS", true, 25) -- Impromptu Champion
    stat_set_bool("AWD_FMWINCUSTOMRACE", true, true) -- In A Class Of Your Own

    stat_set_int("AWD_FM_RACE_LAST_FIRST", true, 25) -- Penetrate From Behind
    stat_set_bool("AWD_FMRACEWORLDRECHOLDER", true, true) -- The Record Holder (Unlocks 'Racing Blonde' Tattoo)
    stat_set_int("AWD_FM_RACES_FASTEST_LAP", true, 25) -- Dust Maker
    stat_set_bool("AWD_FMWINALLRACEMODES", true, true) -- Every Race
    stat_set_int("AWD_FMHORDWAVESSURVIVE", true, 10) -- Survivor (Unlocks 'Red Skull V Neck' T-Shirt)
    stat_set_int("AWD_NO_ARMWRESTLING_WINS", true, 25) -- Over The Top
    stat_set_int("MOST_ARM_WRESTLING_WINS", true, 25) -- Required for Over The Top
    stat_set_int("AWD_WIN_AT_DARTS", true, 25) -- Throwback King
    stat_set_int("AWD_FM_GOLF_WON", true, 25) -- The Swing King
    stat_set_int("AWD_FM_TENNIS_WON", true, 25) -- Stroke Master
    stat_set_bool("AWD_FM_TENNIS_5_SET_WINS", true, true) -- Out Of Five
    stat_set_bool("AWD_FM_TENNIS_STASETWIN", true, true) -- Straight Sets
    stat_set_int("AWD_FM_SHOOTRANG_TG_WON", true, 25) -- Crack Shot

    stat_set_int("AWD_FM_SHOOTRANG_CT_WON", true, 25) -- Duck And Cover
    stat_set_bool("AWD_FM_SHOOTRANG_GRAN_WON", true, true) -- Granny
    stat_set_int("AWD_FM_SHOOTRANG_RT_WON", true, 25) -- The Marksman
    stat_set_bool("AWD_FMWINEVERYGAMEMODE", true, true) -- All Rounder (Unlocks 'Angel' Tattoo)
    stat_set_int("AWD_WIN_LAST_TEAM_STANDINGS", true, 50) -- Still Standing (Unlocks Free 'SUV' Chrome Rims)
    stat_set_int("AWD_ONLY_PLAYER_ALIVE_LTS", true, 50) -- One And Only (Unlocks Free 'Muscle' Chrome Rims)
    stat_set_int("AWD_KILL_TEAM_YOURSELF_LTS", true, 25) -- One Man Army (Unlocks 'One Man Army' T-Shirt)
    stat_set_int("AWD_WIN_CAPTURES", true, 50) -- Captured (Unlocks Free 'Sport' Chrome Rims)
    stat_set_int("AWD_WIN_CAPTURE_DONT_DYING", true, 25) -- Death Defying (Unlocks 'Death Defying' T-Shirt)
    menu.notify("All Victory Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock All General Awards", "action", UKN_UNLKS_AWD.id, function()
    stat_set_int("AWD_FM25DIFFERENTDM", true, 25) -- War Pig 
    stat_set_int("CR_DIFFERENT_DM", true, 25) -- Required for War Pig 
    stat_set_int("AWD_FM25DIFFERENTRACES", true, 25) -- Veteran Racer
    stat_set_int("CR_DIFFERENT_RACES", true, 25) -- Required for Veteran Racer
    --stat_set_int("", true, 5) -- Nick Of Time
    stat_set_int("AWD_PARACHUTE_JUMPS_50M", true, 25) -- Point Break
    stat_set_int("AWD_FMBASEJMP", true, 25) -- Stayed On Target
    stat_set_bool("AWD_FMATTGANGHQ", true, true) -- Clear Out (Unlocks 'Grim Reaper Smoking Gun' Tattoo)
    stat_set_bool("AWD_FM6DARTCHKOUT", true, true) -- Checking Out
    stat_set_int("AWD_FM_GOLF_BIRDIES", true, 25) -- Birdies
    stat_set_bool("AWD_FM_GOLF_HOLE_IN_1", true, true) --Hole In One
    stat_set_int("AWD_FM_TENNIS_ACE", true, 25) -- Ace
    stat_set_int("AWD_FMBBETWIN", true, 50000) -- The Hustler (Unlocks 'Hustler' Tattoo)
    stat_set_int("AWD_LAPDANCES", true, 25) -- Lapping It Up (Unlocks 'Hottie' Tattoo)

    stat_set_bool("AWD_FM25DIFITEMSCLOTHES", true, true) -- Snappy Dresser
    stat_set_int("AWD_NO_HAIRCUTS", true, 25) -- Hairy Encounters
    stat_set_bool("AWD_BUY_EVERY_GUN", true, true) -- Proud Gun Owner
    stat_set_bool("AWD_FMTATTOOALLBODYPARTS", true, true) -- The Human Canvas
    --stat_set_int("", true, 5) -- The Matchmaker
    --stat_set_int("", true, 5) -- Track Builder
    --stat_set_int("", true, 5) -- Well Received
    --stat_set_int("", true, 5) -- Reeling Them In
    stat_set_int("AWD_DROPOFF_CAP_PACKAGES", true, 100) -- The Postman (Unlocks Free 'Lowrider' Chrome Rims)
    stat_set_int("AWD_PICKUP_CAP_PACKAGES", true, 100) -- Gimme That (Unlocks 'Gimme That' T-Shirt)
    stat_set_int("AWD_MENTALSTATE_TO_NORMAL", true, 50) -- Calm Down
    stat_set_bool("AWD_STORE_20_CAR_IN_GARAGES", true, true) -- Showroom

    stat_set_int("AWD_TRADE_IN_YOUR_PROPERTY", true, 25) -- Moving Day
    stat_set_int("AWD_DAILYOBJCOMPLETED", true, 50) -- Daily Duty
    stat_set_bool("AWD_DAILYOBJWEEKBONUS", true, true) -- Goal Oriented
    stat_set_bool("AWD_DAILYOBJMONTHBONUS", true, true) -- Over Achiever
    menu.notify("All General Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock All Crimes Awards", "action", UKN_UNLKS_AWD.id, function()
    --stats.stat_set_u64("", 60000, 60000, -1) -- The Fugitive
    stat_set_int("AWD_5STAR_WANTED_AVOIDANCE", true, 50) -- The Police Mocker
    --stat_set_int("", true, 25) -- When Pigs Can Fly
    --stat_set_int("", true, 10) -- Death By Drive-By
    stat_set_int("AWD_VEHICLES_JACKEDR", true, 500) -- Vehicle Thief
    stat_set_int("AWD_HOLD_UP_SHOPS", true, 20) -- Armed Robber (Unlocks the following tattoos: 'Clown' 'Clown And Gun' 'Clown Dual Wield' 'Clown Dual Wield Dollars')
    menu.notify("All Crimes Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock All Vehicle Awards", "action", UKN_UNLKS_AWD.id, function()
    stat_set_int("AWD_50_VEHICLES_BLOWNUP", true, 500) -- Sky High
    stat_set_int("AWD_CARS_EXPORTED", true, 50) -- The Exporter
    --stat_set_int("", true, 10) -- No Claims Bonus
    stats.stat_set_u64(gameplay.get_hash_key("MP0_AWD_PASSENGERTIME"), 1000, 1000, -1) -- The Passenger
    --stats.stat_set_u64(gameplay.get_hash_key("TIMEINHELI"), 60000, 60000, -1) -- Mile High Club 
    --stat_set_bool("", true, true) -- Suped Up (Unlocks '' Tattoo)
    stat_set_int("AWD_VEHICLE_JUMP_OVER_40M", true, 25) -- Airborne
    stat_set_int("AWD_FMMOSTFLIPSINONEVEHICLE", true, 5) -- Flippin' Hell
    stat_set_int("AWD_FMMOSTSPINSINONEVEHICLE", true, 5) -- Spinderella
    stat_set_bool("AWD_FMFURTHESTWHEELIE", true, true) -- Unirider
    menu.notify("All Vehicle Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock All Combat Awards", "action", UKN_UNLKS_AWD.id, function()
    for i = 1, #COMBAT_AWARDS_INT do
        stat_set_int(COMBAT_AWARDS_INT[i][1], true, COMBAT_AWARDS_INT[i][2])
        end
    for i = 2, #COMBAT_AWARDS_BOOL do
        stat_set_bool(COMBAT_AWARDS_BOOL[i][1], true, COMBAT_AWARDS_BOOL[i][2])
    end
    menu.notify("All Combat Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock Doomsday Heist Awards", "action", UKN_UNLKS_AWD.id, function()
    for i = 1, #DOOMSDAY_AWARDS_INT do
        stat_set_int(DOOMSDAY_AWARDS_INT[i][1], true, DOOMSDAY_AWARDS_INT[i][2])
        stat_set_int(DOOMSDAY_AWARDS_INT[i][1], false, DOOMSDAY_AWARDS_INT[i][2])
    end
    for i = 2, #DOOMSDAY_AWARDS_BOOL do
        stat_set_bool(DOOMSDAY_AWARDS_BOOL[i][1], true, DOOMSDAY_AWARDS_BOOL[i][2])
        stat_set_bool(DOOMSDAY_AWARDS_BOOL[i][1], false, DOOMSDAY_AWARDS_BOOL[i][2])
    end
    menu.notify("Doomsday Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock The Diamond Casino Heist Awards", "action", UKN_UNLKS_AWD.id, function()
    for i = 1, #CASINO_HEIST_AWARDS_INT do
        stat_set_int(CASINO_HEIST_AWARDS_INT[i][1], true, CASINO_HEIST_AWARDS_INT[i][2])
        end
    for i = 2, #CASINO_HEIST_AWARDS_BOOL do
        stat_set_bool(CASINO_HEIST_AWARDS_BOOL[i][1], true, CASINO_HEIST_AWARDS_BOOL[i][2])
    end
    menu.notify("All Diamond Casino Heist Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock Los Santos Summer Special Awards", "action", UKN_UNLKS_AWD.id, function()
    for i = 1, #LS_SUMMER_AWARDS_BOOL do
        stat_set_bool(LS_SUMMER_AWARDS_BOOL[i][1], true, LS_SUMMER_AWARDS_BOOL[i][2])
        stat_set_bool(LS_SUMMER_AWARDS_BOOL[i][1], false, LS_SUMMER_AWARDS_BOOL[i][2])
    end
    menu.notify("All Los Santos Summer Special Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock The Cayo Perico Heist Awards", "action", UKN_UNLKS_AWD.id, function()
    for i = 1, #CAYO_AWARDS_INT do
        stat_set_int(CAYO_AWARDS_INT[i][1], true, CAYO_AWARDS_INT[i][2])
        end
    for i = 2, #CAYO_AWARDS_BOOL do
        stat_set_bool(CAYO_AWARDS_BOOL[i][1], true, CAYO_AWARDS_BOOL[i][2])
    end
    -- Missing: In And Out, Easy Access, Its A Steal, Maximum Disruption, Travel Plans
    menu.notify("All Cayo Perico Heist Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock Los Santos Tuners Awards", "action", UKN_UNLKS_AWD.id, function()
    for i = 1, #LSTUNER_AWARDS_INT do
        stat_set_int(LSTUNER_AWARDS_INT[i][1], true, LSTUNER_AWARDS_INT[i][2])
        end
    for i = 2, #LSTUNER_AWARDS_BOOL do
        stat_set_bool(LSTUNER_AWARDS_BOOL[i][1], true, LSTUNER_AWARDS_BOOL[i][2])
    end
    -- Packed Stats
    for i=0,576,1 do
        hash, mask = stats.stat_get_bool_hash_and_mask("_TUNERPSTAT_BOOL", i, CharID)
        stats.stat_set_masked_bool(hash, true, mask, 1, true)
    end

    menu.notify("All Los Santos Tuners Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
end) 
menu.add_feature("Unlock The Contract Awards", "action", UKN_UNLKS_AWD.id, function()
    for i = 1, #CONTRACT_AWARDS_INT do
        stat_set_int(CONTRACT_AWARDS_INT[i][1], true, CONTRACT_AWARDS_INT[i][2])
        end
    for i = 2, #CONTRACT_AWARDS_BOOL do
        stat_set_bool(CONTRACT_AWARDS_BOOL[i][1], true, CONTRACT_AWARDS_BOOL[i][2])
    end
    -- Clothing
    local BL0 = gameplay.get_hash_key(PlayerMP.."_FIXERPSTAT_BOOL0")
    local BL1 = gameplay.get_hash_key(PlayerMP.."_FIXERPSTAT_BOOL1")
    for i=0,128,1 do
        stats.stat_set_masked_bool(BL0, true, i, 1, true) -- True
        stats.stat_set_masked_bool(BL1, true, i, 1, true) -- True
    end
    menu.notify("All Contract Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
end) 

-- Clothing Unlocks
local UKN_UNLKS_CLTH = menu.add_feature("Clothing", "parent", UKN_UNLKS.id)
menu.add_feature("Unlock Drip Feed Outfits", "toggle", UKN_UNLKS_CLTH.id, function(hk)
    menu.notify("Sprunk Bodysuit\nCola Parachute Bag\nSprunk Parachute Bag\nHalloween Parachute Bag\nLos Santos Customs tee-shirt\nKnuckleduster Tee\nRampage Tee", "Unknown's Stat Editor", 15, 3578712200220)
    menu.notify("Several items have been unlocked:\n\nPenitentiary Coverall outfit (delayed)\nBanshee Logo black & blue t-shirt\nBorn X Raised black, blue and white t-shirt\nCircoloco Tee\nBaseball Bat Tee\nWasted! Tee\nRockstar Games Typeface Tee\nSprunk x eCola", "Unknown's Stat Editor", 15, 3578712200220)
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
menu.add_feature("Unlock All Outfits in Facility", "action", UKN_UNLKS_CLTH.id, function()
    for i = 1, #ALL_FAC_OUTFIT do
        stat_set_int(ALL_FAC_OUTFIT[i][1], true, ALL_FAC_OUTFIT[i][2])
    end
    menu.notify("Unlocked all Facility outfits!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock All Cayo Perico Heist Clothing", "action", UKN_UNLKS_CLTH.id, function()
    script.set_global_i(262145 + 29843, 1)
    script.set_global_i(262145 + 29844, 1)
    script.set_global_i(262145 + 29845, 1)
    script.set_global_i(262145 + 29846, 1)
    script.set_global_i(262145 + 29847, 1)
    script.set_global_i(262145 + 29848, 1)
    script.set_global_i(262145 + 29849, 1)
    script.set_global_i(262145 + 29850, 1)
    script.set_global_i(262145 + 29851, 1)
    script.set_global_i(262145 + 29852, 1)
    script.set_global_i(262145 + 29853, 1)
    script.set_global_i(262145 + 29854, 1)
    script.set_global_i(262145 + 29855, 1)
    script.set_global_i(262145 + 29856, 1)
    script.set_global_i(262145 + 29857, 1)
    script.set_global_i(262145 + 29858, 1)
    script.set_global_i(262145 + 29859, 1)
    script.set_global_i(262145 + 29860, 1)
    script.set_global_i(262145 + 29861, 1)
    script.set_global_i(262145 + 29862, 1)
    -- Shorts
    script.set_global_i(262145 + 29863, 1)
    script.set_global_i(262145 + 29864, 1)
    script.set_global_i(262145 + 29865, 1)
    script.set_global_i(262145 + 29866, 1)
    -- Caps
    script.set_global_i(262145 + 29866, 1)
    script.set_global_i(262145 + 29867, 1)
    script.set_global_i(262145 + 29868, 1)
    script.set_global_i(262145 + 29869, 1)
    script.set_global_i(262145 + 29870, 1)
    -- Glow bracelets
    script.set_global_i(262145 + 29871, 1)
    script.set_global_i(262145 + 29872, 1)
    script.set_global_i(262145 + 29873, 1)
    script.set_global_i(262145 + 29874, 1)
    script.set_global_i(262145 + 29875, 1)
    script.set_global_i(262145 + 29876, 1)
    script.set_global_i(262145 + 29877, 1)
    script.set_global_i(262145 + 29878, 1)
    script.set_global_i(262145 + 29879, 1)
    script.set_global_i(262145 + 29880, 1)
    script.set_global_i(262145 + 29881, 1)
    script.set_global_i(262145 + 29882, 1)
    -- Glow glasses
    script.set_global_i(262145 + 29883, 1)
    script.set_global_i(262145 + 29884, 1)
    script.set_global_i(262145 + 29885, 1)
    script.set_global_i(262145 + 29886, 1)
    script.set_global_i(262145 + 29887, 1)
    script.set_global_i(262145 + 29888, 1)
    script.set_global_i(262145 + 29889, 1)
    script.set_global_i(262145 + 29890, 1)
    script.set_global_i(262145 + 29891, 1)
    script.set_global_i(262145 + 29892, 1)
    script.set_global_i(262145 + 29893, 1)
    script.set_global_i(262145 + 29894, 1)
    -- Glow necklaces
    script.set_global_i(262145 + 29895, 1)
    script.set_global_i(262145 + 29896, 1)
    script.set_global_i(262145 + 29897, 1)
    script.set_global_i(262145 + 29898, 1)
    script.set_global_i(262145 + 29898, 1)
    script.set_global_i(262145 + 29899, 1)
    script.set_global_i(262145 + 29900, 1)
    script.set_global_i(262145 + 29901, 1)
    script.set_global_i(262145 + 29902, 1)
    script.set_global_i(262145 + 29903, 1)
    script.set_global_i(262145 + 29904, 1)
    script.set_global_i(262145 + 29905, 1)
    script.set_global_i(262145 + 29906, 1)
    script.set_global_i(262145 + 29907, 1)
    script.set_global_i(262145 + 29908, 1)
    script.set_global_i(262145 + 29909, 1)
    -- Full head masks
    script.set_global_i(262145 + 29910, 1)
    script.set_global_i(262145 + 29911, 1)
    script.set_global_i(262145 + 29912, 1)
    script.set_global_i(262145 + 29913, 1)
    script.set_global_i(262145 + 29914, 1)
    script.set_global_i(262145 + 29915, 1)
    script.set_global_i(262145 + 29916, 1)
    script.set_global_i(262145 + 29917, 1)
    script.set_global_i(262145 + 29918, 1)
    script.set_global_i(262145 + 29919, 1)
    script.set_global_i(262145 + 29920, 1)
    script.set_global_i(262145 + 29921, 1)
    script.set_global_i(262145 + 29922, 1)
    script.set_global_i(262145 + 29923, 1)
    script.set_global_i(262145 + 29924, 1)
    script.set_global_i(262145 + 29925, 1)
    script.set_global_i(262145 + 29926, 1)
    script.set_global_i(262145 + 29927, 1)
    script.set_global_i(262145 + 29928, 1)
    script.set_global_i(262145 + 29929, 1)
    -- Special glasses
    script.set_global_i(262145 + 29930, 1)
    script.set_global_i(262145 + 29931, 1)
    script.set_global_i(262145 + 29932, 1)
    script.set_global_i(262145 + 29933, 1)
    script.set_global_i(262145 + 29934, 1)
    script.set_global_i(262145 + 29935, 1)
    script.set_global_i(262145 + 29936, 1)
    script.set_global_i(262145 + 29937, 1)
    script.set_global_i(262145 + 29938, 1)
    script.set_global_i(262145 + 29939, 1)
    script.set_global_i(262145 + 29940, 1)
    script.set_global_i(262145 + 29941, 1)
    script.set_global_i(262145 + 29942, 1)
    script.set_global_i(262145 + 29943, 1)
    script.set_global_i(262145 + 29944, 1)
    script.set_global_i(262145 + 29945, 1)
    script.set_global_i(262145 + 29946, 1)
    script.set_global_i(262145 + 29947, 1)
    script.set_global_i(262145 + 29948, 1)
    script.set_global_i(262145 + 29949, 1)
    script.set_global_i(262145 + 29950, 1)
    script.set_global_i(262145 + 29951, 1)
    script.set_global_i(262145 + 29952, 1)
    script.set_global_i(262145 + 29953, 1)
    script.set_global_i(262145 + 29954, 1)
    script.set_global_i(262145 + 29955, 1)
    script.set_global_i(262145 + 29956, 1)
    script.set_global_i(262145 + 29957, 1)
    script.set_global_i(262145 + 29958, 1)
    script.set_global_i(262145 + 29959, 1)
    script.set_global_i(262145 + 29960, 1)
    script.set_global_i(262145 + 29961, 1)
    script.set_global_i(262145 + 29962, 1)
    script.set_global_i(262145 + 29963, 1)
    script.set_global_i(262145 + 29964, 1)
    script.set_global_i(262145 + 29965, 1)
    -- DJ's T-shirts
    script.set_global_i(262145 + 30545, 1)
    script.set_global_i(262145 + 30546, 1)
    script.set_global_i(262145 + 30547, 1)
    script.set_global_i(262145 + 30548, 1)
    script.set_global_i(262145 + 30549, 1)
    script.set_global_i(262145 + 30550, 1)
    menu.notify("Unlocked all Cayo Perico Heist Clothing, available at any clothing store.", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock Don't Cross the Line Tee", "action", UKN_UNLKS_CLTH.id, function()
    for i = 1, #DNT_CRSS_LINE do
        stat_set_int(DNT_CRSS_LINE[i][1], true, DNT_CRSS_LINE[i][2])
    end
    menu.notify("Unlocked Don't Cross The Line Tee, available at any clothing store.", "Unknown's Stat Editor", 4, 257818)
end)

-- Vehicle Unlocks
local UKN_UNLKS_VEH = menu.add_feature("Vehicles", "parent", UKN_UNLKS.id)
menu.add_feature("Unlock Drip Feed Vehicles", "toggle", UKN_UNLKS_VEH.id, function(bit)
    menu.notify("You can leave this option active if you want to play with the new cars in missions, heists and free mode\n\nThe cars are available for purchase!", "Unknown's Stat Editor", 5, 3578712200220)
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
menu.add_feature("Unlock Shotaro", "action", UKN_UNLKS_VEH.id, function()
    stat_set_int("CRDEADLINE", true, 5)
    menu.notify("Shotaro is now avaliable to purchase at Legendary Motorsport", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock Los Santos Tuner Vehicle Prize", "action", UKN_UNLKS_VEH.id, function()
    for i = 1, #LS_TUNER_PRIZE_INT do
        stat_set_int(LS_TUNER_PRIZE_INT[i][1], true, LS_TUNER_PRIZE_INT[i][2])
    for i = 2, #LS_TUNER_PRIZE_BOOL do
        stat_set_bool(LS_TUNER_PRIZE_BOOL[i][1], true, LS_TUNER_PRIZE_BOOL[i][2])
        end
    end
    menu.notify("Successfully Unlocked Vehicle Prize!", "Unknown's Stat Editor", 4, 257818)
end)

-- Weapon Unlocks
local UKN_UNLKS_WEP = menu.add_feature("Weapons", "parent", UKN_UNLKS.id)
menu.add_feature("Unlock Ceramic Pistol", "action", UKN_UNLKS_WEP.id, function()
    stat_set_int("CAS_HEIST_NOTS", true, -1)
    stat_set_int("CAS_HEIST_FLOW", true, -1)
    menu.notify("Unlocked Ceramic Pistol!\nBuy it at the closest Ammunation.", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock Micro SMG 'Organics' Finish", "action", UKN_UNLKS_WEP.id, function()
    stat_set_int("FIXER_COMPLETED_BS", true, -1)
    menu.notify("Unlocked 'Record A' Finish!\nEquip it at any Ammunation or Armory\n\nNOTE: This also completed all Short Trips!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock Heavy Rifle 'Families' Finish", "action", UKN_UNLKS_WEP.id, function()
    stat_set_int("CHAR_FM_WEAP_ADDON_19_UNLCK", true, 1)
    menu.notify("Unlocked 'Families' Finish!\nEquip it at any Ammunation or Armory", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock AP Pistol Record A Finish", "action", UKN_UNLKS_WEP.id, function()
    --stat_set_int("", true, 1)
    menu.notify("Unlocked 'Record A' Finish!\nEquip it at any Ammunation or Armory", "Unknown's Stat Editor", 4, 257818)
end)

-- Christmas Unlocks
local UKN_UNLKS_XMAS = menu.add_feature("Christmas", "parent", UKN_UNLKS.id)
menu.add_feature("Unlock Christmas Liveries", "action", UKN_UNLKS_XMAS.id, function()
    for i = 1, #UNLK_CHRISTMAS_LIVERIES do
        stat_set_int(UNLK_CHRISTMAS_LIVERIES[i][1], false, UNLK_CHRISTMAS_LIVERIES[i][2])
    end
    menu.notify("All Christmas Liveries Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock Christmas Content", "action", UKN_UNLKS_XMAS.id, function()
    script.set_global_i(262145+12499,1)
    script.set_global_i(262145+12500,1)
    script.set_global_i(262145+12501,1)
    script.set_global_i(262145+12502,1)
    script.set_global_i(262145+12503,1)
    script.set_global_i(262145 + 9240,1)
    script.set_global_i(262145 + 9241,1)
    script.set_global_i(262145 + 9242,1)
    script.set_global_i(262145 + 12499,1)
    script.set_global_i(262145 + 23180,1)
    script.set_global_i(262145 + 23181,1)
    script.set_global_i(262145 + 23182,1)
    script.set_global_i(262145 + 23183,1)
    script.set_global_i(262145 + 4734,1)
    script.set_global_i(262145 + 8977,1)
    script.set_global_i(262145 + 9184,0)
    script.set_global_i(262145 + 9185,0)
    script.set_global_i(262145 + 9186,0)
    script.set_global_i(262145 + 9187,0)
    script.set_global_i(262145 + 9188,0)
    script.set_global_i(262145 + 9189,0)
    script.set_global_i(262145 + 9190,0)
    script.set_global_i(262145 + 9191,1)
    script.set_global_i(262145 + 9192,1)
    script.set_global_i(262145 + 9193,1)
    script.set_global_i(262145 + 9194,1)
    script.set_global_i(262145 + 9195,1)
    script.set_global_i(262145 + 9196,1)
    script.set_global_i(262145 + 9197,1)
    script.set_global_i(262145 + 9198,1)
    script.set_global_i(262145 + 9199,1)
    script.set_global_i(262145 + 9200,1)
    script.set_global_i(262145 + 9201,1)
    script.set_global_i(262145 + 9202,1)
    script.set_global_i(262145 + 9203,1)
    script.set_global_i(262145 + 9204,1)
    script.set_global_i(262145 + 9205,1)
    script.set_global_i(262145 + 9206,1)
    script.set_global_i(262145 + 9207,1)
    script.set_global_i(262145 + 9208,1)
    script.set_global_i(262145 + 9209,1)
    script.set_global_i(262145 + 9210,1)
    script.set_global_i(262145 + 9211,1)
    script.set_global_i(262145 + 9212,1)
    script.set_global_i(262145 + 9213,1)
    script.set_global_i(262145 + 9214,1)
    script.set_global_i(262145 + 9215,1)
    script.set_global_i(262145 + 9216,1)
    script.set_global_i(262145 + 9217,1)
    script.set_global_i(262145 + 9218,1)
    script.set_global_i(262145 + 9219,1)
    script.set_global_i(262145 + 9220,1)
    script.set_global_i(262145 + 9221,1)
    script.set_global_i(262145 + 9222,1)
    script.set_global_i(262145 + 9223,1)
    script.set_global_i(262145 + 9224,1)
    script.set_global_i(262145 + 9225,1)
    script.set_global_i(262145 + 9226,1)
    script.set_global_i(262145 + 9227,1)
    script.set_global_i(262145 + 9228,1)
    script.set_global_i(262145 + 9229,1)
    script.set_global_i(262145 + 9230,1)
    script.set_global_i(262145 + 9231,1)
    script.set_global_i(262145 + 9232,1)
    script.set_global_i(262145 + 9233,1)
    script.set_global_i(262145 + 9234,1)
    script.set_global_i(262145 + 9235,1)
    script.set_global_i(262145 + 9236,1)
    script.set_global_i(262145 + 9237,1)
    script.set_global_i(262145 + 9238,1)
    script.set_global_i(262145 + 9239,1)
    script.set_global_i(262145 + 12605,1) -- from 2015
    script.set_global_i(262145 + 12606,1) -- from 2015
    script.set_global_i(262145 + 12607,1)
    script.set_global_i(262145 + 12608,1)
    script.set_global_i(262145 + 18909,1) -- from 2016
    script.set_global_i(262145 + 18910,1)
    script.set_global_i(262145 + 18911,1)
    script.set_global_i(262145 + 18912,1)
    script.set_global_i(262145 + 23202,1) -- from 2017
    script.set_global_i(262145 + 23203,1)
    script.set_global_i(262145 + 23204,1)
    script.set_global_i(262145 + 23205,1)
    script.set_global_i(262145 + 22823,1)
    script.set_global_i(262145 + 22824,1)
    script.set_global_i(262145 + 25486,1) -- from 2018
    script.set_global_i(262145 + 25487,1)
    script.set_global_i(262145 + 25488,1)
    script.set_global_i(262145 + 28338,1) -- from 2019
    script.set_global_i(262145 + 28339,1)
    script.set_global_i(262145 + 28340,1)
    script.set_global_i(262145 + 28341,1)
    script.set_global_i(262145 + 30536,1) -- from 2020
    menu.notify("All Christmas Liveries Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock Exclusive Hats & Shirts", "action", UKN_UNLKS_XMAS.id, function()
    script.set_global_i(262145 + 12380,1)
    script.set_global_i(262145 + 12381,1)
    script.set_global_i(262145 + 12382,1)
    script.set_global_i(262145 + 12383,1)
    script.set_global_i(262145 + 12384,1)
    script.set_global_i(262145 + 12385,1)
    script.set_global_i(262145 + 12386,1)
    script.set_global_i(262145 + 12387,1)
    script.set_global_i(262145 + 12388,1)
    script.set_global_i(262145 + 12389,1)
    --
    script.set_global_i(262145 + 12390,1)
    script.set_global_i(262145 + 12391,1)
    script.set_global_i(262145 + 12392,1)
    script.set_global_i(262145 + 12393,1)
    script.set_global_i(262145 + 12394,1)
    script.set_global_i(262145 + 12395,1)
    script.set_global_i(262145 + 12396,1)
    script.set_global_i(262145 + 12397,1)
    script.set_global_i(262145 + 12398,1)
    script.set_global_i(262145 + 12399,1)
    script.set_global_i(262145 + 12400,1)
    script.set_global_i(262145 + 12401,1)
    script.set_global_i(262145 + 12402,1)
    script.set_global_i(262145 + 14984,1)
    script.set_global_i(262145 + 14985,1)
    script.set_global_i(262145 + 14986,1)
    script.set_global_i(262145 + 14987,1)
    script.set_global_i(262145 + 14988,1)
    script.set_global_i(262145 + 14989,1)
    script.set_global_i(262145 + 14990,1)
    script.set_global_i(262145 + 14991,1)
    script.set_global_i(262145 + 14992,1)
    script.set_global_i(262145 + 14993,1)
    script.set_global_i(262145 + 14994,1)
    script.set_global_i(262145 + 23986,1)
    --
    script.set_global_i(262145 + 23989,1)
    script.set_global_i(262145 + 23990,1)
    script.set_global_i(262145 + 23991,1)
    script.set_global_i(262145 + 23992,1)
    script.set_global_i(262145 + 23993,1)
    script.set_global_i(262145 + 23994,1)
    script.set_global_i(262145 + 23995,1)
    script.set_global_i(262145 + 23996,1)
    script.set_global_i(262145 + 23997,1)
    script.set_global_i(262145 + 23998,1)
    --
    script.set_global_i(262145 + 17331,1)
    script.set_global_i(262145 + 17332,1)
    script.set_global_i(262145 + 17333,1)
    script.set_global_i(262145 + 17334,1)
    script.set_global_i(262145 + 17335,1)
    script.set_global_i(262145 + 17336,1)
    script.set_global_i(262145 + 17337,1)
    script.set_global_i(262145 + 17338,1)
    script.set_global_i(262145 + 17339,1)
    script.set_global_i(262145 + 17340,1)
    script.set_global_i(262145 + 17341,1)
    script.set_global_i(262145 + 17342,1)
    script.set_global_i(262145 + 17343,1)
    script.set_global_i(262145 + 17344,1)
    script.set_global_i(262145 + 17345,1)
    script.set_global_i(262145 + 17346,1)
    script.set_global_i(262145 + 17347,1)
    script.set_global_i(262145 + 17348,1)
    script.set_global_i(262145 + 17349,1)
    script.set_global_i(262145 + 17350,1)
    script.set_global_i(262145 + 17351,1)
    script.set_global_i(262145 + 17352,1)
    script.set_global_i(262145 + 17353,1)
    --
    script.set_global_i(262145 + 11744,1)
    script.set_global_i(262145 + 11745,1)
    script.set_global_i(262145 + 11746,1)
    script.set_global_i(262145 + 11747,1)
    script.set_global_i(262145 + 11748,1)
    script.set_global_i(262145 + 11749,1)
    script.set_global_i(262145 + 11750,1)
    script.set_global_i(262145 + 11751,1)
    script.set_global_i(262145 + 11752,1)
    script.set_global_i(262145 + 11753,1)
    script.set_global_i(262145 + 12390,1)
    script.set_global_i(262145 + 12391,1)
    script.set_global_i(262145 + 12392,1)
    script.set_global_i(262145 + 12393,1)
    script.set_global_i(262145 + 12394,1)
    script.set_global_i(262145 + 12395,1)
    script.set_global_i(262145 + 12396,1)
    script.set_global_i(262145 + 12397,1)
    script.set_global_i(262145 + 12398,1)
    script.set_global_i(262145 + 12399,1)
    script.set_global_i(262145 + 12391,1)
    script.set_global_i(262145 + 12392,1)
    script.set_global_i(262145 + 12393,1)
    --
    script.set_global_i(262145 + 23972,1)
    script.set_global_i(262145 + 23973,1)
    script.set_global_i(262145 + 23974,1)
    script.set_global_i(262145 + 23975,1)
    script.set_global_i(262145 + 23976,1)
    script.set_global_i(262145 + 23977,1)
    script.set_global_i(262145 + 23978,1)
    script.set_global_i(262145 + 23979,1)
    script.set_global_i(262145 + 23980,1)
    script.set_global_i(262145 + 23981,1)
    script.set_global_i(262145 + 23982,1)
    script.set_global_i(262145 + 23983,1)
    script.set_global_i(262145 + 23984,1)
    script.set_global_i(262145 + 23985,1)
    script.set_global_i(262145 + 23986,1)
    script.set_global_i(262145 + 23987,1)
    script.set_global_i(262145 + 23988,1)
    script.set_global_i(262145 + 23989,1)
    script.set_global_i(262145 + 23990,1)
    script.set_global_i(262145 + 23991,1)
    script.set_global_i(262145 + 23992,1)
    script.set_global_i(262145 + 23993,1)
    script.set_global_i(262145 + 23994,1)
    script.set_global_i(262145 + 23995,1)
    script.set_global_i(262145 + 23996,1)
    script.set_global_i(262145 + 23997,1)
    script.set_global_i(262145 + 23998,1)
    script.set_global_i(262145 + 23999,1)
    script.set_global_i(262145 + 24000,1)
    --
    script.set_global_i(262145 + 24673,1)
    script.set_global_i(262145 + 24674,1)
    script.set_global_i(262145 + 24675,1)
    script.set_global_i(262145 + 24676,1)
    script.set_global_i(262145 + 24677,1)
    script.set_global_i(262145 + 24678,1)
    script.set_global_i(262145 + 24679,1)
    script.set_global_i(262145 + 24680,1)
    script.set_global_i(262145 + 24681,1)
    script.set_global_i(262145 + 24682,1)
    script.set_global_i(262145 + 24683,1)
    script.set_global_i(262145 + 24684,1)
    script.set_global_i(262145 + 24685,1)
    script.set_global_i(262145 + 24686,1)
    script.set_global_i(262145 + 24687,1)
    script.set_global_i(262145 + 24688,1)
    script.set_global_i(262145 + 24689,1)
    script.set_global_i(262145 + 24690,1)
    script.set_global_i(262145 + 24691,1)
    script.set_global_i(262145 + 24692,1)
    script.set_global_i(262145 + 24693,1)
    script.set_global_i(262145 + 24694,1)
    script.set_global_i(262145 + 24695,1)
    --
    script.set_global_i(262145 + 20902,1)
    script.set_global_i(262145 + 20903,1)
    script.set_global_i(262145 + 20904,1)
    script.set_global_i(262145 + 20905,1)
    script.set_global_i(262145 + 20906,1)
    script.set_global_i(262145 + 20907,1)
    script.set_global_i(262145 + 20908,1)
    script.set_global_i(262145 + 20909,1)
    --
    script.set_global_i(262145 + 20910,1)
    script.set_global_i(262145 + 20911,1)
    script.set_global_i(262145 + 20912,1)
    script.set_global_i(262145 + 20913,1)
    script.set_global_i(262145 + 20914,1)
    script.set_global_i(262145 + 20915,1)
    script.set_global_i(262145 + 20916,1)
    script.set_global_i(262145 + 20917,1)
    script.set_global_i(262145 + 20918,1)
    script.set_global_i(262145 + 20919,1)
    script.set_global_i(262145 + 20920,1)
    script.set_global_i(262145 + 20921,1)
    script.set_global_i(262145 + 20922,1)
    script.set_global_i(262145 + 20923,1)
    script.set_global_i(262145 + 20924,1)
    script.set_global_i(262145 + 20925,1)
    script.set_global_i(262145 + 20926,1)
    script.set_global_i(262145 + 20927,1)
    script.set_global_i(262145 + 20928,1)
    script.set_global_i(262145 + 20929,1)
    script.set_global_i(262145 + 20930,1)
    script.set_global_i(262145 + 20931,1)
    script.set_global_i(262145 + 20932,1)
    script.set_global_i(262145 + 20933,1)
    script.set_global_i(262145 + 20934,1)
    --
    script.set_global_i(262145 + 23175,1)
    script.set_global_i(262145 + 23176,1)
    script.set_global_i(262145 + 23177,1)
    script.set_global_i(262145 + 23178,1)
    script.set_global_i(262145 + 23179,1)
    script.set_global_i(262145 + 23180,1)
    script.set_global_i(262145 + 23181,1)
    script.set_global_i(262145 + 23182,1)
    script.set_global_i(262145 + 23183,1)
    script.set_global_i(262145 + 23201,1)
    script.set_global_i(262145 + 23202,1)
    script.set_global_i(262145 + 23203,1)
    script.set_global_i(262145 + 23204,1)
    script.set_global_i(262145 + 23205,1)
    script.set_global_i(262145 + 22823,1)

    --
    script.set_global_i(262145 + 16589,1)
    script.set_global_i(262145 + 16590,1)
    script.set_global_i(262145 + 16591,1)
    script.set_global_i(262145 + 16592,1)
    script.set_global_i(262145 + 16593,1)
    script.set_global_i(262145 + 16594,1)
    script.set_global_i(262145 + 16595,1)
    script.set_global_i(262145 + 16596,1)
    --
    script.set_global_i(262145 + 25558,1)
    script.set_global_i(262145 + 25559,1)
    script.set_global_i(262145 + 25560,1)
    script.set_global_i(262145 + 25561,1)
    script.set_global_i(262145 + 25562,1)
    script.set_global_i(262145 + 25563,1)
    script.set_global_i(262145 + 25564,1)
    script.set_global_i(262145 + 25565,1)
    script.set_global_i(262145 + 25566,1)
    script.set_global_i(262145 + 25567,1)
    script.set_global_i(262145 + 25568,1)
    script.set_global_i(262145 + 25569,1)
    script.set_global_i(262145 + 25570,1)
    -- CASINO SHIRT
    script.set_global_i(262145 + 26675,1)
    script.set_global_i(262145 + 26676,1)
    script.set_global_i(262145 + 26677,1)
    script.set_global_i(262145 + 26678,1)
    script.set_global_i(262145 + 26679,1)
    script.set_global_i(262145 + 26680,1)
    script.set_global_i(262145 + 26681,1)
    script.set_global_i(262145 + 26682,1)
    script.set_global_i(262145 + 26683,1)
    script.set_global_i(262145 + 26684,1)
    script.set_global_i(262145 + 26685,1)
    script.set_global_i(262145 + 26686,1)
    script.set_global_i(262145 + 26687,1)
    script.set_global_i(262145 + 26688,1)
    script.set_global_i(262145 + 26689,1)
    script.set_global_i(262145 + 26690,1)
    menu.notify("All Christmas Liveries Unlocked!", "Unknown's Stat Editor", 4, 257818)
end)

menu.add_feature("Unlock Returning Player Content", "action", UKN_UNLKS.id, function()
    script.set_global_i(151754, 2)
    script.set_global_i(102905, 90)
    script.set_global_i(102906, 1)
    menu.notify("Certain vehicles are now free on their respective stores!\nCheck out each store and sort by price.\n\nAlso Unlocks the Up-n-Atomizer & Festive Tint", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Unlock Packie McReary for Casino Heist", "action", UKN_UNLKS.id, function()
    stat_set_int("CAS_HEIST_FLOW", true, -1)
    menu.notify("NOTE: it is experimental, it may not work correctly.", "Unknown's Stat Editor", 4, 780000)
end)




-- MissionFucker
local HEIST_FEES = menu.add_feature("Heist Fee/Cut Removal", "parent", MISFKR_MAIN.id)
menu.add_feature("Remove Fencing Fee & Pavel Cut (Cayo)", "toggle", HEIST_FEES.id, function(abc)
    while abc.on do
        script.set_global_f(262145+29625,0)
        script.set_global_f(262145+29626,0)
        if not abc.on then return end
        system.wait(900)
    end
    menu.notify("Leave activated until the end of the heist.", "MissionFucker", 5, 0x64F06414)
end)
menu.add_feature("Remove IA Crew Payout (Casino)", "action", HEIST_FEES.id, function()
    menu.notify("Use after stealing the target, before leaving the tunnel\n\nCrew removed", "MissionFucker", 4, 0x64FF7800)
    for i = 1, #CASINO_HEIST_NO_NPC_CUT do
    stat_set_int(CASINO_HEIST_NO_NPC_CUT[i][1], true, CASINO_HEIST_NO_NPC_CUT[i][2])
    end
end)

local CONTRACT_DLC = menu.add_feature("The Contract DLC", "parent", MISFKR_MAIN.id)
local CONTRACT_DLC_VIP = menu.add_feature("VIP Contracts", "parent", CONTRACT_DLC.id)

local CONTRACT_DLC_VIP1 = menu.add_feature("NightLife Leak", "parent", CONTRACT_DLC_VIP.id)
local CONTRACT_DLC_VIP2 = menu.add_feature("High Society Leak", "parent", CONTRACT_DLC_VIP.id)
local CONTRACT_DLC_VIP3 = menu.add_feature("South Central Leak", "parent", CONTRACT_DLC_VIP.id)

menu.add_feature("The Nightclub (Preperation)", "action", CONTRACT_DLC_VIP1.id, function()
    for i = 1, #COMPLETE_VIPCONTRACT1_1 do
        stat_set_int(COMPLETE_VIPCONTRACT1_1[i][1], true, COMPLETE_VIPCONTRACT1_1[i][2])
        end
    menu.notify("Completed The Nightclub!", "MissionFucker", 4, 257818)
end)
menu.add_feature("The Marina (Preperation)", "action", CONTRACT_DLC_VIP1.id, function()
    for i = 1, #COMPLETE_VIPCONTRACT1_2 do
        stat_set_int(COMPLETE_VIPCONTRACT1_2[i][1], true, COMPLETE_VIPCONTRACT1_2[i][2])
        end
    menu.notify("Completed The Marina!", "MissionFucker", 4, 257818)
end)
menu.add_feature("NightLife Leak (Finale)", "action", CONTRACT_DLC_VIP1.id, function()
    for i = 1, #COMPLETE_VIPCONTRACT1_3 do
        stat_set_int(COMPLETE_VIPCONTRACT1_3[i][1], true, COMPLETE_VIPCONTRACT1_3[i][2])
        end
    menu.notify("Completed NightLife Leak!", "MissionFucker", 4, 257818)
end)

menu.add_feature("The Country Club (Preperation)", "action", CONTRACT_DLC_VIP2.id, function()
    for i = 1, #COMPLETE_VIPCONTRACT2_1 do
        stat_set_int(COMPLETE_VIPCONTRACT2_1[i][1], true, COMPLETE_VIPCONTRACT2_1[i][2])
        end
    menu.notify("Completed The Country Club!", "MissionFucker", 4, 257818)
end)
menu.add_feature("Guest List (Preperation)", "action", CONTRACT_DLC_VIP2.id, function()
    for i = 1, #COMPLETE_VIPCONTRACT2_2 do
        stat_set_int(COMPLETE_VIPCONTRACT2_2[i][1], true, COMPLETE_VIPCONTRACT2_2[i][2])
        end
    menu.notify("Completed Guest List!", "MissionFucker", 4, 257818)
end)
menu.add_feature("High Society (Finale)", "action", CONTRACT_DLC_VIP2.id, function()
    for i = 1, #COMPLETE_VIPCONTRACT2_3 do
        stat_set_int(COMPLETE_VIPCONTRACT2_3[i][1], true, COMPLETE_VIPCONTRACT2_3[i][2])
        end
    menu.notify("Completed High Society!", "MissionFucker", 4, 257818)
end)

menu.add_feature("Davis (Preperation)", "action", CONTRACT_DLC_VIP3.id, function()
    for i = 1, #COMPLETE_VIPCONTRACT3_1 do
        stat_set_int(COMPLETE_VIPCONTRACT3_1[i][1], true, COMPLETE_VIPCONTRACT3_1[i][2])
        end
    menu.notify("Completed Davis!", "MissionFucker", 4, 257818)
end)
menu.add_feature("The Ballas (Preperation)", "action", CONTRACT_DLC_VIP3.id, function()
    for i = 1, #COMPLETE_VIPCONTRACT3_2 do
        stat_set_int(COMPLETE_VIPCONTRACT3_2[i][1], true, COMPLETE_VIPCONTRACT3_2[i][2])
        end
    menu.notify("Completed The Ballas!", "MissionFucker", 4, 257818)
end)
menu.add_feature("Agency Studio (Finale)", "action", CONTRACT_DLC_VIP3.id, function()
    for i = 1, #COMPLETE_VIPCONTRACT3_3 do
        stat_set_int(COMPLETE_VIPCONTRACT3_3[i][1], true, COMPLETE_VIPCONTRACT3_3[i][2])
        end
    menu.notify("Completed Agency Studio!", "MissionFucker", 4, 257818)
end)


menu.add_feature("Complete Don't Fuck with Dre (Final VIP Contract)", "action", CONTRACT_DLC.id, function()
    for i = 1, #COMPLETE_VIPCONTRACT_FINAL do
        stat_set_int(COMPLETE_VIPCONTRACT_FINAL[i][1], true, COMPLETE_VIPCONTRACT_FINAL[i][2])
        end
    menu.notify("Completed Don't Fuck with Dre!", "MissionFucker", 4, 257818)
end)
menu.add_feature("Complete all Contract Missions", "action", CONTRACT_DLC.id, function()
    for i = 1, #COMPLETE_CONTRACT_MISSIONS do
        stat_set_int(COMPLETE_CONTRACT_MISSIONS[i][1], true, COMPLETE_CONTRACT_MISSIONS[i][2])
        end
    menu.notify("Contract Missions Completed!", "MissionFucker", 4, 257818)
end)


menu.add_feature("Skip Lamar Missions to the finale", "action", MISFKR_MAIN.id, function()
    for i = 1, #SKIP_LAMARFINAL_BOOL do
        stat_set_bool(SKIP_LAMARFINAL_BOOL[i][1], true, SKIP_LAMARFINAL_BOOL[i][2])
        end
    for i = 2, #SKIP_LAMARFINAL_INT do
        stat_set_int(SKIP_LAMARFINAL_INT[i][1], true, SKIP_LAMARFINAL_INT[i][2])
    end
    menu.notify("Done, switch sessions.", "MissionFucker", 4, 257818)
end)
menu.add_feature("Skip Cayo Perico to the finale (Panther + Hard Difficulty)", "action", MISFKR_MAIN.id, function()
    for i = 1, #SKIP_CAYOFINAL do
        stat_set_int(SKIP_CAYOFINAL[i][1], true, SKIP_CAYOFINAL[i][2])
     end
    menu.notify("Done, exit Kosatka and then enter it again.", "MissionFucker", 4, 257818)
end)
menu.add_feature("Trigger Alien Egg Bunker Mission", "action", MISFKR_MAIN.id, function()
    for i = 1, #TRIG_ALIEN_SELL do
        stat_set_int(TRIG_ALIEN_SELL[i][1], true, TRIG_ALIEN_SELL[i][2])
    end
    menu.notify("Change the clock time to between 9pm and 11pm", "MissionFucker", 4, 257818)
end)




--[[
local UKNHEIST_AWARDS = menu.add_feature("Heist Awards", "parent", UKN_UNLKS.id)
menu.add_feature("Unlock High-End Apartment Heist Awards", "action", UKNHEIST_AWARDS.id, function()
    menu.notify("High-End Apartment Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
    for i = 1, #APRTMNT_AWD_I do
        stat_set_int(APRTMNT_AWD_I[i][1], true, APRTMNT_AWD_I[i][2])
        stat_set_int(APRTMNT_AWD_I[i][1], false, APRTMNT_AWD_I[i][2])
    for i = 1, #APRTMNT_AWD_B do
        stat_set_bool(APRTMNT_AWD_B[i][1], true, APRTMNT_AWD_B[i][2])
        stat_set_bool(APRTMNT_AWD_B[i][1], false, APRTMNT_AWD_B[i][2])
        end
    end
end)
menu.add_feature("Unlock All Doomsday Heist", "action", UKNHEIST_AWARDS.id, function()
    menu.notify("Call Lester and ask to cancel the Doomsday Heist (Three Times)\nDo this only once", "Unknown's Stat Editor", 6, 780000)
    for i = 1, #DD_H_ULCK do
        stat_set_int(DD_H_ULCK[i][1], true, DD_H_ULCK[i][2])
    end
end)
local UKNBNKR_AWARDS = menu.add_feature("Bunker Awards", "parent", UKN_UNLKS.id)    
menu.add_feature("Unlock Bunker Awards", "action", UKNBNKR_AWARDS.id, function()
    menu.notify("Bunker Awards Unlocked!", "Unknown's Stat Editor", 4, 257818)
    for i = 1, #BUNKR_UNLCK do
        stat_set_int(BUNKR_UNLCK[i][1], true, BUNKR_UNLCK[i][2])
    for i = 2, #BUNKR_UNLCK_B do
        stat_set_bool(BUNKR_UNLCK_B[i][1], true, BUNKR_UNLCK_B[i][2])
        end
    end
end)
local UKNNCLUB_AWARDS = menu.add_feature("Nightclub Awards", "parent", UKN_UNLKS.id)    
menu.add_feature("Unlock Nightclub Awards", "action", UKNNCLUB_AWARDS.id, function()
    menu.notify("Nightclub Awards Unlocked", "Unknown's Stat Editor", 4, 257818)
    for i = 1, #NIGH_C_UNLK do
        stat_set_int(NIGH_C_UNLK[i][1], true, NIGH_C_UNLK[i][2])
    for i = 2, #NIGH_C_UNLK_B do
        stat_set_bool(NIGH_C_UNLK_B[i][1], true, NIGH_C_UNLK_B[i][2])
        stat_set_bool(NIGH_C_UNLK_B[i][1], false, NIGH_C_UNLK_B[i][2])
        end
    end
end)
menu.add_feature("Unlock all Arena Wars Trophy and Toys", "action", UKN_UNLKS.id, function()
    menu.notify("Arena Wars Trophy & Toys unlocked, switch sessions.", "Unknown's Stat Editor", 4, 257818)
    for i = 1, #ARENA_W_UNLK do
        stat_set_int(ARENA_W_UNLK[i][1], true, ARENA_W_UNLK[i][2])
    for i = 2, #ARENA_W_UNLK_BL do
        stat_set_bool(ARENA_W_UNLK_BL[i][1], true, ARENA_W_UNLK_BL[i][2])
        stat_set_bool(ARENA_W_UNLK_BL[i][1], false, ARENA_W_UNLK_BL[i][2])
    end
    end
end)
menu.add_feature("Unlock Yacht Missions", "action", UKN_UNLKS.id, function()
    menu.notify("Yacht Missions Unlocked~s~", "Unknown's Stat Editor", 4, 257818)
    for i = 1, #YCHT_MS do
        stat_set_int(YCHT_MS[i][1], true, YCHT_MS[i][2])
    end
end)
menu.add_feature("Unlock Flight School Awards", "action", UKN_UNLKS.id, function()
    menu.notify("Flight School Awards Unlocked", "Unknown's Stat Editor", 4, 257818)
    for i = 1, #FLY_SCHOOL_I do
        stat_set_int(FLY_SCHOOL_I[i][1], true, FLY_SCHOOL_I[i][2])
    for i = 2, #FLY_SCHOOL_B do
        stat_set_bool(FLY_SCHOOL_B[i][1], true, FLY_SCHOOL_B[i][2])
        end
    end
end)
menu.add_feature("Unlock Vanilla Unicorn Awards", "action", UKN_UNLKS.id, function()
    menu.notify("Vanilla Unicorn Awards Unlocked", "Unknown's Stat Editor", 4, 257818)
    for i = 1, #VANNIL_AWD do
        stat_set_int(VANNIL_AWD[i][1], true, VANNIL_AWD[i][2])
    end
end)

menu.add_feature("Unlock All IMP/EXP Special Vehicle Work", "action", UKN_UNLKS.id, function()
    for i = 1, #UNLCK_IESVW do
        stat_set_int(UNLCK_IESVW[i][1], true, UNLCK_IESVW[i][2])
    end
    menu.notify("Unlocked all Import/Export Special Vehicle Work!", "Unknown's Stat Editor", 4, 257818)
end)]]






-- Inventory
menu.add_feature("Refill Snacks", "action", UKN_INV.id, function()
    for i = 1, #INV_SNACKS do
        stat_set_int(INV_SNACKS[i][1], true, INV_SNACKS[i][2])
    end
    menu.notify("Refilled Snacks!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Refill Armor", "action", UKN_INV.id, function()
    for i = 1, #INV_ARMOR do
        stat_set_int(INV_ARMOR[i][1], true, INV_ARMOR[i][2])
    end
    menu.notify("Refilled Armor!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Refill Cigarettes", "action", UKN_INV.id, function()
    for i = 1, #INV_CIGARETTES do
        stat_set_int(INV_CIGARETTES[i][1], true, INV_CIGARETTES[i][2])
    end
    menu.notify("Refilled Cigarettes!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Refill Champagne", "action", UKN_INV.id, function()
    for i = 1, #INV_CHAMPAGNE do
        stat_set_int(INV_CHAMPAGNE[i][1], true, INV_CHAMPAGNE[i][2])
    end
    menu.notify("Refilled Champagne!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Refill Rebreather", "action", UKN_INV.id, function()
    for i = 1, #INV_REBREATHER do
        stat_set_int(INV_REBREATHER[i][1], true, INV_REBREATHER[i][2])
    end
    menu.notify("Refilled Rebreathers!", "Unknown's Stat Editor", 4, 257818)
end)




-- Businesses
menu.add_feature("Max Nightclub Popularity", "action", UKN_BIZ.id, function()
    stat_set_int("CLUB_POPULARITY", true, 1000)
    menu.notify("Maxed out your Nightclub's popularity!", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Fill Office with money", "action", UKN_BIZ.id, function()
    for i = 1, #BUSINESS_OFFICE do
        stat_set_int(BUSINESS_OFFICE[i][1], true, BUSINESS_OFFICE[i][2])
    end
    menu.notify("Filled your Office with money! (Sell some cargo for it to show)", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Fill Clubhouse with clutter", "action", UKN_BIZ.id, function()
    for i = 1, #BUSINESS_CLUBHOUSE do
        stat_set_int(BUSINESS_CLUBHOUSE[i][1], true, BUSINESS_CLUBHOUSE[i][2])
    end
    menu.notify("Filled your Clubhouse with clutter! (Do a sell mission to activate)", "Unknown's Stat Editor", 4, 257818)
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

-- Unlocks the 'Navy Revolved' and rewards your account with ($50,000)
-- Doing the challenge results in the weapon being available in RDO + $200,00
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
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (2)", "action", UKN_HELPSRKLC.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2903.4150, 3644.0413, 43.8774))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (3)", "action", UKN_HELPSRKLC.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(2432.3904, 5846.0757, 58.8891))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (4)", "action", UKN_HELPSRKLC.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1567.880, 4424.6104, 7.2154))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Clue 5 - Black Van (5)", "action", UKN_HELPSRKLC.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-1715.793, 2618.7686, 2.9409))
    menu.notify("The LS Slasher will appear from 7PM-5AM, Kill him! (GTA$ 50,000 Reward)", "Unknown's Stat Editor", 4, 257818)
end)



-- Collectables
local UKN_MDIS = menu.add_feature("Media Sticks - LS Tuners DLC", "parent", UKN_CLTB.id)
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

local UKN_MDIS2 = menu.add_feature("Media Sticks - The Contract DLC", "parent", UKN_CLTB.id)
menu.add_feature("NEZ - You Wanna?", "action", UKN_MDIS2.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-860.241, -229.980, 61.016))
end)
menu.add_feature("NEZ ft. Schoolboy Q - Let's Get It", "action", UKN_MDIS2.id, function()
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(25.010, 521.276, 170.227))
end)
menu.add_feature("Dr. Dre", "action", UKN_MDIS2.id, function()
    menu.notify("You need to complete the VIP missions\nIt'll be on your desk in the Agency", "UnknownHax", 5, 3578712200220)
end)




-- Miscellaneous
local UKN_MISCRUN = menu.add_feature("Fast Run and Reload", "parent", UKN_MISC.id)
menu.add_feature("ON", "action", UKN_MISCRUN.id, function()
    for i = 1, #FAST_RUN_ON do
        stat_set_int(FAST_RUN_ON[i][1], true, FAST_RUN_ON[i][2])
    end
    menu.notify("Fast Run and Reload: Enabled", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("OFF", "action", UKN_MISCRUN.id, function()
    for i = 1, #FAST_RUN_OFF do
        stat_set_int(FAST_RUN_OFF[i][1], true, FAST_RUN_OFF[i][2])
    end
    menu.notify("Fast Run and Reload: Disabled", "Unknown's Stat Editor", 4, 75000)
end)

local UKN_MISCMNTL = menu.add_feature("Mental State", "parent", UKN_MISC.id)
menu.add_feature("Maximum", "action", UKN_MISCMNTL.id, function()
    for i = 1, #MENTAL_STATE_MAX do
        stat_set_float(MENTAL_STATE_MAX[i][1], true, MENTAL_STATE_MAX[i][2])
        end
    menu.notify("Mental State modified to the maximum, change sessions.", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Half", "action", UKN_MISCMNTL.id, function()
    for i = 1, #MENTAL_STATE_HALF do
        stat_set_float(MENTAL_STATE_HALF[i][1], true, MENTAL_STATE_HALF[i][2])
        end
    menu.notify("Mental State modified to the Half, change sessions.", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Remove", "action", UKN_MISCMNTL.id, function()
    for i = 1, #MENTAL_PLAYER_MODIFIER_OFF do
        stat_set_float(MENTAL_PLAYER_MODIFIER_OFF[i][1], true, MENTAL_PLAYER_MODIFIER_OFF[i][2])
        end
    menu.notify("Mental State has been removed, change sessions.", "Unknown's Stat Editor", 4, 257818)
end)

menu.add_feature("Get Plane Access", "action", UKN_MISC.id, function()
    stat_set_bool("PLANE_ACCESS", true, true)
    menu.notify("You have gained plane access", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Get Heli Access", "action", UKN_MISC.id, function()
    stat_set_bool("HELI_ACCESS", true, true)
    menu.notify("You have gained heli access", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Get Boat Access", "action", UKN_MISC.id, function()
    stat_set_bool("BOAT_ACCESS", true, true)
    menu.notify("You have gained boat access", "Unknown's Stat Editor", 4, 257818)
end)

menu.add_feature("Alien Tattoo (Male)", "action", UKN_MISC.id, function()
    stat_set_int("TATTOO_FM_CURRENT_32", true, 32768)
    menu.notify("Unlocked Alien Tattoo, requires new session", "Unknown's Stat Editor", 4, 257818)
end)
menu.add_feature("Alien Tattoo (Female)", "action", UKN_MISC.id, function()
    stat_set_int("TATTOO_FM_CURRENT_32", true, 67108864)
    menu.notify("Unlocked Alien Tattoo, requires new session", "Unknown's Stat Editor", 4, 257818)
end)



-- Decal Changer
local DC_MALE = menu.add_feature("Male Character", "parent", DC_MAIN.id)
local DC_FEMALE = menu.add_feature("Female Character", "parent", DC_MAIN.id)
menu.add_feature("Clear", "action", DC_MAIN.id, DrawableCallback).data = 0

-- Male Section
menu.add_feature("Small left Torso", "action", DC_MALE.id, DrawableCallback).data = 1
menu.add_feature("Medium left Torso", "action", DC_MALE.id, DrawableCallback).data = 3
menu.add_feature("Centered Back", "action", DC_MALE.id, DrawableCallback).data = 2
menu.add_feature("Military Stripes", "action", DC_MALE.id, function()
    ped.set_ped_component_variation(player.get_player_ped(player.player_id()), 10, 8, 1, 0)
end)
menu.add_feature("Military Stripes 2", "action", DC_MALE.id, DrawableCallback).data = 78
menu.add_feature("..and all I got was this lousy t-shirt!", "action", DC_MALE.id, DrawableCallback).data = 9
menu.add_feature("Redwood Racing Suit", "action", DC_MALE.id, DrawableCallback).data = 11
menu.add_feature("Sprunk Racing Suit", "action", DC_MALE.id, DrawableCallback).data = 12
menu.add_feature("Jock Cranley", "action", DC_MALE.id, DrawableCallback).data = 13
menu.add_feature("Jock Cranley 2", "action", DC_MALE.id, DrawableCallback).data = 14
menu.add_feature("Steel Horse", "action", DC_MALE.id, DrawableCallback).data = 15
menu.add_feature("Hawk&Little", "action", DC_MALE.id, DrawableCallback).data = 44
menu.add_feature("Lampadati Racing", "action", DC_MALE.id, DrawableCallback).data = 45
menu.add_feature("Street Wars - Gang Wars", "action", DC_MALE.id, DrawableCallback).data = 63
menu.add_feature("LSFD City", "action", DC_MALE.id, DrawableCallback).data = 64
menu.add_feature("Bugstars", "action", DC_MALE.id, DrawableCallback).data = 66
menu.add_feature("Bugstars 2", "action", DC_MALE.id, DrawableCallback).data = 67
menu.add_feature("NOOSE", "action", DC_MALE.id, DrawableCallback).data = 70
menu.add_feature("Gruppe 6", "action", DC_MALE.id, DrawableCallback).data = 71
menu.add_feature("Gruppe 6 2", "action", DC_MALE.id, DrawableCallback).data = 76
menu.add_feature("Paramedic", "action", DC_MALE.id, DrawableCallback).data = 57
menu.add_feature("Paramedic 2", "action", DC_MALE.id, DrawableCallback).data = 58
menu.add_feature("Peter Badge", "action", DC_MALE.id, DrawableCallback).data = 61
menu.add_feature("Diamond Casino", "action", DC_MALE.id, DrawableCallback).data = 62
menu.add_feature("Correctional Officer", "action", DC_MALE.id, DrawableCallback).data = 72
menu.add_feature("Correctional Officer 2", "action", DC_MALE.id, DrawableCallback).data = 77
menu.add_feature("Yung Ancestor", "action", DC_MALE.id, DrawableCallback).data = 73
menu.add_feature("Yung Ancestor 2", "action", DC_MALE.id, DrawableCallback).data = 74
menu.add_feature("Dinka Racing Suit", "action", DC_MALE.id, DrawableCallback).data = 79
menu.add_feature("Spicy Crash Out", "action", DC_MALE.id, DrawableCallback).data = 88
menu.add_feature("Japanese Text", "action", DC_MALE.id, DrawableCallback).data = 89
menu.add_feature("Japanese Text 2", "action", DC_MALE.id, DrawableCallback).data = 90
menu.add_feature("Japanese Text 3", "action", DC_MALE.id, DrawableCallback).data = 91
menu.add_feature("Japanese Text 4", "action", DC_MALE.id, DrawableCallback).data = 92
menu.add_feature("Japanese Text 5", "action", DC_MALE.id, DrawableCallback).data = 93
menu.add_feature("Japanese Text 6", "action", DC_MALE.id, DrawableCallback).data = 94
menu.add_feature("Japanese Text 7", "action", DC_MALE.id, DrawableCallback).data = 95
menu.add_feature("Japanese Text 8", "action", DC_MALE.id, DrawableCallback).data = 102
menu.add_feature("Prisoner Number", "action", DC_MALE.id, DrawableCallback).data = 106
menu.add_feature("LS Customs", "action", DC_MALE.id, DrawableCallback).data = 108
menu.add_feature("LS Customs 2", "action", DC_MALE.id, DrawableCallback).data = 109
menu.add_feature("Born X Raised Los Santos", "action", DC_MALE.id, DrawableCallback).data = 110
menu.add_feature("Chicken Icons", "action", DC_MALE.id, DrawableCallback).data = 111
menu.add_feature("Chicken Icons 2", "action", DC_MALE.id, DrawableCallback).data = 113
menu.add_feature("Emperor", "action", DC_MALE.id, DrawableCallback).data = 112
menu.add_feature("Emperor 2", "action", DC_MALE.id, DrawableCallback).data = 114
menu.add_feature("Enema Los Santos", "action", DC_MALE.id, DrawableCallback).data = 115
menu.add_feature("Los Santos Garage", "action", DC_MALE.id, DrawableCallback).data = 116
menu.add_feature("Small Red Rockstar Logo", "action", DC_MALE.id, DrawableCallback).data = 119

-- Female Section
menu.add_feature("Small left Torso", "action", DC_FEMALE.id, DrawableCallback).data = 2
menu.add_feature("Centered Back", "action", DC_FEMALE.id, DrawableCallback).data = 3
menu.add_feature("..and all I got was this lousy t-shirt!", "action", DC_FEMALE.id, DrawableCallback).data = 8
menu.add_feature("Military Stripes", "action", DC_FEMALE.id, function()
    ped.set_ped_component_variation(player.get_player_ped(player.player_id()), 10, 7, 1, 0)
end)
menu.add_feature("Military Stripes 2", "action", DC_FEMALE.id, DrawableCallback).data = 87
menu.add_feature("Redwood Racing Suit", "action", DC_FEMALE.id, DrawableCallback).data = 10
menu.add_feature("Sprunk Racing Suit", "action", DC_FEMALE.id, DrawableCallback).data = 11
menu.add_feature("Jock Cranley", "action", DC_FEMALE.id, DrawableCallback).data = 12
menu.add_feature("Jock Cranley 2", "action", DC_FEMALE.id, DrawableCallback).data = 13
menu.add_feature("Steel Horse", "action", DC_FEMALE.id, DrawableCallback).data = 14
menu.add_feature("Hawks&Little", "action", DC_FEMALE.id, DrawableCallback).data = 52
menu.add_feature("Lampadati Racing Suit", "action", DC_FEMALE.id, DrawableCallback).data = 53
menu.add_feature("Paramedic", "action", DC_FEMALE.id, DrawableCallback).data = 65
menu.add_feature("Paramedic 2", "action", DC_FEMALE.id, DrawableCallback).data = 66
menu.add_feature("Peter Badge", "action", DC_FEMALE.id, DrawableCallback).data = 70
menu.add_feature("Diamond Casino", "action", DC_FEMALE.id, DrawableCallback).data = 71
menu.add_feature("Street Crimes - Gang Wars", "action", DC_FEMALE.id, DrawableCallback).data = 72
menu.add_feature("LSFD City", "action", DC_FEMALE.id, DrawableCallback).data = 73
menu.add_feature("Bugstars", "action", DC_FEMALE.id, DrawableCallback).data = 75
menu.add_feature("Bugstars 2", "action", DC_FEMALE.id, DrawableCallback).data = 76
menu.add_feature("NOOSE", "action", DC_FEMALE.id, DrawableCallback).data = 79
menu.add_feature("Gruppe 6", "action", DC_FEMALE.id, DrawableCallback).data = 80
menu.add_feature("Gruppe 6 2", "action", DC_FEMALE.id, DrawableCallback).data = 85
menu.add_feature("Correctional Officer", "action", DC_FEMALE.id, DrawableCallback).data = 81
menu.add_feature("Correctional Officer 2", "action", DC_FEMALE.id, DrawableCallback).data = 86
menu.add_feature("Yung Ancestor", "action", DC_FEMALE.id, DrawableCallback).data = 82
menu.add_feature("Yung Ancestor 2", "action", DC_FEMALE.id, DrawableCallback).data = 83
menu.add_feature("Dinka Racing Suit", "action", DC_FEMALE.id, DrawableCallback).data = 88
menu.add_feature("Prisoner Number", "action", DC_FEMALE.id, DrawableCallback).data = 115
menu.add_feature("LS Customs", "action", DC_FEMALE.id, DrawableCallback).data = 117
menu.add_feature("Born X Raised Los Santos", "action", DC_FEMALE.id, DrawableCallback).data = 118
menu.add_feature("Chicken Icons", "action", DC_FEMALE.id, DrawableCallback).data = 121
menu.add_feature("Enema Los Santos", "action", DC_FEMALE.id, DrawableCallback).data = 123
menu.add_feature("Los Santos Garage", "action", DC_FEMALE.id, DrawableCallback).data = 124
menu.add_feature("Small Red Rockstar Logo", "action", DC_FEMALE.id, DrawableCallback).data = 127



-- GlobalHax
menu.add_feature("Disable Kosatka Missile Cooldown", "toggle", GH_MAIN.id, function(bit)
    while bit.on do -- Improves missile range
        script.set_global_i(262145+29821,0)
        script.set_global_i(262145+29822,99999)
    if not bit.on then return end
    system.wait(0)
    end
    menu.notify("Successfully disabled the cooldown!", "GlobalHax", 5, 3578712200220)
end)
menu.add_feature("Disable MK2 Cooldown", "toggle", GH_MAIN.id, function(bit)
    while bit.on do 
        script.set_global_i(262145+28056,0)
    if not bit.on then return end
    system.wait(0)
    end
    menu.notify("Successfully disabled the cooldown!", "GlobalHax", 5, 3578712200220)
end)
menu.add_feature("More SOON tm", "action", GH_MAIN.id, function()
    menu.notify("Why did you need to press this button?", "Deez Nutz", 2, 3578712200220)
end)

--[[
local GH_XPM = menu.add_feature("RP Multiplier", "parent", GH_MAIN.id)
local GH_IMRH = menu.add_feature("Impromptu Race Hack", "parent", GH_MAIN.id)

-- RP Multiplier
menu.add_feature("Set Multiplier", "action", GH_XPM.id, function()
    script.set_global_f(262145 + 1, 70.0)
    menu.notify("Successfully set the multiplier!", "GlobalHax", 5, 3578712200220)
    menu.notify("Best to be used in Survivals!", "GlobalHax", 2, 3578712200220)
end)
menu.add_feature("Reset Multiplier", "action", GH_XPM.id, function()
    script.set_global_f(262145 + 1, 1.0)
    menu.notify("Successfully reset the multiplier!", "GlobalHax", 5, 3578712200220)
end)


-- Impromptu Race Hack (Only Real OG's remember this)
menu.add_feature("Set Multiplier", "action", GH_IMRH.id, function()
    script.set_global_f(262145 + 166, 10.0)
    menu.notify("Successfully set the multiplier!", "GlobalHax", 5, 3578712200220)
end)
menu.add_feature("Reset Multiplier", "action", GH_IMRH.id, function()
    script.set_global_f(262145 + 166, 1.0)
    menu.notify("Successfully reset the multiplier!", "GlobalHax", 5, 3578712200220)
end) 
]]


-- player.get_player_ped(player.player_id())

-- Other Features
menu.add_feature("Equip 'Record A' livery for the AP Pistol", "action", MISC_FT_MAIN.id, function()
    weapon_hash = gameplay.get_hash_key("WEAPON_APPISTOL")
    component_hash = gameplay.get_hash_key("COMPONENT_APPISTOL_VARMOD_SECURITY")

    weapon.give_weapon_component_to_ped(player.get_player_ped(player.player_id()), weapon_hash, component_hash)
    menu.notify("This did NOT unlock the finish!\nThis goes away after switching sessions.", "Other Features", 3, 3578712200220)
end)
menu.add_feature("Equip 'Organics' livery for the Micro SMG", "action", MISC_FT_MAIN.id, function()
    weapon_hash = gameplay.get_hash_key("WEAPON_MICROSMG")
    component_hash = gameplay.get_hash_key("COMPONENT_MICROSMG_VARMOD_SECURITY")

    weapon.give_weapon_component_to_ped(player.get_player_ped(player.player_id()), weapon_hash, component_hash)
    menu.notify("This did NOT unlock the finish!\nThis goes away after switching sessions.", "Other Features", 3, 3578712200220)
end)
menu.add_feature("Equip 'Families' livery for the Heavy Rifle", "action", MISC_FT_MAIN.id, function()
    weapon_hash = gameplay.get_hash_key("WEAPON_HEAVYRIFLE")
    component_hash = gameplay.get_hash_key("COMPONENT_HEAVYRIFLE_CAMO1")

    weapon.give_weapon_component_to_ped(player.get_player_ped(player.player_id()), weapon_hash, component_hash)
    menu.notify("This did NOT unlock the finish!\nThis goes away after switching sessions.", "Other Features", 3, 3578712200220)
end)