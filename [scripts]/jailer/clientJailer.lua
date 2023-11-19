AddEventHandler("Mackenzie_Rich:Jail", function()
end)

RegisterNUICallback("Submit", function()
        TriggerEvent("Mackenzie_Rich:Jail")
        SendNUIMessage({action = "Jail", visible = false, SetNuiFocus(false, false)})
  end)

RegisterNUICallback("Cancel", function()
    SendNUIMessage({action = "Jail", visible = false, SetNuiFocus(false, false)})
  end)
