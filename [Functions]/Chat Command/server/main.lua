
print("Shout out the the person who made refine-chat !!! !!  !!!")
print("Never Give up !! !! !!")

RegisterCommand("311", function(source, args)
    local src = source
    local ped = GetPlayerPed(src)
    local playerCoords = GetEntityCoords(ped)
    local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
    local Players = GetPlayers()
    local name = GetPlayerName(source)
  
    TriggerClientEvent("chat:addMessage", source, {
      color = {255, 0,0},
      multiline = true,
      args = {'311 '..name.. '' .. '', msg}
    })
end)
  
RegisterCommand("211", function(source, args)
    local src = source
    local ped = GetPlayerPed(src)
    local playerCoords = GetEntityCoords(ped)
    local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
    local Players = GetPlayers()
    local name = GetPlayerName(source)
  
    TriggerClientEvent("chat:addMessage", source, {
      color = {255, 0,0},
      multiline = true,
      args = {'211 '..name.. '' .. '', msg}
    })
end)
  
RegisterCommand("ooc", function(source, args)
    local src = source
    local ped = GetPlayerPed(src)
    local playerCoords = GetEntityCoords(ped)
    local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
    local Players = GetPlayers()
    local name = GetPlayerName(source)
  
    TriggerClientEvent("me:client:command", Player, src, msg)   
    TriggerClientEvent("chat:addMessage", source, {
      color = {255, 0,0},
      multiline = true,
      args = {''..name.. '' .. '', msg}
    })
end)
  
RegisterCommand("Pdalert", function(source, args)
    local src = source
    local ped = GetPlayerPed(src)
    local playerCoords = GetEntityCoords(ped)
    local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
    local Players = GetPlayers()
    local name = GetPlayerName(source)
  
    TriggerClientEvent("me:client:command", Player, src, msg)   
    TriggerClientEvent("chat:addMessage", source, {
      color = {255, 0,0},
      multiline = true,
      args = {'PD Alert' .. '', msg}
    })
end)
