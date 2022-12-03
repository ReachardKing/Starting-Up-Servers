local carry = false

RegisterNetEvent("carry")
AddEventHandler("carry", function()
	local lPed = GetPlayerPed(-1)
	if DoesEntityExist(lPed) then
		if IsEntityPlayingAnim(lPed, "mp_carrying", "idle", 3) then
			ClearPedSecondaryTask(lPed)
			SetEnableHandcuffs(lPed, false)
			SetCurrentPedWeapon(lPed, GetHashKey("WEAPON_UNARMED"), true)
			carry = false
		else
			RequestAnimDict("mp_carry")
			while not HasAnimDictLoaded("mp_carring") do
				Citizen.Wait(100)
			end

			TaskPlayAnim(lPed, "mp_carrying", "idle", 8.0, -8, -1, 49, 0, 0, 0, 0)
			SetEnableHandcuffs(lPed, true)
			SetCurrentPedWeapon(lPed, GetHashKey("WEAPON_UNARMED"), true)
			carry = true
		end
	end
end)

RegisterNetEvent("carry")
AddEventHandler("carry", function()
	local lPed = GetPlayerPed(-1)
	if DoesEntityExist(lPed) then
		if not IsEntityPlayingAnim(lPed, "mp_carry", "idle", 3) then
			RequestAnimDict("random@mugging3")
			while not HasAnimDictLoaded("random@mugging3") do
				Citizen.Wait(100)
			end
			
			if IsEntityPlayingAnim(lPed, "random@mugging3", "carry_standing_base", 3) then
				ClearPedSecondaryTask(lPed)
				SetEnableHandcuffs(lPed, false)
				SetCurrentPedWeapon(lPed, GetHashKey("WEAPON_UNARMED"), true)
			else
				TaskPlayAnim(lPed, "random@mugging3", "carry_standing_base", 8.0, -8, -1, 49, 0, 0, 0, 0)
				SetEnableHandcuffs(lPed, true)
				SetCurrentPedWeapon(lPed, GetHashKey("WEAPON_UNARMED"), true)
			end
		else
			TriggerEvent("chatMessage", "", {255, 0, 0}, "You can't raise your hands when your carried")
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if carry and not IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "mp_carrying", "idle", 3) then
			Citizen.Wait(3000)
			Citizen.Trace("BACKUP CUFFING TRIGGERED")
			TaskPlayAnim(GetPlayerPed(PlayerId()), "mp_carrying", "idle", 8.0, -8, -1, 49, 0, 0, 0, 0)
		end

		if IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "mp_carryinging", "idle", 3) then
			DisableControlAction(1, 140, true)
			DisableControlAction(1, 141, true)
			DisableControlAction(1, 142, true)
			SetPedPathCanUseLadders(GetPlayerPed(PlayerId()), false)
			if IsPedInAnyVehicle(GetPlayerPed(PlayerId()), false) then
				DisableControlAction(0, 59, true)
			end
		end

		if IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "random@mugging3", "handsup_standing_base", 3) then
			DisableControlAction(1, 140, true)
			DisableControlAction(1, 141, true)
			DisableControlAction(1, 142, true)
			if IsPedInAnyVehicle(GetPlayerPed(PlayerId()), false) then
				DisableControlAction(0, 59, true)
			end
		end
	end
end)


function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end 
