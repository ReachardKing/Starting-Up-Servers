AddEventHandler("Mackenzie_Rich:Jail", function()
end)

RegisterNUICallback("Submit", function()
    SendNUIMessage({action = "Evidence", visible = true, SetNuiFocus(true, true)})
  end)
RegisterNUICallback("Trash", function()
    SendNUIMessage({action = "Evidence", visible = false, SetNuiFocus(false, false)})
  end)
