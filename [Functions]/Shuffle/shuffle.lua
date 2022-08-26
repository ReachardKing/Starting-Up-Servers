-- Shuffle
local ped = GetPlayerPed(-1)
local veh = GetVehiclePedIsIn(ped)
if IsPedInAnyVehicle(ped, false) and GetPedInVehicleSeat(veh, -1) == ped then
	TaskShuffleToNextVehicleSeat(ped, veh)
end

RegisterCommand("Shuffle", function()
	local ped = GetPlayerPed(-1)
	local veh = GetVehiclePedIsIn(ped)
	if IsPedInAnyVehicle(ped, false) and GetPedInVehicleSeat(veh, -1) == ped then
		TaskShuffleToNextVehicleSeat(ped, veh)
	end
end)

