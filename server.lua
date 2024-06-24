ESX = exports['es_extended']:getSharedObject()


AddEventHandler("esx:onPlayerJoined", function(playerId)
    local identifier = GetPlayerIdentifier(playerId, 0)
    
    Config.Databasereq(identifier, function(result)
        if result and result[1] then
            local money = result[1].money
            local blackMoney = result[1].black_money
            print(('Player %s has money: %s, black money: %s'):format(identifier, money, blackMoney))
        else
            print(('Player %s not found in database'):format(identifier))
        end
    end)
end)