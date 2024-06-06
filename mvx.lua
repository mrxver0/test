local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "MVX Hub",
    LoadingTitle = "MVX ON TOP",
    LoadingSubtitle = "by mvx",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "mvx hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local Tab = Window:CreateTab("MAIN", 4483362458) -- Title, Image

 local Section = Tab:CreateSection("Farm")

 local Button = Tab:CreateButton({
    Name = "ZapHub",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/18h-Pet-Simulator-99!-ZapHub-The-BEST-Auto-Farm-and-MORE-10049"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Zero Hub",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Pet-Simulator-99!-UPD-5-Zer0-Hub-Rewrite-10670"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Banana Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/diepedyt/bui/main/temporynewkeysystem.lua"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "RedzHub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Milk-up Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/439bc415d8fe721fab08f3cebf76f4da.lua"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "RiverHub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SKOIXLL/RIVERHUB-SKYHUB/main/WL.lua'))()
    end,
 })

 local Tab = Window:CreateTab("Misc", 4483362458) -- Title, Image

 local Section = Tab:CreateSection("Scripts")

 local Button = Tab:CreateButton({
    Name = "Anti-Afk",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Anti-Afk-Remastered-Script-or-Diffrent-Cool-UI-2097"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Button Example",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mrxver0/Scripts/main/Korblox-Headless.lua"))()
    end,
 })

 local Tab = Window:CreateTab("MVX Dupe", 4483362458) -- Title, Image

 local Section = Tab:CreateSection("Section Example")

 local Button = Tab:CreateButton({
    Name = "Dupe Diamonds",
    Callback = function()
        local message = require(game.ReplicatedStorage.Library.Client.Message)

        message.Error("Duping in process please wait 5-10 minutes")
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Huge Duper",
    Callback = function()
        local message = require(game.ReplicatedStorage.Library.Client.Message)

        message.Error("Duping in process please wait 5-10 minutes")
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Titanic Duper",
    Callback = function()
        local message = require(game.ReplicatedStorage.Library.Client.Message)

        message.Error("Duping in process please wait 5-10 minutes")
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Misc Duper",
    Callback = function()
        local message = require(game.ReplicatedStorage.Library.Client.Message)

        message.Error("Duping in process please wait 5-10 minutes")
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Enchants Duper",
    Callback = function()
        local message = require(game.ReplicatedStorage.Library.Client.Message)

        message.Error("Duping in process please wait 5-10 minutes")
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Potion Duper",
    Callback = function()
        local message = require(game.ReplicatedStorage.Library.Client.Message)

        message.Error("Duping in process please wait 5-10 minutes")
    end,
 })