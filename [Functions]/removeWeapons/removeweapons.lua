RegisterCommand("Remove", function()
    RemoveAllPedWeapons(GetPlayerPed(), true)
    notify("~g~ All weapons has been removed")
end)
