
-- rp-evvents
RegisterCommand("911", function(source, args, name, message)
    TriggerClientEvent("chat:addMessage", source, {color = {0, 255, 0}, multiline = false, args = {name, message}})
end)

RegisterCommand("me", function(source, args, name, message)
	TriggerClientEvent("chat:addMessage", source, {color = {0, 255, 0}, multiline = false, args = {name, message}})	
end)

RegisterCommand("ooc", function(source, args, name, message)
	TriggerClientEvent("chat:addMessage", source, {color = {0, 255, 0}, multiline = false, args = {name, message}})
end)

RegisterCommand("looc", function(source,  args, name, message) 
	TriggerClientEvent("chat:addMessage", source, {color = {0, 255, 0}, multiline = false, args = {name, message}})
end)

RegisterCommand("run", function(source, args, name, message)
	TriggerClientEvent("chat:addMessage", source, {color = {0, 255, 0}, multiline = false, args = {name, message}})
end)

RegisterCommand("211", function(source, args, name, message)
	TriggerClientEvent("chat:addMessage", source, {color = {0, 255, 0}, multiline = false, args = {name, message}})
	TriggerEvent("GetStreetName", -1, source)
end)

RegisterCommand("311", function(source,  args, name, message)
	TriggerClientEvent("chat:addMessage", source, {color = {0, 255, 0}, multiline = false, args = {name, message}})
end)

RegisterCommand("Pdalert", function(source, args, name, message)
	TriggerClientEvent("chat:addMessage", source, {color = {255, 0, 0}, multiline = false, args = {name, message}})
end)

RegisterCommand("EMSalert", function(source, args, name, message)
	TriggerClientEvent("chat:addMessage", source, {color = {0, 255, 0}, multiline = false, args = {name, message}})
end)