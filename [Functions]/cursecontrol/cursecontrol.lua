local kph = 3.6 
local Cruise = false -- Controls your curse speed, just added today @ 5:05 pm 3/28/2022

Citizen.CreateThread(function() 
    while true do 
        Citizen.Wait(20) -- Add a smaill delay in avoiding crashes
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then -- checks if ped is in a grounded vehicle
            if IsControlJustPressed(1, 311)  and IsControlJustPressed(1, 311) then -- If you cleck a key pad
                ShowNotification("Activaded curesecontrol")
                if Cruise == false then -- Toggle on
                    Cruise = true
                    local currentSpeed = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3.6)
                    SetVehicleMaxSpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false), currentSpeed)
                    ShowNotification("Curse speed set:" .. currentSpeed*kph .. "KPH")
                elseif Cruise == true then -- Toggle off
                    Cruise = false
                        SetVehicleMaxSpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0)
                        ShowNotification("Deactivated cursecontrol")
                     print(currentSpeed)
                end
            end
        end
    end
end)
