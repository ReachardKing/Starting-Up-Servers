-- Police
--------------------------------------------------------------------------------
------------------------------Police System-------------------------------------
--------------------------------------------------------------------------------


--Functions--

RegisterCommand("Policeon", function()
    if not IsCop then
        IsCop = true
    end
end)

RegisterCommand("Policeoff", function()
    if IsCop == true then
        IsCop = false  
    end 
end)

function Policeonduty()
IsCop = true
local player = GetPlayerPed(-1)
local model = GetHashKey("s_m_y_cop_01") -- Change model name here <-
    RequestModel(model)
    while not HasModelLoaded(model) do
       RequestModel(model)
       IsEMS = false
       Citizen.Wait(0)
    end
        SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)
        SetPlayerModel(player, GetHashKey(model))
        SetModelAsNoLongerNeeded(model)                 
        SetPedArmour(player, 200)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), 1000, false)
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLARE"), 5, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_NIGHTSTICK"), 1000, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_STUNGUN"), 1000, false)
end

function Policeoffduty()
    IsCop = false
            local model = GetHashKey("s_m_y_cop_01") -- Change model name here <-
                RequestModel(model)
                while not HasModelLoaded(model) do
                RequestModel(model)
                Citizen.Wait(0)
            end
                SetPlayerModel(PlayerId(), model)
                SetModelAsNoLongerNeeded(model)
                SetPlayerModel(player, GetHashKey(model))
                SetModelAsNoLongerNeeded(model)
                SetPedComponentVariation(GetPlayerPed(-1), 8, 1, 0, 0) --shirt
                SetPedComponentVariation(GetPlayerPed(-1), 11, 3, 7, 0) --torso2 (shirt/jacket)
                SetPedComponentVariation(GetPlayerPed(-1), 9, 13, 0, 0) --armour
                SetPedComponentVariation(GetPlayerPed(-1), 3, 16, 0, 0) --arms
                SetPedComponentVariation(GetPlayerPed(-1), 4, 35, 0, 0) --trousers
                SetPedComponentVariation(GetPlayerPed(-1), 7, 8, 0, 0) --chain
                SetPedComponentVariation(GetPlayerPed(-1), 5, 0, 0, 0) --gloves
                SetPedComponentVariation(GetPlayerPed(-1), 6, 3, 0, 0) --shoes
end

-- [ New -449.53, 6011.03, 31.72 | [ old -449.64, 6012.4, 31.72],-449.85, 6016.22, 31.72] for pleto
-- {old  440.48, -976.32, 30.69}, {New 450.39, -992.43, 30.69} -- Mission Row
-- [old 72, 3689.58, 34.27] | [New 1849.96, 3696.83, 34.26]
-- [629.62, -1.16, 82.77] -- VineWood Bowl
 
--Sign on/off--

Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        local pl = GetEntityCoords(player)
            Citizen.Wait(0)
                if GetDistanceBetweenCoords(pl.x, pl.y, pl.z, 1849.96, 3696.83, 34.26) < 1.0 and IsCop == false then -- <-- Sandy Shores --
                   DrawText3Ds(1849.96, 3696.83, 34.26, "~w~Press [~g~E~w~] Go onduty as a police officer")
                if IsControlJustReleased(1, 38) then 
                    Policeonduty()
                ShowNotification("~g~Onduty as a police officer")
            end
        elseif 
            Vdist2(pl.x, pl.y, pl.z, -449.53, 6011.03, 31.72) < 1.0 and IsCop == false then -- <-- Paleto Bay --
                 DrawText3Ds(-449.53, 6011.03, 31.72, "~w~Press [~g~E~w~] Go onduty as a police officer")
                if IsControlJustReleased(1, 38) then 
                    Policeonduty()
                    ShowNotification("~g~Onduty as a police officer")
                end
        elseif 
            Vdist2(pl.x, pl.y, pl.z,  450.39, -992.43, 30.69) < 1.0 and IsCop == false then -- <-- Mission Row --
                 DrawText3Ds(450.39, -992.43, 30.69, "~w~Press [~g~E~w~] Go onduty as a police officer")
                if IsControlJustReleased(1, 38) then 
                    Policeonduty()
                    ShowNotification("~g~Onduty as a police officer")
                end             
                elseif GetDistanceBetweenCoords(pl.x, pl.y, pl.z, 1849.96, 3696.83, 34.26) < 1.0 and IsCop == true then  -- sandy offduty
                DrawText3Ds(1849.96, 3696.83, 34.26, "~w~Press [~g~E~w~] Go offduty as a police officer")
            if IsControlJustReleased(1, 38) then 
                Policeoffduty()
                ShowNotification("~g~Offduty as a police officer")
                end
            elseif GetDistanceBetweenCoords(pl.x, pl.y, pl.z,-449.53, 6011.03, 31.72) < 1.0 and IsCop == true then  -- paleto offduty
                DrawText3Ds(-449.53, 6011.03, 31.72, "~w~Press [~g~E~w~] Go offduty as a police officer")
            if IsControlJustReleased(1, 38) then 
                Policeoffduty()
                ShowNotification("~g~Offduty as a police officer")
                end
            elseif GetDistanceBetweenCoords(pl.x, pl.y, pl.z, 450.39, -992.43, 30.69) < 1.0 and IsCop == true then  -- mision row ofduty
                DrawText3Ds(450.39, -992.43, 30.69, "~w~Press [~g~E~w~] Go offduty as a police officer")
            if IsControlJustReleased(1, 38) then 
                Policeoffduty()
                ShowNotification("~g~Offduty as a police officer")
            end         
        end
    end
end)

-- EMS/FIRE

--------------------------------------------------------------------------------
------------------------------EMS/FIRE System-----------------------------------
--------------------------------------------------------------------------------


--Functions--

function fireonduty()
    IsEMS = true
    local player = GetPlayerPed(-1)
    local model = GetHashKey("s_m_y_fireman_01") -- Change model name here <-
    IsCop = false
            RequestModel(model)
            while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
        end
            SetPlayerModel(PlayerId(), model)
            SetModelAsNoLongerNeeded(model)
            SetPlayerModel(player, GetHashKey(model))
            SetModelAsNoLongerNeeded(model)                 
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false)

end

function emsonduty()
    IsEMS = true
    local player = GetPlayerPed(-1)
    local model = GetHashKey("s_m_m_paramedic_01") -- Change model name here <-
    IsCop = false
            RequestModel(model)
            while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
        end
            SetPlayerModel(PlayerId(), model)
            SetModelAsNoLongerNeeded(model)
            SetPlayerModel(player, GetHashKey(model))
            SetModelAsNoLongerNeeded(model)                 
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false)

end

local vehs = {
    [1] = {["x"] = 1710.89, ["y"] = 3594.51, ["z"] = 35.42, "ambulance"},
}

Citizen.CreateThread(function()
while true do
    Citizen.Wait(0)
    if IsPlayerFreeAiming(GetPlayerPed(-1)) then 
        print("aiming")
    end
end 
end)


function emsoffduty()
IsEMS = false
        local model = GetHashKey("s_m_m_paramedic_01") -- Change model name here <-
        RequestModel(model)
        while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
        SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)
        SetPlayerModel(player, GetHashKey(model))
        SetModelAsNoLongerNeeded(model)
        SetPedComponentVariation(GetPlayerPed(-1), 8, 1, 0, 0) --shirt
        SetPedComponentVariation(GetPlayerPed(-1), 11, 3, 7, 0) --torso2 (shirt/jacket)
        SetPedComponentVariation(GetPlayerPed(-1), 9, 13, 0, 0) --armour
        SetPedComponentVariation(GetPlayerPed(-1), 3, 16, 0, 0) --arms
        SetPedComponentVariation(GetPlayerPed(-1), 4, 35, 0, 0) --trousers
        SetPedComponentVariation(GetPlayerPed(-1), 7, 8, 0, 0) --chain
        SetPedComponentVariation(GetPlayerPed(-1), 5, 0, 0, 0) --gloves
        SetPedComponentVariation(GetPlayerPed(-1), 6, 3, 0, 0) --shoes
end


-- Sandy Spawn --

function spawnambo()
local model = "ambulance" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, 1709.11, 3594.16, 35.42, 207.8)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end 

function spawnfire()
local model = "firetruk" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, 1709.11, 3594.16, 35.42, 207.8)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end

-- Paleto Spawn -- 

function spawnambo2()
local model = "ambulance" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, -369.52, 6126.9, 31.44, 43.21)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end 

function spawnfire2()
local model = "firetruk" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, -370.4, 6127.5, 31.44, 43.21)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end

-- City Spawn --

function spawnambo3()
local model = "ambulance" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, 365.57, -593.25, 28.69, 338.26)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end 

function spawnfire3()
local model = "firetruk" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, 365.57, -593.25, 28.69, 338.26)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end

--Sign on/off--

-- Coords to save --


-- 1690.08, 3581.64, 35.62 <-- Sandy Shores Sign on/off--
-- 1707.34, 3593.75, 35.57 <-- Sandy Shores Spawner -- 

-- -379.95, 6118.63, 31.85 <-- Paleto Sign On/off -- 
-- -369.52, 6126.9, 31.44 <-- Paleto selector  --
-- -369.52, 6126.9, 31.44 <-- Paleto Spawner  --

Citizen.CreateThread(function()
while true do
    local player = GetPlayerPed(-1)
    local pl = GetEntityCoords(player, true)
    Wait(0)
        if Vdist2(pl.x, pl.y, pl.z, -379.95, 6118.63, 31.85) < 1.0 and IsEMS == false then 
        DrawText3Ds(-379.95, 6118.63, 31.85, "~w~Press [~g~E~w~] To go on duty as EMS OR [~g~G~w~] To go onduty as fire") -- Blane County Fire Department
        if IsControlJustReleased(1, 38) then 
            emsonduty()
            ShowNotification("~g~You are now on as EMS")
        elseif 
            IsControlJustReleased(1, 183) then 
            fireonduty()
            ShowNotification("~g~You are now on as Firefighter")
        end
        elseif
        Vdist2(pl.x, pl.y, pl.z, 1690.08, 3581.64, 35.62) < 1.0 and IsEMS == false then 
        DrawText3Ds( 1690.08, 3581.64, 35.62, "~w~Press [~g~E~w~] To go on duty as EMS OR [~g~G~w~] To go onduty as fire") -- SandyShores Firesation
        if IsControlJustReleased(1, 38) then 
            emsonduty()
            ShowNotification("~g~You are now on as EMS")
        elseif
        IsControlJustReleased(1, 183) then
            fireonduty()
            ShowNotification("~g~You are now on as Firefighter")    
        end
        elseif 
        Vdist2(pl.x, pl.y, pl.z, 356.9, -593.86, 28.78) < 1.0 and IsEMS == false then 
        DrawText3Ds(356.9, -593.86, 28.78, "~w~Press [~g~E~w~] To go on duty as EMS OR [~g~G~w~] To go onduty as fire") --Los Santos Hospital
        if IsControlJustReleased(1, 38) then 
            emsonduty()
            ShowNotification("~g~You are now on as EMS")
        elseif 
            IsControlJustReleased(1, 183) then 
            fireonduty()
            ShowNotification("~g~You are now on as Firefighter")
        end         
        elseif
        Vdist2(pl.x, pl.y, pl.z, 1690.08, 3581.64, 35.62) < 1.0 and IsEMS == true then 
        DrawText3Ds(1690.08, 3581.64, 35.62, "~w~Press [~g~E~w~] To go off duty ") -- Offduty for Sandyshores Firestation
        if IsControlJustReleased(1, 38) then 
        emsoffduty()
        ShowNotification("~g~You are now off as EMS")
        end
        elseif
        Vdist2(pl.x, pl.y, pl.z, -379.95, 6118.63, 31.85) < 1.0 and IsEMS == true then 
        DrawText3Ds(-379.95, 6118.63, 31.85, "~w~Press [~g~E~w~] To go off duty ") -- Offduty Blanecount
        if IsControlJustReleased(1, 38) then 
        emsoffduty()
        ShowNotification("~g~You are now off as EMS")
        end
        elseif
        Vdist2(pl.x, pl.y, pl.z, 356.9, -593.86, 28.78) < 1.0 and IsEMS == true then 
        DrawText3Ds(356.9, -593.86, 28.78, "~w~Press [~g~E~w~] To go off duty ") -- Los Sanstos Hospital
        if IsControlJustReleased(1, 38) then 
        emsoffduty()
        ShowNotification("~g~You are now off as EMS")
        end                         
    end
end
end)

-- Ambulance Spawn -- 

Citizen.CreateThread(function()
while true do
    local player = GetPlayerPed(-1)
    local pl = GetEntityCoords(player)
        Citizen.Wait(0)
        if IsEMS == true then
        if Vdist2(pl.x, pl.y, pl.z, 1707.34, 3593.75, 35.57) < 2.0 then
               DrawText3Ds(1707.34, 3593.75, 35.57, "~w~Press [~g~E~w~] To spawn an ambulance or Press [~g~G~w~] To spawn a Firetruck")
        if IsControlJustReleased(1, 38) then 
            spawnambo()
        elseif IsControlJustReleased(1, 183) then 
            spawnfire()
            ShowNotification("~g~Spawned")
            end
        elseif
            Vdist2(pl.x, pl.y, pl.z, -376.89, 6124.55, 31.44) < 2.0 and IsEMS == true then
            DrawText3Ds(-376.89, 6124.55, 31.44, "~w~Press [~g~E~w~] To spawn an ambulance or Press [~g~G~w~] To spawn a Firetruck")
        if IsControlJustReleased(1, 38) then
            spawnambo2()
        elseif
            IsControlJustReleased(1, 183) then
            spawnfire2()
            ShowNotification("~g~Spawned")
            end
        elseif
            Vdist2(pl.x, pl.y, pl.z, 358.38, -589.35, 28.8) < 2.0 and IsEMS == true then
            DrawText3Ds(358.38, -589.35, 28.8, "~w~Press [~g~E~w~] To spawn an ambulance or Press [~g~G~w~] To spawn a Firetruck")
        if IsControlJustReleased(1, 38) then
            spawnambo3()
        elseif
            IsControlJustReleased(1, 183) then
            spawnfire3()
            ShowNotification("~g~Spawned")
            end             
        end
    end
end
end)
