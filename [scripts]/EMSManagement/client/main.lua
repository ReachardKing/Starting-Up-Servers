local Display = false

RegisterCommand("EMSManagement", function()
    SetDisplay(not Display)
end)

function SetDisplay(bool) 
    Display = bool
    SendNUIMessage({
        type = "init",
        visible = bool, 
        SetNuiFocus(true, true)
       
    })
end

RegisterNUICallback("Closeform", function()
    SendNUIMessage({type = "Closeform", Display = false})
    SetMouseCursorVisibleInMenus(false)
    SetNuiFocus(false, false)
end)

RegisterCommand("close", function()
    SendNUIMessage({type = "init", Display = false})
    SendNUIMessage({type = "Closeform", Display = false})
    SetMouseCursorVisibleInMenus(false)
    SetNuiFocus(false, false)
end)
