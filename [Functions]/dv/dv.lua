-- For the time being this will replace the delete in the actual menu
RegisterCommand("delcar", function()
    local ped = GetPlayerPed(-1)
    if (DoesEntityExist(ped) and not IsEntityDead(ped)) then 
        local pos = GetEntityCoords(ped)

        if (IsPedSittingInAnyVehicle(ped)) then 
            local handle = GetVehiclePedIsIn(ped, false)
            NetworkRequestControlOfEntity(handle)
            SetEntityHealth(handle, 100)
            SetEntityAsMissionEntity(handle, true, true)
            SetEntityAsNoLongerNeeded(handle)
            DeleteEntity(handle)
            ShowNotification("~g~The vehicle you were in has been deleted.")
        else
            ShowNotification("~r~Could not  be found")
        end
    end
end)
