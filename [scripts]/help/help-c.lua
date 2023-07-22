--[[ help script made at JEVA by Zua (https://github.com/thatziv) ]]


-- This function is used to register a command for the chat. 
--When this is exectuted, it will execute a function, doing the msg function to the client
RegisterCommand('help', function()
    msg("linktree: https://linktree.com/Mackenzie_Rich")
    msg("rp-radio: https://github.com/FrazzIe/rp-radio/releases/tag/2.2.1")
    msg("Mumble Viop: https://github.com/FrazzIe/mumble-voip-fivem/releases/tag/1.5.5")
end, false)

-- We declare this 'msg' function on the bottom due to better practices.
function msg(text)
    -- TriggerEvent will send a chat message to the client in the prefix as red
    TriggerEvent("chatMessage",  "[Server]", {255,0,0}, text)
end