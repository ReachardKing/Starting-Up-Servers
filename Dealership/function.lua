function CustomPedVeicle(veh, Name, Livery, Extras)
    local Ped = GetPlayerPed( -1 )
    if (DoesEntityExist(Ped) and not IsEntityDead(Ped)) then 
        local pos = GetEntityCoords(Ped)
        if (IsPedSittingInAnyVehicle(Ped)) then 
            local Vehicle = GetVehiclePedIsIn(Ped, false)
            if (GetPedInVehicleSeat(Vehicle, -1) == Ped) then 
                SetEntityAsMissionEntity(Vehicle, true, true )
                DeleteVehicle(Vehicle)
            end
        end
    end

    local WaitTime = 0
    local Model = GetHashKey(veh)
    RequestModel(Model)
    while not HasModelLoaded(Model) do
        CancelEvent()
        RequestModel(Model)
        Citizen.Wait(100)

        WaitTime = WaitTime + 1

        if WaitTime == 600 then
            CancelEvent()
            notify('~r~Unable to load vehicle, please contact development!')
            return
        end
    end
    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
    local Vehicle = CreateVehicle(Model, x + 2, y + 2, z + 1, GetEntityHeading(PlayerPedId()), true, false)
    SetPedIntoVehicle(PlayerPedId(), Vehicle, -1)
    SetVehicleDirtLevel(Vehicle, 0)
    SetVehicleModKit(Vehicle, 0)
    SetVehicleMod(Vehicle, 23, -1, false)
    SetModelAsNoLongerNeeded(Model)
    if Livery then
        SetVehicleLivery(Vehicle, Livery)
    end
    if Extras then
        for extraId = 0, 30 do
            if DoesExtraExist(Vehicle, extraId) then
                SetVehicleExtra(Vehicle, extraId, true)
            end
        end
        for _, extra in pairs(Extras) do
            SetVehicleExtra(Vehicle, extra, false)
        end
    end

    if Name then
        notify('~b~Vehicle Spawned: ~g~' .. Name)
    else
        notify('~b~Vehicle Spawned!')
    end
end