RegisterCommand("Engine", function()
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped)
    local on = GetIsVehicleEngineRunning(veh)

    if on == 1 then
        SetVehicleEngineOn(veh, false, true, true)
        ShowNotification("~r~ This vehicle is now off")
    else
        SetVehicleEngineOn(veh, true, false, true)
        ShowNotification("~g~This vehicle as started")
    end
end)
