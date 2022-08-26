
--- DO NOT EDIT THIS
local holstered = true

-- RESTRICTED PEDS --
-- I've only listed peds that have a remote speaker mic, but any ped listed here will do the animations.
local skins = {

}

-- Add/remove weapon hashes here to be added for holster checks.
-- Add/remove weapon hashes here to be added for holster checks.
local weapons = {
    "weapon_combatpistol",
    "weapon_flashlight",
    "weapon_stungun",
    "weapon_assultsmg",
    "weapon_pistol_mk2",
    "weapon_pistol",
    "weapon_pistol_mk2",
    "weapon_combatpistol",
    "weapon_appistol",
    "weapon_stungun",
    "weapon_pistol50",
    "weapon_snspistol",
    "weapon_snspistol_mk2",
    "weapon_heavypistol",
    "weapon_vintagepistol",
    "weapon_flaregun", 
    "weapon_marksmanpistol",
    "weapon_revolver", 
    "weapon_revolver_mk2",
    "weapon_doubleaction",
    "weapon_raypistol", 
    "weapon_ceramicpistol",
    "weapon_navyrevolver",
    "weapon_microsmg",
    "weapon_smg",
    "weapon_smg_mk2",
    "weapon_assaultsmg",
    "weapon_combatpdw",
    "weapon_machinepistol",
    "weapon_minismg",
    "weapon_raycarbine",
    "weapon_pumpshotgun",
    "weapon_pumpshotgun_mk2",
    "weapon_sawnoffshotgun",
    "weapon_assaultshotgun",
    "weapon_bullpupshotgun",
    "weapon_musket",
    "weapon_heavyshotgun",
    "weapon_dbshotgun",
    "weapon_autoshotgun",
    "weapon_assaultrifle",
    "weapon_assaultrifle_mk2",
    "weapon_carbinerifle",
    "weapon_carbinerifle_mk2",
    "weapon_advancedrifle",
    "weapon_specialcarbine",
    "weapon_specialcarbine_mk2",
    "weapon_bullpuprifle",
    "weapon_bullpuprifle_mk2",
    "weapon_compactrifle",
    "weapon_mg",
    "weapon_combatmg",
    "weapon_combatmg_mk2",
    "weapon_gusenberg",
    "weapon_sniperrifle",
    "weapon_heavysniper",
    "weapon_heavysniper_mk2",
    "weapon_marksmanrifle",
    "weapon_marksmanrifle_mk2",
    "weapon_rpg",
    "weapon_grenadelauncher",
    "weapon_grenadelauncher_smoke",
    "weapon_minigun",
    "weapon_firework",
    "weapon_railgun",
    "weapon_hominglauncher",
    "weapon_compactlauncher",
    "weapon_rayminigun"
            
}
-- RADIO ANIMATIONS --


-- HOLD WEAPON HOLSTER ANIMATION --


-- HOLSTER/UNHOLSTER PISTOL --
 
 Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
        if DoesEntityExist( ped ) and not IsEntityDead( ped ) and not IsPedInAnyVehicle(PlayerPedId(), true) and IsCop == false then
            loadAnimDict( "reaction@intimidation@1h" )
            loadAnimDict( "weapons@pistol_1h@gang" )
            if CheckWeapon(ped) then
                if holstered then
                    DisableActions()
                    TaskPlayAnim(ped, "reaction@intimidation@1h", "intro", 8.0, 2.0, -1, 48, 2, 0, 0, 0 )
                    DisablePlayerFiring(GetPlayerPed(-1), true)
                    Citizen.Wait(2500)
                    Enable()
                    ClearPedTasks(ped)

                    Citizen.Wait(100)                   
                    holstered = false
                end
            elseif not CheckWeapon(ped) then
                if not holstered then
                    DisableActions()                    
                    TaskPlayAnim(ped, "reaction@intimidation@1h", "outro", 8.0, 2.0, -1, 48, 2, 0, 0, 0 )
                    DisableActions(ped)
                    Citizen.Wait(1500)
                    Enable()
                    ClearPedTasks(ped)

                    holstered = true
                end
            end
        end
    end
end)


function CheckWeapon(ped)
    for i = 1, #weapons do
        if GetHashKey(weapons[i]) == GetSelectedPedWeapon(ped) then
            return true
        end
    end
    return false
end

function DisableActions(ped)
    local ped = GetPlayerPed(-1)    
    DisableControlAction(1, 140, true)
    DisableControlAction(1, 141, true)
    DisableControlAction(1, 142, true)
    DisableControlAction(1, 37, true) -- Disables INPUT_SELECT_WEAPON (TAB)
    DisablePlayerFiring(ped, true) -- Disable weapon firing
end

function Enable(ped)
    local ped = GetPlayerPed(-1)    
    DisableControlAction(1, 140, false)
    DisableControlAction(1, 141, false)
    DisableControlAction(1, 142, false)
    DisableControlAction(1, 37, false) -- Disables INPUT_SELECT_WEAPON (TAB)
    DisablePlayerFiring(ped, false) -- Disable weapon firing
end

function loadAnimDict(dict)
    RequestAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do        
        Citizen.Wait(1)
    end
end

function CheckWeapon(ped)
    for i = 1, #weapons do
        if GetHashKey(weapons[i]) == GetSelectedPedWeapon(ped) then
            return true
        end
    end
    return false
end

function DisableActions(ped)

            DisableControlAction(0, 24, true) -- Attack
            DisableControlAction(0, 257, true) -- Attack 2
            DisableControlAction(0, 25, true) -- Aim
            DisableControlAction(0, 263, true) -- Melee Attack 1
            DisableControlAction(0, 32, true) -- W
            DisableControlAction(0, 34, true) -- A
            DisableControlAction(0, 31, true) -- S
            DisableControlAction(0, 30, true) -- D

            DisableControlAction(0, 45, true) -- Reload
            DisableControlAction(0, 22, true) -- Jump
            DisableControlAction(0, 44, true) -- Cover
            DisableControlAction(0, 37, true) -- Select Weapon
            DisableControlAction(0, 23, true) -- Also 'enter'?

            DisableControlAction(0, 288,  true) -- Disable phone
            DisableControlAction(0, 289, true) -- Inventory
            DisableControlAction(0, 170, true) -- Animations
            DisableControlAction(0, 167, true) -- Job

            DisableControlAction(0, 0, true) -- Disable changing view
            DisableControlAction(0, 26, true) -- Disable looking behind
            DisableControlAction(0, 73, true) -- Disable clearing animation
            DisableControlAction(2, 199, true) -- Disable pause screen

            DisableControlAction(0, 59, true) -- Disable steering in vehicle
            DisableControlAction(0, 71, true) -- Disable driving forward in vehicle
            DisableControlAction(0, 72, true) -- Disable reversing in vehicle

            DisableControlAction(2, 36, true) -- Disable going stealth

            DisableControlAction(0, 47, true)  -- Disable weapon
            DisableControlAction(0, 264, true) -- Disable melee
            DisableControlAction(0, 257, true) -- Disable melee
            DisableControlAction(0, 140, true) -- Disable melee
            DisableControlAction(0, 141, true) -- Disable melee
            DisableControlAction(0, 142, true) -- Disable melee
            DisableControlAction(0, 143, true) -- Disable melee
    -- body
end

function Enable(ped)
            DisableControlAction(0, 24, false) -- Attack
            DisableControlAction(0, 257, false) -- Attack 2
            DisableControlAction(0, 25, false) -- Aim
            DisableControlAction(0, 263, false) -- Melee Attack 1
            DisableControlAction(0, 32, false) -- W
            DisableControlAction(0, 34, false) -- A
            DisableControlAction(0, 31, false) -- S
            DisableControlAction(0, 30, false) -- D
            DisableControlAction(0, 45, false) -- Reload
            DisableControlAction(0, 22, false) -- Jump
            DisableControlAction(0, 44, false) -- Cover
            DisableControlAction(0, 37, false) -- Select Weapon
            DisableControlAction(0, 23, false) -- Also 'enter'?

            DisableControlAction(0, 288,  false) -- Disable phone
            DisableControlAction(0, 289, false) -- Inventory
            DisableControlAction(0, 170, false) -- Animations
            DisableControlAction(0, 167, false) -- Job

            DisableControlAction(0, 0, false) -- Disable changing view
            DisableControlAction(0, 26, false) -- Disable looking behind
            DisableControlAction(0, 73, false) -- Disable clearing animation
            DisableControlAction(2, 199, false) -- Disable pause screen

            DisableControlAction(0, 59, false) -- Disable steering in vehicle
            DisableControlAction(0, 71, false) -- Disable driving forward in vehicle
            DisableControlAction(0, 72, false) -- Disable reversing in vehicle

            DisableControlAction(2, 36, false) -- Disable going stealth

            DisableControlAction(0, 47, false)  -- Disable weapon
            DisableControlAction(0, 264, false) -- Disable melee
            DisableControlAction(0, 257, false) -- Disable melee
            DisableControlAction(0, 140, false) -- Disable melee
            DisableControlAction(0, 141, false) -- Disable melee
            DisableControlAction(0, 142, false) -- Disable melee
            DisableControlAction(0, 143, false) -- Disable melee
    -- body
end

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 0 )
    end
end

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end 

function loadAnimDict(dict)
    RequestAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do        
        Citizen.Wait(1)
    end
end