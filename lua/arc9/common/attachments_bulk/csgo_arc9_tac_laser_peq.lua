--[[
local ATT = {}

ATT.PrintName = "ATPIAL-C AN/PEQ-15"
ATT.CompactName = "PEQ-15"
ATT.Description = "High-power laser pointer with extra flashlight function.\nImproves hip fire and spread, at the cost of less sights speed."

ATT.Icon = Material("entities/attachs/go_laser_peq.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = {"csgo_tac"}
ATT.MenuCategory = "ARC9 - CSGO Attachments"
ATT.Model = "models/weapons/csgo/atts/tactical/PEQ15.mdl"
ATT.Folder = "TACTICAL"

ATT.AimDownSightsTimeMult = 1.05
ATT.SpreadMult = 0.9

ATT.ToggleOnF = true -- This attachment is toggleable with the flashlight key.
ATT.ToggleStats = {
    {
        PrintName = ARC9:GetPhrase("csgo_stat_laser_light"),
        Laser = true,
        LaserStrength = 2,
        LaserColor = Color(255, 0, 0),
        LaserAttachment = 2,
        Flashlight = true,
        FlashlightColor = Color(55, 55, 55),
        FlashlightMaterial = "effects/flashlight001",
        FlashlightDistance = 2048,
        FlashlightFOV = 80,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 300,
        FlareAttachment = 1
    },
    {
        PrintName = ARC9:GetPhrase("csgo_stat_light"),
        Flashlight = true,
        FlashlightColor = Color(55, 55, 55),
        FlashlightMaterial = "effects/flashlight001",
        FlashlightDistance = 2048,
        FlashlightFOV = 80,
        FlashlightAttachment = 1,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 300,
        FlareAttachment = 1
    },
    {
        PrintName = ARC9:GetPhrase("csgo_stat_laser"),
        Laser = true,
        LaserStrength = 2,
        LaserColor = Color(255, 0, 0),
        LaserAttachment = 2,
        Flare = true,
        FlareColor = Color(0, 255, 0),
        FlareSize = 50,
        FlareAttachment = 2,
        FlareFocus = true
    },
    {
        PrintName = ARC9:GetPhrase("csgo_stat_off"),
    }
}

-- Broken ass shit that won't work so graying this out sadly.
-- ATT.Sights = {
    -- {
        -- Pos = Vector(-2.5, 22, 2),
        -- Ang = Angle(0, 0, 135),
        -- ViewModelFOV = 56,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
-- }


ATT.Scale = 1

ATT.ModelOffset = Vector(0, 0, 0)

ARC9.LoadAttachment(ATT, "go_tac_laser_peq")

]]--