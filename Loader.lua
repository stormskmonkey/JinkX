repeat task.wait(0.1) until game:IsLoaded()
repeat task.wait(0.1) until game:GetService("Players").LocalPlayer

local games = {
    [6701277882] = "https://raw.githubusercontent.com/stormskmonkey/FishIt/refs/heads/main/NLoader.lua", -- Fish It!
    [7326934954] = "https://raw.githubusercontent.com/stormskmonkey/99NightDiamond/refs/heads/main/Loader.lua",

}

local currentID = game.gameId
local scriptURL = games[currentID]

if scriptURL then
    loadstring(game:HttpGet(scriptURL))()
end
