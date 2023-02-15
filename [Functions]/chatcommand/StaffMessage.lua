
RegisterCommand("teleport", function()
    local cords = GetEntityCoords(PlayerPedId())
    SetEntityCoords(PlayerPedId(), cords.x, cords.y, cords.z)
end)

RegisterCommand("warn", function(source, args, target, message)
    local target = toumber(args[2]) or GetPlayerFromServerId()
    TriggerClientEvent('chat:addMessage', source, { color = { 128, 128, 128 }, args = {target, message}})
end)