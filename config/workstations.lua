-- FX list
-- https://gist.github.com/alexguirre/af70f0122957f005a5c12bef2618a786
-- FX viewer: https://github.com/Ekhion76/eco_effect

-- Object list
-- https://forge.plebmasters.de/
-- Object placer: https://github.com/Ekhion76/eco_placement

-- Documentation:
-- readme.md file or https://github.com/Ekhion76/eco_crafting

-- E.G EFFECTS
--dict = 'scr_xm_aq',
--name = 'scr_xm_aq_final_kill_thruster',
--loopedAtCoord = { 0.0, 0.0, 0.0, 0.5 },
--loopedColour = { 1.8, 0.2, 7.7 },

--dict = 'scr_obfoundrycauldron',
--name = 'scr_obfoundry_cauldron_steam',
--loopedAtCoord = { 0.0, 0.0, 0.0, 0.5 }, -- [xRot, yRot, zRot, scale]
--loopedColour = { 0.0, 0.0, 0.0 }, -- [r, g, b]

--dict = 'scr_ornate_heist',
--name = 'scr_heist_ornate_thermal_burn',
--loopedAtCoord = { 0.0, 0.0, 0.0, 0.2 }, -- [xRot, yRot, zRot, scale]
--loopedColour = { 0.0, 0.7, 0.0 }, -- [r, g, b]

--dict = 'scr_sm_trans',
--name = 'scr_sm_trans_smoke',
--loopedAtCoord = { 0.0, 0.0, 0.0, 0.1 }, -- [xRot, yRot, zRot, scale]
--loopedColour = { 4.5, 0.2, 0.0 }, -- [r, g, b]

Config.workstations = {
    -----------------------------------------------------------------
    -- Chemist
    -----------------------------------------------------------------
    {
        workstation = 'chemist',
        pos = vector4(217.1, -866.52, 29.91, 70.08),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'scr_bike_adversary',
            name = 'scr_adversary_weap_glow',
            offset = vector3(0, 0, 0.4),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 }, -- [xRot, yRot, zRot, scale] See: StartParticleFxLoopedAtCoord in Fivem Natives
            loopedColour = { 8.0, 2.0, 2.0 }, -- [r, g, b] See: SetParticleFxLoopedColour in Fivem Natives
        },
        object = {
            model = 'v_ret_ml_tableb',
            placeOnGround = true, -- Automatic adjustment to the ground level
            -- offset = vector3(0, 0, 0) -- shift on x, y, z axis
        },
        --exclusive = { -- e.g: 3 syntax
        --    mechanic = { 0, 1 }, -- selected ranks in a job (optional)
        --    vagos = {}, -- all ranks in a job
        --    'crips', -- all ranks in a job
        --},
        actionDistance = 1.5, -- optional( default: 1.5 )
        requiredAcePermission = 'vip_gold',
    },
    {
        workstation = 'chemist',
        pos = vector4(216.53, -872.57, 29.49, 117.8),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'scr_bike_adversary',
            name = 'scr_adversary_weap_glow',
            offset = vector3(0, 0, 0.9),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 }, -- [xRot, yRot, zRot, scale] See: StartParticleFxLoopedAtCoord in Fivem Natives
            loopedColour = { 8.0, 2.0, 2.0 }, -- [r, g, b] See: SetParticleFxLoopedColour in Fivem Natives
        },
        object = {
            model = 'bkr_prop_coke_table01a',
            placeOnGround = true, -- Automatic adjustment to the ground level
            -- offset = vector3(0, 0, 0) -- shift on x, y, z axis
        },
        special = 'drugs',
        excluding = {'police', 'sheriff', 'ambulance'},
        actionDistance = 1.5 -- optional( default: 1.5 )
    },

    -----------------------------------------------------------------
    -- Cooking
    -----------------------------------------------------------------

    {
        workstation = 'cooking',
        pos = vector4(216.98, -890.5, 30.19, 70.16),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'cut_family5',
            name = 'cs_alien_hand_light',
            offset = vector3(0, 0, 0.6),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
            loopedColour = { 8.0, 2.0, 2.0 },
        },
        object = {
            model = 'v_ret_fh_kitchtable',
            placeOnGround = true,
            -- offset = vector3(0, 0, 0)
        },
        actionDistance = 1.5
    },
    {
        workstation = 'cooking',
        pos = vector4(218.05, -886.79, 30.19, 77.17),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'cut_family5',
            name = 'cs_alien_hand_light',
            offset = vector3(0, 0, 0.6),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
            loopedColour = { 8.0, 3.0, 0.0 },
        },
        object = {
            model = 'v_ret_fh_kitchtable',
            placeOnGround = true,
            -- offset = vector3(0, 0, 0)
        },
        special = 'tacoBomb',
        actionDistance = 1.5
    },
    {
        workstation = 'cooking',
        pos = vector4(-1249.14, -1473.74, 3.28, 307.18),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'scr_bike_adversary',
            name = 'scr_adversary_ped_glow',
            offset = vector3(0, 0, 0.8),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
            loopedColour = { 8.0, 3.0, 0.0 },
        },
        special = 'streetFood',
        actionDistance = 1.5
    },
    {
        workstation = 'cooking',
        pos = vector4(224.08, -896.93, 29.7, 48.39),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'core',
            name = 'ent_amb_int_fireplace_sml',
            offset = vector3(0, 0, 0.0),
            loopedAtCoord = { 0.0, 0.0, 0.0, 3.0 },
            loopedColour = { 8.0, 3.0, 0.0 },
        },
        object = {
            model = 'h4_prop_h4_firepit_rocks_01a',
            placeOnGround = true,
            --offset = vector3(0, 0, -0.2)
        },
        actionDistance = 2.0
    },
    {
        workstation = 'cooking',
        pos = vector4(220.5, -901.93, 29.7, 48.39),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        object = {
            model = 'prop_beach_fire',
            placeOnGround = true,
            offset = vector3(0, 0, -0.55)
        },
        actionDistance = 2.5
    },
    {
        workstation = 'cooking',
        pos = vector4(218.54, -882.83, 29.7, 86.82),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'cut_family5',
            name = 'cs_alien_hand_light',
            offset = vector3(0, 0, 0.95),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
            loopedColour = { 8.0, 2.0, 1.0 },
        },
        object = {
            model = 'prop_cooker_03',
            placeOnGround = true,
            -- offset = vector3(0, 0, 0)
        },
        special = 'hookies',
        actionDistance = 1.5
    },
    {
        workstation = 'cooking',
        pos = vector4(225.38, -890.45, 29.76, 259.79),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'cut_family5',
            name = 'cs_alien_hand_light',
            offset = vector3(-0.15, -0.8, 1.53),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
            loopedColour = { 8.0, 3.0, 1.0 },
        },
        object = {
            model = 'prop_hotdogstand_01',
            placeOnGround = true,
            -- offset = vector3(0, 0, 0)
        },
        special = 'hotdog_stand',
        exclusive = { 'hotdog' },
        actionDistance = 1.5
    },

    -----------------------------------------------------------------
    -- Weapony
    -----------------------------------------------------------------

    {
        workstation = 'weaponry',
        pos = vector4(229.5, -907.34, 29.7, 145.84),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'cut_family5',
            name = 'cs_alien_hand_light',
            offset = vector3(0, 0, 1.0),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
            loopedColour = { 8.0, 2.0, 2.0 },
        },
        special = '',
        object = {
            model = 'prop_tool_bench02_ld',
            placeOnGround = true,
            -- offset = vector3(0, 0, 0)
        },
        actionDistance = 1.5
    },
    {
        workstation = 'weaponry',
        pos = vector4(226.97, -911.0, 29.7, 235.65),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'cut_family5',
            name = 'cs_alien_hand_light',
            offset = vector3(0, 0, 0.9),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
            loopedColour = { 8.0, 3.0, 0.0 },
        },
        special = 'w_extend',
        object = {
            model = 'gr_prop_gr_bench_02a',
            placeOnGround = true,
            -- offset = vector3(0, 0, 0)
        },
        actionDistance = 1.5
    },

    -----------------------------------------------------------------
    -- Handicraft
    -----------------------------------------------------------------

    {
        workstation = 'handicraft',
        pos = vector4(214.76, -895.24, 30.09, 60.46),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            -- Marker
            dict = 'cut_family5',
            name = 'cs_alien_hand_light',
            offset = vector3(0, 0, 0.5),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
            loopedColour = { 8.0, 2.0, 2.0 },
        },
        object = {
            model = 'gr_prop_gr_bench_04b',
            placeOnGround = true,
            -- offset = vector3(0, 0, 0)
        },
        actionDistance = 1.5
    },

    -----------------------------------------------------------------
    -- Foundry
    -----------------------------------------------------------------
    {
        workstation = 'foundry',
        pos = vector4(1110.68, -2008.6, 30.13, 320.0),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'scr_reconstructionaccident',
            name = 'scr_sparking_generator',
            offset = vector3(0, 0, 1.0),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
            loopedColour = { 8.0, 2.0, 2.0 },
        },
        actionDistance = 1.5
    },
    {
        workstation = 'foundry',
        pos = vector4(1087.55, -2004.46, 30.45, 324.22),
        animation = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = {
            dict = 'cut_family5',
            name = 'cs_alien_hand_light',
            offset = vector3(0, 0, 1.0),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
            loopedColour = { 8.0, 3.0, 0.0 },
        },
        special = 'f_extend',
        actionDistance = 1.5
    },
}
