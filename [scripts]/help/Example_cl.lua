--[[ help script made at JEVA by Zua (https://github.com/thatziv) ]]


-- This function is used to register a command for the chat. 
--When this is exectuted, it will execute a function, doing the msg function to the client
RegisterCommand('help', function()
    msg("Discord: discord.gg/xyz")
    msg("Website: coming soon")
    msg("Support: website.com")
end, false)

-- We declare this 'msg' function on the bottom due to better practices.
function msg(text)
    -- TriggerEvent will send a chat message to the client in the prefix as red
    TriggerEvent("chat:addMessage", {{255,0,0}, text})
end

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(100)
        ExecuteCommand("help")
        TriggerEvent("chat:clear")
    end
end)