function printSmallGuildNames(memberCount)
    local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
    
    -- Execute the SQL query and handle errors
    local result = db.storeQuery(string.format(selectGuildQuery, memberCount))
    if not result then
        print("Error: Unable to execute query.")
        return
    end

    -- Fetch and print guild names by looping through them
    print("Guilds with fewer than " .. memberCount .. " members:")
    while result:next() do
        local guildName = result:getDataString("name")
        print(guildName)
    end

    -- Free the result set
    result:free()
end