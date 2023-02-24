2.4
- added client side export: The crafting interface can also be opened from an external script. See export_examples.md
- added Config.workstationExpirationTime (in day). Is evaluated at script startup. Prevents portable workstations from remaining permanently installed.
- added Config.workstationMaxCorrectionZ. The height of portable workstations is adjustable
- added Config.canUse. The use of the portable workstation can be linked to owner, job, gang.
- added Config.displayComponent.hideHigherProficiencyItems. It hides from the product list those items for which you do not have sufficient proficiency
- portable.lua encryption unlocked

2.3
- you can also use ace permission to access recipes, workbenches and portable workbenches

2.2
- you can add your favorite notification system at libs/notify.lua

2.1
- saves portable tables, they remain even when the server or script is restarted ( can be set in the config file )
- the extent of the OFFLINE labor increase can be adjusted or turned off
- two event triggers can be caught in the event of successful table placement or removal

2.0
- added workstation add/remove function + usable items
- added workstation add/remove exports
- added object placer function
- config file split: craftdata, blips, workstations, ranks, were placed in a separate file
- added remove money reason
- added export_examples.md file
- added portable workstation discord log

1.5
- adapt to August 19, 2022 QBCore changes (modify inventory, player, config structure)
- it works with the old and new qb-core version
- affected files: 
config.lua (added Config.maxInventoryWeight = 120000, Config.maxInventorySlots = 41)
client/main.lua, 
server/main.lua, 
libs/functions.lua

1.4.5
- math.randomseed error fixed (functions.lua -> draw())
- recipe unload rework. Buttons reset and unload last recipe all nui open. (client/main.lua, app.js, view.js)

1.4.4
- will unload the last used recipe when you change workplace. Affected all js file, client/main.lua, fxmanifest.lua (version number)

1.4.3
- user interface text repetition bug fix. Affected client.lua, fxmanifest.lua (version number)

1.4.2
- ingredients info function bugfix
- unlocking the encryption of functions.lua

1.4.1
- added 1 new params in fxmanifest file: 'core_name'. Use only if you modified QBCore and do not use the default core name
- added 2 new params in config file: 'versionCheck' and 'consoleReport'
- added object model verification (IsModelInCdimage('model'))

1.4
- add 'Info' data to the product (Similarly as a serial number of a weapon)
- inherit the 'Info' data of the ingredients to the crafted product (e.g.: boost, poison, effect in 'Info' data etc...)
- added creator data to product info (only UNIQUE items)

Config file changes:
```lua
Config.creatorData = true
```

1.3.1
- object placement enlarged customization

Config file changes:

```lua
Config.workstations = {
    {
        -- ... other settings,
        -- object = 'v_ret_ml_tableb', -- outdated, but still working (DEFAULT: placeOnGround = true and no offset)
        
        object = { -- new set
            model = 'v_ret_ml_tableb',
            placeOnGround = true, -- Automatic adjustment to the ground level (optional)
            offset = vector3(0, 0, 0) -- shift on x, y, z axis (optional)
        }
    }    
}
```

1.3
- added level system
- levels can give discounts (labor, price, time, chance)
- added German language
- 'Config.inMarkerDistance' has been eliminated, the 'actionDistance' added to the Config.workstations

Config file changes:
- added ranks
- 'Config.inMarkerDistance' relocated Config.workstations -> actionDistance

1.2.1
- css: added scrollbar to the statistics panel
- switching proficiency icons to the statistics panel

Config file changes:
```lua
-- Display components in user interface(nui)
Config.displayComponent = {
    chance = true, -- show loaded recipe chance
    uiSizeBtn = true, -- show '+ -' buttons
    professionIcon = false -- show profession icon in STATISTICS panel.(Add professionName.png to html/img folder e.g weaponry.png, cooking.png)
}
```

1.2
- added remaining ingredient function (use '-' sign for amount)
- rework responsive user interface (add min and max size)
- added '+ -' buttons for user interface for size scale
- added chance system (optional)
- turn off automatic labor points (set Config.laborIncreaseTime = 0)

Config file changes:
```lua
Config.systemMode = {
    profession = true, -- proficiency system on/off
    labor = true, -- if you turn off the lab, the profession system will automatically turn off. vide: Config.laborIncreaseTime
    money = true, -- money condition on/off
    chance = true -- chance system on/off 
}

-- Display components in user interface(nui)
Config.displayComponent = {
    chance = true,
    uiSizeBtn = true
}
```

1.1
- statistics panel: Only show exists proficiency data. Affected files: html/js/view.js, libs/functions.lua
- remove escrow client/workplace.lua
