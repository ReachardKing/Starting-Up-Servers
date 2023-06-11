
RegisterCommand("StaffWarn", function(source, args)
    local src = source
    local ped = GetPlayerPed(src)
    local playerCoords = GetEntityCoords(ped)
    local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
    local name = GetPlayerName(source)
    local traget = GetPlayerFromServerId(source)
    
    TriggerClientEvent("chat:addMessage", source, {
        color = {255, 0,0},
        multiline = true,
        args = {name, traget, msg}
    })
end)