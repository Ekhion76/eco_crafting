3.09
- When starting crafting, the function named maxProduct attempts to calculate how many items can be crafted with the available materials. This is when the 'amount' value might be missing.
- Sends a message and a console log about the error in eco_crafting/libs/functions.lua:282 ... nil value (field 'amount'), making it easier to identify the issue.
Config.debugLevel = 4 provides additional details. (functions.lua -> maxProduct:recipe)

3.08
- Transition to exclusive support for ox_target. If you use a target system, ox_target must be installed.
  
#### Why is this happening?
  Ox_target has discontinued compatibility with qb_target. This currently only affects qb_core and ox_target users.

  This means the module responsible for converting options and other parameters has been removed from ox_target. I decided not to integrate this into e_core because the qb_target system is outdated. Moving forward, I have chosen to support the modern ox_target natively.

#### What has changed:
#### ECO CRAFTING:
eco_crafting/client/workplace.lua: Adds options and parameters conforming to the ox standard.

#### E CORE:
e_core/bridge/global/client.lua: Adds ox exports.

e_core/bridge/esx/client.lua: Removal of qtarget-related functions
e_core/bridge/qb/client.lua: Removal of qb-target-related functions

3.07
- Bugfix: FiveM produces high consumption if there is also a file of type .json in the file list, even if the file is not in use. 
This can be seen on the server side in the case of the crafting script.
Changed the file extension of eco_crafting\db\portable_ws.json to portable_ws.ini (it is enough to rewrite the extension, the content of the file remains unchanged)
- Listing of missing ingredients and discarded recipes in the server console (ON: Config.debugLevel = 1 -- 0-4)

The changes affect the following files:
  - fxmanifest.lua
  - eco_crafting\db\portable_ws.json to portable_ws.ini
  - eco_crafting\libs\portable.lua
  - eco_crafting\libs\configchecker.lua

3.06
- Bugfix: Improved job and gang update event management. (onJobUpdate, onGangUpdate)
  The change affects the client.lua file + it is necessary to update e_core.

3.05
- Bugfix: If labor = 0 was set in the recipe, then the 'attempt to compare number with nil' 
error occurred and the production of the product was not completed. 
The change only affects the server.lua file.

3.04
- Bugfix: If hideHigherProficiencyItems was changed in the config/main.lua file, 
the name of the item appeared next to the image in the item list. This caused the user interface to appear poorly.
The change only affects html/js/view.js. (Corrected 'flex' to 'grid' in line 167)

3.03
- added new recipe feature: 'increaseProficiency = 120' You can specify (optional) how many points to increase the skill regardless of lab use.
It only affects the fxmanifest.lua + server.lua file

3.02
- Fix: Weapon serial number duplication (affected: libs/functions.lua/self.addItem(params, count))

3.01
- Fix: the required proficiency field did not appear on the graphical interface (change only view.js)

3.0
ATTENTION! It is necessary to install e_core before crafting!

The Tebex download includes the previous version 2.4 (only QBCore) and the new version 3.0 (3.0 standalone + e_core) for now!

ATTENTION! The new (3.0)version is not compatible with the old one! (Structural modifications were necessary for independence)

Introduction of e_core dependency due to framework/inventory independence ESX/QBCore (this is a separate free script: https://github.com/Ekhion76/e_core)
- new design
- blueprints (learnable blueprints)
- multiple recipes can be added to an item
- several professions and specialties can be linked to one workplace
- during the creation of the item, a side product can be created

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
- config file split: craftdata, blips, workstations, levels, were placed in a separate file
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
- ingredients metadata function bugfix
- unlocking the encryption of functions.lua

1.4.1
- added 1 new params in fxmanifest file: 'core_name'. Use only if you modified QBCore and do not use the default core name
- added 2 new params in config file: 'versionCheck' and 'consoleReport'
- added object model verification (IsModelInCdimage('model'))

1.4
- add 'Info' data to the product (Similarly as a serial number of a weapon)
- inherit the 'Info' data of the ingredients to the crafted product (e.g.: boost, poison, effect in 'Info' data etc...)
- added creator data to product metadata (only UNIQUE items)

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
- added levels
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
