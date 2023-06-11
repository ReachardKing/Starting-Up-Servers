
RegisterNetEvent("Find:Permissions")
AddEventHandler("Find:Permissions", function(source, args)
    TriggerEvent("Steam:Permissions", source, args)
    TriggerEvent("Discord:Permissions",name, setKickReason, deferrals)
end)

RegisterNetEvent("Steam:Permissions")
AddEventHandler("Steam:Permissions", function(source, args)
    if IsPlayerAceAllowed(source, "administrator") then
        if Permission.enableDiscordWhitelist then
            for _, roleid in pairs(Permission.adminRoles)do
                return
            end
        end
    else
        TriggerEvent("chat:addMessage", source, {
            color = {255, 0, 0},
            multiline = true,
            args = {"You do not have Permission"}
        })
    end
end)