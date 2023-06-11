local display = false

RegisterCommand("MDT", function()
    SetDisplay(not display)
end)

function SetDisplay(bool)
    display = bool

    SendNUIMessage({type = "MDT", visible = bool, SetNuiFocus(true, true)})
end

RegisterNUICallback("remove", function() SendNUIMessage({type = "remove", display = false, SetNuiFocus(false, false)}) end)
RegisterNUICallback("ShowPlayerName", function(data) end)
RegisterCommand("close", function() SendNUIMessage({type = "remove", display = false, SetNuiFocus(false, false)}) end)

local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
Citizen.CreateThread(function() while true do Citizen.Wait(1) if IsControlJustPressed(1, 101) and IsControlJustPressed(1, 101) then SetVehicleEngineOn(vehicle, false, true, true) end end end)

RegisterNUICallback("SaveIncident", function(data, cb) TriggerServerEvent('SaveIncident', data.title, data.information, data.tags, data.officer, data.civilans, data.evidence, data.time) cb(true) end)

RegisterNUICallback("getAllIncidents", function(data, cb) TriggerServerEvent("GetAllIncident") TriggerServerEvent("GetAllIncidents") cb(true) end)
