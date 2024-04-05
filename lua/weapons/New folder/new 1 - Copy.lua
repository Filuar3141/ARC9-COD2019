
SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_cable"),
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
        Category = "cod2019_crossbow_wires",
		Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_arms"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_crossbow_limbs",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(2.5, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Category = {"cod2019_optic"},
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
		InstalledElements = {"sight_folded"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = "cod2019_crossbow_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        -- Category = "cod2019_crossbow_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.2, 0, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"grip_rail"},
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_bolt"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "j_mag1",
        Category = "cod2019_ammo_crossbow",
        Pos = Vector(0, -1.5, -1.5),
		Icon_Offset = Vector(-3, 0, 1.5),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_attachments",
        Pos = Vector(3, 0, 1),
    },
	
	-- Unofficial
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_crossbow_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(4.5, 0, 1),
    },
	
	-- Cosmetics
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_crossbow",
		CosmeticOnly = true,
    },
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(5, 0, 3),
        CosmeticOnly = true,
    },
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_crossbow_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_crossbow_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_crossbow_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_crossbow_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
		Icon_Offset = Vector(-7.5, 0, 3),
		Scale = 1.5,
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(3.7, -0.75, -0.7),
		Icon_Offset = Vector(-3.25, 0, 1.9),
		CosmeticOnly = true,
    },
}
