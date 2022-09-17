-- Attention! With the rise in levels, add the same or ascending values compared to the previous one!
-- Take care of the sequence

Config.ranks = {

    { -- 0. Base
        limit = 5000, -- proficiency upper limit
        labor = 0, -- labor cost reduction as a percentage
        time = 0, -- crafting time reduction as a percentage
        price = 0, -- money cost reduction as a percentage
        chance = 0, -- increase chance as a percentage
    },
    { -- 1. Novice
        limit = 10000,
        labor = 0,
        time = 3,
        price = 0,
        chance = 0,
    },
    { -- 2. Veteran
        limit = 20000,
        labor = 5,
        time = 6,
        price = 3,
        chance = 3,
    },
    { -- 3. Expert
        limit = 30000,
        labor = 10,
        time = 6,
        price = 5,
        chance = 5,
    },
    { -- 4. Master
        limit = 40000,
        labor = 15,
        time = 6,
        price = 8,
        chance = 8,
    },
    { -- 5. Authority
        limit = 50000,
        labor = 20,
        time = 12,
        price = 10,
        chance = 10,
    },
    { -- 6. Champion
        limit = 60000,
        labor = 20,
        time = 12,
        price = 12,
        chance = 12,
    },
    { -- 7.Adept
        limit = 70000,
        labor = 20,
        time = 12,
        price = 15,
        chance = 15,
    },
    { -- 8. Herald
        limit = 85000,
        labor = 20,
        time = 16,
        price = 15,
        chance = 15,
    },
    { -- 9. Virtuoso
        limit = 100000,
        labor = 25,
        time = 16,
        price = 20,
        chance = 20,
    },
    { -- 10. Celebrity
        limit = 120000,
        labor = 30,
        time = 20,
        price = 25,
        chance = 25,
    },
    { -- 11. Famed
        labor = 40,
        time = 26,
        price = 30,
        chance = 30,
    }
}