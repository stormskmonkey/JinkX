repeat wait() until game:IsLoaded() and game:FindFirstChild("CoreGui") and pcall(function() return game.CoreGui end)

local _function = {
    ["block_executor"] = function()
        if identifyexecutor and (identifyexecutor():lower():find("xeno") or identifyexecutor():lower():find("solara")) then
            return true
        end
        return false
    end,
    ["getid"] = function()
        local g = game.GameId
        if g == 6701277882 then return "e0f5b1e2af8eb6900e1324bef4e472b7" -- Fish It
        elseif g == 7326934954 then return "32a295ca0700e8b3f232f8776c5e9c3e" -- 99 Night in The Forest
        elseif g == 8009328211 then return "bf9e3c7d3db39fba6940d81c8eddedf8" -- Raise Animal
        end
    end,
    ["gamename"] = function()
        local g = game.GameId
        if g == 6701277882 then return "Fish It"
        elseif g == 7326934954 then return "99 Night in The Forest"
        elseif g == 8009328211 then return "Raise Animal"
        end
    end,
}
local keyless_script = {}
local script_id, game_name, block_executor = _function.getid(), _function.gamename(), _function.block_executor()

if block_executor then game.Players.LocalPlayer:Kick("JinkX\nUnsupported executor detected. not supported."); return end
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
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/" .. script_id .. ".lua"))()
        -- local authentication_module = loadstring(game:HttpGet("https://raw.githubusercontent.com/PThitipat/master/main/keysystem.lua"))()
        -- local auth_status = authentication_module(script_id)
        -- repeat task.wait() until auth_status.validated
    end
else
    warn("JinkX: This game is not supported.")
end
