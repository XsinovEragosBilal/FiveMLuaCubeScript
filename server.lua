ESX = nil
TriggerEvent('esx:getSharedObject'), function(obj) ESX = end)

ESX.RegisterUsableItem('cube'), funtion(source))
    TriggerClientEvent('wuerfel:roll', source)
end)

RegisterServerEvent('wuerfel:show')
AddEventHandler('wuerfel:show', funtion(target)
    local xPlayer = ESX.GetPlayerFormId(source)
    local random = math.random(1,6)

    TriggerServerEvent('wuerfel:showResult', source, xPlayer.name, random)

    if target ~= nil then
        TriggerClientEvent('wuerfel:showResult', target, xPlayer.name, random)
    end

end)