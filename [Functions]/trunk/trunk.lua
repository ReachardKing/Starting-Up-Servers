RegisterCommand("trunk", function()
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped, false)
    local isopen = GetVehicleDoorAngleRatio(veh,5)
    
    
    if isopen  == 0 then
    SetVehicleDoorOpen(veh, 5, false, false )
    else 
    SetVehicleDoorShut(veh, 5, false)
    end
end)
