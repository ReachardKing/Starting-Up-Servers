
local blips = {
    -- The Prison
    {title="Bolingbroke Penitentiary", colour=75, id=238, x=1807.53, y=2605.59, z=45.565},
    {title="Prison", colour=63, id=188, scale=1.0, x = 1845.89,  y = 2585.59,  z = 45.67},

    -- Airports 
    {title="Airport", colour=3, id=90, x=1721.0, y=3255.07, z=41.148},
    {title="Airport", colour=3, id=90, x=2149.59, y=4817.6, z=41.268},
    {title="Airport", colour=3, id=90, x=-1045.49, y=-2751.304, z=21.363},
    {title="Airfield", colour=83, id=251, scale=1.0, x = 2129.05, y = 4803.64, z = 41.02},
    {title="Airfield", colour=83, id=251, scale=1.0, x = 1740.26, y = 3268.11, z = 41.22},

    -- Police Departments
    {title="Police Station", colour=74, id=60, x=-445.202, y=6014.36, z=31.7164},
    {title="Police Station", colour=74, id=60, x=1854.21, y=3685.51, z=34.2671},
    {title="Police Station", colour=74, id=60, x=642.001, y=0.638351, z=82.7869},
    {title="Police Station", colour=74, id=60, x=-1090.02, y=-814.73, z=19.29},
    {title="Police Station", colour=74, id=60, x=360.624, y=-1584.47, z=29.2919},
    {title="Police Station", colour=74, id=60, x=825.987, y=-1290.03, z=28.2407},
    {title="Police Station", colour=74, id=60, x=1853.16, y=3687.39, z=34.27},
    {title="Police Station", colour=74, id=60, x=-445.71, y=6013.67, z=31.72},
    {title="Police Station", colour=74, id=60, x=446.19, y=-984.9, z=30.69},
    {title="Police Station", colour=74, id=60, x=-1633.48, y=-1020.35, z=13.15},
    {title="Police Station", colour=74, id=60, x=2744.73, y=3473.68, z=55.65},
    {title="Police Station", colour=74, id=60, x=-331.58, y=-2792.3, z=5.18},
    {title="Police Station", colour=74, id=60, x=379.13, y=792.57, z=190.41},
    {title="Police Station", colour=74, id=60, x=-562.19, y=-131.18, z=38.43},
    {title="Police Station", colour=74, id=60, x=2475.65, y=-384.43, z=94.4},
    {title="Police Station", colour=74, id=60, x=-2209.49, y=-374.52, z=13.32},
    {title="Police Station", colour=74, id=60, x=1652.63, y=4882.82, z=42.16},
    -- Fire Departments
    {title="Fire Station", colour=1, id=60, x=215.786, y=-1642.49, z=29.7138},
    {title="Fire Station", colour=1, id=60, x=1202.38, y=-1460.13, z=34.7642},
    {title="Fire Station", colour=1, id=60, x=-1087.93, y=-2374.1, z=13.9451},
    {title="Fire Station", colour=1, id=60, x=-379.942, y=6118.73, z=31.8456},
    {title="Fire Station", colour=1, id=60, x=-635.992, y=-121.635, z=39.0138},
    {title="Fire Station", colour=1, id=60, x=1697.26, y=3585.46, z=35.5443},
    {title="Fire Station", colour=1, id=60, x=-2113.74, y=2831.58, z=32.8093},
    {title="Fire Station", colour=1, id=60, x=1778.85, y=4601.99, z=37.72},
    -- Hostipals
    {title="Hospital", colour=74, id=61, x=337.238, y=-1396.28, z=32.5092},
    {title="Hospital", colour=74, id=61, x=-450.586, y=-340.387, z=34.5014},
    {title="Hospital", colour=74, id=61, x=1839.74, y=3672.0, z=34.2767},
    {title="Hospital", colour=74, id=61, x=360.222, y=-582.222, z=28.8212},
    {title="Hospital", colour=74, id=61, x=-243.463, y=6327.87, z=32.4262},
    {title="Hospital", colour=74, id=61, x=-677.003, y=310.929, z=83.0841},
    {title="Hospital", colour=74, id=61, x=1151.31, y=-1529.95, z=34.9904},
    {title="Hospital", colour=74, id=61, x=-874.614, y=-308.375, z=39.5448},
    {title="Hospital", colour=74, id=61, x=-1854.98, y=-347.03, z=49.43},
    -- Mechanic
    {title="Vehicle Mechanic", colour=31, id=446, x=-356.146, y=-134.69, z=39.0097},
    {title="Vehicle Mechanic", colour=31, id=446, x=723.013, y=-1088.92, z=22.1829},
    {title="Vehicle Mechanic", colour=31, id=446, x=-1145.67, y=-1991.17, z=13.162},
    {title="Vehicle Mechanic", colour=31, id=446, x=1174.76, y=2645.46, z=37.7545},
    {title="Vehicle Mechanic", colour=31, id=446, x = 109.76, y = 6628.69, z = 31.79},-- This one is the one 
    {title="Vehicle Mechanic", colour=31, id=446, x=-207.978, y=-1309.64, z=-31.29},
    {title="Vehicle Mechanic", colour=31, id=446, x=1767.62, y=3329.69, z=41.44},
    -- Job Centre & open Interiors 
    {title="Job Centre", colour=33, id=438, x=-264.58, y=-963.7, z=31.223},
    {title="Job Centre", colour=33, id=438, x=-233.49, y=-918.14, z=32.31},
    
    {title="Crucial Fix", colour=3, id=289, x =273.289, y =-831.91, z =29.41},
    {title="Hidden House", colour=3, id=289, x =35.91, y =2870.29, z =59.61},
    {title="Ware House", colour=3, id=289, x = 939.65, y = -1490.15, z = 30.16},
    {title="Grove House", colour=3, id=289, x =114.41, y =-1962.5, z =21.32},
    {title="Restaurant", colour=3, id=289, x= 116.36, y=-1038.98, z =29.27},
    {title="Burger Shot", colour=3, id=289, x=-1184.57, y=-884.7, z=14.03},
    {title="Meath House", colour=3, id=289, x=1956.78, y=5175.94, z=47.98},
    {title="Weazel News", colour=3, id=289, x=-595.38, y=-928.89, z=23.87},
    {title="Super Store", colour=3, id=289, x=-549.11, y=-616.44, z=34.66},
    {title="justice", colour=3, id=109, x=-544.77, y=-203.75, z=38.21},    
    {title="Gruppe 6", colour=3, id=289, x=-231.01, y=-849.82, z=30.69},
    {title="Cafe", colour=12, id=289, x=-1111.62, y=-1454.96, z=5.37},
    {title="Motel", colour=3, id=40, x=326.18, y=-210.7, z=54.09},


    -- A few ATM's within the city.
    {title="ATM", colour=2, id=108, x=89.9733, y=2.18227, z=68.2283},
    {title="ATM", colour=2, id=108, x=-526.065, y=-1221.99, z=18.4549},
    {title="ATM", colour=2, id=108, x=711.389, y=-820.833, z=23.6155},
    {title="ATM", colour=2, id=108, x=-2073.44, y=-317.245, z=13.316},
    {title="ATM", colour=2, id=108, x=-821.17, y=-1083.29, z=11.1324},
    {title="ATM", colour=2, id=108, x=1686.4, y=4816.36, z=42.0092},
    -- Banks
    {title="Bank", colour=2, id=431, x=-2964.76, y=482.658, z=15.7068},
    {title="Bank", colour=2, id=431, x=260.232, y=205.886, z=106.284},
    {title="Bank", colour=2, id=431, x=150.061, y=-1039.99, z=29.3778},
    {title="Bank", colour=2, id=431, x=-1213.57, y=-328.829, z=37.7908},
    {title="Bank", colour=2, id=431, x=-109.453, y=6464.05, z=31.6267},
    {title="Bank", colour=2, id=431, x=-350.03, y=-47.83, z=49.05},
    {title="FLECCA", colour=2, id=434, x=324.16, y=-881.59, z=29.3},
    --Race Track
    {title="Race Track", colour=6, id=147, x=1131.91, y=101.72, z=83.023},
    -- Casino
    {title="Casino", colour=81, id=277, x=930.71, y=41.14, z=78.513},
    {title="Iligal Casino", colour=1, id=277, x=906.47, y=-943.22, z=44.42},

    -- LTD'S SHhps Los Santos
    {title = "24/7", colour=2, id=52, x = -1489.29, y = -381.6, z =40.6}, -- [Prosperity Street]
    {title = "24/7", colour=2, id=52, x = -1225.36, y = -904.24, z = 12.33}, -- [Vespucci Avenue]
    {title = "24/7", colour=2, id=52, x = -711.93, y = -914.76, z = 19.22}, -- [Little Seoul]
    {title = "24/7", colour=2, id=52, x = 29.11, y = -1347.09, z = 29.5}, -- [Innocence BLvd]
    {title = "24/7", colour=2, id=52, x = -51.64, y = -1754.82, z = 29.42},-- [Davis Avenue]
    {title = "24/7", colour=2, id=52, x = 1159.65, y = -324.24, z = 69.21}, -- [West Mirrrir Park]
    {title = "24/7", colour=2, id=52, x = 1138.86, y = -981.01, z = 46.42}, -- [EL Ranco Bvld]
    {title = "24/7", colour=2, id=52, x = 377.15, y = 324.69, z = 103.57}, -- [Clinton Avenue]
    {title = "24/7", colour=2, id=52, x = 1700.6, y = 4927.9, z = 42.06}, -- [Grapeseed Main]   
    {title = "24/7", colour=2, id=52, x = 1964.1, y = 3742.04, z = 32.34}, -- [Alhambra Drive]
    {title = "24/7", colour=2, id=52, x = -2959.69, y = 387.06, z = 14.04}, -- [Great Oean Highway]
    {title = "24/7", colour=2, id=52, x = 2680.16, y = 3283.83, z = 55.24}, -- [Senora Freeway]
    {title = "24/7", colour=2, id=52, x = -1426.33, y = -266.18, z = 46.29}, -- [South Rockford Drive]
    {title = "24/7", colour=2, id=52, x = -3241.52, y = 1004.4, z = 12.83}, -- East Brabareno Road
    {title = "24/7", colour=2, id=52, x = -3040.33, y = 589.25, z = 7.91}, -- East Ineseno Road
    {title = "24/7", colour=2, id=52, x = 164.5, y = 6638.47, z = 31.61}, -- West Peleto Blvd
    {title = "24/7", colour=2, id=52, x= 544.48, y = 2670.88, z = 42.16}, -- Route 68 and Harmony
    {title = "24/7", colour=2, id=52, x=1731.68, y=6412.58, z=35.04}, -- Great oean Highway

    -- CourHouse & City-Hall
    {title = "CourtHouse", colour=18, id=164, x = 236.6, y = -416.67, z = 48.08},

    {title = "City-Hall", colour=11, id=274, x = 276.23, y = -268.85, z = 53.94},

    {title = "LestersWareHouse", colour=23, id=439, x = 717.43, y = -976.93, z = 24.52},

    {title = "Driving School", colour=27, id=457, x =214.06, y = -1392.8, z = 30.58},

    {title = "Strip Club", colour=27, id=121, x = 128.39, y = -1297.75, z = 29.27},

    -- Gas Stations
    {title="Gas Station", colour=1, id=361, x=49.4187,   y=2778.793,  z=58.043},
    {title="Gas Station", colour=1, id=361, x=263.894,   y=2606.463,  z=44.983},
    {title="Gas Station", colour=1, id=361, x=1039.958,  y=2671.134,  z=39.550},
    {title="Gas Station", colour=1, id=361, x=1207.260,  y=2660.175,  z=37.899},
    {title="Gas Station", colour=1, id=361, x=2539.685,  y=2594.192,  z=37.944},
    {title="Gas Station", colour=1, id=361, x=2679.858,  y=3263.946,  z=55.240},
    {title="Gas Station", colour=1, id=361, x=1687.156,  y=4929.392,  z=42.078},
    {title="Gas Station", colour=1, id=361, x=1701.314,  y=6416.028,  z=32.763},
    {title="Gas Station", colour=1, id=361, x=179.857,   y=6602.839,  z=31.868},
    {title="Gas Station", colour=1, id=361, x=-94.4619,  y=6419.594,  z=31.489},
    {title="Gas Station", colour=1, id=361, x=-2554.996, y=2334.40,  z=33.078},
    {title="Gas Station", colour=1, id=361, x=-1800.375, y=803.661,  z=138.651},
    {title="Gas Station", colour=1, id=361, x=-1437.622, y=-276.747,  z=46.207},
    {title="Gas Station", colour=1, id=361, x=-2096.243, y=-320.286,  z=13.168},
    {title="Gas Station", colour=1, id=361, x=-724.619, y=-935.1631,  z=19.213},
    {title="Gas Station", colour=1, id=361, x=-526.019, y=-1211.003,  z=18.184},
    {title="Gas Station", colour=1, id=361, x=-70.2148, y=-1761.792,  z=29.534},
    {title="Gas Station", colour=1, id=361, x=265.648,  y=-1261.309,  z=29.292},
    {title="Gas Station", colour=1, id=361, x=819.653,  y=-1028.846,  z=26.403},
    {title="Gas Station", colour=1, id=361, x=1208.951, y= -1402.567, z=35.224},
    {title="Gas Station", colour=1, id=361, x=1181.381, y= -330.847,  z=69.316},
    {title="Gas Station", colour=1, id=361, x=620.843,  y= 269.100,  z=103.089},
    {title="Gas Station", colour=1, id=361, x=2581.321, y=362.039, 108.468},

    {title="Yellow Jack", colour=46, id=93, scale=0.945, x = 1994.53, y = 3049.57, z = 46.25},

    {title="Ace Liquor", colour=46, id=51, scale=0.75, x = 1394.83, y = 3604.93, z = 34.98},

    {title="Pharmacy", colour=77, id=51, scale=0.80, x = 591.04, y = 2744.77, z = 42.04},

    {title="Recycling Center", colour=69, id=365, scale=1.5, x = 2300.4, y = 3120.7, z =47.4}, 

    {title="Amunation", colour=75, id=313, scale=0.78, x = -328.67, y = 6077.67, z = 32.45},

    {title="Amunation", colour=75, id=313, scale=1.0, x = 1693.63, y = 3758.8, z = 39.18},

    {title="Amunation", colour=75, id=313, scale=1.0, x = 16.32, y = -1117.18, z = 29.79},
    
    {title ="Amunation", colour=75, id=313, scale=1.0, x = -3165, y = 1083.45, z = 20.84},

    {title="Medical Center", colour=25, id=61, scale=0.75, x = -244.69, y = 6326.11, z = 32.43},

    {title="Medical Center", colour=25, id=61, scale=1.0, x=292.53, y=-588.48, z=43.17},

    {title="Car Dealership", colour=69, id=225, scale=1.0, x=-602.56, y=-1122.17, z=22.33},

    {title="Los Santos Customs", colour=46, id=72, scale=0.70, x = 1177.02, y = 2640.78, z = 37.75},

    {title="Los Santos Customs", colour=46, id=72, scale=0.75, x = 2498.11, y = 4081.28, z = 38.28},

    {title="Los Santos Customs", colour=46, id=72, scale=0.95, x = 109.91, y = 6626.99, z = 31.79},

    {title="Robbery", colour=59, id=110, scale=0.5, x = 1999.74, y = 3048.98, z = 47.77},

    {title="Robbery", colour=59, id=110, scale=0.5, x = -103.91, y = 6477.57, z = 30.66, z = 42.16},

    {title="Robbery", colour=59, id=110, scale=0.5, x = 1960.77, y = 3748.9, z = 32.34},

    {title="Robbery", colour=59, id=110, scale=0.5, x = 1707.52, y = 4920.09, z = 41.08},

    {title="Robbery", colour=59, id=110, scale=0.5, x = 1734.48, y = 6420.27, z = 34.06},

    {title="Robbery", colour=59, id=110, scale=0.5, x = -709.75, y = -904.07, z = 18.25},

    {title="Robbery", colour=59, id=110, scale=0.5, x = -1220.8, y = -915.92, z = 10.55},

    {title="Robbery", colour=59, id=110, scale=0.5, x = -43.29, y = -1748.33, z = 28.44},

    {title="Robbery", colour=59, id=110, scale=0.5, x = 146.88, y = -1044.67, z = 28.50},

    {title="Robbery", colour=59, id=110, scale=0.5, x = 1177.17, y = 2711.8, z = 37.17},

    {title="Robbery", colour=59, id=110, scale=0.5, x = 546.66, y = 2663.59, z = 42.16},

    {title="Robbery", colour=59, id=110, scale=0.5, x = -1479.09, y = -375.11, z = 39.16},
    
    {title="Robbery", colour=59, id=110, scale=0.5, x = -1417.06, y = -261.67, z = 46.38},
    
    {title="Robbery", colour=59, id=110, scale=0.5, x = 28.18, y = -1339.83, z = 29.5},

    {title="Robbery", colour=59, id=110, scale=0.5, x = 1159.73, y = -314.05, z = 69.21},
    
    {title="Robbery", colour=59, id=110, scale=0.5, x = 378.07, y = 333.14, z = 103.57},

    {title="Robbery", colour=59, id=110, scale=0.5, x = 1126.72, y = -980.19, z = 45.42},
    
    {title="Robbery", colour=59, id=110, scale=0.5, x = 2672.87, y = 3286.54, z = 55.24},
    
    {title="Robbery", colour=59, id=110, scale=0.5, x = -3249.64, y = 1004.4, z = 12.83},

    {title="Robbery", colour=59, id=110, scale=0.5, x = -3047.7, y = 585.72, z = 7.91},

    {title="Robbery", colour=59, id=110, scale=0.5, x = 168.55, y = 6644.62, z = 31.61},

    -- {title="Robbery", colour=59, id=110, scale=0.5, },

    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = -1042.91, y = -2673.93, z = 13.83},
        
    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = -513.68, y = -602.06, z = 30.30},
        
    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = -1042.91, y = -2673.93, z = 13.83},
        
    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = -53.33, y = -1074.02, z = 27.12},
        
    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = 405.99, y = -1638.34, z = 29.29},
        
    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = 490.26, y = -1312.97, z = 29.26},
        
    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = -1175.95, y = -738.25, z = 20.07},
        
    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = -2743.69, y = 3411.93, z = 56.59},
        
    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = 851.92, y = -2434.21, z = 28.03}, -- x = -1557.85, y = 3521.07, z = 35.92
    
    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = -990.94, y = -3348.43, z = 13.94},
        
    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = -360.46, y = -154.15, z = 38.7}, --x = -189.97, y = -6272.83, z = 31.49
        
    {title = "Impound Lot", colour=64, id=477, scale=1.0, x = 227.68, y = -807.9, z = 30.53}, --x = 1107.45, y = -2281.05, z = 30.25
}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)