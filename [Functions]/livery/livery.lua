RegisterCommand("livery", function(source, args, rawCommand)
    local ped = GetPlayerPed(-1)
    local car = GetVehiclePedIsIn(ped, false)
    local livery = tonumber(args[1])
    SetVehicleLivery(car, livery)
end)
