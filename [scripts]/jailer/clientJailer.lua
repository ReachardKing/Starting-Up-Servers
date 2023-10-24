AddEventHandler("Mackenzie_Rich:Jail", function()
        local JailID = tonumber(KeyboardInput("Want to jail someone?", 20))
    if JailID == nil then
        Notify("Nothing was entered")
        return
    end
end)

function GetJailWaypoint(name, ID)
end

function KeyboardInput()
    DisplayOnscreenKeyboard(1, "", "", "", "", "", "", 255)
    while (UpdateOnscreenKeyboard() == 0)
      Citizen.Wait(0)
    end
    if (GetOnscreenKeyboardResult()) then
        GetJailWaypoint(GetOnscreenKeyboardResult())
        Notify('~b~Vehicle Spawned')
    end
end

RegisterNUICallback("Submit", function()
        TriggerEvent("Mackenzie_Rich:Jail")
    SendNUIMessage({action = "Jail", visible = false, SetNuiFocus(false, false)})
  end)

RegisterNUICallback("Cancel", function()
    SendNUIMessage({action = "Jail", visible = false, SetNuiFocus(false, false)})
  end)
