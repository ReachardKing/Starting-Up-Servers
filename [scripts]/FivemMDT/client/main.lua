
-- exports.onduty_offduty:IsCop
local display = false
-----------------------------------------
RegisterCommand("MDT", function()
    exports["onduty_offduty"]:PoliceOnduty()
    SetDisplay(not display)
end)

function SetDisplay(bool)
    SendNUIMessage({type = "MDT", visible = bool, SetNuiFocus(true, true)})
end

RegisterNUICallback("remove", function() SendNUIMessage({type = "remove", display = false, SetNuiFocus(false, false)}) end)
RegisterCommand("close", function() SendNUIMessage({type = "remove", display = false, SetNuiFocus(false, false)}) end)

-- if not IsCop then return end
-- if iscop then ExecuteCommand("MDT") end