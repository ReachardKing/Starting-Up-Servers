
local playerPed = PlayerPedId()
local jobTargetDistance = 5
local Jobdisplay = false

RegisterCommand("Command", function()
     
    local playerCoords = GetEntityCoords(PlayerPedId())
    
    for _, player in pairs(GetActivePlayers()) do
        local targetPed = GetPlayerPed(player)
        local targetId = GetPlayerServerId(player)
        local distance = #(playerCoords-GetEntityCoords(targetPed))
        if targetPed ~= playerPed then
            if distance <= jobTargetDistance then
                PlaySoundFrontend(-1, "NV", "HUD_AMMO_SHOP_SOUNDSET", 1)
                
                ShowNotification("Welcome " ..targetId)   
                
                SetMouseCursorVisibleInMenus(true)
                
                SetNuiFocus(true, true)
                
                SendNUIMessage({action = "ui", Jobdisplay = true, show = IsPauseMenuActive(), resourceName = GetCurrentResourceName()})
            end
        end
    end
end)

Citizen.CreateThread( function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 322) then
            SetMouseCursorVisibleInMenus(false)
            SendNUIMessage({action = 'remove', Jobdisplay = false
            })
        end
    end
end)

RegisterNUICallback("close", function(data, cb)
    SetMouseCursorVisibleInMenus(false)
    
    SendNUIMessage({action = 'remove',Jobdisplay = false})

    -- play shound
    PlaySoundFrontend(-1, "NV", "HUD_AMMO_SHOP_SOUNDSET", 1)
    
    cb('ok')
end)

RegisterNUICallback("remove", function()
    SetMouseCursorVisibleInMenus(false)
    SetNuiFocus(false, false)

    SendNUIMessage({action = 'remove',Jobdisplay = false}) 

    -- play shound
    PlaySoundFrontend(-1, "NV", "HUD_AMMO_SHOP_SOUNDSET", 1)

end)

RegisterNUICallback("refresh", function()
   local AllInfo = {}
   for id, charactersInfo in pairs(AllInfo) do
        AllInfo[tostring(id)] = charactersInfo
   end
   SendNUIMessage({
        type = "refresh",
        AllInfo = json.endode(AllInfo)
   })
end)

function ShowNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end

-- Hire

local playerPed = PlayerPedId()
local jobTargetDistance = 5
local HireDisplay = false

if EnableWhitlisted then
    if HireConfig.DiscordPerms and HireConfig.EveryoneAdminAndAbove then
        ExecuteCommand("Hire")
    end
    if HireConfig.Cadet then
        return false
    end
end

RegisterCommand("Hire", function()
    
    local playerCoords = GetEntityCoords(PlayerPedId())
   
    for _, player in pairs(GetActivePlayers()) do
        local targetPed = GetPlayerPed(player)
        local targetId = GetPlayerServerId(player)
        local distance = #(playerCoords-GetEntityCoords(targetPed))
        if targetPed ~= playerPed then
            if distance <= jobTargetDistance then
                PlaySoundFrontend(-1, "NV", "HUD_AMMO_SHOP_SOUNDSET", 1)
                SetMouseCursorVisibleInMenus(true)
                SetNuiFocus(true, true)
                SendNUIMessage({type = "ui", HireDisplay = true})
                ShowNotification("Welcome ".. targetId)
            end
        end
    end
end)

Citizen.CreateThread( function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 322) then
            SetMouseCursorVisibleInMenus(false)
            SetNuiFocus(false, false)
			SendNUIMessage({type = 'remove', HireDisplay = false})
		end
    end
end)

RegisterNUICallback("close", function(data, cb)
    SetMouseCursorVisibleInMenus(false)
    SetNuiFocus(false, false)
    SendNUIMessage({type = 'remove', HireDisplay = false})
    -- play shound
    PlaySoundFrontend(-1, "NV", "HUD_AMMO_SHOP_SOUNDSET", 1)
    
    cb('ok')
end)

RegisterNUICallback("remove", function()
    SetMouseCursorVisibleInMenus(false)
    SetNuiFocus(false, false)
    SendNUIMessage({type = 'remove', HireDisplay = false})
    -- play shound
    PlaySoundFrontend(-1, "NV", "HUD_AMMO_SHOP_SOUNDSET", 1)
end)

function ShowNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end