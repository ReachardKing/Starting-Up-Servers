RegisterNetEvent("SaveIncident", function(title, infromation, tags, officer, civilana, evidence, time)
    local src = source
    local player = Getplayer(src)
    if player then
       if Iscop then
            TriggerClientEvent("SaveIncident", title, infromation, tags, officer, civilana, evidence, time)
       end
    end
end)

RegisterNetEvent("GetAllIncidents", function()
    local src = source
    for _ Name in pairs(GetActivePlayers()) do
        if Name then
            TriggerClientEvent("GetAllIncidents", src)
        end
    end
end)