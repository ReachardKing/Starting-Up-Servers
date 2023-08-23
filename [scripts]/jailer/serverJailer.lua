AddEventHandler("Mackenzie_Rich:Jail", function()
        local JailID = tonumber(KeyboardInput("Spawn any vehicles", 20))
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
