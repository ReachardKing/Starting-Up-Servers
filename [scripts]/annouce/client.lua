  
RegisterCommand("announce", function(source, args)
    TriggerServerEvent('announce', table.concat(args, " "))
     -- we have to concatenate the table because the 'args' cb return a table (array)
     -- the 2nd parameter in 'table.concat' is just spacing each args out
end)

RegisterCommand("EMS", function(source, args)
TriggerServerEvent('EMS', table.concat(args, ""))
end)

AddEventHandler("no-perms", function(source)
    TriggerEvent("chat:addMessage", source, {
        color = {255, 0, 0},
        multiline = true,
        args = {"You do not have Permission"}
    })
end)

print("mackenzie_Rich")