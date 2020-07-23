local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

local menuOn = false

local keybindControls = {
	["F1"] = 288, ["F2"] = 289, ["`"] = 243, [","] = 82
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local keybindControl = keybindControls["`"]
        if IsControlPressed(0, keybindControl) then
            TransitionToBlurred(1000)
            menuOn = true
            SendNUIMessage({
                type = 'init',
                resourceName = GetCurrentResourceName()
            })
            SetCursorLocation(0.5, 0.5)
            SetNuiFocus(true, true)
            PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
            while menuOn == true do Citizen.Wait(100) end
            Citizen.Wait(100)
            while IsControlPressed(0, keybindControl) do Citizen.Wait(100) end
        end
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if menuOn then
			BlockWeaponWheelThisFrame()
            DisableControlAction(0,288,true)
            DisableControlAction(0,200,true)
			DisableControlAction(0,289,true)
			DisableControlAction(0,170,true)
			DisableControlAction(0,166,true)
			DisableControlAction(0,187,true)
			DisableControlAction(0,189,true)
			DisableControlAction(0,190,true)
			DisableControlAction(0,188,true)
			DisableControlAction(0,57,true)
			DisableControlAction(0,73,true)
			DisableControlAction(0,167,true)
			DisableControlAction(0,311,true)
			DisableControlAction(0,344,true)
			DisableControlAction(0,29,true)
			DisableControlAction(0,182,true)
			DisableControlAction(0,245,true)
            DisableControlAction(0,257,true)
            DisableControlAction(0,199,true)
            DisableControlAction(0,82,true)
			DisableControlAction(0,47,true)
			DisableControlAction(0,38,true)
		end
	end
end)

RegisterNUICallback('closemenu', function(data, cb)
    menuOn = false
    TransitionFromBlurred(1000)
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = 'destroy'
    })
    PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
    cb('ok')
end)


RegisterNUICallback('openmenu', function(data)
local identity = vRP.getUserIdentity(user_id)
    menuOn = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = 'destroy'
    })
    PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
    if data.id == 'inventory' then
        TriggerEvent("invOpen")
    elseif data.id == 'billing' then
        TriggerEvent("gw:banco")
        TransitionFromBlurred(1000)
    elseif data.id == 'dance' then
        TriggerEvent("gw:emote")
        TransitionFromBlurred(1000)
    elseif data.id == 'id' then
       TriggerEvent("gw:rg")
       TransitionFromBlurred(1000)
    elseif data.id == 'work' then
        TriggerEvent("Notify","aviso","Função desabilitada.")
        TransitionFromBlurred(1000)
    elseif data.id == 'phone' then
        TriggerEvent("gcPhone:forceOpenPhone")
        TransitionFromBlurred(1000)
    end

--[[
    PATTERN FOR CLIENT
    RegisterNetEvent("esx_billing:openBillings")
    AddEventHandler("esx_billing:openBillings", function()
            ShowBillsMenu()
    end)
]]--

end)
-- Callback function for testing
RegisterNUICallback('testprint', function(data, cb)
    -- Print message
    TriggerEvent('chatMessage', "[test]", {255,0,0}, data.message)

    -- Send ACK to callback function
    cb('ok')
end)
