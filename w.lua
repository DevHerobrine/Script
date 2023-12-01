local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Lucas Script", HidePremium = false, SaveConfig = true, IntroText = "Lucas Script", ConfigFolder = "LucasScript"})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as"..Player.Name.." ",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local HomeTab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://6693712950",
	PremiumOnly = false
})

HomeTab:AddParagraph("Home","Thanks for using we script!")

local AutoFarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://6693712950",
	PremiumOnly = false
})

AutoFarmTab:AddButton({
    Name = "Rank 1",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})


AutoFarmTab:AddButton({
    Name = "Rank 2",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 2
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 3",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 3
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 4",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 4
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 5",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 5
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 6",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 6
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 7",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 7
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 8",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 8
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 9",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 9
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 10",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 10
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 11",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 11
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 12",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 12
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 13",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 13
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 14",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 14
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 15",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 15
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 16",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 16
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})

AutoFarmTab:AddButton({
    Name = "Rank 17",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = 17
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
    end
})