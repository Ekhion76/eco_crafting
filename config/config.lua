-- Documentation:
-- readme.md file or https://github.com/Ekhion76/eco_crafting

Config = {}

Config.maxInventoryWeight = 120000 -- IMPORTANT! Used only above the 1.0.0 qb-inventory version, remember to upgrade to current value
Config.maxInventorySlots = 41 -- IMPORTANT! Used only above the 1.0.0 qb-inventory version, remember to upgrade to current value

Config.versionCheck = true
Config.consoleReport = true -- turn on/of nui loaded, dropped recipes, no configure ranks, offline labor message

Config.imagePath = "https://cfx-nui-qb-inventory/html/images/"

Config.systemMode = {
    profession = true, -- proficiency system on/off
    labor = true, -- if you turn off the lab, the profession system will automatically turn off. vide: Config.laborIncreaseTime
    money = true, -- money condition on/off
    chance = true -- chance system on/off
}

-- Display components in user interface(nui)
Config.displayComponent = {
    chance = true, -- show loaded recipe chance
    uiSizeBtn = true, -- show '+ -' buttons
    professionIcon = true -- show profession icon in STATISTICS panel. (Add professionName.png to html/img folder e.g weaponry.png, cooking.png)
}

Config.currency = {
    symbol = '$',
    suffix = false -- false: $10 true: 10$
}

Config.defaultLabor = 1000 -- Default labor for new players
Config.laborCap = 5000 -- Max labor points
Config.proficiencyCap = 120000 -- if the not set ranks (Max proficiency points)

Config.laborIncreaseTime = 5 -- Default 5 (min), if 0 then turn off automatic labor
Config.laborIncrease = 10 -- Every increaseTime minutes grow so much

Config.useTarget = GetConvar('UseTarget', 'false') == 'true'
Config.debugPoly = false -- Default false

-- ECO LOGGER
Config.discordbotName = 'ECOBOT'
Config.discordWebhook = {
    -- crafting = 'https://discord.com/api/webhooks/...', -- All crafting
    -- labor = 'https://discord.com/api/webhooks/...', -- Bigger increase or labor_enhancer item
}

-- add creator data (citizenid, charName, name) to product info (ONLY UNIQUE items)
Config.creatorData = true

Config.blips = {
    {
        name = 'Foundry',
        coord = vector3(1110.3, -2008.43, 30.71);
        sprite = 537,
        color = 42,
        scale = 0.9
    },
    {
        name = 'Craft In Park',
        coord = vector3(226.64, -890.39, 30.69);
        sprite = 537,
        color = 42,
        scale = 0.9
    }
}


-- PORTABLE WORKSTATIONS
Config.workstationPlacementTime = 10 -- in sec
Config.workstationRemovalTime = 10 -- in sec

Config.workstationPlacementLimit = 1 -- number of workstations that can be placed by a player at the same time (does not apply to admins)

Config.workstationRemoveCommand = 'workstationremoval' -- deletes the nearby workstation default: 'workstationremoval'(only admins)
Config.workstationRemoveAdminGroup = 'god' -- default god

Config.canRemove = {     -- admins can use the remove command
    everybody = false,   -- everyone can remove the other settings are ignored
    ownerJob = false,     -- if the job is the same as the owner's
    ownerGang = false,   -- if the gang is the same as the owner's
    supervisoryJobs = {  -- these workers always
        'police', 'sheriff'
    }
}