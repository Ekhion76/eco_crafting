# ECO CRAFTING
## FiveM ESX / QBCore / CustomCore Crafting script (önálló az ingyenes és nyílt forráskódú e_core segítségével)

![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/eco_crafting_3.0_1.jpg)

[![promo_video](https://img.youtube.com/vi/S94VstZLWlQ/0.jpg)](https://www.youtube.com/watch?v=S94VstZLWlQ)

[TEBEX](https://eco-store.tebex.io/package/5177809)

[DISCORD](https://discord.gg/4arG5sEpqw)

[CFX FORUM](https://forum.cfx.re/t/paid-qbcore-eco-crafting/4878303)


![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/portable_workstation.jpg)
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/eco_crafting1.jpg)
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/eco_crafting2.jpg)
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/statistics.jpg)


### ECO CRAFTING 3.0
- Escrow FiveM asset ([Tebex](https://eco-store.tebex.io/package/5177809))
- Dependency: e_core ([Github](https://github.com/Ekhion76/e_core))

## Újdonságok / változások
- FIGYELEM! Szükséges az e_core-t telepítené indítani a crafting előtt!
- A Tebexes letöltésben megtalálható az előző 2.4-es verzió (csak QBCore) és az új 3.0-ás is (3.0 standalone + e_core) egyelőre!
- FIGYELEM! Az új (3.0)verzió nem kompatibilis a régivel! (A függetlenség érdekében struktúrális módosítások kellettek)
- e_core függőség bevezetése a keretrendszer/inventory függetlenség miatt ESX/QBCore (ez egy külön szkript: https://github.com/Ekhion76/e_core)
- Új design
- Blueprint (tanulható tervrajzok)
- Egy tárgyhoz több recept is felvehető
- Egy munkahelyhez több szakma és specialitás is köthető
- A tárgy készítés közben mellék termék jöhet létre (side product)

### Jellemzők
- Hordozható munkahelyek
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
    - A hordozható munkahelyek tárolhatók így szkript vagy szerver újraindítás esetén is megmaradnak
    
- Receptek
    - Keresés a receptek között
    - Könnyen átlátható, egymásra épülő, több lépcsős receptek 
    - Testreszabhatóság, foglalkozás(ok)tól függő használhatóság vagy tiltás, speciális munkahelyhez kötés
    - Beárazható, a termékek gyártása pénzbe is kerülhet.
    - Receptkönyv

- Munkapont rendszer (kapcsolható) (e_core)
    - A termékek gyártása munkapontba kerül
    - Az elhasznált munkapont az adott szakmában növeli a jártasságot
    - Munkapont növelő tárgy (adható akár esemény jutalomként vagy vásárolhatóvá tehető)

- Jártasság rendszer (kapcsolható) (e_core)
    - Jártasság statisztika oldal
    - Jártasság növelő tárgy (adható akár eseményeken jutalomként, vagy felkutatható eldugott helyeken)

- Esély rendszer
    - A recept beállításban megadható százalékban, hogy a tárgy elkészítése mekkora eséllyel lesz sikeres.
    
- Méretezhető grafikus felület
    - A felület a játék ablakának méretéhez igazodik, de lehetőség van ezen felül is '+ -' gombokkal állítani a méretet
    
- Megmaradó hozzávalók
    - A receptek (- jellel) megjelölt hozzávalóit nem veszi el a rendszer
    
- Szakma ikonok a statisztika oldalon
    
- Szint rendszer (e_core)
    - Szintenként meghatározható a kedvezmények mértéke százalékban
    - Kedvezmények az alábbi 4 tételre alkalmazhatók: chance, price, time, labor
    
- 'Info / meta' adatok hozzáadása az elkészített termékhez. (Hasonlóan, mint például a fegyverek sorozatszáma)

- Mozgatható grafikus felület
- A munkahelyek specializálhatók, foglalkozáshoz, csoportokhoz egyszóval tulajdonoshoz köthetők
- Effekt markerek(cp), animációk, asztalok(objektumok), minden munkahelyhez egyedileg állíthatók

- Többféle üzenőrendszer használható
- Target rendszer / hagyományos közelség érzékelés választható
- Többnyelvűség támogatás
- Discordon vezetett eseménynapló

## Működés:
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/interactions.jpg)
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/functionality.jpg)
Alap működés beállítások:

Lehetőség van a recept árak, jártasság, munkapont rendszert kikapcsolni egyenként, ha ezekere nincs szükség.
Ha a munkapont rendszer ki van kapcsolva, akkor automatikusan kikapcsolódik a jártasság rendszer is!

Ezek a beállítások központilag kapcsolhatók az e_core ban!

```lua
Config.systemMode = {
    profession = true, -- jártasság rendszer
    labor = true, -- Ha ezt kikapcsolod automatikusan kikapcsolódik a jártasság rendszer is!
    money = true, -- Recept árainak figyelembevétele
    chance = true -- Siker esélyek figyelembevétele
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

Ha nem kellenek a rangok, akkor a config/ranks.lua -ban állíts be üres táblát:

```lua
    Config.ranks = {}
```

Ebben az esetben a szakmai jártasság felső határát a config/main.lua állítja be.

```lua
    Config.proficiencyCap = 120000
```

Ha egyáltalán nem szeretnél jártasságrendszert, akkor a a config/main.lua - ban kikapcsolható:

```lua
    Config.systemMode = {
        profession = false, -- jártasság rendszer
        ....,    
    } 
```


### Jártasság

Egy tárgy elkészítése munkapontba(labor) kerül. Az elköltött munkapont növeli a szakmai jártasságot.

Nem érdemes például étterem1 és étterem2 alá sorolni a recepteket, mert az két külön szakmát jelentene, 
holott a szakács jártasságot kellene növelniük a befektetett munkapontoknak egységesen.

Íme egy példa, hogy a szakács szakmán belül, hogyan köthetünk recepteket külön éttermekhez és foglalkozásokhoz:

```lua
Config.recipes = {
    {
        name = 'tosti', -- gyárthatja bárki, bármely 'cooking' munkahelynél
        labor = 10,
        ingredients = {
                         { name = 'item1', amount = 1, remove = true },
                         { name = 'item2', amount = 1, remove = true },
                     },
        time = 5,
        amount = 1,
        proficiency = 0,
        price = 0
    },
    {
        name = 'twerks_candy', -- gyárthatja bárki, de csak speciális 'tacoBomb' munkahelynél
        labor = 10,
        ingredients = {
                       { name = 'item1', amount = 1, remove = true },
                       { name = 'item2', amount = 1, remove = true },
                   },
        time = 5,
        amount = 1,
        proficiency = 0,
        price = 0,
        special = { 'tacoBomb' }
    },
    {
        name = 'snikkel_candy', -- csak az engedélyezett tagok és csak speciális 'hookies' munkahelynél
        labor = 10,
        ingredients = {
                       { name = 'item1', amount = 1, remove = true },
                       { name = 'item2', amount = 1, remove = true },
                   },
        time = 5,
        amount = 1,
        proficiency = 0,
        price = 0,
        whitelist = {
            mechanic = { 0, 1 }, -- rang lista (opcionális)
            vagos = {}, -- minden rang elfogadva
            'crips', -- minden rang elfogadva
        },
        special = { 'hookies' }
    },
    {
        name = 'sandwich', -- a police és ambulance foglalkozáson-on kívüliek gyárthatják
        labor = 10,
        ingredients = {
                       { name = 'item1', amount = 1, remove = true },
                       { name = 'item2', amount = 1, remove = true },
                   },
        time = 5,
        amount = 1,
        proficiency = 0,
        price = 0,
        blacklist = {
            "police",
            "ambulance"
        }
    }
}
```

### Recept felépítése
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/recipes_specialize.jpg)
```lua
Config.recipes = {
    { 
    
        -- Alap recept. Igen, ennyi az egész. A többi alap értéket kap! 
        
        name = 'aluminum', -- elkészítendő tárgy
        ingredients = {
                         { name = 'aluminumoxide', amount = 3, remove = true }, -- Csak ez szükséges
                     },
    },
    
    { -- Teljesen opcionalizált recept
        name = 'pistol',
        labor = 5, -- munkapont (opcionális)
        ingredients = {
                         { name = 'steel', amount = 1, remove = true }, -- Csak ez szükséges
                         { name = 'hammer', amount = 1, remove = false }, -- remove = false azt jelzi, hogy ez a hozzávaló nem lesz elvéve
                     },
         blueprints = {
                     { name = 'blueprint_pistol', knowledge = 'pistol' },
                 },
         sideProducts = { -- besides the main product, these items are also created with a given chance
                     { name = 'random_item', amount = 1, chance = 40, metadata = {} },
                 },
        time = 3,   -- elkészítési idő másodpercben (opcionális)
        amount = 1, -- kapott késztermék mennyisége (opcionális)
        proficiency = 3000, -- minimum szakmai jártasság (opcionális)
        price = 0, -- bekerülési összeg (opcionális)
        chance = 75, -- Gyártási siker esélye százalékban (opcionális)
        whitelist = {}, -- kizárólagos job-ok, gang-ek listája, akik láthatják / készíthetik a terméket (opcionális)
        blacklist = {}, -- kizárt job-ok, gang-ek listája. Ha van engedélyezett lista ez figyelmen kívül marad. (opcionális)
        special = { 'only_steel' }, -- specializált munkahelyen gyártható (opcionális)
        metadata = { -- hozzáadja adatait az elkészített termékhez (opcionális) for ox_inventory
            components = { -- ox_inventory/data/weapons.lua
                'at_flashlight',
                'at_suppressor_light',
                'at_skin_luxe',
                'at_clip_extended_pistol',
            },
            ammo = 15,
            durability = 50,
        },
        
    }
}
```

### meta adatok beállítása
FONTOS: Ha a tárgy meta adatokat kap, nem szabad halmozni(stack), 
ezért ajánlott az item listádban pl.: /qb-core/shared/items.lua fájlban egyedivé(**UNIQUE**) tenni!
Ha egy slot-ban több info-t tatalmazó tárgy van, akkor az első infóját átveszi mind!

#### metaadatok hozzáadása
A receptben meghatározható az metadata paraméter. Táblát szükséges megadni.

```lua
Config.recipes = {
    { 
         name = 'lemonade',
         -- ...
         metadata = {
             effects = 'cold'
         }
     },
     {
        name = 'weapon_pistol',
      
        metadata = {  --for ox_inventory
            components = {  --ox_inventory/data/weapons.lua
                'at_flashlight',
                'at_suppressor_light',
                'at_skin_luxe',
                'at_clip_extended_pistol',
            },
            ammo = 15,
            durability = 50,
        },
     }
 }
```

A limonádé minden esetben megkapja 'cold' effekt paramétert.

egyedi(UNIQUE) és fegyver típusú tárgyakhoz, hozzáadódnak a készítő adatai.
A fenti példát kibővítve az eredmény:

```lua
metadata = {
    creator = {
        identifier = 'AFG05790', -- citizenid vagy char:identifier
        registered = 'Roy Tucker',
        name = 'Ekhion'
    }
}
```

### engedélyezett beállítás
- foglalkozás(job) és csoport(gang) ömlesztve megadható
- ha táblaként van megadva, akkor csak a felsorolt rang engedélyezett Pl.: mechanic = { 0, 1 }
- üres tábla esetén az összes rang engedélyezett. Pl.: mechanic = {}
- karakterlánc esetén szintén az összes rang engedélyezett Pl.: 'mechanic'
- a felsoroltokon kívül eső szakmák és csoportok, nem látják a receptet a receptkönyvben sem

```lua
Config.recipes = {
    { 
         name = 'steel',
         -- ...
         -- ...
         -- ...
         -- ...
         whitelist = {
             mechanic = { 0, 1 }, -- rang lista (opcionális)
             vagos = {}, -- minden rang elfogadva
             'crips', -- minden rang elfogadva
         }
     }
 }
```

### Excluding, kizárás beállítás
- karakterlánc felsorolást fogad el vegyesen szakmák(job) és csoportok(gang), nincsenek a rangok figyelembe véve.
- a felsorolt szakmák és csoportok, nem látják a receptet a receptkönyvben sem
```lua
Config.recipes = {
    { 
         name = 'steel',
         -- ...
         blacklist = {
             'mechanic', 'vagos', 'crips',
         } 
     }
 }
```

### ACE permissions
FiveM ACE permissions beállítható a receptek, munkahelyek és a hordozható munkahelyek használhatóságának szabályzásához. Például:

```lua
Config.recipes = {
    { 
         name = 'steel',
         -- ...
         requiredAcePermission = 'vip_gold' 
     }
 }
```

A requiredAcePermission teljesülése önmagában még nem garantálja a hozzáférést a munkahelyhez vagy recepthez. 
Ha be van állítva whitelist vagy blacklist feltétel, annak is meg kell feleni.

Egy recepthez vagy munkahelyhez csak egy requiredAcePermission állítható be.

Az eco crafting, közvetlenül nem kommunikál a Discorddal.
A Discord API-k képesek kezelni a FiveM ACE permissionokat.


Ha egy játékos ACE permission-ja módosul, például a Discord API ad vagy elvesz tőle jogokat,
akkor a szerver oldalon meg kell hívni az 'eco_crafting:acePermissionUpdate' eseménykezelőt, 
hogy az eco_crafting az új jogokat vegye figyelembe.

```lua

    TriggerEvent('eco_crafting:acePermissionUpdate', 'targetPlayerServerId') -- only serverSide
```

Az ACE permission örökölhetnek egymástól, ezért a 'gold' jog magában tartlmazza az ezüs és bronz jogait is! Példa:

```
-- Jogok bevezetése
add_ace group.bronzevip vip_bronze allow
add_ace group.silvervip vip_silver allow
add_ace group.goldvip vip_gold allow


-- Öröklések beállítása
add_principal group.silvervip group.bronzevip
add_principal group.goldvip group.silvervip
```

```lua
    requiredAcePermission = 'vip_bronze' -- Használhatja a bronz, silver és a gold jogosultságú játékos
    requiredAcePermission = 'vip_silver' -- Használhatja a silver és a gold jogosultságú játékos
    requiredAcePermission = 'vip_gold'   -- csak a gold jogosultságú játékos használhatja
```



### Munkahelyek
![eco_crafting gallery](https://github.com/Ekhion76/eco_crafting/blob/main/previews/workplace_details.jpg)
A receptekhez hasonlóan a munkahelyeket is lehet engedélyezetté vagy csoportok számára kizárttá tenni.
A munkahelyek tetszőleges számban létrehozhatók. Minden szakmának saját munkahelye / munkahelyei vannak.
Mindegyikhez saját markert, animációt, objektumot, specializációt és tulajdonost lehet meghatározni.
A specializált munkahelyeken minden olyan terméket is le lehet gyártani, ami nincs specializálva.

####Mit jelent a specializáció?
A specializáció gyakorlatilag egy cimkézés, mellyel össze lehet kötni a receptet a munkahellyel.

Például, vegyük alapul a vegyész szakmát. Receptjei közt megtalálhatók a legális és illegális szerek is.
Gyógyszerek, festékek(spray), vegyszerek és a drogok is.

Bárki főzhet drogot, kivéve a rendfenntartók, mentősök, tűzoltók (blacklist), de az, hogy hol, nem mindegy.
A droglabor asztalát és a recepteket fel kell cimkézni, így párosíthatók.

```lua
Config.workstations = { -- MUNKAHELYEK
    {
        workstation = { 'chemist' },
        ...,
        special = { 'drug' }, -- ez lehet bármilyen cimke, akár több is
    }   
}

Config.recipes = { -- RECEPTEK
    {
        name = 'lsd',
        ...,
        special = { 'drug' }
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
        workstation = { 'cooking' }, -- szakma (ez van meghatározva a recepteknél)
        pos = vector4(226.98, -889.95, 29.7, 70.16),
    },
    
    -- Teljesen opcionalizált munkahely
    {
        workstation = { 'cooking' }, -- szakma, akár több is (ez van meghatározva a recepteknél)
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
        special = { '' }, -- (opcionális)
        whitelist = { -- (opcionális) a példa 3 módszert mutat be, ezek kombinálhatók:
             mechanic = { 0, 1 }, -- rang lista (opcionális)
             vagos = {}, -- minden rang elfogadva
             'crips', -- minden rang elfogadva
        },
        blacklist = { "police", "ambulance" }, -- (opcionális, ha van engedélyezett beállítás ez figyelmen kívűl marad)
        actionDistance = 1.5 -- megközelítési távolság a megnyitáshoz (opcionális, alapérték 1.5)
    }
}
```

**Megjegyzés:** 
A kihelyezett objektumot (Pl.: munkaasztal) mindenki látja akkor is, ha  egy munkahely engedélyezett, vagy az illető ki van zárva! 
Jelzés(marker) nem lesz látható és interakciót sem tud kezdeményezni.

### Hordozható munkahelyek
Használatához létre kell hozni új használható tárgyakat, ehhez pár példát találsz a QBCore_addition mappában.
A munkahelyek paraméterezése megegyezik a config fájlban lévőkkel és ugyan úgy is viselkednek.
Ezekre példát találsz a server/usableitem.lua fájlban.

A játékosok az asztalokat, tetszés szerint forgathatják, beállíthatják helyzetüket pontosan a beépített tárgy lehelyező funkciónak köszönhetően.

**Fontos:**  A 2.4 es verziótól ki lett kapcsolva az automatikus földre illesztés és be lett építve a kézi magasságállítás. 
Erre a házilag készített ingatlanok, tereptárgyak miatt volt szükség, mert ott a gyári földreillesztés hibásan működik.

Sajnos bizonyos tárgyaknál a magasság, letételnel elcsúszik a Z tengelyen. Ez az offset tulajdonsággal korrigálható.
Ez a server/usableitem.lua - ban található.

```lua
    workstationAddRequest(source, item.name,
        {
            workstation = { 'chemist' },
            ...,
            object = {
                    model = 'bkr_prop_coke_table01a',
                    placeOnGround = false, -- !important
                    offset = vector3(0, 0, -0.5) -- z Correction -0.5
                },
            ...
        }
    )  
```


Az exportok használatáról a export_examples.md fájlban találsz információt.

A hordozható munkahelyeket a szkript fájlba menti. 
A mentést a config fájlban ki lehet kapcsolni.
A save.lua nincs titkosítva, ezért lehetőség van saját mentési módszer kialakítására.


### Mit adhatok VIP ügyfeleknek?

- Jártaságnövelő tárgyat( elhasználása növeli pl.: a weaponry jártasságot)
- Labornövelő tárgyat( elhasználása növeli az elhasználható munkapontokat)
- Az ACE permission kezelésnek köszönhetően saját munkáhelyet (hordozhatót is beleértve)
- Csak általuk elérhető recepteket (pl.: Sniper, loot/lucky box, riasztó hatástalanító)

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


### Üzenőrendszer / inventory stb.
Állítsd be üzenőrendszered, inventory-d exportjait, ha szükséges az e_core-ban!

e_core: ([Github](https://github.com/Ekhion76/e_core))

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
-- See qb-core\shared\items.lua --> ['image'] = 'example.png' or ['image'] = 'images/example.png', 
Config.imagePath = "https://cfx-nui-qb-inventory/html/images/" 
-- Config.imagePath = "https://cfx-nui-qb-inventory/html/" 
-- Config.imagePath = "https://cfx-nui-qs-inventory/html/images/"
-- Config.imagePath = "https://cfx-nui-lj-inventory/html/images/"
-- Config.imagePath = "https://cfx-nui-lj-inventory/html/" 
```

### Client exports
Megnyitja a craft ablakot. Csak a munkaállomás típusát szükséges megadni.
```lua
exports['eco_crafting']:open({
        workstation = { 'weaponry' },   -- required
        special = { 'w_extend' },       -- optional
        animation = {               -- optional
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flag = 16
        },
    })
```
### Server exports
Külső szkriptekből lekérdezhetők, befolyásolhatók a munkapont és jártasság értékek
```lua
exports['eco_crafting']:addPortableWorkstation(workstationData, usableItemName, ownerId)
exports['eco_crafting']:removePortableWorkstation(workstationId, requesterId)
exports['eco_crafting']:getPortableWorkstations()
```

### Telepítés
- telepítsd az e_core-t! ([Github](https://github.com/Ekhion76/e_core))
- az e_core-t az eco_crafting előtt indítsd a szerver.cfg-ben
- másold be a resource mappába
- add ki a refresh parancsot
- start e_core
- start eco_crafting

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
