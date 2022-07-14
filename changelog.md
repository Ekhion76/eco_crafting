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
