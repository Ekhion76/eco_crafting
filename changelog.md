1.3
- added level system
- levels can give discounts (labor, price, time, chance)
- added German language
- 'Config.inMarkerDistance' has been eliminated, the 'actionDistance' added to the Config.workstations

Config file changes:
- Added ranks
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
- Statistics panel: Only show exists proficiency data. Affected files: html/js/view.js, libs/functions.lua
- remove escrow client/workplace.lua
