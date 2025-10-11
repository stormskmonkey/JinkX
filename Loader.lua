repeat wait() until game:IsLoaded() and game:FindFirstChild("CoreGui") and pcall(function() return game.CoreGui end)

local _function = {
    ["getid"] = function()
        local g = game.GameId
        if g == 6701277882 then return "e0f5b1e2af8eb6900e1324bef4e472b7"
        elseif g == 7326934954 then return "32a295ca0700e8b3f232f8776c5e9c3e" end
    end,
    ["gamename"] = function()
        local g = game.GameId
        if g == 6701277882 then return "Fish It"
        elseif g == 7326934954 then return "99 Night in The Forest"
        end
    end,
}
local keyless_script = {}
local script_id, game_name = _function.getid(), _function.gamename()

if script_id then
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "JinkX Loaded!",
            Text = (game_name or "Global") .. " Script Loaded!",
            Icon = "rbxassetid://79605757154544",
            Duration = 5
        }
    )
    
    if not table.find(keyless_script, script_id) then
        local authentication_module = loadstring(game:HttpGet("https://raw.githubusercontent.com/PThitipat/master/main/keysystem.lua"))()
        local auth_status = authentication_module(script_id)
        repeat task.wait() until auth_status.validated
    end
else
    warn("JinkX: This game is not supported.")
end
