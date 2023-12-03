local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Player = game.Players.LocalPlayer

local Window = OrionLib:MakeWindow({
    Name = "Lucas Script",
    HidePremium = false,
    SaveConfig = true,
    IntroText = "Lucas Script",
    ConfigFolder = "LucasScript"
})

OrionLib:MakeNotification({
    Name = "Logged in!",
    Content = "You are logged in as " .. Player.Name .. " ",
    Image = "rbxassetid://4483345998",
    Time = 5
})



local HomeTab = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://6693712950",
    PremiumOnly = false
})
HomeTab:AddParagraph("Home", "Thanks for using the script!")

-- Function


local function ClaimRankReward(rank)
    local args = {[1] = rank}
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ranks_ClaimReward"):FireServer(unpack(args))
end


local function ClaimFreeRanks(startRank, endRank)
    for i = startRank, endRank do
        wait(0.1)
        ClaimRankReward(i)
    end
end

local isAutoRank = false

function autoRank()
    while isAutoRank do
        ClaimFreeRanks(1, 32)
        wait(0.1)
    end
end

local isBuyMerch = false

function autobuymerch()
    local args = {
        [1] = "RegularMerchant",
        [2] = 1
    }

    while isBuyMerch do
        for i = 1, 6 do
            args[2] = i
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Merchant_RequestPurchase"):InvokeServer(unpack(args))
            wait(1) -- Wait for 1 second before the next iteration
        end
    end
end



--Patched
local RankTab = Window:MakeTab({
    Name = "Rank (Patched)",
    Icon = "rbxassetid://6693712950",
    PremiumOnly = false
})

RankTab:AddButton({
    Name = "Free Ranks 1-20",
    Default = false,
    Callback = function(Value)
        ClaimFreeRanks(1, 20)
    end
})

RankTab:AddButton({
    Name = "Free Ranks 20-32",
    Default = false,
    Callback = function(Value)
        ClaimFreeRanks(20, 32)
    end
})


RankTab:AddToggle({
    Name = "Auto Rank",
    Default = false,
    Callback = function(Value)
        isAutoRank = Value 
        if Value then
            autoRank()
        end
    end 
})


local ShopTab = Window:MakeTab({
    Name = "Shop",
    Icon = "rbxassetid://6693712950",
    PremiumOnly = false
})

--Vending
ShopTab:AddButton({
    Name = "Enchant Vending1 (4 Max)(Spam click for make sure you do the 4)",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "EnchantVendingMachine1",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("VendingMachines_Purchase"):InvokeServer(unpack(args))
    end
})


ShopTab:AddButton({
    Name = "Potion Vending (4 Max)(Spam click for make sure you do the 4)",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "PotionVendingMachine1",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("VendingMachines_Purchase"):InvokeServer(unpack(args))
    end
})

ShopTab:AddButton({
    Name = "Fruit Vending (4 Max)(Spam click for make sure you do the 4)",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "FruitVendingMachine1",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("VendingMachines_Purchase"):InvokeServer(unpack(args))
    end
})

--Merchant
ShopTab:AddToggle({
    Name = "Auto Buy Merchant Item",
    Default = false,
    Callback = function(Value)
        isBuyMerch = Value 
        if Value then
            autobuymerch()
        end
    end 
})

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://6693712950",
    PremiumOnly = false
})

--Collect Daily
MiscTab:AddButton({
    Name = "Collect Daily Diamond",
    Default = false,
    Callback = function(Value)
        local args = {[1] = "SmallDailyDiamonds"}
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("DailyRewards_Redeem"):InvokeServer(unpack(args))        
    end
})


MiscTab:AddButton({
    Name = "Collect Daily Potion",
    Default = false,
    Callback = function(Value)
        local args = {[1] = "DailyPotions"}
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("DailyRewards_Redeem"):InvokeServer(unpack(args))        
    end
})

--Obby/Event
MiscTab:AddButton({
    Name = "Obby1 Complete",
    Default = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(915.1801147460938, 17.983732223510742, -211.67022705078125)
        wait(4)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.27313232421875, 146.7044219970703, -1737.2467041015625)
    end
})


MiscTab:AddButton({
    Name = "Minefield Complete",
    Default = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(211.36561584472656, 16.239320755004883, 329.6012268066406)
        wait(4)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(52.70860290527344, 4.08176851272583, -3359.939453125)
    end
})

MiscTab:AddButton({
    Name = "Jungle Obby Complete",
    Default = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(528.1155395507812, 16.55938148498535, 424.02081298828125)
        wait(4)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3302.1962890625, 189.7481231689453, -494.3233337402344)
    end
})
