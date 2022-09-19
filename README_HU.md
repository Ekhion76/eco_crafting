# ECO CRAFTING
## FiveM QBCore Crafting script

[![promo_video](https://img.youtube.com/vi/S94VstZLWlQ/0.jpg)](https://www.youtube.com/watch?v=S94VstZLWlQ)

[TEBEX](https://eco-store.tebex.io/package/5177809)

[DISCORD](https://discord.gg/4arG5sEpqw)

[CFX FORUM](https://forum.cfx.re/t/paid-qbcore-eco-crafting/4878303)


![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/portable_workstation.jpg)
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/eco_crafting1.jpg)
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/eco_crafting2.jpg)
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/statistics.jpg)


### Jellemzők
- Escrow FiveM asset ([Tebex](https://eco-store.tebex.io/package/5177809))

- Hordozható munkahelyek (2.0 verziótól)
    - Bárhol felállítható egy asztal vagy meggyújtható egy tábortűz
    - Beépített tárgy lehelyező funkció. Az asztal forgatható, pontos pozícióra helyezhető.
    - Az inventory-ból használt tárggyal létrehozható a munkahely, amit siker esetén elvesz
    - Az eltávolító játékos megkapja a tárgyat az inventory-ba
    - Testreszabható, hogy ki távolíthatja el (bárki, tulaj, admin, rendőr, tulajdonos job, tulajdonos gang)
    - Korlátozható a létrehozható munkahelyek száma
    - Kijelölhető tiltott körzetek, ahol nem lehet mobil munkahelyet elhelyezni
    - Segítség a fejlesztőknek: tiltott területek láthatóvá tehetők
    - Segítség a fejlesztőknek: a lehelyezett asztalok modeljét és pozícióját vágólapra másolja
    - Exportok: létrehozáshoz, eltávolításhoz és információ lekéréshez
    - Discord log
    - A hordozható munkahelyek nincsenek adatbázisban tárolva, ezért szkript vagy szerver újraindítás esetén eltünnek!
    
- Receptek
    - Keresés a receptek között
    - Fontos! Egy tárgyat csak egy szakma gyárthat és csak egy receptet lehet hozzárendelni
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

- Esély rendszer (1.2 verziótól)
    - A recept beállításban megadható százalékban, hogy a tárgy elkészítése mekkora eséllyel lesz sikeres.
    
- Méretezhető grafikus felület (1.2 verziótól)
    - A felület a játék ablakának méretéhez igazodik, de lehetőség van ezen felül is '+ -' gombokkal állítani a méretet
    
- Megmaradó hozzávalók (1.2 verziótól)
    - A receptek (- jellel) megjelölt hozzávalóit nem veszi el a rendszer
    
- Szakma ikonok a statisztika oldalon (1.2.1 verziótól)
    
- Szint rendszer (1.3 verziótól)
    - Szintenként meghatározható a kedvezmények mértéke százalékban
    - Kedvezmények az alábbi 4 tételre alkalmazhatók: chance, price, time, labor
    
- 'Info' adatok hozzáadása az elkészített termékhez, valamint öröklési lehetőség a hozzávalóktól. (Hasonlóan, mint például a fegyverek sorozatszáma)

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
    money = true, -- Recept árainak figyelembevétele
    chance = true -- Siker esélyek figyelembevétele (1.2 verziótól)
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

#### Szintek, kedvezmények
A jártasság növekedésével kedvezmények állíthatók be. 
Növekedhet a sikeresség esélye és csökkenhet az elkészítés idő, valamint az ár és labor költségek.

Fontos, hogy a kedvezmények mindig növekedjenek vagy stagnáljanak, mert mindig az előző szint értéke adja
az alapot a jelenlegi kedvezmény kiszámolásához.

A szintben meghatározott kedvezmény mértéke csak a felső határon lesz teljes.

Az utolsó szint beállítja/felülírja a Config.proficiencyCap értékét.

```lua
Config.ranks = {

    { -- 0. Base
        limit = 20, -- jártassági pont küszöb
        labor = 0, -- labor költség csökkentés százalékban
        time = 0, -- készítési idő csökkentés százalékban
        price = 0, -- ár csökkentés százalékban
        chance = 0, -- esély növelés százalékban
    },
    {
    ...
    },
    { -- 11. Famed
        limit = 120000, -- Utolsó szint beállítja a legnagyobb elérhető jártasságpontot
        labor = 40, 
        time = 20,
        price = 20,
        chance = 20,
    }
}
```

Példa a számításra:
```lua
    labor   = math.ceil(recipe.labor    - (recipe.labor / 100)      * rank.labor)
    price   = math.ceil(recipe.price    - (recipe.price / 100)      * rank.price);
    time    = math.ceil(recipe.time     - (recipe.time / 100)       * rank.time)
    chance  = math.ceil(recipe.chance   + (recipe.chance / 100)     * rank.chance);
```

Famed szinten a kedvezmény 40%, tehát 100 labor lecsökken 60-ra.

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
            ingredients = { -- [hozzávalók = db] szükséges megadni
                steel = 5, 
                hammer = -1 -- [-] előjeles darabszám azt jelzi, hogy ez a hozzávaló nem lesz elvéve (1.2 verziótól)
            }, 
            time = 3,   -- elkészítési idő másodpercben (opcionális)
            amount = 1, -- kapott késztermék mennyisége (opcionális)
            proficiency = 3000, -- minimum szakmai jártasság (opcionális)
            price = 0, -- bekerülési összeg (opcionális)
            chance = 75, -- Gyártási siker esélye százalékban (opcionális)
            exclusive = {}, -- kizárólagos job-ok, gang-ek listája, akik láthatják / készíthetik a terméket (opcionális)
            excluding = {}, -- kizárt job-ok, gang-ek listája. Ha van exkluzív lista ez figyelmen kívül marad. (opcionális)
            special = 'only_steel', -- specializált munkahelyen gyártható (opcionális)
            infoInherit = false, -- átörökíti a hozzávalók 'info' adatait az elkészített termékre (opcionális)
            info = { -- A termékhez beállítja az információt (opcionális)
                param1 = 'value1',
                param2 = 'value2'
            }
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
    chance = 100
    special = nil
    exclusive = nil
    excluding = nil
    infoInherit = nil
    info = {}
        
### Info (meta) adatok beállítása
FONTOS: Ha a tárgy 'info' adatokat kap, nem szabad halmozni(stack), 
ezért ajánlott a /qb-core/shared/items.lua fájlban egyedivé(**UNIQUE**) tenni!
Ha egy slot-ban több info-t tatalmazó tárgy van, akkor az első infóját átveszi mind!

#### Hozzávalók adatainak öröklése:
    
```lua
infoInherit = true -- minden receptnél külön állítandó
```

A termék az összes hozzávalójától örökli az 'info' adatokat, kivétel a szériaszámot és a készítőt.

**Mire használható?** 

Például limonádéhoz serkentőt, vagy akár leveshez mérget keverni. 

Nézzük a limonádé receptjét:
```
víz tartalmaz egy 'blur' effekt paramétert,
citrom a citrom egy 'shake' effektet, 
cukor tartalmaz 'crack'-et
```

Elkészítéskor a következő info jön létre:

```lua
info = {
    effects = { 'shake', 'blur' },
    contain = 'crack'
}
```
Több azonos kulcs esetén az értékeket táblába gyüjti
    
#### fix adatok hozzáadása

A receptben meghatározható az info paraméter. Táblát szükséges megadni.

```lua
Config.craftData = {
    cooking = { 
         lemonade = {
             -- ...
             info = {
                 effects = 'cold'
             }
         }
     }
 }
```

A limonádé minden esetben megkapja 'cold' effekt paramétert.
Ha ez mellé be van kapcsolva a hozzávalóktól való öröklés, akkor az hozzáadódik:

Örökölt és fix info adatok:

```lua
info = {
    effects = { 'shake', 'blur', 'cold' },
    contain = 'crack'
}
```

- **készítő adatai**

```lua
Config.creatorData = true
```
egyedi(UNIQUE) és fegyver típusú tárgyakhoz, hozzáadódnak a készítő adatai.
A fenti példát kibővítve az eredmény:

```lua
info = {
    effects = { 'shake', 'blur', 'cold' },
    contain = 'crack',
    creator = {
        citizenid = 'AFG05790',
        charName = 'Roy Tucker',
        name = 'Ekhion'
    }
}
```

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
        object = { -- (opcionális)
            model = 'v_ret_fh_kitchtable',
            placeOnGround = true, -- (opcionális) (PlaceObjectOnGroundProperly(object))
            offset = vector3(0, 0, 0) -- (opcionális) Eltolás X, Y, Z tengelyen
        },
        special = '', -- (opcionális)
        exclusive = { -- (opcionális) a példa 3 módszert mutat be, ezek kombinálhatók:
             mechanic = { 0, 1 }, -- rang lista (opcionális)
             vagos = {}, -- minden rang elfogadva
             'crips', -- minden rang elfogadva
        },
        excluding = { "police", "ambulance" }, -- (opcionális, ha van exkluzív beállítás ez figyelmen kívűl marad)
        actionDistance = 1.5 -- megközelítési távolság a megnyitáshoz (opcionális, alapérték 1.5)
    }
}
```

**Megjegyzés:** 
A kihelyezett objektumot (Pl.: munkaasztal) mindenki látja akkor is, ha  egy munkahely exkluzív, vagy az illető ki van zárva! 
Jelzés(marker) nem lesz látható és interakciót sem tud kezdeményezni.

###Hordozható munkahelyek (2.0 verziótól)
Használatához létre kell hozni új használható tárgyakat, ehhez pár példát találsz a QBCore_addition mappában.
A munkahelyek paraméterezése megegyezik a config fájlban lévőkkel és ugyan úgy is viselkednek.
Ezekre példát találsz a server/usableitem.lua fájlban.

A játékosok az asztalokat, tetszés szerint forgathatják, beállíthatják helyzetüket pontosan a beépített tárgy lehelyező funkciónak köszönhetően.

Az exportok használatáról a export_examples.md fájlban találsz információt.

### Ablak mérete
A grafikus felületet a html/main.css fájl elején található, '--html-font-size' érték átírásával lehet méretezni:

```css
:root {
    /* ABLAK MÉRET */
    --html-font-size: 10px; /* (px)Az itt megadott betűméret az ablak méretére befolyással van! */
}
```

Ha be van kapcsolva az átméretezés funkció (Config.displayComponent -> uiSizeBtn = true), akkor a felhasználó egyénileg is méretezheti a felületet
a bal felső sarokban található '+ -' gombok segítségével.

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


exports['eco_crafting']:addPortableWorkstation(workstationData, usableItemName, ownerId)
exports['eco_crafting']:removePortableWorkstation(workstationId, requesterId)
exports['eco_crafting']:getPortableWorkstations()
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
**TIPP:** Mappolt objektumokhoz a legegyszerűbben az ADMIN menüben található 
'Developer Options' -> 'Entity View Mode' -> 'Freeaim Mode' és a tárgyra célozva leolvasható a koordináta.

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

- Hordozható munkahelyek(asztal, tábortűz, stb...)
- Receptkönyv (recipe_collection)
- Munkapont növelő +1000 pont (labor_enhancer)
- Jártasság növelő +1000 pont (weaponry_enhancer) -- példa(nem ajánlott)

A **server/usableitem.lua** fájlban bevezetésre kerültek mintaként.
