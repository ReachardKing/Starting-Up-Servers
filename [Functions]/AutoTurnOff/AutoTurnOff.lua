-- AutoTurnOff
local AutoTurnOff = false

RegisterCommand("AutoTurnOff", function()
    while true do 
        Citizen.Wait(5)
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            if AutoTurnOff == false then -- toggle on
                AutoTurnOff = true
                SetVehicleEngineOn(GetVehiclePedIsIn(GetPlayerPed(-1)), true, false, true) -- on
                ShowNotification("~g~AutoTurnOff is now:on") 
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(10)
        if IsControlJustPressed(1, 185) and IsControlJustPressed(1, 185) then -- This will be automatic when i am able to get this right 
            if IsPedInAnyVehicle(ped, false) and GetPedInVehicleSeat(veh, -1) == ped then
                if AutoTurnOff == false then -- toggle on
                    AutoTurnOff = true
                    SetVehicleEngineOn(GetVehiclePedIsIn(GetPlayerPed(-1)), true, false, true) -- on
                    ShowNotification("~g~AutoTurnOff is now:on")
                elseif AutoTurnOff == true then -- toggle off
                    AutoTurnOff = false 
                    SetVehicleEngineOn(GetVehiclePedIsIn(GetPlayerPed(-1)), false, true, true) -- off
                    FreezeEntityPosition(GetVehiclePedIsUsing(GetPlayerPed(-1)), false)
                    ShowNotification("~r~AutoTurnOff is now:off")  
                end
            else
                ShowNotification("You need to be in a Vehicle")
            end
        end
    end
end)
