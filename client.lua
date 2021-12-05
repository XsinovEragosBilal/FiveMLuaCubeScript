Citizen.CreateThread(Function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', funtion(obj)) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('wuerfel:roll')
AddEventHandler('wuerfel:roll', funtion()

    local player, distance = ESX.Game.GetClosestPlayer()

    if distance ~= -1 and distance <= 3.0 then
        --Spieler Vorhanden
        TriggerServerEvent('wuerfel:show', GetPlayerServerId(player))
    else
        --Kein Spieler Da
        TriggerServerEvent('wuerfel:show', nil)
    end

end)

RegisterNetEvent('wuerfel:showResult')
AddEventHandler('wuerfel:showResult', function(sourcePlayer, randomint)

    ShowNotification('~p~' .. sourcePlayer .. 'Hat einen Würfel geworfen')
    Citizen.Wait(5000)
    if randomint == 1 then
        ShowNotification('Der Würfel zeigt ' .. randomint .. 'Auge')
    else
        ShowNotification('Der Würfel zeigt ' .. randomint .. 'Augen')
    end


end)

funtion ShowNotification(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, true)
end