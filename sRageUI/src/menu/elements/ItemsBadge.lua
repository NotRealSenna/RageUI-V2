RageUI.BadgeStyle = {
    -- DEFAULT BADGE
    None = function()
        return {
            BadgeTexture = "",
            BadgeDictionary = "commonmenu"
        }
    end,

    Alert = function()
        return {
            BadgeTexture = "mp_alerttriangle",
        }
    end,

    Ammo = function(Selected)
        return {
            BadgeTexture = Selected and "shop_ammo_icon_b" or "shop_ammo_icon_a",
        }
    end,

    Armour = function(Selected)
        return {
            BadgeTexture = Selected and "shop_armour_icon_b" or "shop_armour_icon_a",
        }
    end,

    Bike = function(Selected)
        return {
            BadgeTexture = Selected and "shop_garage_bike_icon_b" or "shop_garage_bike_icon_a",
        }
    end,

    Car = function(Selected)
        return {
            BadgeTexture = Selected and "shop_garage_icon_b" or "shop_garage_icon_a",
        }
    end,

    Heart = function(Selected)
        return {
            BadgeTexture = Selected and "shop_health_icon_b" or "shop_health_icon_a",
        }
    end,

    Star = function()
        return {
            BadgeTexture = "shop_new_star",
        }
    end,

    Lock = function(Selected)
        return {
            BadgeTexture = "shop_lock",
            BadgeColour = Selected and { R = 0, G = 0, B = 0, A = 255 } or { R = 255, G = 255, B = 255, A = 255 }
        }
    end,
    
    Valid = function(Selected)
        return {
            BadgeTexture = "shop_tick_icon",
            BadgeColour = Selected and { R = 0, G = 0, B = 0, A = 255 } or { R = 255, G = 255, B = 255, A = 255 }
        }
    end,

    Cash = function(Selected)
        return {
            BadgeTexture = "leaderboard_cash_icon",
            BadgeColour = Selected and { R = 255, G = 0, B = 0, A = 255 } or { R = 255, G = 0, B = 0, A = 255 },
            BadgeDictionary = "mpleaderboard"
        }
    end,
}