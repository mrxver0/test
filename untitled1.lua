-- Load Orion Lib
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local TweenService = game:GetService("TweenService")

-- Create Main GUI
local mainWindow = OrionLib:MakeWindow({
    Name = "All In One Hub By @LuckyXYZ7",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionConfig"
})

-- Create Main Menu Tab
local mainMenuTab = mainWindow:MakeTab({
    Name = "Main Menu",
    Icon = "rbxassetid://12345678",  -- Replace with your icon ID
    PremiumOnly = false
})

-- Main Menu Section
local mainMenuSection = mainMenuTab:AddSection({
    Name = "Controls"
})

mainMenuSection:AddButton({
    Name = "Dupe Huges",
    Callback = function()
        if dupeMenu.Visible then
            fadeOut(dupeMenu)
            wait(tweenInfo.Time)
            dupeMenu.Visible = false
        else
            dupeMenu.Visible = true
            fadeIn(dupeMenu)
            gemAdderMenu.Visible = false
            fadeOut(gemAdderMenu)
        end
    end
})

mainMenuSection:AddButton({
    Name = "Spawn Gems",
    Callback = function()
        if gemAdderMenu.Visible then
            fadeOut(gemAdderMenu)
            wait(tweenInfo.Time)
            gemAdderMenu.Visible = false
        else
            gemAdderMenu.Visible = true
            fadeIn(gemAdderMenu)
            dupeMenu.Visible = false
            fadeOut(dupeMenu)
        end
    end
})

-- Create Dupe Menu Tab
local dupeMenuTab = mainWindow:MakeTab({
    Name = "Dupe Menu",
    Icon = "rbxassetid://12345678",  -- Replace with your icon ID
    PremiumOnly = false
})

-- Dupe Menu Section
local dupeMenuSection = dupeMenuTab:AddSection({
    Name = "Dupe Controls"
})

dupeMenuSection:AddButton({
    Name = "Dupe Now",
    Callback = function()
        FromPet1()
        ToPet2()
        EquipCowPet()
    end
})

dupeMenuSection:AddLabel({
    Name = "Note",
    Content = "Equip 1 huge and make sure none are in exclusive daycare for dupe to work"
})

-- Create Gem Adder Menu Tab
local gemAdderMenuTab = mainWindow:MakeTab({
    Name = "Gem Adder Menu",
    Icon = "rbxassetid://12345678",  -- Replace with your icon ID
    PremiumOnly = false
})

-- Gem Adder Menu Section
local gemAdderMenuSection = gemAdderMenuTab:AddSection({
    Name = "Gem Controls"
})

gemAdderMenuSection:AddButton({
    Name = "Spawn Now",
    Callback = function()
        local gemsToAdd = tonumber(gemAmountInput.Text)
        if gemsToAdd and gemsToAdd > 0 then
            incrementGems(gemsToAdd, 1_000_000) -- Add with increments of 1 million
        else
            print("Invalid gem amount")
        end
    end
})

gemAdderMenuSection:AddTextbox({
    Name = "Enter Gem Amount",
    PlaceholderText = "Enter Gem Amount",
    Text = "",
    Callback = function(text)
        gemAmountInput.Text = text
    end
})

gemAdderMenuSection:AddLabel({
    Name = "Note",
    Content = "Must have exclusive daycare unlocked and make sure it isn't full for the GUI to function ty :D"
})

-- Tween Settings
local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
local colorTweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true)

-- Create color tweening function
local function createColorTween(instance, colorArray)
    local tweens = {}
    for i = 1, #colorArray do
        local goal = {BackgroundColor3 = colorArray[i]}
        local tween = TweenService:Create(instance, colorTweenInfo, goal)
        table.insert(tweens, tween)
    end
    return tweens
end

-- Color Changing for Buttons
local buttonColors = {Color3.fromRGB(100, 100, 100), Color3.fromRGB(80, 80, 80), Color3.fromRGB(100, 100, 100), Color3.fromRGB(80, 80, 80)}

for _, button in ipairs({dupeButton, gemAdderButton, dupeActionButton, spawnNowButton}) do
    local buttonTweens = createColorTween(button, buttonColors)
    for _, tween in pairs(buttonTweens) do
        tween:Play()
    end
end

-- UI Transitions
local function fadeIn(element)
    local tween = TweenService:Create(element, tweenInfo, {BackgroundTransparency = 0})
    tween:Play()
end

local function fadeOut(element)
    local tween = TweenService:Create(element, tweenInfo, {BackgroundTransparency = 1})
    tween:Play()
end

-- Incorporating Provided Script for Dupe and Gem Actions
local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)
local fromPet = "Enchanted Squirrel"
local toPet = "Titanic Luxchador Cat"

local function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
        Pets[fromPet][i] = nil
    end
end

local function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
        Pets[fromPet][i] = v
    end
end

local function EquipCowPet()
    local args = {
        [1] = "66b54da09a074737b64a67952b3a2601"
    }
    game:GetService("ReplicatedStorage").Network.Pets_Favorite:FireServer(unpack(args))
end

local function formatNumber(value)
    if value >= 1e9 then
        return string.format("%.1fb", value / 1e9)
    elseif value >= 1e6 then
        return string.format("%.1fm", value / 1e6)
    elseif value >= 1e3 then
        return string.format("%.1fk", value / 1e3)
    else
        return tostring(value)
    end
end

local function incrementGems(gemsToAdd, incrementSpeed)
    local gemsleftpath = game:GetService('Players').LocalPlayer.PlayerGui.MainLeft.Left.Currency.Diamonds.Diamonds.Amount
    local gemsleaderstatpath = game:GetService('Players').LocalPlayer.leaderstats["💎 Diamonds"]

    local currentGems = gemsleaderstatpath.Value
    local targetGems = currentGems + gemsToAdd

    while currentGems < targetGems do
        currentGems = math.min(currentGems + incrementSpeed, targetGems)
        gemsleaderstatpath.Value = currentGems
        gemsleftpath.Text = formatNumber(currentGems)
        wait(0.01)
    end
end