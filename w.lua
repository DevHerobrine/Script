local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Player = game.Players.LocalPlayer

-- Create a window
local Window = OrionLib:MakeWindow({
    Name = "Lucas Script",
    HidePremium = false,
    SaveConfig = true,
    IntroText = "Lucas Script",
    ConfigFolder = "LucasScript"
})

-- Notification for login
OrionLib:MakeNotification({
    Name = "Logged in!",
    Content = "You are logged in as " .. Player.Name .. " ",
    Image = "rbxassetid://4483345998",
    Time = 5
})

-- Function to handle ranking reward claim
local function ClaimRankReward(rank)
    local args = {[1] = rank}
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
end

-- Create AutoFarm tab
local AutoFarmTab = Window:MakeTab({
    Name = "AutoFarm",
    Icon = "rbxassetid://6693712950",
    PremiumOnly = false
})

-- Add a paragraph to Home tab
local HomeTab = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://6693712950",
    PremiumOnly = false
})
HomeTab:AddParagraph("Home", "Thanks for using the script!")

-- Function to claim free ranks after waiting for a short duration
local function ClaimFreeRanks(startRank, endRank)
    for i = startRank, endRank do
        wait(0.1)
        ClaimRankReward(i)
    end
end

AutoFarmTab:AddButton({
    Name = "Free Ranks 1-20",
    Default = false,
    Callback = function(Value)
        ClaimFreeRanks(1, 20)
    end
})

AutoFarmTab:AddButton({
    Name = "Free Ranks 20-32",
    Default = false,
    Callback = function(Value)
        ClaimFreeRanks(20, 32)
    end
})

local isAutoRank = false
function autoRank()
    while isAutoRank do
        ClaimFreeRanks(1, 32)
        wait(0.1)
    end
end

AutoFarmTab:AddToggle({
    Name = "Auto Rank",
    Default = false,
    Callback = function(Value)
        isAutoRank = Value 
        if Value then
            autoRank()
        end
    end
})
