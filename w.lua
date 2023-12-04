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

isAutoCollect = false
function AutoCollectGift()
    local args = {
        [1] = 1
    }

    while isAutoCollect do
        for i = 1, 12 do
            args[1] = i
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Redeem Free Gift"):InvokeServer(unpack(args))
            wait(1) -- Wait for 1 second before the next iteration
        end
    end
end


local isautoadvenced = false

function autoadvenced()
    local args = {
        [1] = "AdvancedMerchant",
        [2] = 1
    }

    while isautoadvenced do
        for i = 1, 6 do
            args[2] = i
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Merchant_RequestPurchase"):InvokeServer(unpack(args))
            wait(1) -- Wait for 1 second before the next iteration
        end
    end
end

local ShopTab = Window:MakeTab({
    Name = "Shop",
    Icon = "rbxassetid://6693712950",
    PremiumOnly = false
})

--Vending
--Enchant1
ShopTab:AddButton({
    Name = "Enchant Vending1 (Spam for get the max)",
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
    Name = "Enchant Vending2 (Gems)",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "EnchantVendingMachine2",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("VendingMachines_Purchase"):InvokeServer(unpack(args))
    end
})


--Potion1
ShopTab:AddButton({
    Name = "Potion Vending1",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "PotionVendingMachine1",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("VendingMachines_Purchase"):InvokeServer(unpack(args))
    end
})

--Potion2
ShopTab:AddButton({
    Name = "Potion Vending2",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "PotionVendingMachine2",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("VendingMachines_Purchase"):InvokeServer(unpack(args))
    end
})
--potion3
ShopTab:AddButton({
    Name = "Potion Vending3(Gems)",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "RarePotionsVendingMachine1",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("VendingMachines_Purchase"):InvokeServer(unpack(args))
    end
})

--Fruit1
ShopTab:AddButton({
    Name = "Fruit Vending1",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "FruitVendingMachine1",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("VendingMachines_Purchase"):InvokeServer(unpack(args))
    end
})

--Fruit2
ShopTab:AddButton({
    Name = "Fruit Vending2 ",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "FruitVendingMachine2",
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

ShopTab:AddToggle({
    Name = "Auto Buy AvencedMerchant",
    Default = false,
    Callback = function(Value)
        isautoadvenced = Value 
        if Value then
            autoadvenced()
        end
    end 
})

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://6693712950",
    PremiumOnly = false
})

--AutoClaimGift
MiscTab:AddToggle({
    Name = "Auto Gift Collect",
    Default = false,
    Callback = function(Value)
        isAutoCollect = Value 
        if Value then
            AutoCollectGift()
        end
    end 
})

--Collect Daily
MiscTab:AddButton({
    Name = "Collect Small Daily Diamond",
    Default = false,
    Callback = function(Value)
        local args = {[1] = "SmallDailyDiamonds"}
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("DailyRewards_Redeem"):InvokeServer(unpack(args))        
    end
})

MiscTab:AddButton({
    Name = "Collect Medium Daily Diamond",
    Default = false,
    Callback = function(Value)
        local args = {[1] = "MediumDailyDiamonds"}
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

MiscTab:AddButton({
    Name = "Collect DailyEnchants",
    Default = false,
    Callback = function(Value)
        local args = {[1] = "DailyEnchants"}
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("DailyRewards_Redeem"):InvokeServer(unpack(args))        
    end
})

MiscTab:AddButton({
    Name = "Collect DailyItems",
    Default = false,
    Callback = function(Value)
        local args = {[1] = "DailyItems"}
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


MiscTab:AddButton({
    Name = "Pyramid Obby Complete",
    Default = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(296.4599609375, 16.239320755004883, 1194.858154296875)
        wait(4)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2504.76953125, 77.48929595947266, -2860.0927734375)
    end
})


MiscTab:AddButton({
    Name = "Ice Obby Complete",
    Default = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(968.5925903320312, 16.239328384399414, 1556.064208984375)
        wait(4)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4504.5224609375, 13.959173202514648, -505.51617431640625)
    end
})

local EggTab = Window:MakeTab({
    Name = "Egg/Relic",
    Icon = "rbxassetid://6693712950",
    PremiumOnly = false
})
local isautohatch = false
function autohatch()
    while isautohatch do
        wait(0.1)
        local args = {
            [1] = "Sakura Egg",
            [2] = 50
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Eggs_RequestPurchase"):InvokeServer(unpack(args))
    end        
end


EggTab:AddToggle({
    Name = "Last Egg Open",
    Default = false,
    Callback = function(Value)
        isautohatch = Value 
        if Value then
            autohatch()
        end
    end 
})

local isautohatch1 = false
function autohatch1()
    while isautohatch1 do
        wait(0.1)
        local args = {
            [1] = "Egyptian Egg",
            [2] = 50
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Eggs_RequestPurchase"):InvokeServer(unpack(args))
    end        
end
EggTab:AddToggle({
    Name = "Second Dino Open",
    Default = false,
    Callback = function(Value)
        isautohatch1 = Value 
        if Value then
            autohatch1()
        end
    end 
})

local isautofuse = false
function autofuse()
    while isautofuse do
        wait(0.1)
        local args = {
            [1] = {
                ["f6f52409324a4ca6a9999c867de70638"] = 3
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FuseMachine_Activate"):InvokeServer(unpack(args))
    end
end

EggTab:AddToggle({
    Name = "Auto Fuse w",
    Default = false,
    Callback = function(Value)
        isautofuse = Value 
        if Value then
            autofuse()
        end
    end
})


local isautofuse1 = false
function autofuse1()
    while isautofuse1 do
        wait(0.1)
        local args = {
            [1] = {
                ["8e43ab5aa12b48ecb8274650d28e556a"] = 3
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FuseMachine_Activate"):InvokeServer(unpack(args))
    end
end

EggTab:AddToggle({
    Name = "Auto Fuse1",
    Default = false,
    Callback = function(Value)
        isautofuse1 = Value 
        if Value then
            autofuse1()
        end
    end
})

