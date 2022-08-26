RegisterCommand("hood", function()
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped, false)
    local isopen = GetVehicleDoorAngleRatio(veh,4)
    
    
    if isopen  == 0 then
    SetVehicleDoorOpen(veh, 4, false, false )
    else 
    SetVehicleDoorShut(veh, 4, false)
    end
end)
