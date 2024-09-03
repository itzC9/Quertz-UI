local ip = getPlayerIP()

local function getPlayerIP()
    local response = httpRequest({
        Url = "https://api.ipify.org/?format=json",
        Method = "GET"
    })
    if response.StatusCode == 200 then
        local success, data = pcall(function()
            return HttpService:JSONDecode(response.Body)
        end)
        if success then
            return data.ip
        else
            warn("Failed to parse JSON: " .. data)
            return nil
        end
    else
        warn("HTTP failed with status: " .. response.StatusCode)
        return nil
    end
end
task.wait(0.2)
loadstring(game:HttpGet('https://raw.githubusercontent.com/itzC9/Trinx-Kavo-UI/main/ChangeLogs.lua'))()
