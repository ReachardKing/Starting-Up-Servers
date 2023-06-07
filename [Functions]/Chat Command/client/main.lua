
print("Shout out the the person who made refine-chat !!! !!  !!!")

RegisterNetEvent("me:client:command", function(user, msg)
    local Player = PlayerId()
    local serverId = GetPlayerFromServerId(user)
    if serverId ~= -1 then
        if HasEntityClearLosToEntity(GetPlayerPed(Player), GetPlayerPed(serverId), 17) then
            TriggerEvent("meCoords", msg, GetPlayerPed(serverId))
        end
    end
end)

TriggerEvent("Discord:Permissions", source, args)