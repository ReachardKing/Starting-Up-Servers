

print("Shout out the the person who made refine-chat !!! !!  !!!")
print("Never give up !! !!")

RegisterNetEvent('_chat:messageEntered', function(author, color, message)
  if not message or not author then
      return
  end
  TriggerEvent('chat:addMessage', source, author, message)
end)

RegisterNetEvent('__cfx_internal:commandFallback', function(command)
  local name = GetPlayerName(source)

  TriggerEvent('chat:addMessage', source, name, '/' .. command)

  if not WasEventCanceled() then
      TriggerClientEvent('chat:addMessage', -1, name, false, '/' .. command) 
  end

  CancelEvent()
end)

RegisterCommand("311", function(source, name, args)
  local src = source
  local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
  
  TriggerClientEvent("chat:addMessage", source, {
    color = {255, 0,0},
    multiline = true,
    args = {'311 '..name.. '' .. '', msg}
  })
end)
  
RegisterCommand("211", function(source, name, args)
  local src = source
  local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
  
  TriggerClientEvent("chat:addMessage", source, {
    color = {255, 0,0},
    multiline = true,
    args = {'211 '..name.. '' .. '', msg}
  })
end)
  
RegisterCommand("ooc", function(source, name, args)
  local src = source
  local ped = GetPlayerPed(src)
  local playerCoords = GetEntityCoords(ped)
  local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
  local Players = GetPlayers()
  
  TriggerClientEvent("me:client:command", Player, src, msg)   
  TriggerClientEvent("chat:addMessage", source, {
    color = {255, 0,0},
    multiline = true,
    args = {'ooc'..name.. '' .. '', msg}
  })
end)
  
RegisterCommand("Pdalert", function(source, name, args)
  local src = source
  local ped = GetPlayerPed(src)
  local playerCoords = GetEntityCoords(ped)
  local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
  local Players = GetPlayers()
  
  TriggerClientEvent("me:client:command", Player, src, msg)   
  TriggerClientEvent("chat:addMessage", source, {
    color = {255, 0,0},
    multiline = true,
    args = {'pdalert' .. '', msg}
  })
end)

RegisterCommand("EMSalert", function(source, name, args)
  local src = source
  local ped = GetPlayerPed(src)
  local playerCoords = GetEntityCoords(ped)
  local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
  local Players = GetPlayers()

  TriggerClientEvent("me:client:command", Player, src, msg)   
  TriggerClientEvent("chat:addMessage", source, {
    color = {255, 0,0},
    multiline = true,
    args = {'EMSalert' .. '', msg}
  })
end)

RegisterCommand("clear", function(source, args)
  TriggerEvent("chat:clear")
end, false)

RegisterCommand('clear', function(source, args)
  TriggerEvent('chat:clear')
end, false)
