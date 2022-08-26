- "/unrack 2" for Shotgun -- 

RegisterCommand("loadout", function(source, args)
local player = GetPlayerPed(-1)
local loc = GetEntityCoords(PlayerPedId(), true)
    if args[1] == "1" and IsCop == true then
        print("giving weapon")
            Citizen.Wait(300)
            GiveWeaponToPed(player, GetHashKey("WEAPON_CARBINERIFLE"), 1000, false) 
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
        elseif args[1] == "2" and IsCop == true then
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), 1000, false)
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))
    end
end) 

function giveWeapon(hash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 999, false, false)
end

-- Unrack/Rack Script for police --

-- "/unrack 1" for Rifle -- 
-- "/unrack 1" for Rifle -- 
-- "/unrack 2" for Shotgun --

    RegisterCommand("unrack", function(source, args)
    local player = GetPlayerPed(-1)
    tonumber(args[1]) 
        if IsCop == true and args[1] == "1"and IsCop == true then
            RemoveWeaponFromPed(player, "WEAPON_CARBINERIFLE")
    elseif IsCop == true and args[1] == "2" and IsCop == true then 
        RemoveWeaponFromPed(player, "WEAPON_PUMPSHOTGUN")
        end 
    end) 

RegisterCommand("vest", function(source, args)
local pl = GetEntityCoords(GetPlayerPed(-1))
    if IsCop == true and GetDistanceBetweenCoords(pl.x, pl.y, pl.z,  1849.96, 3696.83, 34.26) < 3.0 then -- Only able to get vest at sandy PD
    SetPedArmour(GetPlayerPed(-1), 100)
    end
end)
TriggerEvent('chat:addSuggestion', '/vest', 'equips vest')