function ShowNUI()
    SendNuiMessage({type = "Show"})
end

function Clockon()
    SendNUIMessage({action = "Show"})
end

-- expot this like any other exports, adivce look for any progressbar example that does not have to deal with loading screens