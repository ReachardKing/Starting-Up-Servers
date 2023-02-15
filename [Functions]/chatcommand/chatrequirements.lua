-- Strt all of this in the resource files you self or crrat fmanifest file if you love  tat instead.

AddEventHandler("chat:addMessage", function(source, name, msg)
    if string.sub(msg, 1, string.len('/')) ~= '/' then
        local name = GetPlayerName(source)
        TriggerClientEvent("chat:addMessage", 1, source, name, msg)
    end
    CancelEvent()
end)


AddEventHandler("chat:addMessage", function(source, id, name, message)
    TriggerClientEvent("chat:addMessage", -1, source, id, name, message)
end)

AddEventHandler("chat:addMessage", function(source, id, name, message)
    TriggerClientEvent("chat:addMessage", -1, source, id, name, message)
end)