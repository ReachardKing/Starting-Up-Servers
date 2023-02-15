 
AddEventHandler("chatMessag", function(source, name, message)
	cm = stringsplit(message, " ")

	if cm[1] == "/carry" then
        CancelEvent()
        if tablelength(cm) > 1 then
            local tPID = tonumber(cm[2])
            TriggerClientEvent("carry", tPID)
        end
    end
    
    if cm[1] == "/cuff" then
		CancelEvent()
		if tablelength(cm) > 1 then
			local tPID = tonumber(cm[2])
			TriggerClientEvent("Handcuff", tPID)
		end
	end

	if cm[1] == "/hu" then
		CancelEvent()
		TriggerClientEvent("Handsup", source)
	end
    if cm[1] == "/dv" then
        CancelEvent()
        TriggerClientEvent("wk:deleteVehicle", source)
    end
end)

AddEventHandler("chat:addMessage", function(source, args, name, message)
	cm = stringsplit(message, " ")

    if cm[1] == "/911" then
        TriggerClientEvent('chat:addMessage', source, { color = { 128, 128, 128 }, args = {message}})
    end

    if cm[1] == "/me" then
        CancelEvent()
        TriggerClientEvent('chat:addMessage', source, { color = { 128, 128, 128 }, args = {message}})
    end

    if cm[1] == "/ooc" then
        CancelEvent()
        TriggerClientEvent('chat:addMessage', source, { color = { 128, 128, 128 }, args = {message}})
    end

    if cm[1] == "/looc" then
        CancelEvent()
        TriggerClientEvent('chat:addMessage', source, { color = { 128, 128, 128 }, args = {message}})
	end

    if cm[1] == "/run" then
        CancelEvent()
        TriggerClientEvent('chat:addMessage', source, { color = { 128, 128, 128 }, args = {message}})
    end

    if cm[1] == "/211" then
        CancelEvent()
        TriggerClientEvent('chat:addMessage', source, { color = { 128, 128, 128 }, args = {message}})
    end

    if cm[1] == "/311" then
        CancelEvent()
        TriggerClientEvent('chat:addMessage', source, { color = { 128, 128, 128 }, args = {message}})
    end

    if cm[1] == "/Pdalert" then
        CancelEvent()
        TriggerClientEvent('chat:addMessage', source, { color = { 128, 128, 128 }, args = {message}})
    end

	if cm[1] == "/EMSalert" then
        CancelEvent()
		TriggerClientEvent('chat:addMessage', source, { color = { 128, 128, 128 }, args = {message}})
	end

end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end