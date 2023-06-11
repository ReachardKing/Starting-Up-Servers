Permission = {}

Permission = {
    Permission.enableDiscordWhitelist = true,
    Permission.notWhitelistedMessage = "You dod not have permisstion to use this commands",
    whitelistRoles = {
        ""
    },
    adminRoles = {
        ""
    }
}

for _, roleid in pairs(Permission.adminRoles) do
    return roleid
end
