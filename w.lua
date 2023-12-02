-- Load Orion library
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

-- Function to claim free ranks 1 to 99 after waiting for 1 second
local function ClaimFreeRanks()
    for i = 1, 20 do
        wait(0.1)
        ClaimRankReward(i)
    end
end


AutoFarmTab:AddButton({
    Name = "Free Ranks 1-20",
    Default = false,
    Callback = function(Value)
        ClaimFreeRanks()
    end
})


local function ClaimFreeRanks1()
    for i = 20, 32 do
        wait(0.1)
        ClaimRankReward(i)
    end
end


AutoFarmTab:AddButton({
    Name = "Free Ranks 20-32",
    Default = false,
    Callback = function(Value)
        ClaimFreeRanks1()
    end
})

local isautorank = false
function autorank()
	while isautorank do
        for i = 1, 32 do
            wait(0.1)
            ClaimRankReward(i)
        end
	end
end


AutoFarmTab:AddToggle({
    Name = "Auto Rank",
    Default = false,
    Callback = function(Value)
        isautorank = Value 
        if Value then
            autorank()
        end
    end
})

