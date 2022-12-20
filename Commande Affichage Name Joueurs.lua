RegisterCommand("playernameall", function(source, args, raw)
    local xPlayer = ESX.GetPlayerFromId(source)

    if (not (xPlayer.getGroup() ~= "user")) then
        xPlayer.showNotification("~r~ERROR :~s~ Vous n'avez pas la permission d'executer cette commande")
        return
    end

    for _, player in ipairs(GetPlayers()) do
        local xTarget = ESX.GetPlayerFromId(player)
        xPlayer.showNotification(("ID : %s | Name : %s"):format(xTarget.source, xTarget.name))
    end
end, false)