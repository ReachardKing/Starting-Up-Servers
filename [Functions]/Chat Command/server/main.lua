

print("Shout out the the person who made refine-chat !!! !!  !!!")
print("Never give up !! !!")

AddEventHandler("chat:addMessage", function(source, args, msg)
    sm = stringsplit(msg, " ");
    
    if sm[1] == "/311" then
      CancelEvent()
      TriggerClientEvent("chat:addMessage", source, { color = {255, 0, 0}, multiline = true, args = {'311'..msg}})
    end
    if sm[1] == "/211" then
      CancelEvent()
      TriggerClientEvent("chat:addMessage", source, { color = {255, 0, 0}, multiline = true, args = {'211'.. msg}})
    end
    if sm[1] == "/ooc" then
      CancelEvent()
      TriggerClientEvent("chat:addMessage", source, { color = {255, 0, 0}, multiline = true, args = {'ooc'.. msg}})
    end 
    if sm[1] == "/Pdalert" then
      CancelEvent()
      TriggerClientEvent("chat:addMessage", source, { color = {255, 0, 0}, multiline = true, args = {'Pdalert'.. msg}})
    end
    if sm[1] == "/EMSalert" then
      CancelEvent()
      TriggerClientEvent("chat:addMessage", source, { color = {255, 0, 0}, multiline = true, args = {'EMSalert'..  msg}})
    end
end)

function stringsplit(inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  
  local t={} ; i=1
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    t[i] = str
    i = i + 1
  end
  return t
end

RegisterCommand("clear", function(source, args)
  TriggerEvent("chat:clear")
end, false)

RegisterCommand('clear', function(source, args)
  TriggerEvent('chat:clear')
end, false)
