function do_sth_with_PlayerParty(playerId, membername)
    -- Obtain the player object using the provided player ID
    local player = Player(playerId)
    -- Check if the player object is valid
    if not player then
        print("Error: Invalid player ID.")
        return
    end
    
    -- Obtain the party object associated with the player
    local party = player:getParty()
    -- Check if the player is in a party
    if not party then
        print("Error: Player is not in a party.")
        return
    end
    
    local members = party:getMembers()
    -- Check if the specified member is found in the party
    if not members then
        print("Error: Members not found.")
        return
    end

    for _, member in ipairs(members) do
        if member:getName() == membername then
            party:removeMember(member)
            break
        end
    end
end
