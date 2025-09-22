repeat task.wait(0.1) until game:IsLoaded()
repeat task.wait(0.1) until game:GetService("Players").LocalPlayer

local games = {
    [6701277882] = "https://raw.githubusercontent.com/stormskmonkey/FishIt/refs/heads/main/main.lua", -- Fish It!
    [7326934954] = "https://raw.githubusercontent.com/stormskmonkey/99NightDiamond/refs/heads/main/Loader.lua", -- 99 Night!

}

local currentID = game.gameId
local scriptURL = games[currentID]

-- if getexecutorname and string.find(string.lower(tostring(getexecutorname())), "delta") then
--     game:GetService("StarterGui"):SetCore("SendNotification", {
--         Title = "Executor Not Supported",
--         Text = "Delta is not supported. Please try Ronix. Join our Discord to get the Ronix executor.",
--         Duration = 30
--     })

--     setclipboard("https://discord.gg/XAfp5RsQ4M")
--     game:GetService("StarterGui"):SetCore("SendNotification", {
--         Title = "jinkX Notification",
--         Text = "Discord invite link already set to your clipboard!",
--         Duration = 30
--     })
--     return
-- end

setclipboard("https://discord.gg/XAfp5RsQ4M")
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "jinkX Notification",
    Text = "Discord invite link already set to your clipboard!",
    Duration = 30
})

if scriptURL then
    loadstring(game:HttpGet(scriptURL))()
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "jinkX Notification",
        Text = "Script not Support This Map!\nสคริปต์ไม่สามารถใช้งานได้กับแมพนี้",
        Duration = 30
    })
end
