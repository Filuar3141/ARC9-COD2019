SWEP.CustomSelectIcon = Material("vgui/hud/arc9_cod2019_nade_knife")

SWEP.Base = "arc9_base_nade"

SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Specials"

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = true
SWEP.NotForNPCs = true

SWEP.PrintName = "Throwing Knife"
SWEP.Class = "Throwable"
SWEP.Description = [[Retrievable knife that is lethal on impact.]]

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward"
}

SWEP.Slot = 4

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Throwable"
        -- add other attachment modifiers
    },
}

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/cod2019/c_eq_knife.mdl"
SWEP.WorldModel = "models/weapons/cod2019/c_eq_knife.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModelOffset = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(-10, 0, 180),
    TPIKPos = Vector(-10, 10, -10),
    TPIKAng = Angle(0, 0, 180),
    Scale = 1,
}

SWEP.BottomlessClip = true
SWEP.ClipSize = 3
SWEP.ChamberSize = 0
SWEP.SupplyLimit = 1
SWEP.Crosshair = true

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.ShootEnt = "arc9_cod2019_thrownknife"
SWEP.Ammo = "arc9_cod2019_knife"

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = false -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = 3 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 1300 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 1300 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 1300 -- Force that the grenade will be thrown with when right clicked.

SWEP.ThrowChargeTime = 1 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.ThrowTumble = false -- Grenade tumbles when thrown.
SWEP.Disposable = true 

-------------------------- HANDLING
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.
-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(1, -1, -2)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1.5, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(0, -1, -1)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 20, 3)

SWEP.CustomizeSnapshotPos = Vector(0, 20, 0)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false

SWEP.ShootPosOffset = Vector(0, 15, -5)

-------------------------- HoldTypes

SWEP.HoldType = "slam"
SWEP.HoldTypeSprint = "slam"
SWEP.HoldTypeHolstered = "slam"
SWEP.HoldTypeSights = "slam"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1

local path = "weapons/cod2019/throwables/flashbang/"

SWEP.BashDamage = 35
SWEP.BashLungeRange = 0
SWEP.BashRange = 64
SWEP.PreBashTime = 0.18
SWEP.PostBashTime = 0.2

SWEP.ImpactForce = 15

SWEP.MeleeHitSound = "CSGO.Melee.HitBody"
SWEP.MeleeHitWallSound = "CSGO.Melee.HitWall"
SWEP.MeleeSwingSound = "CSGO.Shield.Swing"

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = "COD2019.Knife.Prepare", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 0.6,
        EventTable = {
            {s = "COD2019.Knife.Prepare", t = 0/30},
        },
    },
    ["throw"] = {
        Source = "toss",
        EventTable = {
            {s = "COD2019.Knife.Throw", t = 0/30},
        },
        MinProgress = 0.3
    },
    -- ["bash"] = {
        -- Source = "melee",
    -- },
}

-------------------------- ATTACHMENTS

SWEP.Attachments = {
    -- {
        -- PrintName = "Functions",
        -- Category = {"go_nade_type"},
    -- },
}