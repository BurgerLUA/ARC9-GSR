AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC-9 - CS:GO"

SWEP.PrintName = "USP-S"
SWEP.TrueName = "USP-S"

SWEP.Class = "Pistol"
SWEP.Trivia = {
    ["Country of Origin"] = "Germany",
    ["Caliber"] = ".45 ACP",
    ["Weight (Loaded)"] = "1kg",
    ["Projectile Weight"] = "15.2 Grams",
    ["Muzzle Velocity"] = "886 Feet/Second",
    ["Muzzle Energy"] = "553 Joules"
}

SWEP.Credits = {
    Author = "Arctic/Twilight",
    Assets = "Counter-Strike Global Offensive"
}

SWEP.Description = [[A fan favorite from Counter-Strike: Source, the Silenced USP Pistol has a detachable silencer that gives shots less recoil while suppressing attention-getting noise.]]

SWEP.ViewModel = "models/weapons/csgo/c_pist_usp.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/csgo/c_pist_usp.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-15, 9, -7),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 35 -- Damage done at point blank range
SWEP.DamageMin = 15 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8192 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2900 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 12 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 352

SWEP.Firemodes = {
    {
        Mode = 1,
		PrintName = "Sil",
		Silencer = true,
        -- add other attachment modifiers
    },
    {
        Mode = 1,
        PrintName = "Unsil",
        Silencer = false,
        --ActivateElements = {"unsil"},
        Hook_TranslateAnimation = function(swep, anim)
            return anim .. "_silenced"
        end,
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 0.9

SWEP.RecoilSeed = 5426 -- CSGO Seed Input Test

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.5 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.6 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1

SWEP.RecoilMultCrouch = 0.6
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- SPREAD

SWEP.Spread = 0.02

SWEP.SpreadAddRecoil = 0.005 -- Applied per unit of recoil.

SWEP.SpreadAddMove = 0.07
SWEP.SpreadAddMidAir = 0.03
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadAddCrouch = -0.05

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.31 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 50
SWEP.BashLungeRange = 128
SWEP.BashRange = 64
SWEP.PreBashTime = 0.25
SWEP.PostBashTime = 0.5

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.83, -3, 0.75),
    Ang = Angle(0, 1.2, 0),
    Magnification = 1.25,
    ViewModelFOV = 56,
}

SWEP.ViewModelFOVBase = 56

SWEP.SprintPos = Vector(-1, -1, 0)
SWEP.SprintAng = Angle(-5, 0, 5)

SWEP.SprintMidPoint = {
    Pos = Vector(-0.5, -2.5, 0),
    Ang = Angle(-2.5, 0, 2.5)
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
SWEP.CustomizePos = Vector(18, 20, 2.5)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0, -10, 2)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.BlindFirePos = Vector(-3, -1, 2)
SWEP.BlindFireAng = Angle(0, 0, -50)

SWEP.BlindFireRightPos = Vector(-12, 25, 0)
SWEP.BlindFireRightAng = Angle(-90, -20, 0)

SWEP.BlindFireLeftPos = Vector(12, 25, 0)
SWEP.BlindFireLeftAng = Angle(90, -20, 0)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false
-------------------------- EFFECTS

SWEP.MuzzleParticle = "weapon_muzzle_flash_pistol"
SWEP.MuzzleParticleSilenced = "weapon_muzzle_flash_assaultrifle_silenced"
SWEP.AfterShotParticle = "weapon_muzzle_smoke_pistols"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamOffsetAng = Angle(0, 0, 0)
SWEP.NoViewBob = false

SWEP.ShouldDropMag = true
SWEP.ShouldDropMagEmpty = true

SWEP.ShellModel = "models/models/weapons/shared/shell_9mm_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.09
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = true
SWEP.DropMagazineModel = "models/weapons/csgo/mags/w_pist_usp_mag.mdl"
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.35

-------------------------- SOUNDS

local path = "weapons/csgo/usp/"

SWEP.ShootSound = "CSGO.USP.Fire"
SWEP.ShootSoundSilenced = "CSGO.USP.Silenced_Fire"
SWEP.DistantShootSound = path .. "CSGO.USP.Distance_Fire"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.HideBones = {
}

SWEP.HideBonesSilenced = {}

SWEP.ReloadHideBoneTables = {
}

SWEP.Animations = {
    ["fire"] = {
        Source = {"shoot1", "shoot2", "shoot3"},
    },
    ["fire_sights"] = {
        Source = "shoot1_ads",
    },
    ["reload"] = {
        Source = "reload_short",
        EventTable = {
            {s = path .. "usp_clipout.wav", t = 12 / 30},
            {s = path .. "usp_clipin.wav", t = 25 / 30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.4,
        EventTable = {
            {s = path .. "usp_clipout.wav", t = 12 / 30},
            {s = path .. "usp_clipin.wav", t = 25 / 30},
            {s = path .. "usp_slideback.wav", t = 44 / 30},
            {s = path .. "usp_sliderelease.wav", t = 50 / 30},
        },
    },
    ["ready"] = {
        Source = "draw",
        EventTable = {
            {s = path .. "usp_draw.wav", t = 0 / 30},
            {s = path .. "usp_slideback.wav", t = 8 / 30},
            {s = path .. "usp_sliderelease.wav", t = 14 / 30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = "CSGO.Item.Movement", t = 0 / 30},
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
        Time = 1,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 1,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        EventTable = {
            { s = "weapons/csgo/movement1.wav", t = 2 / 30 },
            { s = "weapons/csgo/movement2.wav", t = 175 / 30 },
        },
    },
    ["firemode_2"] = {
        Source = "attach",
        MinProgress = 0.9,
        FireASAP = false,
        EventTable = {
            {s = "weapons/csgo/movement1.wav", t = 2 / 30},
            {s = path .. "m4a1_silencer_screw_on_start.wav", t = 32 / 30},
            {s = path .. "m4a1_silencer_screw_1.wav", t = 55 / 30},
            {s = path .. "m4a1_silencer_screw_2.wav", t = 69 / 30},
            {s = path .. "m4a1_silencer_screw_3.wav", t = 80 / 30},
            {s = path .. "m4a1_silencer_screw_4.wav", t = 91 / 30},
            {s = path .. "m4a1_silencer_screw_5.wav", t = 99 / 30},
            {s = "weapons/csgo/movement3.wav", t = 112 / 30},
        },
    },
    ["firemode_1"] = {
        Source = "detach",
        MinProgress = 0.9,
        FireASAP = false,
        HideBoneIndex = 0,
        EventTable = {
            {s = "weapons/csgo/movement1.wav", t = 9 / 30},
            {s = path .. "m4a1_silencer_screw_1.wav", t = 28 / 30},
            {s = path .. "m4a1_silencer_screw_2.wav", t = 48 / 30},
            {s = path .. "m4a1_silencer_screw_3.wav", t = 60 / 30},
            {s = path .. "m4a1_silencer_screw_4.wav", t = 70 / 30},
            {s = path .. "m4a1_silencer_screw_5.wav", t = 80 / 30},
            {s = path .. "m4a1_silencer_screw_off_end.wav", t = 93 / 30},
            {s = "weapons/csgo/movement3.wav", t = 114 / 30},
        },
    },
-- SILENCED
    ["idle_silenced"] = {
        Source = "idle_silenced",
        HideBoneIndex = 1,
    },
    ["fire_silenced"] = {
        Source = {"shoot1_silenced", "shoot2_silenced", "shoot3_silenced"},
        HideBoneIndex = 1,
    },
    ["fire_sights_silenced"] = {
        Source = "shoot1_silenced_ads",
    },
    ["reload_silenced"] = {
        Source = "reload_short_silenced",
        HideBoneIndex = 1,
        EventTable = {
            {s = path .. "usp_clipout.wav", t = 12 / 30},
            {s = path .. "usp_clipin.wav", t = 25 / 30},
        },
    },
    ["reload_empty_silenced"] = {
        Source = "reload_silenced",
        HideBoneIndex = 1,
		MinProgress = 0.4,
        EventTable = {
            {s = path .. "usp_clipout.wav", t = 12 / 30},
            {s = path .. "usp_clipin.wav", t = 25 / 30},
            {s = path .. "usp_slideback.wav", t = 44 / 30},
            {s = path .. "usp_sliderelease.wav", t = 50 / 30},
        },
    },
    ["ready_silenced"] = {
        Source = "draw_silenced",
        HideBoneIndex = 1,
        EventTable = {
            {s = path .. "usp_draw.wav", t = 0 / 30},
            {s = path .. "usp_slideback.wav", t = 8 / 30},
            {s = path .. "usp_sliderelease.wav", t = 14 / 30},
        },
    },
    ["draw_silenced"] = {
        Source = "draw_short_silenced",
        HideBoneIndex = 1,
    },
    ["holster_silenced"] = {
        Source = "holster_silenced",
        HideBoneIndex = 1,
        EventTable = {
            {s = "CSGO.Item.Movement", t = 0 / 30},
        },
    },
    ["idle_sprint_silenced"] = {
        Source = "sprint_silenced",
        HideBoneIndex = 1,
    },
    ["exit_sprint_silenced"] = {
        Source = "sprint_out_silenced",
        Time = 1,
        HideBoneIndex = 1,
    },
    ["enter_sprint_silenced"] = {
        Source = "sprint_in_silenced",
        Time = 1,
        HideBoneIndex = 1,
    },
    ["inspect_silenced"] = {
        Source = "lookat01_silenced",
        HideBoneIndex = 1,
        EventTable = {
            { s = "weapons/csgo/movement1.wav", t = 2 / 30 },
            { s = "weapons/csgo/movement2.wav", t = 175 / 30 },
        },
    },
}

SWEP.Hook_Think	= ARC9.CSGO.BlendEmpty

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
}

SWEP.Attachments = {}