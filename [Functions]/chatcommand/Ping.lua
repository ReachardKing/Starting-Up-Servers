
RegisterNetEvent("GetStreetName")
AddEventHandler("GetStreetName", function()
    Citizen.CreateThreadNow(function (x, y, z)
        while true do
            Citizen.Wait(1)
            TriggerClientEvent("chat:addMessage" ..GetNameOfZone(x, y, z), ".")
        end
    end)
end)