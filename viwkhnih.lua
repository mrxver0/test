-- Services
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local TweenService = game:GetService("TweenService")

-- Create Main GUI
local mainGui = Instance.new("ScreenGui")
mainGui.Name = "mrxver0"
mainGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 300, 0, 250) -- Reduced size
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -125)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Parent = mainGui

-- Add UIStroke for red glowing outline
local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 5
uiStroke.Color = Color3.fromRGB(255, 0, 0) -- Red color
uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke.Parent = mainFrame

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 8)
uicorner.Parent = mainFrame

-- Title Bar
local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 30) -- Reduced height
titleBar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -60, 1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.Text = "mrxver0"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundTransparency = 1
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 12 -- Reduced text size
titleLabel.Parent = titleBar

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 1, 0)
closeButton.Position = UDim2.new(1, -60, 0, 0)
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
closeButton.BorderSizePixel = 0
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 14
closeButton.Parent = titleBar

local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 30, 1, 0)
minimizeButton.Position = UDim2.new(1, -30, 0, 0)
minimizeButton.Text = "_"
minimizeButton.BackgroundColor3 = Color3.fromRGB(60, 150, 60)
minimizeButton.BorderSizePixel = 0
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.Font = Enum.Font.GothamBold
minimizeButton.TextSize = 14
minimizeButton.Parent = titleBar

-- Main Menu
local mainMenu = Instance.new("Frame")
mainMenu.Name = "MainMenu"
mainMenu.Size = UDim2.new(1, 0, 1, 0)
mainMenu.Position = UDim2.new(0, 0, 0, 0)
mainMenu.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mainMenu.BorderSizePixel = 0
mainMenu.BackgroundTransparency = 1
mainMenu.Visible = false
mainMenu.Parent = mainFrame

local mainMenuLabel = Instance.new("TextLabel")
mainMenuLabel.Size = UDim2.new(1, 0, 0, 30)
mainMenuLabel.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
mainMenuLabel.BorderSizePixel = 0
mainMenuLabel.Text = "Main Menu"
mainMenuLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
mainMenuLabel.Font = Enum.Font.GothamBold
mainMenuLabel.TextSize = 14
mainMenuLabel.TextXAlignment = Enum.TextXAlignment.Left
mainMenuLabel.Parent = mainMenu

local closeMainMenuButton = Instance.new("TextButton")
closeMainMenuButton.Size = UDim2.new(0, 30, 0, 30)
closeMainMenuButton.Position = UDim2.new(1, -30, 0, 0)
closeMainMenuButton.Text = "X"
closeMainMenuButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
closeMainMenuButton.BorderSizePixel = 0
closeMainMenuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeMainMenuButton.Font = Enum.Font.GothamBold
closeMainMenuButton.TextSize = 14
closeMainMenuButton.Parent = mainMenu

-- Menu Buttons
local dupeButton = Instance.new("TextButton")
dupeButton.Size = UDim2.new(1, -20, 0, 40) -- Reduced size
dupeButton.Position = UDim2.new(0, 10, 0.2, 0)
dupeButton.Text = "Dupe Huges"
dupeButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
dupeButton.BorderSizePixel = 0
dupeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
dupeButton.Font = Enum.Font.Gotham
dupeButton.TextSize = 14
dupeButton.Parent = mainFrame

local gemAdderButton = Instance.new("TextButton")
gemAdderButton.Size = UDim2.new(1, -20, 0, 40) -- Reduced size
gemAdderButton.Position = UDim2.new(0, 10, 0.6, 0)
gemAdderButton.Text = "Spawn Gems"
gemAdderButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
gemAdderButton.BorderSizePixel = 0
gemAdderButton.TextColor3 = Color3.fromRGB(255, 255, 255)
gemAdderButton.Font = Enum.Font.Gotham
gemAdderButton.TextSize = 14
gemAdderButton.Parent = mainFrame

-- Dupe Menu
local dupeMenu = Instance.new("Frame")
dupeMenu.Size = UDim2.new(1, 0, 1, -50) -- Reduced height
dupeMenu.Position = UDim2.new(0, 0, 0.2, 50)
dupeMenu.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
dupeMenu.BorderSizePixel = 0
dupeMenu.Visible = false
dupeMenu.Parent = mainFrame

local dupeActionButton = Instance.new("TextButton")
dupeActionButton.Size = UDim2.new(1, -20, 0, 40) -- Reduced size
dupeActionButton.Position = UDim2.new(0, 10, 0, 10)
dupeActionButton.Text = "Dupe Now"
dupeActionButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
dupeActionButton.BorderSizePixel = 0
dupeActionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
dupeActionButton.Font = Enum.Font.Gotham
dupeActionButton.TextSize = 14
dupeActionButton.Parent = dupeMenu

local dupeNoteLabel = Instance.new("TextLabel")
dupeNoteLabel.Size = UDim2.new(1, -20, 0, 30)
dupeNoteLabel.Position = UDim2.new(0, 10, 1, -40)
dupeNoteLabel.Text = "Equip 1 huge and make sure none are in exclusive daycare for dupe to work"
dupeNoteLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
dupeNoteLabel.BorderSizePixel = 0
dupeNoteLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
dupeNoteLabel.Font = Enum.Font.Gotham
dupeNoteLabel.TextSize = 12
dupeNoteLabel.TextWrapped = true
dupeNoteLabel.Parent = dupeMenu

-- Gem Adder Menu
local gemAdderMenu = Instance.new("Frame")
gemAdderMenu.Size = UDim2.new(1, 0, 1, -50) -- Reduced height
gemAdderMenu.Position = UDim2.new(0, 0, 0.2, 50)
gemAdderMenu.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
gemAdderMenu.BorderSizePixel = 0
gemAdderMenu.Visible = false
gemAdderMenu.Parent = mainFrame

local spawnNowButton = Instance.new("TextButton")
spawnNowButton.Size = UDim2.new(1, -20, 0, 40) -- Adjusted size
spawnNowButton.Position = UDim2.new(0, 10, 0.1, 10)
spawnNowButton.Text = "Spawn Now"
spawnNowButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
spawnNowButton.BorderSizePixel = 0
spawnNowButton.TextColor3 = Color3.fromRGB(255, 255, 255)
spawnNowButton.Font = Enum.Font.Gotham
spawnNowButton.TextSize = 16
spawnNowButton.Parent = gemAdderMenu

local gemAmountInput = Instance.new("TextBox")
gemAmountInput.Size = UDim2.new(1, -20, 0, 40)
gemAmountInput.Position = UDim2.new(0, 10, 0.2, 10) -- Adjusted position
gemAmountInput.PlaceholderText = "Enter Gem Amount"
gemAmountInput.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
gemAmountInput.BorderSizePixel = 0
gemAmountInput.TextColor3 = Color3.fromRGB(255, 255, 255)
gemAmountInput.Font = Enum.Font.Gotham
gemAmountInput.TextSize = 14
gemAmountInput.Parent = gemAdderMenu

local noteLabel = Instance.new("TextLabel")
noteLabel.Size = UDim2.new(1, -20, 0, 40)
noteLabel.Position = UDim2.new(0, 10, 1, -40)
noteLabel.Text = "Must have exclusive daycare unlocked and make sure it isn't full for the GUI to function ty :D"
noteLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
noteLabel.BorderSizePixel = 0
noteLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
noteLabel.Font = Enum.Font.Gotham
noteLabel.TextSize = 12
noteLabel.TextWrapped = true
noteLabel.Parent = mainFrame

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

-- Color Changing for MainFrame
local mainFrameColors = {Color3.fromRGB(40, 40, 40), Color3.fromRGB(60, 60, 60), Color3.fromRGB(50, 50, 50), Color3.fromRGB(40, 40, 40)}
local colorTweens = createColorTween(mainFrame, mainFrameColors)

for _, tween in pairs(colorTweens) do
    tween:Play()
end

-- Color Changing for Buttons
local buttonColors = {Color3.fromRGB(100, 100, 100), Color3.fromRGB(80, 80, 80), Color3.fromRGB(100, 100, 100), Color3.fromRGB(80, 80, 80)}

for _, button in ipairs({dupeButton, gemAdderButton, closeButton, minimizeButton, closeMainMenuButton, dupeActionButton, spawnNowButton}) do
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

-- Button Functionality
closeButton.MouseButton1Click:Connect(function()
    fadeOut(mainFrame)
    wait(tweenInfo.Time)
    mainFrame.Visible = false
end)

minimizeButton.MouseButton1Click:Connect(function()
    if mainFrame.Size == UDim2.new(0, 300, 0, 250) then
        local tween = TweenService:Create(mainFrame, tweenInfo, {Size = UDim2.new(0, 300, 0, 60)})
        tween:Play()
        dupeMenu.Visible = false
        gemAdderMenu.Visible = false
    else
        local tween = TweenService:Create(mainFrame, tweenInfo, {Size = UDim2.new(0, 300, 0, 250)})
        tween:Play()
    end
end)

-- Button Functionality for Main Menu
dupeButton.MouseButton1Click:Connect(function()
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
end)

gemAdderButton.MouseButton1Click:Connect(function()
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
end)

-- Draggable Functionality
local dragging = false
local dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

titleBar.InputChanged:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and dragging then
        update(input)
    end
end)

-- Incorporating Provided Script for Dupe and Gem Actions
local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)
local fromPet = "Cow"
local toPet = "Titanic Monkey"

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
        [1] = "09358635cee54aea9476efcbb94aeb97"
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

-- Gem Adder Button Action with Input
spawnNowButton.MouseButton1Click:Connect(function()
    local gemsToAdd = tonumber(gemAmountInput.Text)
    if gemsToAdd and gemsToAdd > 0 then
        incrementGems(gemsToAdd, 1000000) -- Add with increments of 1 million
    else
        print("Invalid gem amount")
    end
end)

dupeActionButton.MouseButton1Click:Connect(function()
    FromPet1()
    ToPet2()
    EquipCowPet()
end)
