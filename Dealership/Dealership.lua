
-- Only change the coords
-- Give a proper location from you server


Citizen.CreateThread(function()
	while true do
		local player = GetPlayerPed(-1)
		local pl = GetEntityCoords(player)
		Citizen.Wait(0)
		if GetDistanceBetweenCoords(pl.x, pl.y, pl.z, 00.00, 00.00, 00.00) < 1.0 then -- <-- Dealerships --
            DrawText3Ds(458.55, -1017.12, 28.21, "~w~Press [~g~E~w~] access Custome Vehicle spawnner")
            if IsControlJustReleased(1, 38) then 
                PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTED_SOUNDSET", true)
                OpenVehicleSpawner()
            end
        elseif GetDistanceBetweenCoords(pl.x, pl.y, pl,z, 00.00, 00.00, 00.00) < 1.0  then -- <-- Dealerships -- off duty
            DrawText3Ds(458.55, -1017.12, 28.21, "~w~Press [~g~E~w~] access Custome Vehicle spawnner")
            if IsControlJustReleased(1, 38) then 
                PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTED_SOUNDSET", true)
                OpenVehicleSpawner()
            end
        end
    end
end)

-- Put the same name in  CustomeVhix = "BLISTA"

VehicleMenu = {
    ['compact'] = {
        {name = "BLISTA", CustomeVhix = ""},
        {name ="BRIOSO", CustomeVhix = ""},
        {name = "DILETTANTE", CustomeVhix = ""},
        {name = "DILETTANTE2", CustomeVhix = ""},
        {name = "ISSI2", CustomeVhix = ""},
        {name = "ISSI3", CustomeVhix = ""},
        {name = "ISSI4", CustomeVhix = ""} -- MPCHRISTMAS2018 DLC
        {name = "ISSI5", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "ISSI6", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "PANTO", CustomeVhix = ""},
        {name = "PRAIRIE", CustomeVhix = ""},
        {name = "RHAPSODY" CustomeVhix = ""},
    },
    ['Sedans'] = {
        {name = "Asea", CustomeVhix = ""},
        {name ="ASEA2", CustomeVhix = ""},
        {name = "ASTROPE", CustomeVhix = ""},
        {name = "COG55", CustomeVhix = ""},
        {name = "COG552", CustomeVhix = ""},
        {name = "COGNOSCENTI", CustomeVhix = ""},
        {name = "COGNOSCENTI2", CustomeVhix = ""}, 
        {name = "EMPEROR", CustomeVhix = ""}, 
        {name = "EMPEROR2", CustomeVhix = ""},
        {name = "EMPEROR3", CustomeVhix = ""},
        {name = "FUGITIVE", CustomeVhix = ""},
        {name = "GLENDALE" },
        {name = "INGOT", CustomeVhix = ""},
        {name = "INTRUDER", CustomeVhix = ""},
        {name = "LIMO2", CustomeVhix = ""}, 
        {name = "PREMIER", CustomeVhix = ""},
        {name = "PRIMO", CustomeVhix = ""},
        {name = "PRIMO2", CustomeVhix = ""},
        {name = "REGINA", CustomeVhix = ""},
        {name = "ROMERO", CustomeVhix = ""},
        {name = "SCHAFTER2", CustomeVhix = ""},
        {name = "SCHAFTER5", CustomeVhix = ""},
        {name = "SCHAFTER6", CustomeVhix = ""},
        {name = "STAFFORD", CustomeVhix = ""}, -- dlc (mpbattle)
        {name = "STANIER", CustomeVhix = ""},
        {name = "STRATUM", CustomeVhix = ""},
        {name = "STRETCH", CustomeVhix = ""},
        {name = "SUPERD", CustomeVhix = ""},
        {name = "SURGE", CustomeVhix = ""},
        {name = "TAILGATER", CustomeVhix = ""},
        {name = "WARRENER", CustomeVhix = ""},
        {name = "WASHINGTON", CustomeVhix = ""},
    },
    ['suvs'] = {
        {name = "BALLER", CustomeVhix = ""},
        {name = "BALLER2", CustomeVhix = ""},
        {name = "BALLER3", CustomeVhix = ""},
        {name = "BALLER4", CustomeVhix = ""},
        {name = "BALLER5", CustomeVhix = ""},
        {name = "BALLER6", CustomeVhix = ""},
        {name = "BJXL", CustomeVhix = ""},
        {name = "CAVALCADE", CustomeVhix = ""},
        {name = "CAVALCADE2", CustomeVhix = ""},
        {name = "CONTENDER", CustomeVhix = ""},
        {name = "DUBSTA", CustomeVhix = ""},
        {name = "DUBSTA2", CustomeVhix = ""},
        {name = "FQ2", CustomeVhix = ""},
        {name = "GRANGER", CustomeVhix = ""},
        {name = "GRESLEY", CustomeVhix = ""},
        {name = "HABANERO", CustomeVhix = ""},
        {name = "HUNTLEY", CustomeVhix = ""},
        {name = "LANDSTALKER", CustomeVhix = ""},
        {name = "MESA", CustomeVhix = ""},
        {name = "MESA2", CustomeVhix = ""},
        {name = "NOVAK", CustomeVhix = ""}, -- Casino DLC
        {name = "PATRIOT", CustomeVhix = ""},
        {name = "PATRIOT2", CustomeVhix = ""}, -- dlc (mpbattle)
        {name = "RADI", CustomeVhix = ""},
        {name = "ROCOTO", CustomeVhix = ""},
        {name = "SEMINOLE", CustomeVhix = ""},
        {name = "SERRANO", CustomeVhix = ""},
        {name = "TOROS", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "XLS", CustomeVhix = ""},
        {name = "XLS2", CustomeVhix = ""},
    },
    ['coupes'] = {
        {name = "COGCABRIO", CustomeVhix = ""},
        {name ="EXEMPLAR", CustomeVhix = ""},
        {name ="F620", CustomeVhix = ""},
        {name ="FELON", CustomeVhix = ""},
        {name = "FELON2", CustomeVhix = ""},
        {name = "JACKAL", CustomeVhix = ""},
        {name = "ORACLE", CustomeVhix = ""},
        {name = "ORACLE2", CustomeVhix = ""},
        {name = "SENTINEL", CustomeVhix = ""},
        {name = "SENTINEL2", CustomeVhix = ""},
        {name = "WINDSOR", CustomeVhix = ""},
        {name = "WINDSOR2", CustomeVhix = ""},
        {name = "ZION", CustomeVhix = ""},
        {name = "ZION2", CustomeVhix = ""},
    },
    ['muscles'] = {
        {name = "BLADE", CustomeVhix = ""},
        {name = "BUCCANEER", CustomeVhix = ""},
        {name = "BUCCANEER2", CustomeVhix = ""},
        {name = "CHINO", CustomeVhix = ""},
        {name = "CHINO2", CustomeVhix = ""},
        {name = "CLIQUE", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "COQUETTE3", CustomeVhix = ""},
        {name = "DEVIANT", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "DOMINATOR", CustomeVhix = ""},
        {name = "DOMINATOR2", CustomeVhix = ""},
        {name = "DOMINATOR3", CustomeVhix = ""},
        {name = "DOMINATOR4", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "DOMINATOR5", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "DOMINATOR6", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "DUKES", CustomeVhix = ""},
        {name = "DUKES2", CustomeVhix = ""},
        {name = "ELLIE", CustomeVhix = ""},
        {name = "FACTION", CustomeVhix = ""},
        {name = "FACTION2", CustomeVhix = ""},
        {name = "FACTION3", CustomeVhix = ""},
        {name = "GAUNTLET", CustomeVhix = ""},
        {name = "GAUNTLET2", CustomeVhix = ""},
        {name = "GAUNTLET3", CustomeVhix = ""}, -- Casino DLC
        {name = "GAUNTLET4", CustomeVhix = ""}, -- Casino DLC
        {name = "HERMES", CustomeVhix = ""},
        {name = "HOTKNIFE", CustomeVhix = ""},
        {name = "HUSTLER", CustomeVhix = ""},
        {name = "IMPALER", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "IMPALER2", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "IMPALER3", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "IMPALER4", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "IMPERATOR", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "IMPERATOR2", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "IMPERATOR3", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "LURCHER", CustomeVhix = ""},
        {name = "MOONBEAM", CustomeVhix = ""},
        {name = "MOONBEAM2", CustomeVhix = ""},
        {name = "NIGHTSHADE", CustomeVhix = ""},
        {name = "PEYOTE2", CustomeVhix = ""}, -- Casino DLC
        {name = "PHOENIX", CustomeVhix = ""},
        {name = "PICADOR", CustomeVhix = ""},
        {name = "RATLOADER", CustomeVhix = ""},
        {name = "RATLOADER2", CustomeVhix = ""},
        {name =  "RUINER", CustomeVhix = ""},
        {name = "RUINER2", CustomeVhix = ""},
        {name = "RUINER3", CustomeVhix = ""},
        {name = "SABREGT", CustomeVhix = ""},
        {name = "SABREGT2", CustomeVhix = ""},
        {name = "SLAMVAN", CustomeVhix = ""},
        {name = "SLAMVAN2", CustomeVhix = ""},
        {name = "SLAMVAN3", CustomeVhix = ""},
        {name = "SLAMVAN4", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "SLAMVAN5", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "SLAMVAN6", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "STALION", CustomeVhix = ""},
        {name = "STALION2", CustomeVhix = ""},
        {name = "TAMPA", CustomeVhix = ""},
        {name = "TAMPA3", CustomeVhix = ""},
        {name = "TULIP", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "VAMOS", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "VIGERO", CustomeVhix = ""},
        {name = "VIRGO", CustomeVhix = ""},
        {name = "VIRGO2", CustomeVhix = ""},
        {name = "VIRGO3", CustomeVhix = ""},
        {name = "VOODOO", CustomeVhix = ""},
        {name = "VOODOO2", CustomeVhix = ""},
        {name = "YOSEMITE", CustomeVhix = ""},
    },
    ['sport classics'] = {
        {name = "ARDENT", CustomeVhix = ""},
        {name = "BTYPE", CustomeVhix = ""},
        {name = "BTYPE2", CustomeVhix = ""},
        {name = "BTYPE3", CustomeVhix = ""},
        {name = "CASCO", CustomeVhix = ""},
        {name = "CHEBUREK", CustomeVhix = ""},
        {name = "CHEETAH2", CustomeVhix = ""},
        {name = "COQUETTE2", CustomeVhix = ""},
        {name = "DELUXO", CustomeVhix = ""},
        {name = "DYNASTY", CustomeVhix = ""}, -- Casino DLC
        {name = "FAGALOA", CustomeVhix = ""},
        {name = "FELTZER3", CustomeVhix = ""}, -- Stirling GT
        {name = "GT500", CustomeVhix = ""},
        {name = "INFERNUS2", CustomeVhix = ""},
        {name = "JB700", CustomeVhix = ""},
        {name = "JESTER3", CustomeVhix = ""},
        {name = "MAMBA", CustomeVhix = ""},
        {name = "MANANA", CustomeVhix = ""},
        {name = "MICHELLI", CustomeVhix = ""},
        {name = "MONROE", CustomeVhix = ""},
        {name = "NEBULA", CustomeVhix = ""}, -- Casino DLC
        {name = "PEYOTE", CustomeVhix = ""},
        {name = "PIGALLE", CustomeVhix = ""},
        {name = "RAPIDGT3", CustomeVhix = ""},
        {name = "RETINUE", CustomeVhix = ""},
        {name = "SAVESTRA", CustomeVhix = ""},
        {name = "STINGER", CustomeVhix = ""},
        {name = "STINGERGT", CustomeVhix = ""},
        {name = "STROMBERG", CustomeVhix = ""},
        {name = "SWINGER", CustomeVhix = ""}, -- dlc (mpbattle)
        {name = "TORERO", CustomeVhix = ""},
        {name = "TORNADO", CustomeVhix = ""},
        {name = "TORNADO2", CustomeVhix = ""},
        {name = "TORNADO3", CustomeVhix = ""},
        {name = "TORNADO4", CustomeVhix = ""},
        {name = "TORNADO5", CustomeVhix = ""},
        {name = "TORNADO6", CustomeVhix = ""},
        {name = "TURISMO2", CustomeVhix = ""},
        {name = "VISERIS", CustomeVhix = ""},
        {name = "Z190", CustomeVhix = ""},
        {name = "ZION3", CustomeVhix = ""}, -- Casino DLC
        {name = "ZTYPE", CustomeVhix = ""},
    },
    ['sports'] = {
        {name = "ALPHA", CustomeVhix = ""},
        {name = "BANSHEE", CustomeVhix = ""},
        {name = "BESTIAGTS", CustomeVhix = ""},
        {name = "BLISTA2", CustomeVhix = ""},
        {name = "BLISTA3", CustomeVhix = ""},
        {name = "BUFFALO", CustomeVhix = ""},
        {name = "BUFFALO2", CustomeVhix = ""},
        {name = "BUFFALO3", CustomeVhix = ""},
        {name = "CARBONIZZARE", CustomeVhix = ""},
        {name = "COMET2", CustomeVhix = ""},
        {name = "COMET3", CustomeVhix = ""},
        {name = "COMET4", CustomeVhix = ""},
        {name = "COMET5", CustomeVhix = ""},
        {name = "COQUETTE", CustomeVhix = ""},
        {name = "DRAFTER", CustomeVhix = ""}, -- Casino DLC
        {name = "ELEGY", CustomeVhix = ""},
        {name = "ELEGY2", CustomeVhix = ""},
        {name = "FELTZER2", CustomeVhix = ""},
        {name = "FLASHGT", CustomeVhix = ""},
        {name = "FUROREGT", CustomeVhix = ""},
        {name = "FUSILADE", CustomeVhix = ""},
        {name = "FUTO", CustomeVhix = ""},
        {name = "GB200", CustomeVhix = ""},
        {name = "HOTRING", CustomeVhix = ""},
        {name = "ISSI7", CustomeVhix = ""}, -- Casino DLC
        {name = "ITALIGTO", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "JESTER", CustomeVhix = ""},
        {name = "JESTER2", CustomeVhix = ""},
        {name = "JUGULAR", CustomeVhix = ""}, -- Casino DLC
        {name = "KHAMELION", CustomeVhix = ""},
        {name = "KURUMA", CustomeVhix = ""},
        {name = "KURUMA2", CustomeVhix = ""},
        {name = "LOCUST", CustomeVhix = ""}, -- Casino DLC
        {name = "LYNX", CustomeVhix = ""},
        {name = "MASSACRO", CustomeVhix = ""},
        {name = "MASSACRO2", CustomeVhix = ""},
        {name = "NEO", CustomeVhix = ""}, -- Casino DLC
        {name = "NEON", CustomeVhix = ""}, -- Doomsday Heist Update
        {name = "NINEF", CustomeVhix = ""},
        {name = "NINEF2", CustomeVhix = ""},
        {name = "OMNIS", CustomeVhix = ""},
        {name = "PARAGON", CustomeVhix = ""}, -- Casino DLC
        {name = "PARAGON2", CustomeVhix = ""}, -- Casino DLC
        {name = "PARIAH", CustomeVhix = ""},
        {name = "PENUMBRA", CustomeVhix = ""},
        {name = "RAIDEN", CustomeVhix = ""},
        {name = "RAPIDGT", CustomeVhix = ""},
        {name = "RAPIDGT2", CustomeVhix = ""},
        {name = "RAPTOR", CustomeVhix = ""},
        {name = "REVOLTER", CustomeVhix = ""},
        {name = "RUSTON", CustomeVhix = ""},
        {name = "SCHAFTER2", CustomeVhix = ""},
        {name = "SCHAFTER3", CustomeVhix = ""},
        {name = "SCHAFTER4", CustomeVhix = ""},
        {name = "SCHAFTER5", CustomeVhix = ""},
        {name = "SCHLAGEN", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "SCHWARZER", CustomeVhix = ""},
        {name = "SENTINEL3", CustomeVhix = ""},
        {name = "SEVEN70", CustomeVhix = ""},
        {name = "SPECTER", CustomeVhix = ""},
        {name = "SPECTER2", CustomeVhix = ""},
        {name = "SULTAN", CustomeVhix = ""},
        {name = "SURANO", CustomeVhix = ""},
        {name = "TAMPA2", CustomeVhix = ""},
        {name = "TROPOS", CustomeVhix = ""},
        {name = "VERLIERER2", CustomeVhix = ""},
        {name = "ZR380", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "ZR3802", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "ZR3803", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
    },
    ['super'] = {
        {name = "ADDER", CustomeVhix = ""},
        {name = "AUTARCH", CustomeVhix = ""},
        {name = "BANSHEE2", CustomeVhix = ""},
        {name = "BULLET", CustomeVhix = ""},
        {name = "CHEETAH", CustomeVhix = ""},
        {name = "CYCLONE", CustomeVhix = ""},
        {name = "DEVESTE", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "EMERUS", CustomeVhix = ""}, -- Casino DLC
        {name = "ENTITYXF", CustomeVhix = ""},
        {name = "ENTITY2", CustomeVhix = ""},
        {name = "FMJ", CustomeVhix = ""},
        {name = "GP1", CustomeVhix = ""},
        {name = "INFERNUS", CustomeVhix = ""},
        {name = "ITALIGTB", CustomeVhix = ""},
        {name = "ITALIGTB2", CustomeVhix = ""},
        {name = "KRIEGER", CustomeVhix = ""}, -- Casino DLC
        {name = "LE7B", CustomeVhix = ""},
        {name = "NERO", CustomeVhix = ""},
        {name = "NERO2", CustomeVhix = ""},
        {name = "OSIRIS", CustomeVhix = ""},
        {name = "PENETRATOR", CustomeVhix = ""},
        {name =  "PFISTER811", CustomeVhix = ""},
        {name =  "PROTOTIPO", CustomeVhix = ""},
        {name = "REAPER", CustomeVhix = ""},
        {name = "S80", CustomeVhix = ""}, -- Casino DLC
        {name = "SC1", CustomeVhix = ""},
        {name = "SCRAMJET", CustomeVhix = ""}, -- dlc (mpbattle)
        {name = "SHEAVA", CustomeVhix = ""}, -- ETR1
        {name = "SULTANRS", CustomeVhix = ""},
        {name = "T20", CustomeVhix = ""},
        {name = "TAIPAN", CustomeVhix = ""},
        {name = "TEMPESTA", CustomeVhix = ""},
        {name = "TEZERACT", CustomeVhix = ""},
        {name = "THRAX", CustomeVhix = ""}, -- Casino DLC
        {name = "TURISMOR", CustomeVhix = ""},
        {name = "TYRANT", CustomeVhix = ""},
        {name = "TYRUS", CustomeVhix = ""},
        {name = "VACCA", CustomeVhix = ""},
        {name = "VAGNER", CustomeVhix = ""},
        {name = "VIGILANTE", CustomeVhix = ""},
        {name = "VISIONE", CustomeVhix = ""},
        {name = "VOLTIC", CustomeVhix = ""},
        {name = "VOLTIC2", CustomeVhix = ""},
        {name = "XA21", CustomeVhix = ""},
        {name = "ZENTORNO", CustomeVhix = ""},
        {name = "ZORRUSSO", CustomeVhix = ""}, -- Casino DLC
    },
    ['motorcycles'] = {
        {name ="AKUMA", CustomeVhix = ""},
        {name ="AVARUS", CustomeVhix = ""},
        {name ="BAGGER", CustomeVhix = ""},
        {name ="BATI", CustomeVhix = ""},
        {name ="BATI2", CustomeVhix = ""},
        {name ="BF400", CustomeVhix = ""},
        {name ="CARBONRS", CustomeVhix = ""},
        {name ="CHIMERA", CustomeVhix = ""},
        {name ="CLIFFHANGER", CustomeVhix = ""},
        {name ="DAEMON", CustomeVhix = ""},
        {name ="DAEMON2", CustomeVhix = ""},
        {name ="DEFILER", CustomeVhix = ""},
        {name ="DEATHBIKE", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="DEATHBIKE2", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="DEATHBIKE3", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="DIABLOUS", CustomeVhix = ""},
        {name ="DIABLOUS2", CustomeVhix = ""},
        {name ="DOUBLE", CustomeVhix = ""},
        {name ="ENDURO", CustomeVhix = ""},
        {name ="ESSKEY", CustomeVhix = ""},
        {name ="FAGGIO", CustomeVhix = ""},
        {name ="FAGGIO2", CustomeVhix = ""},
        {name ="FAGGIO3", CustomeVhix = ""},
        {name ="FCR", CustomeVhix = ""},
        {name ="FCR2", CustomeVhix = ""},
        {name ="GARGOYLE", CustomeVhix = ""},
        {name ="HAKUCHOU", CustomeVhix = ""},
        {name ="HAKUCHOU2", CustomeVhix = ""},
        {name ="HEXER", CustomeVhix = ""},
        {name ="INNOVATION", CustomeVhix = ""},
        {name ="LECTRO", CustomeVhix = ""},
        {name ="MANCHEZ", CustomeVhix = ""},
        {name ="NEMESIS", CustomeVhix = ""},
        {name ="NIGHTBLADE", CustomeVhix = ""},
        {name ="OPPRESSOR", CustomeVhix = ""},
        {name ="OPPRESSOR2", CustomeVhix = ""}, -- dlc (mpbattle)
        {name ="PCJ", CustomeVhix = ""},
        {name ="RATBIKE", CustomeVhix = ""},
        {name ="RROCKET", CustomeVhix = ""}, -- Casino DLC
        {name ="RUFFIAN", CustomeVhix = ""},
        {name ="SANCHEZ", CustomeVhix = ""},
        {name ="SANCHEZ2", CustomeVhix = ""},
        {name ="SANCTUS", CustomeVhix = ""},
        {name ="SHOTARO", CustomeVhix = ""},
        {name ="SOVEREIGN", CustomeVhix = ""},
        {name ="THRUST", CustomeVhix = ""},
        {name ="VADER", CustomeVhix = ""},
        {name ="VINDICATOR", CustomeVhix = ""},
        {name ="VORTEX", CustomeVhix = ""},
        {name ="WOLFSBANE", CustomeVhix = ""},
        {name ="ZOMBIEA", CustomeVhix = ""},
        {name ="ZOMBIEB", CustomeVhix = ""},
    },
    ['offroad'] = {
        {name ="BFINJECTION", CustomeVhix = ""},
        {name ="BIFTA", CustomeVhix = ""},
        {name ="BLAZER", CustomeVhix = ""},
        {name ="BLAZER2", CustomeVhix = ""},
        {name ="BLAZER3", CustomeVhix = ""},
        {name ="BLAZER4", CustomeVhix = ""},
        {name ="BLAZER5", CustomeVhix = ""},
        {name ="BODHI2", CustomeVhix = ""},
        {name ="BRAWLER", CustomeVhix = ""},
        {name ="BRUISER", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="BRUISER2", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="BRUISER3", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="BRUTUS", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="BRUTUS2", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="BRUTUS3", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="CARACARA", CustomeVhix = ""},
        {name ="CARACARA2", CustomeVhix = ""}, -- Casino DLC
        {name ="DLOADER", CustomeVhix = ""},
        {name ="DUBSTA3", CustomeVhix = ""},
        {name ="DUNE", CustomeVhix = ""},
        {name ="DUNE2", CustomeVhix = ""},
        {name ="DUNE3", CustomeVhix = ""},
        {name ="DUNE4", CustomeVhix = ""},
        {name ="DUNE5", CustomeVhix = ""},
        {name ="FREECRAWLER", CustomeVhix = ""}, -- dlc (mpbattle)
        {name ="HELLION", CustomeVhix = ""}, -- Casino DLC
        {name ="INSURGENT", CustomeVhix = ""},
        {name ="INSURGENT2", CustomeVhix = ""},
        {name ="INSURGENT3", CustomeVhix = ""},
        {name ="KALAHARI", CustomeVhix = ""},
        {name ="KAMACHO", CustomeVhix = ""},
        {name ="MARSHALL", CustomeVhix = ""},
        {name ="MENACER", CustomeVhix = ""}, -- dlc (mpbattle)
        {name ="MESA3", CustomeVhix = ""},
        {name ="MONSTER", CustomeVhix = ""},
        {name ="MONSTER3", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="MONSTER4", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="MONSTER5", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="NIGHTSHARK", CustomeVhix = ""},
        {name ="RANCHERXL", CustomeVhix = ""},
        {name ="RANCHERXL2", CustomeVhix = ""},
        {name ="RCBANDITO", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name ="REBEL", CustomeVhix = ""},
        {name ="REBEL2", CustomeVhix = ""},
        {name ="RIATA", CustomeVhix = ""},
        {name ="SANDKING", CustomeVhix = ""},
        {name ="SANDKING2", CustomeVhix = ""},
        {name ="TECHNICAL", CustomeVhix = ""},
        {name ="TECHNICAL2", CustomeVhix = ""},
        {name ="TECHNICAL3", CustomeVhix = ""},
        {name ="TROPHYTRUCK", CustomeVhix = ""},
        {name ="TROPHYTRUCK2", CustomeVhix = ""},
    },
    ['industrial'] = {
        {name ="BULLDOZER", CustomeVhix = ""},
        {name ="CUTTER", CustomeVhix = ""},
        {name ="DUMP", CustomeVhix = ""},
        {name ="FLATBED", CustomeVhix = ""},
        {name ="GUARDIAN", CustomeVhix = ""},
        {name ="HANDLER", CustomeVhix = ""},
        {name ="MIXER", CustomeVhix = ""},
        {name ="MIXER2", CustomeVhix = ""},
        {name ="RUBBLE", CustomeVhix = ""},
        {name ="TIPTRUCK", CustomeVhix = ""},
        {name ="TIPTRUCK2", CustomeVhix = ""},
    },
    ['utility'] = {
        {name ="AIRTUG", CustomeVhix = ""},
        {name ="CADDY", CustomeVhix = ""},
        {name ="CADDY2", CustomeVhix = ""},
        {name ="CADDY3", CustomeVhix = ""},
        {name ="DOCKTUG", CustomeVhix = ""},
        {name ="FORKLIFT", CustomeVhix = ""},
        {name ="TRACTOR2", CustomeVhix = ""}, -- Fieldmaster
        {name ="TRACTOR3", CustomeVhix = ""}, -- Fieldmaster
        {name ="MOWER", CustomeVhix = ""}, -- Lawnmower
        {name ="RIPLEY", CustomeVhix = ""},
        {name ="SADLER", CustomeVhix = ""},
        {name ="SADLER2", CustomeVhix = ""},
        {name ="SCRAP", CustomeVhix = ""},
        {name ="TOWTRUCK", CustomeVhix = ""},
        {name ="TOWTRUCK2", CustomeVhix = ""},
        {name ="TRACTOR", CustomeVhix = ""}, -- Tractor (rusted/old)
        {name ="UTILLITRUCK", CustomeVhix = ""},
        {name ="UTILLITRUCK2", CustomeVhix = ""},
        {name ="UTILLITRUCK3", CustomeVhix = ""},

        --/ Trailers

        --/ Army Trailers
        {name ="ARMYTRAILER", CustomeVhix = ""}, -- [' military']
        {name ="ARMYTRAILER2", CustomeVhix = ""}, -- Civillian
        {name ="FREIGHTTRAILER", CustomeVhix = ""}, -- Extended
        {name ="ARMYTANKER", CustomeVhix = ""}, -- Army Tanker
        {name ="TRAILERLARGE", CustomeVhix = ""}, -- Mobile Operations Center
    
        --/ Large Trailers
        {name ="DOCKTRAILER", CustomeVhix = ""}, -- Shipping Container Trailer
        {name ="TR3", CustomeVhix = ""}, -- Large Boat Trailer (Sailboat)
        {name ="TR2", CustomeVhix = ""}, -- Large Vehicle Trailer
        {name ="TR4", CustomeVhix = ""}, -- Large Vehicle Trailer (Mission Cars)
        {name ="TRFLAT", CustomeVhix = ""}, -- Large Flatbed Empty Trailer
        {name ="TRAILERS", CustomeVhix = ""}, -- Container/Curtain Trailer
        {name ="TRAILERS4", CustomeVhix = ""}, -- White Container Trailer
        {name ="TRAILERS2", CustomeVhix = ""}, -- Box Trailer
        {name ="TRAILERS3", CustomeVhix = ""}, -- Ramp Box Trailer
        {name ="TVTRAILER", CustomeVhix = ""}, -- Fame or Shame Trailer
        {name ="TRAILERLOGS", CustomeVhix = ""}, -- Logs Trailer
        {name ="TANKER", CustomeVhix = ""}, -- Ron Oil Tanker Trailer
        {name ="TANKER2", CustomeVhix = ""}, -- Ron Oil Tanker Trailer (Heist Version)
    
        --/ Medium Trailers
        {name ="BALETRAILER", CustomeVhix = ""}, -- (Tractor Hay Bale Trailer)
        {name ="GRAINTRAILER", CustomeVhix = ""}, -- (Tractor Grain Trailer)
    
        -- Ortega's trailer, we don't want this one because you can't drive them.
        --"PROPTRAILER",
        --/ Small Trailers
        {name ="BOATTRAILER", CustomeVhix = ""}, -- Small Boat Trailer
        {name ="RAKETRAILER", CustomeVhix = ""}, -- Tractor Tow Plow/Rake
        {name ="TRAILERSMALL", CustomeVhix = ""}, -- Small ['utility'] Trailer
    },
    ['vans'] = {
        {name ="BISON", CustomeVhix = ""},
        {name ="BISON2", CustomeVhix = ""},
        {name ="BISON3", CustomeVhix = ""},
        {name ="BOBCATXL", CustomeVhix = ""},
        {name ="BOXVILLE", CustomeVhix = ""},
        {name ="BOXVILLE2", CustomeVhix = ""},
        {name ="BOXVILLE3", CustomeVhix = ""},
        {name ="BOXVILLE4", CustomeVhix = ""},
        {name ="BOXVILLE5", CustomeVhix = ""},
        {name ="BURRITO", CustomeVhix = ""},
        {name ="BURRITO2", CustomeVhix = ""},
        {name ="BURRITO3", CustomeVhix = ""},
        {name ="BURRITO4", CustomeVhix = ""},
        {name ="BURRITO5", CustomeVhix = ""},
        {name ="CAMPER", CustomeVhix = ""},
        {name ="GBURRITO", CustomeVhix = ""},
        {name ="GBURRITO2", CustomeVhix = ""},
        {name ="JOURNEY", CustomeVhix = ""},
        {name ="MINIVAN", CustomeVhix = ""},
        {name ="MINIVAN2", CustomeVhix = ""},
        {name ="PARADISE", CustomeVhix = ""},
        {name ="PONY", CustomeVhix = ""},
        {name ="PONY2", CustomeVhix = ""},
        {name ="RUMPO", CustomeVhix = ""},
        {name ="RUMPO2", CustomeVhix = ""},
        {name ="RUMPO3", CustomeVhix = ""},
        {name ="SPEEDO", CustomeVhix = ""},
        {name ="SPEEDO2", CustomeVhix = ""},
        {name ="SPEEDO4", CustomeVhix = ""}, -- dlc (mpbattle)
        {name ="SURFER", CustomeVhix = ""},
        {name ="SURFER2", CustomeVhix = ""},
        {name ="TACO", CustomeVhix = ""},
        {name ="YOUGA", CustomeVhix = ""},
        {name ="YOUGA2", CustomeVhix = ""},
    },
    ['cycles'] = {
        {name ="BMX", CustomeVhix = ""},
        {name ="CRUISER", CustomeVhix = ""},
        {name ="FIXTER", CustomeVhix = ""},
        {name ="SCORCHER", CustomeVhix = ""},
        {name ="TRIBIKE", CustomeVhix = ""},
        {name ="TRIBIKE2", CustomeVhix = ""},
        {name ="TRIBIKE3", CustomeVhix = ""},
    },
    ['boats'] = {
        {name ="DINGHY", CustomeVhix = ""},
        {name ="DINGHY2", CustomeVhix = ""},
        {name ="DINGHY3", CustomeVhix = ""},
        {name ="DINGHY4", CustomeVhix = ""},
        {name ="JETMAX", CustomeVhix = ""},
        {name ="MARQUIS", CustomeVhix = ""},
        {name ="PREDATOR", CustomeVhix = ""},
        {name ="SEASHARK", CustomeVhix = ""},
        {name ="SEASHARK2", CustomeVhix = ""},
        {name ="SEASHARK3", CustomeVhix = ""},
        {name ="SPEEDER", CustomeVhix = ""},
        {name ="SPEEDER2", CustomeVhix = ""},
        {name = "SQUALO", CustomeVhix = ""},
        {name = "SUBMERSIBLE", CustomeVhix = ""},
        {name ="SUBMERSIBLE2", CustomeVhix = ""},
        {name ="SUNTRAP", CustomeVhix = ""},
        {name ="TORO", CustomeVhix = ""},
        {name ="TORO2", CustomeVhix = ""},
        {name ="TROPIC", CustomeVhix = ""},
        {name ="TROPIC2", CustomeVhix = ""},
        {name ="TUG", CustomeVhix = ""},
    },
    ['helicopters '] = {
        {name ="AKULA", CustomeVhix = ""},
        {name ="ANNIHILATOR", CustomeVhix = ""},
        {name ="BUZZARD", CustomeVhix = ""},
        {name ="BUZZARD2", CustomeVhix = ""},
        {name ="CARGOBOB", CustomeVhix = ""},
        {name ="CARGOBOB2", CustomeVhix = ""},
        {name ="CARGOBOB3", CustomeVhix = ""},
        {name ="CARGOBOB4", CustomeVhix = ""},
        {name = "FROGGER", CustomeVhix = ""},
        {name ="FROGGER2", CustomeVhix = ""},
        {name ="HAVOK", CustomeVhix = ""},
        {name ="HUNTER", CustomeVhix = ""},
        {name ="MAVERICK", CustomeVhix = ""},
        {name ="POLMAV", CustomeVhix = ""},
        {name ="SAVAGE", CustomeVhix = ""},
        {name ="SEASPARROW", CustomeVhix = ""},
        {name ="SKYLIFT", CustomeVhix = ""},
        {name ="SUPERVOLITO", CustomeVhix = ""},
        {name ="SUPERVOLITO2", CustomeVhix = ""},
        {name ="SWIFT", CustomeVhix = ""},
        {name ="SWIFT2", CustomeVhix = ""},
        {name ="VALKYRIE", CustomeVhix = ""},
        {name ="VALKYRIE2", CustomeVhix = ""},
        {name ="VOLATUS", CustomeVhix = ""},
    },
    ['planes'] = {
        {name ="ALPHAZ1", CustomeVhix = ""},
        {name = "AVENGER", CustomeVhix = ""},
        {name = "AVENGER2", CustomeVhix = ""},
        {name = "BESRA", CustomeVhix = ""},
        {name = "BLIMP", CustomeVhix = ""},
        {name = "BLIMP2", CustomeVhix = ""},
        {name = "BLIMP3", CustomeVhix = ""}, -- dlc (mpbattle)
        {name = "BOMBUSHKA", CustomeVhix = ""},
        {name = "CARGOPLANE", CustomeVhix = ""},
        {name = "CUBAN800", CustomeVhix = ""},
        {name = "DODO", CustomeVhix = ""},
        {name = "DUSTER", CustomeVhix = ""},
        {name = "HOWARD", CustomeVhix = ""},
        {name = "HYDRA", CustomeVhix = ""},
        {name = "JET", CustomeVhix = ""},
        {name = "LAZER", CustomeVhix = ""},
        {name = "LUXOR", CustomeVhix = ""},
        {name = "LUXOR2", CustomeVhix = ""},
        {name = "MAMMATUS", CustomeVhix = ""},
        {name = "MICROLIGHT", CustomeVhix = ""},
        {name = "MILJET", CustomeVhix = ""},
        {name = "MOGUL", CustomeVhix = ""},
        {name = "MOLOTOK", CustomeVhix = ""},
        {name = "NIMBUS", CustomeVhix = ""},
        {name = "NOKOTA", CustomeVhix = ""},
        {name = "PYRO", CustomeVhix = ""},
        {name = "ROGUE", CustomeVhix = ""},
        {name = "SEABREEZE", CustomeVhix = ""},
        {name = "SHAMAL", CustomeVhix = ""},
        {name = "STARLING", CustomeVhix = ""},
        {name = "STRIKEFORCE", CustomeVhix = ""}, -- dlc (mpbattle)
        {name = "STUNT", CustomeVhix = ""},
        {name = "TITAN", CustomeVhix = ""},
        {name = "TULA", CustomeVhix = ""},
        {name = "VELUM", CustomeVhix = ""},
        {name = "VELUM2", CustomeVhix = ""},
        {name = "VESTRA", CustomeVhix = ""},
        {name = "VOLATOL", CustomeVhix = ""},
    },
    ['service'] = {
        {name = "AIRBUS", CustomeVhix = ""},
        {name = "BRICKADE", CustomeVhix = ""},
        {name = "BUS", CustomeVhix = ""},
        {name = "COACH", CustomeVhix = ""},
        {name = "PBUS2", CustomeVhix = ""}, -- dlc (mpbattle)
        {name = "RALLYTRUCK", CustomeVhix = ""},
        {name = "RENTALBUS", CustomeVhix = ""},
        {name = "TAXI", CustomeVhix = ""},
        {name = "TOURBUS", CustomeVhix = ""},
        {name = "TRASH", CustomeVhix = ""},
        {name = "TRASH2", CustomeVhix = ""},
        {name = "WASTELANDER", CustomeVhix = ""},
    },
    ['emergency'] = {
        {name = "AMBULANCE", CustomeVhix = ""},
        {name = "FBI", CustomeVhix = ""},
        {name = "FBI2", CustomeVhix = ""},
        {name = "FIRETRUK", CustomeVhix = ""},
        {name = "LGUARD", CustomeVhix = ""},
        {name = "PBUS", CustomeVhix = ""},
        {name = "POLICE", CustomeVhix = ""},
        {name = "POLICE2", CustomeVhix = ""},
        {name = "POLICE3", CustomeVhix = ""},
        {name ="POLICE4", CustomeVhix = ""},
        {name ="POLICEB", CustomeVhix = ""},
        {name = "POLICEOLD1", CustomeVhix = ""},
        {name = "POLICEOLD2", CustomeVhix = ""},
        {name = "POLICET", CustomeVhix = ""},
        {name =  "POLMAV", CustomeVhix = ""},
        {name = "PRANGER", CustomeVhix = ""},
        {name = "PREDATOR", CustomeVhix = ""},
        {name = "RIOT", CustomeVhix = ""},
        {name = "RIOT2",}
        {name = "SHERIFF", CustomeVhix = ""},
        {name = "SHERIFF2", CustomeVhix = ""},
    },
    ['military'] = {
        {name = "APC", CustomeVhix = ""},
        {name = "BARRACKS", CustomeVhix = ""},
        {name = "BARRACKS2", CustomeVhix = ""},
        {name = "BARRACKS3", CustomeVhix = ""},
        {name = "BARRAGE", CustomeVhix = ""},
        {name = "CHERNOBOG", CustomeVhix = ""},
        {name = "CRUSADER", CustomeVhix = ""},
        {name = "HALFTRACK", CustomeVhix = ""},
        {name = "KHANJALI", CustomeVhix = ""},
        {name = "RHINO", CustomeVhix = ""},
        {name = "SCARAB", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "SCARAB2", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "SCARAB3", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "THRUSTER", CustomeVhix = ""}, -- Jetpack
        {name = "TRAILERSMALL2", CustomeVhix = ""}, -- Anti Aircraft Trailer
    },
    [' commercial'] = {
        {name = "BENSON", CustomeVhix = ""},
        {name = "BIFF", CustomeVhix = ""},
        {name = "CERBERUS", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "CERBERUS2", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "CERBERUS3", CustomeVhix = ""}, -- MPCHRISTMAS2018 DLC
        {name = "HAULER", CustomeVhix = ""},
        {name ="HAULER2", CustomeVhix = ""},
        {name ="MULE", CustomeVhix = ""},
        {name ="MULE2", CustomeVhix = ""},
        {name ="MULE3", CustomeVhix = ""},
        {name ="MULE4", CustomeVhix = ""}, -- dlc (mpbattle)
        {name = "PACKER", CustomeVhix = ""},
        {name = "PHANTOM", CustomeVhix = ""},
        {name = "PHANTOM2", CustomeVhix = ""},
        {name = "PHANTOM3", CustomeVhix = ""},
        {name = "POUNDER", CustomeVhix = ""},
        {name = "POUNDER2", CustomeVhix = ""}, -- dlc (mpbattle)
        {name = "STOCKADE", CustomeVhix = ""},
        {name = "STOCKADE3", CustomeVhix = ""},
        {name = "TERBYTE", CustomeVhix = ""}, -- dlc (mpbattle)
    },
    [' trains'] = {
        {name = "CABLECAR", CustomeVhix = ""},
        {name = "FREIGHT", CustomeVhix = ""},
        {name = "FREIGHTCAR", CustomeVhix = ""},
        {name = "FREIGHTCONT1", CustomeVhix = ""},
        {name = "FREIGHTCONT2", CustomeVhix = ""},
        {name = "FREIGHTGRAIN", CustomeVhix = ""},
        {name = "METROTRAIN", CustomeVhix = ""},
        {name = "TANKERCAR", CustomeVhix = ""},
    },

}

_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu( "Dealership", "CityDealership")
mainMenu:SetMenuWidthOffset(90)
_menuPool:Add(mainMenu)

function Dealership()
    for, Name, Dealership in pairs(VehicleMenu) do
        local Dealerships = _menuPool:AddSubMenu(menu, Name, "~b~→→→ ")
        for _, DealershipVehicle in pairs(Dealerships) do 
            local Dealership2 = _menuPool:AddSubMenu(Dealership, Name, "~b~→→→ ")
            local Seeall = NativeUI.CreateItem("~b~→→→ ", "")
            Dealership2:AddItem(Seeall)

            Seeall.Activated = function(sender, item, index)
                CustomPedVeicle(DealershipVehicle.CustomeVhix, DealershipVehicle.Livery, DealershipVehicle.extras)
            end
        end
    end
end

function OpenVehicleSpawner()

    _menuPool:ProcessMenus()

    mainMenu:Visible(not mainMenu:Visible())
end

RegisterCommand("Dealership", function() 
    mainMenu:Visible(not mainMenu:Visible())
end)