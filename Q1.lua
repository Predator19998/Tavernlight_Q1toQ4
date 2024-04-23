local function releaseStorage(player)
    player:setStorageValue(1000, -1)
end

function onLogout(player)

    --Check player
    if player then
        if player:getStorageValue(1000) == 1 then
            -- Add event not required if you are relasing storage 
            releaseStorage(player)
        end
        return true
    else 
        return false
    end

end