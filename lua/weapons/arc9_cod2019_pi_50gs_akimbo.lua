AddCSLuaFile()
include( "arc9_cod2019_pi_50gs.lua" )

SWEP.PrintName = string.format( ARC9:GetPhrase("mw19_weapon_akimbo"), SWEP.PrintName )

SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun_akimbo") or "Akimbos"

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_50gs.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_pist_50gs.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKNoSprintAnim = true 
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_50gs.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-12.5, 9, -15),
    TPIKAng = Angle(-3, 0, 180),
    Scale = 1
}

-------------------------- MAGAZINE

SWEP.ChamberSize = 2
SWEP.ClipSizeOverride = SWEP.ClipSize * 2

-------------------------- FIREMODES

SWEP.RPM = SWEP.RPM * 1.75

-------------------------- MELEE

SWEP.SecondaryBash = true
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 60

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -1.5, -0.8)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, -1.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(-1, 0, -1)
SWEP.SprintAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 32.5, 4.25)
-- SWEP.CustomizeRotateAnchor = Vector(19, 5, -4.25)
SWEP.CustomizeRotateAnchor = Vector(19, 0, -4.25)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(1, -5, 1)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "duel"
SWEP.HoldTypeHolstered = "duel"
SWEP.HoldTypeSights = "duel"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

--SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
-- SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_RPG
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.AnimDraw = false

SWEP.Akimbo = true

-------------------------- EFFECTS

SWEP.MuzzleEffectQCA = 1
SWEP.MuzzleEffectQCAEvenShot = 2
SWEP.CaseEffectQCA = 4
SWEP.CaseEffectQCAEvenShot = 3
SWEP.AfterShotQCA = 1
SWEP.AfterShotQCAEvenShot = 2

SWEP.CamQCA = 7
SWEP.CamQCA_Mult = 1

SWEP.DropMagazineAmount = 2
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 6

-------------------------- SOUNDS

local path = "weapons/cod2019/50gs/"

SWEP.BulletBones = {
    [1] = "j_bullet",
    [2] = "j_bullet_l",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
    [2] = "j_mag2_l",
}

SWEP.Animations = {
    ["fire_left"] = {
        Source = "fire_left",
    },
    ["fire_right"] = {
        Source = "fire_right",
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.675,
		FireASAP = false,
		MagSwapTime = 3.5,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_fast_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 2/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 19/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 32/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 45/30},
			{s = path .. "wfoly_pi_decho_fast_reload_magin_v2_01.ogg", t = 46/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 50/30},
			{s = path .. "wfoly_pi_decho_fast_reload_magin_v2_02.ogg", t = 51/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 61/30},
			{s = path .. "wfoly_pi_decho_fast_reload_end.ogg", t = 63/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.825,
		FireASAP = false,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_fast_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 1/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 23/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 27/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magin_v2_01.ogg", t = 49/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 50/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magin_v2_02.ogg", t = 52/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 53/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 64/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_end.ogg", t = 72/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_slide_01.ogg", t = 76/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 76/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 76/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.75,
		FireASAP = false,
		MagSwapTime = 3.5,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_fast_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 2/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 19/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 32/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 47/30},
			{s = path .. "wfoly_pi_decho_fast_reload_magin_v2_01.ogg", t = 48/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 52/30},
			{s = path .. "wfoly_pi_decho_fast_reload_magin_v2_02.ogg", t = 53/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 59/30},
			{s = path .. "wfoly_pi_decho_fast_reload_end.ogg", t = 61/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.75,
		FireASAP = false,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_fast_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 1/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 21/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 25/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magin_v2_01.ogg", t = 43/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 44/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magin_v2_02.ogg", t = 46/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 50/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_end.ogg", t = 58/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_slide_01.ogg", t = 62/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 62/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 62/30},
        },
    },
    ["ready"] = {
        Source = "draw_first",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_decho_first_raise_mvmnt.ogg", t = 0/30},
            {s = path .. "wfoly_pi_decho_first_raise_safetyoff.ogg", t = 12/30},
            {s = path .. "wfoly_pi_decho_first_raise_safetyoff.ogg", t = 14/30},
			{s = path .. "wfoly_pi_decho_first_raise_end.ogg", t = 21/30},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_decho_fast_reload_end.ogg", t = 6/30},
            {s = path .. "wfoly_pi_decho_reload_end.ogg", t = 6/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_decho_reload_end.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 1,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 1,
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.1,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_decho_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_inspect_02.ogg", t = 61/30},
			{s = path .. "wfoly_pi_decho_inspect_03.ogg", t = 111/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty

local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")

    if speedload then
        if Translate_Fast[anim] then
            return Translate_Fast[anim]
            end
        end
    end

SWEP.DefaultBodygroups = "000000000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_50gs_slide_ext2"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_slide_ext02_akimbo.mdl"
    },
    ["cod2019_50gs_mag_13"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_xmags2_akimbo.mdl",
	ClipSizeOverride = 13 * 2
    },
    ["cod2019_50gs_grip_custom"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_cust_grip_akimbo.mdl"
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
            {4,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {1,1},
            {5,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,1},
            {6,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {3,1},
            {7,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	local attached = data.elements
    local camo = 0
    if attached["universal_camo"] then
        camo = 1
    end
    model:SetSkin(camo)
end

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("arc9/def_att_icons/barrel.png", "mips smooth"),
        DefaultAttName = "Standard slide",
        Category = "cod2019_50gs_slide",
        Bone = "tag_barrel_attach_l",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(-2, 0, 0.5),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_pistols",
        Bone = "tag_silencer_l",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
        DuplicateModels = {
            {
                Bone = "tag_silencer",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("arc9/def_att_icons/optic.png", "mips smooth"),
        Bone = "tag_reflex_l",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic_pistol"},
        CorrectiveAng = Angle(0, 0, 0),
		Scale = 1.15,
        DuplicateModels = {
            {
                Bone = "tag_reflex",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac_pistols",
        Bone = "tag_laser_attach_l",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
        DuplicateModels = {
            {
                Bone = "tag_laser_attach",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
        DefaultAttName = "Default",
        Category = "cod2019_50gs_grip",
        Bone = "tag_stock_attach_l",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 180),
		Icon_Offset = Vector(-1, 0, -2),
		Scale = 1,
		--InstalledElements = {"rail_grip"},
        DuplicateModels = {
            {
                Bone = "tag_stock_attach",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach_l",
        Category = {"cod2019_ammo"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(-1, 0, 1.25),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("arc9/def_att_icons/mag_ar.png", "mips smooth"),
		Bone = "tag_mag_attach_l",
        Category = {"cod2019_mag","cod2019_50gs_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(-0.75, 0, 2.5),
    },
    {
		PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_50gs",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = "charm",
        Bone = "tag_cosmetic_l",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
        DuplicateModels = {
            {
                Bone = "tag_cosmetic",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = "killcounter",
        Bone = "tag_cosmetic_l",
        Pos = Vector(-1.5, -0.05, -0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
        DuplicateModels = {
            {
                Bone = "tag_cosmetic",
            }
        },
    },
}
