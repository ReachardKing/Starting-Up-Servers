RegisterNetEvent('_chat:messageEntered', function(author, color, message)
    if not message or not author then
        return
    end
    TriggerEvent('chat:addMessage', source, author, message)
end)

RegisterNetEvent('__cfx_internal:commandFallback', function(command)
    local name = GetPlayerName(source)

    TriggerEvent('chat:addMessage', source, name, '/' .. command)

    if not WasEventCanceled() then
        TriggerClientEvent('chat:addMessage', -1, name, false, '/' .. command) 
    end

    CancelEvent()
end)
