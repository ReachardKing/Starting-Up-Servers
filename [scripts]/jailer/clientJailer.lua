AddEventHandler("Mackenzie_Rich:Jail", function()
end)

RegisterNUICallback("Submit", function()
    SendNUIMessage({action = "Jail", visible = true, SetNuiFocus(true, true)})
  end)
RegisterNUICallback("Cancel", function()
    SendNUIMessage({action = "Jail", visible = false, SetNuiFocus(false, false)})
  end)
