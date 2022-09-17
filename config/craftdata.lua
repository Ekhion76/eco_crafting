Config.craftData = {

    chemist = {
        joint = {
            labor = 5,
            ingredients = { metalscrap = 1 },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0,
            excluding = { 'police', 'ambulance' }, -- see full options with documentation

            infoInherit = false, -- Inherit the 'Info' data of the ingredients to the crafted product
            info = { -- Sets the information for the product
                param1 = 'value1',
                param2 = 'value2'
            }
        },
        oxy = {
            labor = 5,
            ingredients = {
                aluminumoxide = 1,
                ironoxide = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0
        },
        meth = {
            labor = 5,
            ingredients = {
                plastic = 1,
                glass = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0,
            special = 'drugs'
        },
    },
    cooking = {
        tosti = {
            labor = 5,
            ingredients = {
                plastic = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0
        },
        twerks_candy = {
            labor = 5,
            ingredients = {
                plastic = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0
        },
        snikkel_candy = { -- only the defined job and on a special 'hookies' workplace
            labor = 10,
            ingredients = {
                plastic = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0,
            exclusive = {
                mechanic = { 0, 1 }, -- selected ranks in a job (optional)
                vagos = {}, -- all ranks in a job
                'crips', -- all ranks in a job
            },
            special = 'hookies'
        },
        sandwich = {
            labor = 5,
            ingredients = {
                plastic = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0,
            special = 'hotdog_stand'
        },
    },
    weaponry = {
        weapon_bat = {
            labor = 5,
            ingredients = {
                iron = 1,
                plastic = -1 -- [minus prefix]permanent ingredient(will not be taken away)
            },
            time = 5,
            amount = 3,
            proficiency = 0,
            price = 0,
            chance = 70
        },
        weapon_knife = {
            labor = 10,
            ingredients = {
                plastic = 1,
                steel = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 20,
            price = 10
        },
        weapon_pistol = {
            labor = 10,
            ingredients = {
                plastic = 1,
                steel = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 20,
            price = 10
        },
        weapon_heavypistol = {
            labor = 10,
            ingredients = {
                plastic = 1,
                metalscrap = 1,
                steel = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 30,
            price = 10
        },
        weapon_microsmg = {
            labor = 10,
            ingredients = {
                plastic = 1,
                metalscrap = 1,
                steel = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 30,
            price = 10,
            special = 'w_extend'
        },
    },
    foundry = {
        aluminum = {
            labor = 5,
            ingredients = {
                aluminumoxide = 3,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0
        },
        iron = {
            labor = 5,
            ingredients = {
                ironoxide = 3,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0
        },
        steel = {
            labor = 5,
            ingredients = {
                iron = 2,
            },
            time = 5,
            amount = 1,
            proficiency = 10,
            price = 5,
            special = 'f_extend'
        },
    },
    handicraft = {
        lockpick = {
            labor = 5,
            ingredients = {
                metalscrap = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0,
        },
        advancedlockpick = {
            labor = 5,
            ingredients = {
                plastic = 1,
                metalscrap = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0
        },
        electronickit = {
            labor = 5,
            ingredients = {
                plastic = 1,
                copper = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0
        },
        gatecrack = {
            labor = 5,
            ingredients = {
                iron = 1,
                steel = 1,
            },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0
        },
    }
}
