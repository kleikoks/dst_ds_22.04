--There are two functions that will install mods, ServerModSetup and ServerModCollectionSetup. Put the calls to the functions in this file and they will be executed on boot.

--ServerModSetup takes a string of a specific mod's Workshop id. It will download and install the mod to your mod directory on boot.
	--The Workshop id can be found at the end of the url to the mod's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=350811795
	--ServerModSetup("350811795")

--ServerModCollectionSetup takes a string of a specific mod's Workshop id. It will download all the mods in the collection and install them to the mod directory on boot.
	--The Workshop id can be found at the end of the url to the collection's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=379114180
	--ServerModCollectionSetup("379114180")

    ForceEnableMod("1378549454") -- api
    ForceEnableMod("764204839") -- Automatic Health Adjust
    ForceEnableMod("353697884") --Craftable Gears For DST
    ForceEnableMod("553665029") --DST-SignPlus
    ForceEnableMod("375850593") --Extra Equip Slots
    ForceEnableMod("2281925291") --Finder Redux
    ForceEnableMod("438293817") --Friendly Flingomatics
    ForceEnableMod("2256246361") --Fuel-Sharing Ice Flingomatic
    ForceEnableMod("758532836") --Global Pause
    ForceEnableMod("378160973") --Global Positions
    ForceEnableMod("396026892") -- Large Chest
    ForceEnableMod("445539951") --Long lasting tent
    ForceEnableMod("1079538195") --Moving Box
    ForceEnableMod("1974725370") --no extinction
    ForceEnableMod("1266923888") --Reliable WX-78
    ForceEnableMod("2420839895") --Rope Bridge
    ForceEnableMod("666155465") --Show Me (Origin)
    ForceEnableMod("1207269058") --Simple Health Bar DST
	ForceEnableMod("1595631294") --Smart minisign
	ForceEnableMod("2795674138") --wx78 double chargers

    ForceEnableMod("2804492445") --Unbreakable modules
