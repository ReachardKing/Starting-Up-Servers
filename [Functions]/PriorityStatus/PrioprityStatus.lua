
-- Client side
local colour = 255, 255, 255, 255
local status = "~g~Inactive"
local tS = 0

-- Priority Script
Config = {
    colour = "~c~",
    Prioritycooldown = 15,
    DisplaySeconds = true
} 
RegisterNetEvent("Mackenzie_Rich:updateStatus")
AddEventHandler("Mackenzie_Rich:updateStatus", function(newStatus)
    status = newStatus
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if status == "~g~Inactive" then
            tS = tS + 1
            Citizen.Wait(1000)
        else
            tS = 0
        end
    end
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        if status == "~g~Inactive" then
            ShowText(Config.colour.."~r~Priority Status: ~g~" ..status.. "" .."(~w~"..SecondsToClock(tS)..")", 0.165, 0.900)
        else
            ShowText(Config.colour.."~r~Priority Status: ~g~" ..status.. "", 0.165, 0.900)
        end
    end
end)

function SecondsToClock(seconds)
    local mins = string.format("%02.f", math.floor(seconds/60));
    local secs = string.format("%02.f", math.floor(seconds - mins *60));
    local timer = mins..":"..secs
    return timer
end

function ShowText(text, x, y)
    SetTextFont(4)
    SetTextScale(0.0, 0.45)
    SetTextProportional(0)
    SetTextColour(255,255,255,255)
    SetTextEntry("STRING")
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextDropShadow()
    SetTextEdge(4, 0, 0, 0, 255)
    SetTextOutline()
    AddTextComponentString(text)
    DrawText(x, y)
end