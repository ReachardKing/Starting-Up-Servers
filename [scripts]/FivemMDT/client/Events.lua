RegisterNUICallback("SaveIncident", function(data, cb) TriggerServerEvent('SaveIncident', data.title, data.information, data.tags, data.officer, data.civilans, data.evidence, data.time) cb(true) end)

RegisterNUICallback("getAllIncidents", function(data, cb) TriggerServerEvent("GetAllIncident") TriggerServerEvent("GetAllIncidents") cb(true) end)

RegisterNUICallback("getSearchedNamedata", function() end)

RegisterNUICallback("getVehicledata", function() end)

RegisterNuiCallback("getIncidentdata", function() end)

RegisterNUICallback("searchIncident", function() end)

RegisterNUICallback("searchProfile", function() end)

RegisterNUICallback("getIncidentData", function() end)

RegisterNUICallback("searchPoints", function() end)

RegisterNUICallback("SearchProfile", function() end)

RegisterNUICallback("GetIncidentlocation", function() end)


