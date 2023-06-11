local Display = false

RegisterCommand("Dispatch", function()
    SetDisplay(not Display)
end)

function SetDisplay(bool) 
    Display = bool
    
    SendNUIMessage({type = "IsDispatch", visible = bool, SetNuiFocus(true, true)})
    print(Display, ":", visible)
end

RegisterNUICallback("NewDispatchEmployees", function(data)
    TriggerServerEvent("Police:CaracterCreation", {
        DispatchName = data.DispatchName,
        Dispatch = data.Dispatch
    })

end)

RegisterNUICallback("remove", function()
    SendNUIMessage({type = "remove", Display = false})
    SetMouseCursorVisibleInMenus(false)
    SetNuiFocus(false, false)
end)

RegisterCommand("close", function()
    SendNUIMessage({type = "remove", Display = false})
    SetMouseCursorVisibleInMenus(false)
    SetNuiFocus(false, false)
end)

local callbackValue, hasCallbackValue = nil, false

RegisterNUICallback(
    "Dispatch", 
    function(data, cb)
    callbackValue = data.value
    hasCallbackValue = true
end
)

RegisterNUICallback(
    "Dispatch", 
    function()
    SendNUIMessage({action = 'remove', HireDisplay = false})
    SetNuiFocus(false, false)
end
)
