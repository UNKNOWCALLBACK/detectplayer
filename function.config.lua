Config = {} or nil

Config.Databasereq = function(identifier)
    local result = MySQL.Async.fetchAll('SELECT money, black_money FROM user WHERE identifier = @identifier', {['@identifier'] = identifier})
return result
end