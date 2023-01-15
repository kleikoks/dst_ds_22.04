--There are two functions that will install mods, ServerModSetup and ServerModCollectionSetup. Put the calls to the functions in this file and they will be executed on boot.

--ServerModSetup takes a string of a specific mod's Workshop id. It will download and install the mod to your mod directory on boot.
	--The Workshop id can be found at the end of the url to the mod's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=350811795
	--ServerModSetup("350811795")

--ServerModCollectionSetup takes a string of a specific mod's Workshop id. It will download all the mods in the collection and install them to the mod directory on boot.
	--The Workshop id can be found at the end of the url to the collection's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=379114180
	--ServerModCollectionSetup("379114180")

    ServerModSetup("1378549454")
    ServerModSetup("445539951")
    ServerModSetup("1974725370")
    ServerModSetup("553665029")
    ServerModSetup("764204839")
    ServerModSetup("353697884")
    ServerModSetup("375850593")
    ServerModSetup("2281925291")
    ServerModSetup("438293817")
    ServerModSetup("2256246361")
    ServerModSetup("758532836")
    ServerModSetup("378160973")
    ServerModSetup("1581242057")
    ServerModSetup("375859599")
    ServerModSetup("396026892")
    ServerModSetup("1079538195")
    ServerModSetup("1266923888")
    ServerModSetup("2420839895")
    ServerModSetup("2188103687")
    ServerModSetup("1207269058")