AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_pi_m1911", "vgui/killicons/cod2019_pi_m1911.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_pi_m1911_akimbo", "vgui/killicons/cod2019_pi_akimbo_m1911.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_m1911.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun") or "Handguns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_1911") or "1911"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_handgun") or "Handgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_45acp"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 1, 1 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 230),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "830 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "477 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_1911_desc") or [[A well-rounded semi-automatic side arm with a moderate rate of fire. Slightly more range than your average .45 ACP pistol.]]

SWEP.ViewModel = "models/weapons/cod2019/c_pist_m1911.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_pist_m1911.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-10, 1, -5.25),
    Ang = Angle(-5, 0, 190),
    TPIKPos = Vector(-14, 3, -4.5),
    TPIKAng = Angle(0, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 51 -- Damage done at point blank range
SWEP.DamageMin = 22 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 7 / ARC9.HUToM
SWEP.RangeMax = 23 / ARC9.HUToM

SWEP.Penetration = 1 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.25

SWEP.ImpactForce = 8

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.175,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.925,
    [HITGROUP_RIGHTARM] = 0.925,
    [HITGROUP_LEFTLEG] = 0.925,
    [HITGROUP_RIGHTLEG] = 0.925,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 253 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 7 -- Self-explanatory.
SWEP.SupplyLimit = 12 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 450

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

SWEP.RecoilSeed = 123456

SWEP.RecoilPatternDrift = 2

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.05 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1

SWEP.RecoilKick = 1.7

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilMultSights = 0.8

SWEP.RecoilPerShot = 2
SWEP.RecoilMax = 3

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.1
SWEP.VisualRecoilRoll = 55
SWEP.VisualRecoilSide = 0.5

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 30
SWEP.VisualRecoilDampingConstSights = 50

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.03

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.025
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread * 1.2)

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 1
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.15 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.244 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(0.9, 0, 2.875),
    Ang = Angle(0.1, 0.15, 20),
    Magnification = 1.15,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

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

SWEP.MovingPos = Vector(0, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(2, 0, -2)
SWEP.SprintAng = Angle(-1, 5, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 27.5, 5)
SWEP.CustomizeRotateAnchor = Vector(15, -1, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0.5, -5, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-2.5, 0, -3)
SWEP.PeekAng = Angle(0, 0, -45)

SWEP.PeekPosReloading = Vector(-1, -1, -2)
SWEP.PeekAngReloading = Angle(0, 0, -20)

SWEP.PeekMaxFOV = 54

-------------------------- HoldTypes

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_pistol_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_small"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.COD2019_9mm_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.05
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_m1911_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/m1911/"

SWEP.ShootSound = "COD2019.M1911.Fire"
SWEP.ShootSoundIndoor = "COD2019.M1911.Fire"

SWEP.ShootSoundSilenced = "COD2019.M1911.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.M1911.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Pistol.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Pistol_Mag_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_pi_mike1911_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_pi_mike1911_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet",
    [2] = "j_bullet2",
	[3] = "j_bullet_grp2",
	[4] = "j_bullet_grp3",
	[5] = "j_bullet_grp4",
	[6] = "j_bullet_grp5",
	[7] = "j_bullet_grp6",
	[8] = "j_bullet_grp7",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
    [2] = "j_bullet2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/m1911/weap_mike1911_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/m1911/weap_mike1911_disconnector_plr_01.ogg"

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.85,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_lift.ogg", t = 2/30},
			{s = path .. "wfoly_pi_mike1911_reload_magout_01.ogg", t = 15/30},
			{s = path .. "wfoly_pi_mike1911_reload_magin_v2_01.ogg", t = 24/30},
            {s = path .. "wfoly_pi_mike1911_reload_magin_v2_02.ogg", t = 31/30},
			{s = path .. "wfoly_pi_mike1911_reload_end.ogg", t = 34/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		PeekProgress = 0.75,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_empty_lift.ogg", t = 2/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magout_01.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 21/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_02.ogg", t = 27/30},
            {s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 33/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_chamber_01.ogg", t = 36/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_fast_reload_lift.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_magout_01.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_magin_01.ogg", t = 14/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_end.ogg", t = 20/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_lift.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_magin_01.ogg", t = 14/30},
            {s = path .. "wfoly_pi_mike1911_fast_reload_empty_end.ogg", t = 16/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_chamber_01.ogg", t = 25/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.85,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike1911_reload_magout_01.ogg", t = 14/30},
			{s = path .. "wfoly_pi_mike1911_reload_magin_v2_01.ogg", t = 24/30},
            {s = path .. "wfoly_pi_mike1911_reload_magin_v2_02.ogg", t = 31/30},
			{s = path .. "wfoly_pi_mike1911_reload_end.ogg", t = 32/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
		PeekProgress = 0.75,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 21/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_02.ogg", t = 25/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_chamber_01.ogg", t = 36/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 39/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_empty_lift.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magout_01.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 13/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_02.ogg", t = 15/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 20/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_empty_lift.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_02.ogg", t = 15/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_chamber_01.ogg", t = 18/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 17/30},
        },
    },
    ["reload_mmag"] = {
        Source = "reload_mmag",
		MinProgress = 0.85,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike1911_reload_magout_01.ogg", t = 12/30},
			{s = path .. "wfoly_pi_mike1911_reload_magin_01.ogg", t = 23/30},
			{s = path .. "wfoly_pi_mike1911_reload_end.ogg", t = 32/30},
        },
    },
    ["reload_mmag_empty"] = {
        Source = "reload_mmag_empty",
		MinProgress = 0.9,
		PeekProgress = 0.75,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 21/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_02.ogg", t = 25/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_chamber_01.ogg", t = 36/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 39/30},
        },
    },
    ["reload_mmag_fast"] = {
        Source = "reload_mmag_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magout_01.ogg", t = 20/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 17/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_02.ogg", t = 20/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 15/30},
        },
    },
    ["reload_mmag_fast_empty"] = {
        Source = "reload_mmag_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magout_01.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 17/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_02.ogg", t = 20/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_chamber_01.ogg", t = 25/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 25/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike1911_first_raise_lift.ogg", t = 1/30},
            {s = path .. "wfoly_pi_mike1911_first_raise_slide_pull.ogg", t = 10/30},
			{s = path .. "wfoly_pi_mike1911_first_raise_slide_release.ogg", t = 20/30},
			{s = path .. "wfoly_pi_mike1911_first_raise_chamber_end.ogg", t = 21/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_mike1911_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_mike1911_drop.ogg", t = 0/30},
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
		NoStatAffectors = true
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		NoStatAffectors = true
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Mult = 10,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Mult = 2.5,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike1911_inspect_01.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike1911_inspect_02.ogg", t = 37/30},
			{s = path .. "wfoly_pi_mike1911_inspect_03.ogg", t = 62/30},
			{s = path .. "wfoly_pi_mike1911_inspect_04.ogg", t = 113/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2"},
    },
}

-------------------------- ATTACHMENTS

--- 15 Round Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
}
local Translate_MMag = {
    ["reload"] = "reload_mmag",
    ["reload_empty"] = "reload_mmag_empty",
}
local Translate_MMag_Fast = {
    ["reload"] = "reload_mmag_fast",
    ["reload_empty"] = "reload_mmag_fast_empty",
}

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
}
local Translate_TacSprint = {
    ["idle_sprint"] = "super_sprint_idle",
    ["enter_sprint"] = "super_sprint_in",
    ["exit_sprint"] = "super_sprint_out",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
    local super_sprint = wep:HasElement("perk_super_sprint")
    local xmag = wep:HasElement("mag_xmag")
    local mmag = wep:HasElement("mag_mmag")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if xmag then
            if Translate_XMag_Fast[anim] then
                return Translate_XMag_Fast[anim]
            end
        elseif mmag then
            if Translate_Translate_MMag_Fast[anim] then
                return Translate_Translate_MMag_Fast[anim]
            end 
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else 
        if xmag then
            if Translate_XMag[anim] then
                return Translate_XMag[anim]
            end
        elseif mmag then
            if Translate_MMag[anim] then
                return Translate_MMag[anim]
            end
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
    ["cod2019_view_alt_pistol"] = {
    ActivePos = Vector(3, 0, 2),
    ActiveAng = Angle(0, 0, 20),

    MovingPos = Vector(-1, -1, -1),
    MovingAng = Angle(0, 0, -5),

    CrouchPos = Vector(-1, 0, -1),
    CrouchAng = Angle(0, 0, -5),

    ReloadPos = Vector(0,0,0),
    ReloadAng = Angle(0,0,0),
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_pistolgrip_tape.mdl",
    },
}

SWEP.AttachmentElements = {
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sight_mount"] = {
        Bodygroups = {
            {5,1},
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("arc9/def_att_icons/barrel.png", "mips smooth"),
        DefaultAttName = "Standard slide",
        Category = "cod2019_m1911_slide",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_pistols",
        Bone = "tag_silencer",
        Pos = Vector(-0.105, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("arc9/def_att_icons/optic.png", "mips smooth"),
        Bone = "tag_reflex",
        Pos = Vector(1.08, 0, 0.02),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optics_pistols_alt","eft_optic_small"},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight_none","sight_mount"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac_pistols",
        Bone = "tag_laser_attach",
        Pos = Vector(-1, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
        DefaultAttName = "Default",
        Category = {"cod2019_m1911_grip","cod2019_pistolgrip"},
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_grip"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
        Category = {"cod2019_ammo"},
        Pos = Vector(-0.5, 0, -3),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("arc9/def_att_icons/mag_ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_m1911_mag"},
        Pos = Vector(-1.5, 0, -3),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_view"),
        Category = "cod2019_pistols_view"
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_m1911",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_m1911_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_m1911_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_m1911_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_m1911_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = {"charm", "killcounter"},
		RejectAttachments = { ["arc9_stat_proscreen"] = true },
		CosmeticOnly = true,
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.6

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then
-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 36 -- Damage done at point blank range
SWEP.DamageMin = 30 -- Damage done at maximum range

SWEP.RangeMin = 13 / ARC9.HUToM
SWEP.RangeMax = 24 / ARC9.HUToM
-------------------------- FIREMODES
SWEP.RPM = 286

SWEP.RecoilModifierCap = 3
end
