  
RegisterServerEvent('announce')
AddEventHandler('announce', function(param, source, args)
  print('^7[^1Announcement^7]^5:'.. param)
  TriggerEvent('chat:addMessage', source, { color = {0 ,0, 0} --[[ this table is just rgb ]], multiline = false, args = {'^7[^1Announcement^7]^2'}}, param)
end)

RegisterServerEvent("announce")
AddEventHandler("announce", function(param, source, args)
  -- Checks if the player's steam ID is equal to the principle we added in perms.cfg
  if IsPlayerAceAllowed(source, "administrator") then
    print("^7[^1Announcement^7]^5:" .. param, source, args)
    TriggerEvent('chat:addMessage', source, { color = {0 ,0, 0} --[[ this table is just rgb ]], multiline = false, args = {'^7[^1Announcement^7]^2'}}, param)
  else 
    -- [Error handler] This triggers the event we registered in the client (due to the error message ONLY for the single client)
    TriggerClientEvent("no-perms", source)
  end
end)


RegisterServerEvent('EMS')
AddEventHandler('EMS', function(param, source, args)
  print('^7[^1EMS^7]^5:'.. param)
  TriggerEvent('chat:addMessage', source, { color = {0 ,0, 0} --[[ this table is just rgb ]], multiline = false, args = {'^7[^1Announcement^7]^2'}}, param)
end)

RegisterServerEvent("EMS")
AddEventHandler("EMS", function(param, source, args)
  -- Checks if the player's steam ID is equal to the principle we added in perms.cfg
  if IsPlayerAceAllowed(source, "administrator") then
    print("^7[^1EMS^7]^5:" .. param)
    TriggerEvent('chat:addMessage', source, { color = {0 ,0, 0} --[[ this table is just rgb ]], multiline = false, args = {'^7[^1Announcement^7]^2'}}, param)
  else 
    -- [Error handler] This triggers the event we registered in the client (due to the error message ONLY for the single client)
    TriggerClientEvent("no-perms", source)
  end
end)