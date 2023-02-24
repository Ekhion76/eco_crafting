# EXPORTS
### CLIENT SIDE

Opens the craft window. Only the workstation type needs to be entered.
```lua
exports['eco_crafting']:open({
        workstation = 'weaponry',   -- required
        special = 'w_extend',       -- optional
        animation = {               -- optional
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
    })
```

# EXPORTS
### SERVER SIDE

###PORTABLE WORKSTATIONS

The workstation settings work as in the Config file.
Only the type and position are required, the rest are optional.

If we set the ownerId(source), the object can be taken from him and the workplace is linked to it, 
so he can pick it up at any time.

The no Limit parameter ignores the maximum number of pieces set in the configuration file (Config.workstationPlacementLimit)

```lua
local wsId = 0

RegisterCommand('addws', function(source, args, raw)

    -- ownerId(optional) if specified, the workplace can be linked to the player (He can remove it at any time) and an item can be subtracted from it
    -- usableItemName 'summonItem'(optional) if there is an owner, this item will be deducted from him
    -- noLimit: disable the Config.workstationPlacementLimit

    local ownerId = source
    local usableItemName = 'portable_cooking_fireplace'
    local noLimit = false

    local _PlayerPedId = GetPlayerPed(source)
    local heading = GetEntityHeading(_PlayerPedId)
    local coords= GetEntityCoords(_PlayerPedId)

    wsId = exports['eco_crafting']:addPortableWorkstation({
        workstation = 'cooking',
        pos = vector4(coords.x, coords.y, coords.z - 1, heading),
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
            loopedColour = { 1.0, 3.0, 0.0 },
        },
        object = {
            model = 'h4_prop_h4_firepit_rocks_01a',
            placeOnGround = true,
            --offset = vector3(0, 0, -0.2)
        },
        special = 'campfire',
        actionDistance = 2.0
        
    }, usableItemName, ownerId, noLimit)

    print('wsId', wsId)
end)
```

Remove portable workstation
```lua
RegisterCommand('delws', function(source, args, raw)

    -- requesterId(optional) if specified, the player can get the item back

    local requesterId = source

    exports['eco_crafting']:removePortableWorkstation(wsId, requesterId)
end)
```

Returns table of all portable workstation
```lua
RegisterCommand('getws', function(source, args, raw)

    local allWs = exports['eco_crafting']:getPortableWorkstations()

    print(json.encode(allWs, { indent = true }))
end)
```

### Labor and Proficiency exports:
```lua
exports['eco_crafting']:addLabor(xPlayer or source, amount)
exports['eco_crafting']:removeLabor(xPlayer or source, amount)

exports['eco_crafting']:addProficiency(xPlayer or source, 'cooking', amount)
exports['eco_crafting']:removeProficiency(xPlayer or source, 'weaponry', amount)

exports['eco_crafting']:getLabor(xPlayer or source)
exports['eco_crafting']:getProficiency(xPlayer or source)
```

