repeat wait() until game:IsLoaded() and game:FindFirstChild("CoreGui") and pcall(function() return game.CoreGui end)

getgenv().jinkX = getgenv().jinkX or {}
local _function = {
    ["block_executor"] = function()
        local blockedExecutors = {
            "xeno",
            "solara",
            "velocity",
            "volcano"
        }
        if identifyexecutor then
            local current = identifyexecutor():lower()
            for _, name in ipairs(blockedExecutors) do
                if current:find(name) then
                    return true
                end
            end
        end
        return false
    end,
    ["getid"] = function()
        local g = game.GameId
        if g == 6701277882 then return "e0f5b1e2af8eb6900e1324bef4e472b7" -- Fish It
        if g == 6701277882 and getgenv().jinkX['Fish It'] then return "0708c0109bad431c5513f6d2dcc9b9e5" -- Fish It Kaitun
        elseif g == 8974769492 then return "b840532f91921ccb738cd688da33a169" -- Arise Ragnarok Crossover
        elseif g == 8009328211 then return "bf9e3c7d3db39fba6940d81c8eddedf8" -- Raise Animal
        elseif g == 7882829745 then return "b32987d20154b4aa78ef717f991146af" -- Anime Eternal
        elseif g == 8321616508 then return "a48f7af4536d0cb058f7aecb5e18007d" -- Rouge Piece
        elseif g == 7094518649 then return "9f56fe8068b5506746180cead750be8d" -- Restaurant Tycoon 3
        elseif g == 8469926548 then return "02ffb009555e8fab6f1c5c0ac3962e46" -- Anime Fight
        end
    end,
    ["gamename"] = function()
        local g = game.GameId
        if g == 6701277882 then return "Fish It"
        elseif g == 8974769492 then return "Arise Ragnarok Crossover"
        elseif g == 8009328211 then return "Raise Animal"
        elseif g == 7882829745 then return "Anime Eternal"
        elseif g == 8321616508 then return "Rouge Piece"
        elseif g == 7094518649 then return "Restaurant Tycoon 3"
        elseif g == 8469926548 then return "Anime Fight"
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
        -- loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/" .. script_id .. ".lua"))()
        local authentication_module = loadstring(game:HttpGet("https://raw.githubusercontent.com/PThitipat/master/main/keysystem.lua"))()
        local auth_status = authentication_module(script_id)
        repeat task.wait() until auth_status.validated
    end
else
    warn("JinkX: This game is not supported.")
end
