local taser = "WEAPON_STUNGUN"
local src = PlayerPedId()

Citizen.CreateThread(function()
    SetWeaponDamageModifier(taser, Config.TaserDmg)
end)

-- ONLY WORKS ON PLAYERS
Citizen.CreateThread(function()
	local src = PlayerPedId()
	while true do
		Citizen.Wait(1)
		if IsPedBeingStunned(src) then
		    SetPedMinGroundTimeForStungun(src, Config.TaserDuration*1000)
		end
	end
end)