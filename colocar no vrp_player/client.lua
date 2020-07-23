-----------------------------------------------------------------------------------------------------------------------------------------
-- rg e bank
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("gw:rg")
AddEventHandler("gw:rg", function()
        Citizen.Wait(1)
	TriggerServerEvent('gw:rg1')
end)
	
RegisterNetEvent("gw:banco")
AddEventHandler("gw:banco", function()
        Citizen.Wait(1)
	TriggerServerEvent('gw:banco1')
end)