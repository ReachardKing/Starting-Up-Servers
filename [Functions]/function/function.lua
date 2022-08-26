-- Functions
-- displays nornal notification above HUD
function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end
 
-- Shows a notification on the player's screen 
function ShowNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end

function DeleteVeh(vehicle)
    SetAsMissionEntity(vehicle, false, false)
    DeleteEntity(vehicle)
end

function DisplayHelpText(str)
    SetTextComponentFormat("STRING")
    AddTextComponentString(str)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function loadAnimDict(dict)
    RequestAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do        
        Citizen.Wait(1)
    end
end

function drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
        SetTextOutline()
    end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsPlayerFreeAiming(GetPlayerPed(-1)) then 
            print("aiming")
        end
    end 
end)

- General Functions -- 

function dC()

    DisableControlAction(0, 24, true) -- Attack
    DisableControlAction(0, 257, true) -- Attack 2
    DisableControlAction(0, 25, true) -- Aim
    DisableControlAction(0, 263, true) -- Melee Attack 1
    -- DisableControlAction(0, 32, true) -- W
    -- DisableControlAction(0, 34, true) -- A
    -- DisableControlAction(0, 31, true) -- S
    -- DisableControlAction(0, 30, true) -- D

    DisableControlAction(0, 45, true) -- Reload
    -- DisableControlAction(0, 22, true) -- Jump
    DisableControlAction(0, 44, true) -- Cover
    DisableControlAction(0, 37, true) -- Select Weapon
    -- DisableControlAction(0, 23, true) -- Also 'enter vehice????

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

function loadAnimDict(dict)
    RequestAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do        
        Citizen.Wait(1)
    end
end


function DrawText3Ds(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end


function drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
        SetTextOutline()
    end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

function ShowHelp(text, bleep)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, bleep, -1)
end


function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end 

Citizen.CreateThread(function()
    while true do
        Wait(0)
        if handcuff then 
            dC()
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

function notify(string)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringKeyboardDisplay(string)
    EndTextCommandThefeedPostTicker(true, true)
end