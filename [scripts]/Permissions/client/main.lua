
RegisterNetEvent("Discord:Permissions")
AddEventHandler("Discord:Permissions", function(name, setKickReason, deferrals)
    local player = source
    local discordIdentifier = GetPlayerIdentifierFromType("discord", player)
    local AllowedRoles = {}

    deferrals.defer()
    Wait(0)
    deferrals.update("connecting to discord.")

    if not discordIdentifier then
        deferrals.done("Your discord isn't connected to FiveM, make sure discord is open and restart FiveM.")
    else
        if Permission.enableDiscordWhitelist then
            local discordUserId = discordIdentifier:gsub("discord:", "")
            local discordInfo = GetUserDiscordInfo(discordUserId)
            for _, whitelistRole in pairs(Permission.whitelistRoles) do
                if whitelistRole == 0 or whitelistRole == "0" or (discordInfo and discordInfo.roles[whitelistRole]) then
                    deferrals.done()
                    break
                end
            end
            deferrals.done(Permission.notWhitelistedMessage)
        else
            deferrals.done()
        end
    end
end)