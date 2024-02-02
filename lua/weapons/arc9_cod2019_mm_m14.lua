AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_mm_m14", "vgui/killicons/cod2019_mm_m14.png", Color(251, 85, 25, 255))
end

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_marksman") or "Marksman Rifles"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_ebr") or "EBR-14"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_marksman") or "Marksman Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_forgetac"),
    [ ARC9:GetPhrase("mw19_caliber") ] = "7.62×51mm NATO",
    [ ARC9:GetPhrase("mw19_weight") ] = "5.1 kg",
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = "175 gr",
    [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "2,800 ft/s",
    [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "4,131 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_ebr_desc") or [[Semi-automatic long range battle rifle balances rate of fire with lethality.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_m14.mdl"
SWEP.WorldModel = "models/weapons/w_snip_g3sg1.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_m14.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-5, 5, -1.5),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 50 -- Damage done at point blank range
SWEP.DamageMin = 23 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 11

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
}


-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2800 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.25

-------------------------- MAGAZINE

SWEP.Ammo = "sniperPenetratedRound" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 15 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 297

SWEP.Firemodes = {
    {
        Mode = 1,
        -- add other attachment modifiers
    }
}

SWEP.BarrelLength = 24

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 4

SWEP.RecoilSeed = 3584

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.85

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilRollSights = 0.5
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.5

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0
SWEP.SpreadMultRecoil = 1.5
SWEP.RecoilModifierCap = 50

SWEP.SpreadAddMove = 0.15
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.03
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.5, -3, 0.7),
    Ang = Angle(0, 0, -3),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(17, 35, 2)
SWEP.CustomizeRotateAnchor = Vector(17, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-0.5, 1.5, -4)
SWEP.PeekAng = Angle(0, 0.4, -45)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_shotgun_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.05
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_338_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_m14_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/m14/"

SWEP.ShootSound = "COD2019.M14.Fire"
SWEP.ShootSoundIndoor = "COD2019.M14.Fire"

SWEP.ShootSoundSilenced = "COD2019.M14.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.M14.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_BR1.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_Sniper.Outside"
SWEP.DistantShootSoundSilenced = "Distant_DMR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_Sniper.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_DMR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sn_mike14_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sn_mike14_ads_down.ogg"

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.02 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.02 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/m14/weap_mike14_first_fire_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/m14/weap_mike14_disconnector_plr_01.ogg"

SWEP.ReloadPoseParameterTables = {
    [1] = {["pistolgrip_pose"] = 1}
}

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["dryfire"] = {
        Source = "dryfire",
		MinProgress = 0.01,
		FireASAP = true,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		DumpClip = true,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_mvmnt.ogg", t = 0.2},
            {s = path .. "wfoly_sn_mike14_reload_magout.ogg", t = 0.2},
			{s = path .. "wfoly_sn_mike14_reload_arm.ogg", t = 0.833},
			{s = path .. "wfoly_sn_mike14_reload_magin_v2_01.ogg", t = 1.1},
			{s = path .. "wfoly_sn_mike14_reload_magin_v2_02.ogg", t = 1.3},
			{s = path .. "wfoly_sn_mike14_reload_end.ogg", t = 1.267},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.8,
		DropMagAt = 0.75,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_empty_mvmnt.ogg", t = 0.067},
            {s = path .. "wfoly_sn_mike14_reload_empty_magout.ogg", t = 0.4},
			{s = path .. "wfoly_sn_mike14_reload_empty_magout_arm.ogg", t = 1.0},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_01.ogg", t = 1.167},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_02.ogg", t = 1.367},
			{s = path .. "wfoly_sn_mike14_reload_empty_rotate.ogg", t = 1.6},
			{ppi = 1, t = 0/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_charge.ogg", t = 2.033},
			{ppi = 0, t = 64/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_end.ogg", t = 2.1},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		DropMagAt = 0.75,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.75,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_quick_mvmnt.ogg", t = 0.033},
            {s = path .. "wfoly_sn_mike14_reload_quick_magout.ogg", t = 0.333},
			{s = path .. "wfoly_plr_sn_mike14_reload_quick_magin_v2_01.ogg", t = 0.58},
			{s = path .. "wfoly_plr_sn_mike14_reload_quick_magin_v2_02.ogg", t = 0.78},
			{s = path .. "wfoly_sn_mike14_reload_quick_end.ogg", t = 1.1},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 0.75,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_empty_quick_mvmnt.ogg", t = 0.033},
            {s = path .. "wfoly_sn_mike14_reload_empty_quick_magout.ogg", t = 0.4},
            {s = path .. "wfoly_plr_sn_mike14_reload_empty_quick_magin_v2_01.ogg", t = 0.8},
			{s = path .. "wfoly_plr_sn_mike14_reload_empty_quick_magin_v2_02.ogg", t = 0.867},
            {s = path .. "wfoly_sn_mike14_reload_empty_quick_charge.ogg", t = 1.133},
			{s = path .. "wfoly_sn_mike14_reload_empty_quick_end.ogg", t = 1.567},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.8,
		FireASAP = true,
		--DropMagAt = 0.75,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_mvmnt.ogg", t = 0/30},
            {s = path .. "wfoly_sn_mike14_reload_magout.ogg", t = 4/30},
			{s = path .. "wfoly_sn_mike14_reload_arm.ogg", t = 25/30},
			{s = path .. "wfoly_sn_mike14_reload_magin_v2_01.ogg", t = 32/30},
			{s = path .. "wfoly_sn_mike14_reload_magin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_sn_mike14_reload_end.ogg", t = 38/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.8,
		DropMagAt = 0.75,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_empty_rotate.ogg", t = 0/30},
            {s = path .. "wfoly_sn_mike14_reload_empty_magout.ogg", t = 16/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magout_arm.ogg", t = 17/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_mvmnt.ogg", t = 21/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_01.ogg", t = 32/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_02.ogg", t = 39/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_rotate.ogg", t = 47/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_charge.ogg", t = 59/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_end.ogg", t = 63/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.6,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_mvmnt.ogg", t = 0/30},
            {s = path .. "wfoly_sn_mike14_reload_magout.ogg", t = 7/30},
			{s = path .. "wfoly_sn_mike14_reload_arm.ogg", t = 15/30},
			{s = path .. "wfoly_sn_mike14_reload_magin_v2_01.ogg", t = 21/30},
			{s = path .. "wfoly_sn_mike14_reload_magin_v2_02.ogg", t = 25/30},
			{s = path .. "wfoly_sn_mike14_reload_end.ogg", t = 38/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 0.75,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_empty_rotate.ogg", t = 0/30},
            {s = path .. "wfoly_sn_mike14_reload_empty_magout.ogg", t = 16/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magout_arm.ogg", t = 17/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_mvmnt.ogg", t = 21/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_01.ogg", t = 32/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_02.ogg", t = 39/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_rotate.ogg", t = 47/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_charge.ogg", t = 59/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_end.ogg", t = 63/30},
        },
    },
    ["reload_xmag2"] = {
        Source = "reload_xmag2",
		MinProgress = 0.8,
		DumpClip = true,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_mvmnt.ogg", t = 0/30},
            {s = path .. "wfoly_sn_mike14_reload_magout.ogg", t = 4/30},
			{s = path .. "wfoly_sn_mike14_reload_arm.ogg", t = 25/30},
			{s = path .. "wfoly_sn_mike14_reload_magin_v2_01.ogg", t = 32/30},
			{s = path .. "wfoly_sn_mike14_reload_magin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_sn_mike14_reload_end.ogg", t = 38/30},
        },
    },
    ["reload_xmag2_empty"] = {
        Source = "reload_xmag2_empty",
		MinProgress = 0.8,
		DropMagAt = 0.75,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_empty_rotate.ogg", t = 0/30},
            {s = path .. "wfoly_sn_mike14_reload_empty_magout.ogg", t = 10/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magout_arm.ogg", t = 11/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_mvmnt.ogg", t = 16/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_01.ogg", t = 34/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_02.ogg", t = 40/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_rotate.ogg", t = 47/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_charge.ogg", t = 59/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_end.ogg", t = 60/30},
        },
    },
    ["reload_xmag2_fast"] = {
        Source = "reload_xmag2_fast",
		MinProgress = 0.8,
		DropMagAt = 0.75,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.75,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_empty_rotate.ogg", t = 0/30},
            {s = path .. "wfoly_sn_mike14_reload_empty_magout.ogg", t = 10/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magout_arm.ogg", t = 11/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_mvmnt.ogg", t = 16/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_01.ogg", t = 22/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_02.ogg", t = 27/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_end.ogg", t = 33/30},
        },
    },
    ["reload_xmag2_fast_empty"] = {
        Source = "reload_xmag2_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 0.75,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.93,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_reload_empty_rotate.ogg", t = 0/30},
            {s = path .. "wfoly_sn_mike14_reload_empty_magout.ogg", t = 10/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magout_arm.ogg", t = 11/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_mvmnt.ogg", t = 16/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_01.ogg", t = 22/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_magin_v2_02.ogg", t = 27/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_charge.ogg", t = 35/30},
			{s = path .. "wfoly_sn_mike14_reload_empty_end.ogg", t = 40/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_raise_first_mvmnt.ogg", t = 0.2},
            {s = path .. "wfoly_sn_mike14_raise_first_charge.ogg", t = 0.467},
            {s = path .. "wfoly_sn_mike14_raise_first_end.ogg", t = 0.633},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_drop.ogg", t = 0/30},
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
		Mult = 1.3,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 1.3,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Mult = 2.3,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 0,
                rhik = 1
            },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Mult = 2.3,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.6,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_mike14_inspect_01.ogg", t = 0.0},
            {s = path .. "wfoly_sn_mike14_inspect_02.ogg", t = 1.367},
            {s = path .. "wfoly_sn_mike14_inspect_03.ogg", t = 2.333},
			{s = path .. "wfoly_sn_mike14_inspect_04.ogg", t = 4.2},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
	    IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["enter_bipod"] = {
        Source = "bipod_in",
    },
    ["exit_bipod"] = {
        Source = "bipod_out",
    },
    ["hybrid_on"] = {
        Source = "hybrid_off",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_on.ogg", t = 5/30},
        },
    },
    ["hybrid_off"] = {
        Source = "hybrid_on",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_off.ogg", t = 5/30},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
	
--------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag2") then
        return "reload_xmag2_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag2") then 
        return "reload_xmag2_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("ammo_extend") then
        return "reload_xmag2_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("ammo_extend") then 
        return "reload_xmag2_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then 
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag") then 
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag") then 
        return "reload_xmag_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag2") then 
        return "reload_xmag2"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag2") then 
        return "reload_xmag2_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("ammo_extend") then 
        return "reload_xmag2"
    elseif anim == "reload_empty" and wep:HasElement("ammo_extend") then 
        return "reload_xmag2_empty"
--------------------------------------------------------------------------
    end
	
    if anim == "idle_sprint" and wep:HasElement("perk_super_sprint") then
        return "super_sprint_idle"
    elseif anim == "enter_sprint" and wep:HasElement("perk_super_sprint") then 
        return "super_sprint_in"
    elseif anim == "exit_sprint" and wep:HasElement("perk_super_sprint") then 
        return "super_sprint_out"
    end
	
    wep.MWHybridSwitching = nil
    if anim == "switchsights" then
        if wep:HasElement("hybrid_scope") then
            wep.MWHybridSwitching = true
            return wep:GetMultiSight() == 1 and "hybrid_on" or "hybrid_off"
        else
            return false
        end
    end
end

-- SWEP.Hook_Think	= function(wep)
--     local vm = wep:GetOwner():GetViewModel()
--     if wep:Clip1() == 0 then
--         vm:SetPoseParameter("empty", 1)
--     else
--         vm:SetPoseParameter("empty", 0)
--     end
	
--     local vm = wep:GetOwner():GetViewModel()
--     local delta = wep:GetSightDelta()
--     local coolilove = math.cos(delta * (math.pi / 2))
--     vm:SetPoseParameter( "aim_blend", Lerp(coolilove, 1, 0) )
-- end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(12, -0.2, 0.75),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(1.7, 0, 0),
    },
    ["go_holdstyle_1"] = {
    ModelOffset = Vector(1, -0.2, 0.4),
	ModelAngleOffset = Angle(0, 0, 170)
    },
}

SWEP.AttachmentElements = {
    ["mag"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_ebr"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,3},
        },
    },
	["grip_angled"] = {
    AttPosMods = { [5] = { Pos = Vector(-2.5, 0, 0), } }
	}
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("scope_svd") then model:SetBodygroup(7,0) end
-- end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_ebr") then 
     model:SetPoseParameter("pistolgrip_pose", 1)
    else
     model:SetPoseParameter("pistolgrip_pose", 0)
    end
	
    if wep:HasElement("stock_adapter") then 
     model:SetPoseParameter("pistolgrip_pose", 1)
    else
     model:SetPoseParameter("pistolgrip_pose", 0)
    end
end

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_m14_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic"},
        CorrectiveAng = Angle(0, 0, 0),
		--InstalledElements = {"sight_rail"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-3, -0.48, 0),
        Ang = Angle(0, 0, -90),
		--InstalledElements = {"laser_rail"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-4.1, 0, 0.05),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {"grip_rail"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_m14_stocks","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_adapter"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
        Bone = "j_mag1",
        Category = {"cod2019_ammo"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		Bone = "j_mag1",
        Category = {"cod2019_mag","cod2019_mag_m14"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_burst_2","cod2019_perks_ss"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_svd",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_m14_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_m14_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_m14_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_m14_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4
SWEP.CodAngledGripPoseParam = 14
SWEP.CodStubbyGripPoseParam = 25
SWEP.CodStubbyTallGripPoseParam = 18
SWEP.GripPoseParam2 = 0.5