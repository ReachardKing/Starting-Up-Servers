--Functions--
IsCop = false
IsEMS = false

function ShowNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end

function DrawText3Ds(x, y, z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
end

--------------------------------------------------------------------------------
------------------------------Police System-------------------------------------
--------------------------------------------------------------------------------


RegisterCommand("Policeon", function()
    if not IsCop then
        IsCop = true
		ShowNotification("You are now onduty")
    end
end)

RegisterCommand("Policeoff", function()
    if IsCop == true then
        IsCop = false
		ShowNotification("You are now offduty")
    end 
end)

function Policeonduty()
	IsCop = true
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), 1000, false)
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLARE"), 5, false)
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_NIGHTSTICK"), 1000, false)
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false)
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_STUNGUN"), 1000, false)
	ShowNotification("You are now onduty")
end

function Policeoffduty()
	IsCop = false
	RemoveAllPedWeapons(GetPlayerPed(-1), true)
	ShowNotification("You are now offduty")
end

--Sign on/off--

Citizen.CreateThread(function()
	while true do
		local player = GetPlayerPed(-1)
		local pl = GetEntityCoords(player)
			Citizen.Wait(0)
				if GetDistanceBetweenCoords(pl.x, pl.y, pl.z, 1853.38, 3687.95, 34.27) < 1.0 and IsCop == false then -- <-- Sandy Shores --
				   DrawText3Ds(1853.38, 3687.95, 34.27, "~w~Press [~g~E~w~] To Go on duty")
				if IsControlJustReleased(1, 38) then
					Policeonduty()
			end
		elseif 
			Vdist2(pl.x, pl.y, pl.z, -447.66, 6013.56, 31.72) < 1.0 and IsCop == false then -- <-- Paleto Bay --
				 DrawText3Ds(-447.66, 6013.56, 31.72, "~w~Press [~g~E~w~] To Go on duty")
				if IsControlJustReleased(1, 38) then 
					Policeonduty()
				end
		elseif 
			Vdist2(pl.x, pl.y, pl.z, 440.85, -981.11, 30.69) < 1.0 and IsCop == false then -- <-- Mission Row --
				 DrawText3Ds(440.85, -981.11, 30.69, "~w~Press [~g~E~w~] To Go on duty")
				if IsControlJustReleased(1, 38) then 
					Policeonduty()
				end				
				elseif GetDistanceBetweenCoords(pl.x, pl.y, pl.z, 1853.38, 3687.95, 34.27) < 1.0 and IsCop == true then  
				DrawText3Ds(1853.38, 3687.95, 34.27, "~w~Press [~g~E~w~] To Go off duty")
			if IsControlJustReleased(1, 38) then 
				Policeoffduty()
			end
			elseif GetDistanceBetweenCoords(pl.x, pl.y, pl.z, -447.66, 6013.56, 31.72) < 1.0 and IsCop == true then 
				DrawText3Ds(-447.66, 6013.56, 31.72, "~w~Press [~g~E~w~] To Go off duty")
			if IsControlJustReleased(1, 38) then 
				Policeoffduty()
			end
			elseif GetDistanceBetweenCoords(pl.x, pl.y, pl.z, 440.85, -981.11, 30.69) < 1.0 and IsCop == true then 
				DrawText3Ds(440.85, -981.11, 30.69, "~w~Press [~g~E~w~] To Go off duty")
			if IsControlJustReleased(1, 38) then 
				Policeoffduty()
			end 		
		end
	end
end)

function fireonduty()
	IsEMS = true
	IsCop = false				
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false)
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false)
end

function emsonduty()
	IsEMS = true
	IsCop = false					
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false)
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false)
end

local vehs = {
	[1] = {["x"] = 1710.89, ["y"] = 3594.51, ["z"] = 35.42, "ambulance"},
}

-- Citizen.CreateThread(function()
-- 	local ped = GetPlayerPed(-1)
-- 	local coords = GetEntityCoords(ped)
-- 	while true do	
-- 		Wait(0)


Citizen.CreateThread(function()
	while true do Citizen.Wait(0)
		if IsPlayerFreeAiming(GetPlayerPed(-1)) then 
			print("aiming")
		end
	end 
end)

function emsoffduty()
	IsEMS = false
	local player = GetPlayerPed(-1)
	RemoveAllPedWeapons(player, true)
end

-- Sandy Spawn --

function spawnambo()
local model = "ambulance" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, 1709.11, 3594.16, 35.42, 207.8)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end 
  
function spawnfire()
local model = "firetruk" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, 1709.11, 3594.16, 35.42, 207.8)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end

-- Paleto Spawn -- 

function spawnambo2()
local model = "ambulance" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, -369.52, 6126.9, 31.44, 43.21)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end 
  
function spawnfire2()
local model = "firetruk" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, -370.4, 6127.5, 31.44, 43.21)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end

-- City Spawn --

function spawnambo3()
local model = "ambulance" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, 365.57, -593.25, 28.69, 338.26)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end 
  
function spawnfire3()
local model = "firetruk" -- <-- Change the Model Name here for custom vehicles --
local player = GetPlayerPed(-1)
local pl = GetEntityCoords(player)
local heading = GetEntityHeading(player)
RequestModel(model)
while not HasModelLoaded(model) do
RequestModel(model)
Citizen.Wait(0)
end
local ve = CreateVehicle(model, 365.57, -593.25, 28.69, 338.26)
SetModelAsNoLongerNeeded(model)
SetPedIntoVehicle(player, ve, -1) 
end

--Sign on/off--

-- Coords to save --


-- 1690.08, 3581.64, 35.62 <-- Sandy Shores Sign on/off--
-- 1701.03, 3587.56, 35.55 <-- Sandy Shores Spawner -- 

-- -379.95, 6118.63, 31.85 <-- Paleto Sign On/off -- 
-- -369.52, 6126.9, 31.44 <-- Paleto selector  --
-- -369.52, 6126.9, 31.44 <-- Paleto Spawner  --

Citizen.CreateThread(function()
while true do
	local player = GetPlayerPed(-1)
	local pl = GetEntityCoords(player, true)
	Wait(0)
		if Vdist2(pl.x, pl.y, pl.z, -379.95, 6118.63, 31.85) < 1.0 and IsEMS == false then 
		DrawText3Ds(-379.95, 6118.63, 31.85, "~w~Press [~g~E~w~] To go on duty as EMS OR [~g~G~w~] To go onduty as fire")
		if IsControlJustReleased(1, 38) then 
			emsonduty()
			ShowNotification("You are now onduty")
		elseif 
			IsControlJustReleased(1, 183) then 
			fireonduty()
			ShowNotification("You are now onduty")
		end
		elseif
		Vdist2(pl.x, pl.y, pl.z, 1690.08, 3581.64, 35.62) < 1.0 and IsEMS == false then 
		DrawText3Ds(1690.08, 3581.64, 35.62, "~w~Press [~g~E~w~] To go on duty as EMS OR [~g~G~w~] To go onduty as fire")
		if IsControlJustReleased(1, 38) then 
			emsonduty()
			ShowNotification("You are now onduty")
		elseif
		IsControlJustReleased(1, 183) then
			fireonduty()
			ShowNotification("You are now onduty")
		end
		elseif 
		Vdist2(pl.x, pl.y, pl.z, 356.9, -593.86, 28.78) < 1.0 and IsEMS == false then 
		DrawText3Ds(356.9, -593.86, 28.78, "~w~Press [~g~E~w~] To go on duty as EMS OR [~g~G~w~] To go onduty as fire")
		if IsControlJustReleased(1, 38) then 
			emsonduty()
			ShowNotification("You are now onduty")
		elseif 
			IsControlJustReleased(1, 183) then 
			fireonduty()
			ShowNotification("You are now onduty")
		end			
		elseif
		Vdist2(pl.x, pl.y, pl.z, 1690.08, 3581.64, 35.62) < 1.0 and IsEMS == true then 
		DrawText3Ds(1690.08, 3581.64, 35.62, "~w~Press [~g~E~w~] To go off duty ")
		if IsControlJustReleased(1, 38) then 
		emsoffduty()
		ShowNotification("You are now offduty")
		end
		elseif
		Vdist2(pl.x, pl.y, pl.z, -379.95, 6118.63, 31.85) < 1.0 and IsEMS == true then 
		DrawText3Ds(-379.95, 6118.63, 31.85, "~w~Press [~g~E~w~] To go off duty ")
		if IsControlJustReleased(1, 38) then 
		emsoffduty()
		ShowNotification("You are now offduty")
		end
		elseif
		Vdist2(pl.x, pl.y, pl.z, 356.9, -593.86, 28.78) < 1.0 and IsEMS == true then 
		DrawText3Ds(356.9, -593.86, 28.78, "~w~Press [~g~E~w~] To go off duty ")
		if IsControlJustReleased(1, 38) then 
		emsoffduty()
		ShowNotification("You are now offduty")
		end							
	end
end
end)

RegisterCommand("vest", function(source, args)
	local pl = GetEntityCoords(GetPlayerPed(-1))
	if IsCop == true and GetDistanceBetweenCoords(pl.x, pl.y, pl.z, 1853.38, 3687.95, 34.27) < 3.0 then -- Only able to get vest at sandy PD
		SetPedArmour(GetPlayerPed(-1), 100)
    end
end)

RegisterCommand("vest", function(source, args)
	exports['progressBars']:startUI(300000, "Equipng Vest")
	Citizen.Wait(300000)
	SetPedArmour(GetPlayerPed(-1), 100)
end)
