
-- Priority starts
local cooldown = 0
local inprogress = false
local activeUser = nil
local inprogressStatus = nil

AddEventHandler('playerDropped', function(reason)
    if tonumber(activeUser) == tonumber(source) then
        if inprogress and not resetpcd then
            activeUser = nil
            cooldown = Config.Prioritycooldown  
            inprogress = false
            Citizen.CreateThread(function()
                if Config.DisplaySeconds then
                    cooldown = cooldown * 60
                end
                while cooldown > 0 and not resetpcd do
                    if Config.DisplaySeconds then
                        local seconds = cooldown
                        local mins = string.format("%02.f", math.floor(seconds/60));
                        local secs = string.format("%02.f", math.floor(seconds - mins *60));
                        local timer = mins..":"..secs
                        TriggerClientEvent("Mackenzie_Rich:updateStatus", -1, "~b~Cooldown "..Config.Color.."(~w~"..timer..""..Config.Color..")")
                        cooldown = cooldown - 1
                        Citizen.Wait(1000)
                    else
                        TriggerClientEvent("Mackenzie_Rich:updateStatus", -1, "~b~Cooldown "..Config.Color.."(~w~"..cooldown..""..Config.Color..")")
                        cooldown = cooldown - 1
                        Citizen.Wait(1000 * 60)
                    end
                end
                if cooldown == 0 then
                    TriggerClientEvent("Mackenzie_Rich:updateStatus", -1, newStatus)
                end
            end)
        end
    end
end)

RegisterCommand("Priority", function(source, args, rawCommand)
    if inprogress ~= nil and cooldown == 0 then
        if not inprogress then
            inprogress = true
            activeUser = source
            newStatus = "~r~Active ~m~(~w~"..GetPlayerName(source).."~m~)"
            inprogressStatus = newStatus
            Citizen.CreateThread(function()
                while inprogress do
                    TriggerClientEvent("Mackenzie_Rich:updateStatus", -1, newStatus)
                    Citizen.Wait(1000)
                end
            end)
            TriggerClientEvent('Mackenzie_Rich:Notify', -1, '~r~Alert:~w~\nPriority ~g~started~w~ by '..GetPlayerName(source))
        else
            TriggerClientEvent('Mackenzie_Rich:Notify', source, '~r~Alert:~w~\nA Priority is already in Effect!')
        end
    end
end)

Config = {
    Color = "~c~",
    Prioritycooldown = 20,
    DisplaySeconds = true
}  

RegisterCommand("cooldown", function(source, args, rawCommand)
    if activeUser == source then
        if ( inprogress ) then
            activeUser = nil
            cooldown = Config.Prioritycooldown  
            if args[1] ~= nil then
                cooldown = tonumber(args[1])
            end
            inprogress = false
            newStatus = "~g~Inactive"
            inprogressStatus = nil
            Citizen.CreateThread(function()
                if Config.DisplaySeconds then
                    cooldown = cooldown * 60
                end
                while cooldown > 0 do
                    if Config.DisplaySeconds then
                        local seconds = cooldown
                        local mins = string.format("%02.f", math.floor(seconds/60));
                        local secs = string.format("%02.f", math.floor(seconds - mins *60));
                        local timer = mins..":"..secs
                        TriggerClientEvent("Mackenzie_Rich:updateStatus", -1, "~b~Cooldown "..Config.Color.."(~w~"..timer..""..Config.Color..")")
                        cooldown = cooldown - 1
                        Citizen.Wait(1000)
                    else
                        TriggerClientEvent("Mackenzie_Rich:updateStatus", -1, "~b~Cooldown "..Config.Color.."(~w~"..cooldown..""..Config.Color..")")
                        cooldown = cooldown - 1
                        Citizen.Wait(1000 * 60)
                    end
                end
                if cooldown == 0 then
                    TriggerClientEvent("Mackenzie_Rich:updateStatus", -1, newStatus)
                    resetpcd = true
                end
            end)
            TriggerClientEvent('Mackenzie_Rich:Notify', -1, '~r~Alert:~w~\nPriority ~b~cooldown ~w~started by '..GetPlayerName(source))
        else
            TriggerClientEvent('Mackenzie_Rich:Notify', source, '~r~Alert:~w~\nYou can not trigger a cooldown.\nOnly the person who activates the priority can start the cooldown.')
        end
    else
        TriggerClientEvent('Mackenzie_Rich:Notify', source, '~r~Alert:~w~\nYou don\'t have a priority in progress.')
    end
end)

AddEventHandler('PlayerConnected', function()
    Citizen.Wait(1000)
    if cooldown ~= 0 then
        while cooldown > 0 do
            local seconds = cooldown
            local mins = string.format("%02.f", math.floor(seconds/60));
            local secs = string.format("%02.f", math.floor(seconds - mins *60));
            local timer = mins..":"..secs
            TriggerClientEvent("Mackenzie_Rich:updateStatus", -1, "~b~Cooldown "..Config.Color.."(~w~"..timer..""..Config.Color..")")
            cooldown = cooldown - 1
            Citizen.Wait(1000 * 60)
        end
    end
    if inprogressStatus ~= nil then
        TriggerClientEvent("Mackenzie_Rich:updateStatus", source, inprogressStatus)
    end
    if inprogressStatus == nil and cooldown == 0 then
        newStatus = "~g~Inactive"
        TriggerClientEvent("Mackenzie_Rich:updateStatus", source, newStatus)
    end
end)