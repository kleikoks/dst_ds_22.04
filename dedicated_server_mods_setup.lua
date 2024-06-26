--There are two functions that will install mods, ServerModSetup and ServerModCollectionSetup. Put the calls to the functions in this file and they will be executed on boot.

--ServerModSetup takes a string of a specific mod's Workshop id. It will download and install the mod to your mod directory on boot.
	--The Workshop id can be found at the end of the url to the mod's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=350811795
	--ServerModSetup("350811795")

--ServerModCollectionSetup takes a string of a specific mod's Workshop id. It will download all the mods in the collection and install them to the mod directory on boot.
	--The Workshop id can be found at the end of the url to the collection's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=379114180
	--ServerModCollectionSetup("379114180")

	ServerModSetup("1378549454") -- api
	ServerModSetup("764204839") -- Automatic Health Adjust
	ServerModSetup("353697884") --Craftable Gears For DST
	ServerModSetup("375850593") --Extra Equip Slots
	ServerModSetup("2281925291") --Finder Redux
	ServerModSetup("438293817") --Friendly Flingomatics
	ServerModSetup("2256246361") --Fuel-Sharing Ice Flingomatic
	ServerModSetup("758532836") --Global Pause
	ServerModSetup("378160973") --Global Positions
	ServerModSetup("396026892") -- Large Chest
	ServerModSetup("445539951") --Long lasting tent
	ServerModSetup("1079538195") --Moving Box
	ServerModSetup("2420839895") --Rope Bridge
-- 	ServerModSetup("2189004162") --Insight
	ServerModSetup("1207269058") --Simple Health Bar DST
	ServerModSetup("1595631294") --Smart minisign
	ServerModSetup("2795674138") --wx78 double chargers
	ServerModSetup("2804492445") --Unbreakable modules
    ServerModSetup("1289779251") --Cherry forest
    ServerModSetup("2321974509") --Automatic sorter
    ServerModSetup("374550642") --Increased stack size
    ServerModSetup("2156905460") --Repair sinkholes
