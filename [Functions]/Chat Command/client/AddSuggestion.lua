Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/command', 'Vehicles that are not local vehicles can be spawned', {
        {name = "command", help = "Vehicles that are not local vehicles can be spawned"}
    })

    TriggerEvent('chat:addSuggestion', '/dv', 'Delete vehicle at any point in time', {
        {name = "dv", help = "This will be updated"}
    })
    
    TriggerEvent("chat:addSuggestion", '/Edit', 'opens vewer list', {
        {name = "Edit", help="opens vewer list"}
    })

    TriggerEvent("chat:addSuggestion", '/EMSManagement', 'opens EMSManagement form', {
        {name = "EMSManagement", help="opens EMSManagement form"}
    })

    TriggerEvent("chat:addSuggestion", '/Fire', 'opens fire form', {
        {name = "fire", help="opens fire list"}
    })

    TriggerEvent("chat:addSuggestion", '/ooc', 'goes out of character', {
        {name="ooc", help="goes out of character"}
    })

    TriggerEvent("chat:addSuggestion", '/911', 'Emergency Only', {
        {name="911", help="Emergency Only"}
    })

    TriggerEvent("chat:addSuggestion", '/311', 'Tow truck related calls', {
        {name="311", help="Tow truck related calls"}
    })

    TriggerEvent("chat:addSuggestion", '/211', 'Non-Emergency calls', {
        {name="ooc", help="Non-Emergency calls"}
    })

    TriggerEvent("chat:addSuggestion", '/StaffWarn', 'Staff Warns any player', {
        {name="StaffWarn", help="Staff Warns any playe"}
    })

    TriggerEvent("chat:addSuggestion", '/Pdalert', 'Infroms everyone of gonverment bulding issues', {
        {name="Pdalert", help="Infroms everyone of gonverment bulding issues"}
    })
end)