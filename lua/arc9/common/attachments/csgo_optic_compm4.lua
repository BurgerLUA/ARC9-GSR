ATT.PrintName = "CompM4 (RDS)"
ATT.CompactName = [[CompM4]]
ATT.Icon = Material("entities/attachs/CompM4.png", "mips smooth")
ATT.Description = [[Tube-based red dot sight for firearms.]]
ATT.Pros = {
    "+ Clearer sight picture"
}
ATT.Cons = {}
ATT.SortOrder = 4
ATT.MenuCategory = "ARC9 - CSGO Attachments"
ATT.Free = false
ATT.Folder = "SIGHTS"

ATT.Category = {"csgo_optic"}


ATT.Model = "models/weapons/csgo/atts/sights/CompM4.mdl"
ATT.Scale = 0.5
ATT.ModelOffset = Vector(0, 0, 0.05)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(0, 15, -1.75),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 26,
        Magnification = 1.15,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("hud/arc9_csgo/reticles/aimpoint_dot.png", "mips")
ATT.HoloSightReticle:SetInt("$additive", 1)
ATT.HoloSightSize = 1024
ATT.HoloSightColorable = false