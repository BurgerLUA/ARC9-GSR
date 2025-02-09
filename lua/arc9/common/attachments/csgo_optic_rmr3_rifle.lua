ATT.PrintName = "Trijicon RMR 3"
ATT.CompactName = [[T RMR 3]]
ATT.Icon = Material("entities/attachs/trijicon.png", "mips smooth")
ATT.Description = [[Another alternative version of Trijicon RMR sight from Insurgency: Sandstorm. 
Designed only for firearms, mounted on a high-profile rail.]]
ATT.Pros = {
    "+ Clearer sight picture"
}
ATT.Cons = {}
ATT.SortOrder = 4
ATT.MenuCategory = "ARC9 - CSGO Attachments"
ATT.Free = false
ATT.Folder = "SIGHTS"

ATT.Category = {"csgo_optic"}


ATT.Model = "models/weapons/csgo/atts/sights/trijicon_rifle2.mdl"
ATT.ModelBodygroups = "00"
ATT.Scale = 0.4
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(-0.01, 7.5, -1.6),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 56,
        Magnification = 1.1,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("hud/arc9_csgo/reticles/ReticleDot.png", "mips smooth")
ATT.HoloSightSize = 1024
ATT.HoloSightColorable = true