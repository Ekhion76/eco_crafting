# ECO CRAFTING
## FiveM QBCore Crafting script

[![promo_video](https://img.youtube.com/vi/S94VstZLWlQ/0.jpg)](https://www.youtube.com/watch?v=S94VstZLWlQ)
[TEBEX](https://eco-store.tebex.io/package/5177809)

![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/eco_crafting1.jpg)
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/eco_crafting2.jpg)
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/eco_crafting3.jpg)

### Jellemzők
- Kódolt FiveM asset (Tebex)
- Receptek
    - Keresés a receptek között
    - Könnyen átlátható, egymásra épülő, több lépcsős receptek 
    - Testreszabhatóság, foglalkozás(ok)tól függő használhatóság vagy tiltás, speciális munkahelyhez kötés
    - Beárazható, a termékek gyártása pénzbe is kerülhet.
    - Receptkönyv

- Munkapont rendszer (kapcsolható)
    - A termékek gyártása munkapontba kerül
    - Az elhasznált munkapont az adott szakmában növeli a jártasságot
    - Munkapont növelő tárgy (adható akár esemény jutalomként vagy vásárolhatóvá tehető)

- Jártasság rendszer (kapcsolható)
    - Jártasság statisztika oldal
    - Jártasság növelő tárgy (adható akár eseményeken jutalomként, vagy felkutatható eldugott helyeken)

- Mozgatható grafikus felület
- A munkahelyek specializálhatók, foglalkozáshoz, csoportokhoz egyszóval tulajdonoshoz köthetők
- Effekt markerek(cp), animációk, asztalok(objektumok), minden munkahelyhez egyedileg állíthatók

- Target rendszer / hagyományos közelség érzékelés választható
- Többnyelvűség támogatás
- Discordon vezetett eseménynapló

## Működés:
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/interactions.jpg)
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/functionality.jpg)
Alap működés beállítások:

Lehetőség van a recept árak, jártasság, munkapont rendszert kikapcsolni egyenként, ha ezekere nincs szükség.
Ha a munkapont rendszer ki van kapcsolva, akkor automatikusan kikapcsolódik a jártasság rendszer is!

```lua
Config.systemMode = {
    profession = true, -- jártasság rendszer
    labor = true, -- Ha ezt kikapcsolod automatikusan kikapcsolódik a jártasság rendszer is!
    money = true -- Recept árainak figyelembevétele
}
```

A további leírás feltételezi, hogy minden rendszer be van kapcsolva.

![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/labor_points.jpg)
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/workplaces_customize.jpg)

A tárgy elkészítéshez az alapanyagokon kívül szükséges rendelkezni munkapontokkal és 
megfelelő szakmai jártassági szinttel. 
Minden szakmának saját munkahelye / munkahelyei vannak.

A receptek szakmák szerint vannak kategorizálva. Pl.:
- chemist
- cooking
- weaponry
- foundry
- handicraft
- ...
- ...

Az elhasznált labor az adott szakmában növeli a jártasságot, így egyre magasabb szintű tárgyak készíthetők.

![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/proficiency.jpg)

Nem érdemes például étterem1 és étterem2 alá sorolni a recepteket, mert az két külön szakmát jelentene, 
holott a szakács jártasságot kellene növelniük a befektetett munkapontoknak egységesen.

Íme egy példa, hogy a szakács szakmán belül, hogyan köthetünk recepteket külön éttermekhez és foglalkozásokhoz:

```lua
Config.craftData = {
    cooking = {
        tosti = { -- gyárthatja bárki, bármely 'cooking' munkahelynél
            labor = 10,
            ingredients = { item1 = 1, item2 = 1 },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0
        },
        twerks_candy = { -- gyárthatja bárki, de csak speciális 'tacoBomb' munkahelynél
            labor = 10,
            ingredients = { item1 = 1, item2 = 1 },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0,
            special = 'tacoBomb'
        },
        snikkel_candy = { -- csak az exkluzív tagok és csak speciális 'hookies' munkahelynél
            labor = 10,
            ingredients = { item1 = 1, item2 = 1 },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0,
            exclusive = {
                mechanic = { 0, 1 }, -- rang lista (opcionális)
                vagos = {}, -- minden rang elfogadva
                'crips', -- minden rang elfogadva
            },
            special = 'hookies'
        },
        sandwich = { -- a police és ambulance foglalkozáson-on kívüliek gyárthatják
            labor = 10,
            ingredients = { item1 = 1, item2 = 1 },
            time = 5,
            amount = 1,
            proficiency = 0,
            price = 0,
            excluding = {
                "police",
                "ambulance"
            }
        },
    }
}
```

### Recept felépítése
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/recipes_specialize.jpg)
```lua
Config.craftData = {
    foundry = { 
    
        -- Alap recept. Igen, ennyi az egész. A többi alap értéket kap! 
    
        aluminum = { -- elkészítendő tárgy
            ingredients = { aluminumoxide = 3 } -- Csak ez szükséges
        },
        
        -- Teljesen opcionalizált recept
        
        steel = {
            labor = 5, -- munkapont (opcionális)
            ingredients = { steel = 5 }, -- hozzávalók = db !szükséges
            time = 3,   -- elkészítési idő másodpercben (opcionális)
            amount = 1, -- kapott késztermék mennyisége (opcionális)
            proficiency = 3000, -- minimum szakmai jártasság (opcionális)
            price = 0, -- bekerülési összeg (opcionális)
            exclusive = {}, -- kizárólagos job-ok, gang-ek listája, akik láthatják / készíthetik a terméket (opcionális)
            excluding = {}, -- kizárt job-ok, gang-ek listája. Ha van exkluzív lista ez figyelmen kívül marad. (opcionális)
            special = 'only_steel' -- specializált munkahelyen gyártható (opcionális)
        }
    }
}
```

Alapértelmezett recept értékek:

    labor = 0
    time = 10
    price = 0
    amount = 1
    proficiency = 0
    special = nil
    exclusive = nil
    excluding = nil

### Exkluzív beállítás
- foglalkozás(job) és csoport(gang) ömlesztve megadható
- ha táblaként van megadva, akkor csak a felsorolt rang engedélyezett Pl.: mechanic = { 0, 1 }
- üres tábla esetén az összes rang engedélyezett. Pl.: mechanic = {}
- karakterlánc esetén szintén az összes rang engedélyezett Pl.: 'mechanic'
- a felsoroltokon kívül eső szakmák és csoportok, nem látják a receptet a receptkönyvben sem

```lua
Config.craftData = {
    foundry = { 
         steel = {
             -- ...
             -- ...
             -- ...
             -- ...
             exclusive = {
                 mechanic = { 0, 1 }, -- rang lista (opcionális)
                 vagos = {}, -- minden rang elfogadva
                 'crips', -- minden rang elfogadva
             }
         }
     }
 }
```

### Excluding, kizárás beállítás
- karakterlánc felsorolást fogad el vegyesen szakmák(job) és csoportok(gang), nincsenek a rangok figyelembe véve.
- a felsorolt szakmák és csoportok, nem látják a receptet a receptkönyvben sem
```lua
Config.craftData = {
    foundry = { 
         steel = {
             -- ...
             -- ...
             -- ...
             -- ...
             excluding = {
                 'mechanic', 'vagos', 'crips',
             } 
         }
     }
 }
```

### Munkahelyek
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/workplace_details.jpg)
A receptekhez hasonlóan a munkahelyeket is lehet exkluzívvá vagy csoportok számára kizárttá tenni.
A munkahelyek tetszőleges számban létrehozhatók. Minden szakmának saját munkahelye / munkahelyei vannak.
Mindegyikhez saját markert, animációt, objektumot, specializációt és tulajdonost lehet meghatározni.
A specializált munkahelyeken minden olyan terméket is le lehet gyártani, ami nincs specializálva.

####Mit jelent a specializáció?
A specializáció gyakorlatilag egy cimkézés, mellyel össze lehet kötni a receptet a munkahellyel.

Például, vegyük alapul a vegyész szakmát. Receptjei közt megtalálhatók a legális és illegális szerek is.
Gyógyszerek, festékek(spray), vegyszerek és a drogok is.

Bárki főzhet drogot, kivéve a rendfenntartók, mentősök, tűzoltók (excluding), de az, hogy hol, nem mindegy.
A droglabor asztalát és a recepteket fel kell cimkézni, így párosíthatók.

```lua
Config.workstations = { -- MUNKAHELYEK
    {
        workstation = 'chemist',
        ...,
        special = 'drug', -- ez lehet bármilyen cimke
    }   
}

Config.craftData = { -- RECEPTEK
    chemist = {
        lsd = {
            ...,
            special = 'drug'
        },     
    }      
}
```

Objektumok lehelyezéséhez hasznos segédlet:
https://github.com/Ekhion76/eco_placement

Effekt markerek kereséséhez:
https://github.com/Ekhion76/eco_effect

![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/workplaces_customize.jpg)
```lua
Config.workstations = {

    -- Alap munkahely
    {
        workstation = 'cooking', -- szakma (ez van meghatározva a recepteknél)
        pos = vector4(226.98, -889.95, 29.7, 70.16),
    },
    
    -- Teljesen opcionalizált munkahely
    {
        workstation = 'cooking', -- szakma (ez van meghatározva a recepteknél)
        pos = vector4(216.98, -889.95, 29.7, 70.16),
        animation = { -- (opcionális)
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
        fx = { -- (opcionális)
            dict = 'cut_family5',
            name = 'cs_alien_hand_light',
            offset = vector3(0, 0, 1.1),
            loopedAtCoord = { 0.0, 0.0, 0.0, 1.0 },
            loopedColour = { 8.0, 2.0, 2.0 },
        },
        object = 'v_ret_fh_kitchtable', -- (opcionális)
        special = '', -- (opcionális)
        exclusive = { "ballas", "vagos" }, -- (opcionális)
        excluding = { "police", "ambulance" } -- (opcionális, ha van exkluzív beállítás ez figyelmen kívűl marad)
    }
}
```

**Megjegyzés:** 
A kihelyezett objektumot (Pl.: munkaasztal) mindenki látja akkor is, ha  egy munkahely exkluzív, vagy az illető ki van zárva! 
Jelzés(marker) nem lesz látható és interakciót sem tud kezdeményezni.

### Blippek
A blippeket a konfigurációs fájlban manuálisan kell beállítani, mert: 

- a munkahely lehet titkos
- esetleges munkahely csoportokat elég akár egy blippel jelezni
```lua
Config.blips = {
    {
        name = 'Foundry',
        coord = vector3(1110.3, -2008.43, 30.71);
        sprite = 537,
        color = 42,
        scale = 0.9
    },
    {
        name = 'Street food',
        coord = vector3(-1249.14, -1473.74, 3.28);
        sprite = 537,
        color = 42,
        scale = 0.9
    },
}
```

### Függőségek
 - **Kizárólag QBCore 1.1 alap csomagokat használ, nem szükséges semmit külön telepíteni**
 - DrawText (qb-core 1.1-tól alap)
 - qb-target + PolyZone (opcionális alap)
 - qb-inventory (lj-inventory-val is tesztelve)

Az aktuális inventory ikonjait használja. A konfigurációs fájlban lehet megadni az elérési útvonalat.
```lua
Config.imagePath = "https://cfx-nui-qb-inventory/html/images/"
```

### Server exports
Külső szkriptekből lekérdezhetők, befolyásolhatók a munkapont és jártasság értékek
```lua
exports['eco_crafting']:addLabor((xPlayer or serverId), amount)
exports['eco_crafting']:removeLabor((xPlayer or serverId), amount)

exports['eco_crafting']:addProficiency((xPlayer or serverId), 'proficiency', amount)
exports['eco_crafting']:removeProficiency((xPlayer or serverId), 'proficiency', amount)

exports['eco_crafting']:getLabor((xPlayer or serverId))
exports['eco_crafting']:getProficiency((xPlayer or serverId))
```

### Telepítés
- másold be a resource mappába
- refresh
- start eco_crafting
- adatbázist nem igényel (meta adatokat használ)

### Target működése:
**qb-target bekapcsolása:**
```lua
Config.useTarget = GetConvar('UseTarget', 'false') == 'true' -- Átveszi a szerver konfigurációs fájl értékét 
```
1. Amennyiben a munkahelyhez objektum is van rendelve, akkor ahhoz hozzárendeli a polyBoxot.
2. Ha nincs objektum, akkor a munkahely koordinátájától 1 méteres körzetben keresést folytat és ha lehetséges
ráhelyezi a polyZonát. 
3. Ha nem talál, létrehoz egy adott méretű polyBox-ot a koordináta körül. 

Ellenőrzéshez használd:
```lua
Config.debugPoly = true
```

### Mellékelt hasznos tárgyak
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/addon_items.jpg)
Lásd a QBCore_addition mappa tartalmát. Ikonok és leírás mellékelve!
Működésükhöz a **/qb-core/shared/items.lua** fájlban létre kell hozni a tárgyakat.
Az ikonokat másold az inventory **qb-inventory/html/images/** könyvtárába

- Receptkönyv (recipe_collection)
- Munkapont növelő +1000 pont (labor_enhancer)
- Jártasság növelő +1000 pont (weaponry_enhancer) -- példa(nem ajánlott)

A **server/usableitem.lua** fájlban bevezetésre kerültek mintaként.

