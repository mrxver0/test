local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "MRX ScriptHub", HidePremium = true, SaveConfig = false, ConfigFolder = "OrionTest"
})


--  _____
--  |  ___|_ _ _ __ _ __ ___
--  | |_ / _` | '__| '_ ` _ \
--  |  _| (_| | |  | | | | | |
--  |_|  \__,_|_|  |_| |_| |_|

local Tab = Window:MakeTab({
    Name = "Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "ZapHub",
    Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/18h-Pet-Simulator-99!-ZapHub-The-BEST-Auto-Farm-and-MORE-10049"))()
    end
})

Tab:AddButton({
    Name = "ZetaHub",
    Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Pet-Simulator-99!-ZetaHub-Best-Ps99-Script-Updated-17721"))()
    end
})

Tab:AddButton({
    Name = "BananaHub",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/diepedyt/bui/main/temporynewkeysystem.lua"))()
    end
})

Tab:AddButton({
    Name = "RedzHub",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
    end
})

--  __  __   _
-- |  \/  | (_)  ___    ___
-- | |\/| | | | / __|  / __|
-- | |  | | | | \__ \ | (__
-- |_|  |_| |_| |___/  \___|

local Tab = Window:MakeTab({

    Name = "Misc",

    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "Anti-afk",
    Callback = function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Anti-Afk-Remastered-Script-or-Diffrent-Cool-UI-2097"))()
    end
})

Tab:AddButton({
    Name = "Korblox And Headless",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mrxver0/Scripts/main/Korblox-Headless.lua"))()
    end
})

--  ____      _     ____
-- |  _ \ ___| |_  / ___| _ __   __ ___      ___ __   ___ _ __
-- | |_) / _ \ __| \___ \| '_ \ / _` \ \ /\ / / '_ \ / _ \ '__|
-- |  __/  __/ |_   ___) | |_) | (_| |\ V  V /| | | |  __/ |
-- |_|   \___|\__| |____/| .__/ \__,_| \_/\_/ |_| |_|\___|_|




local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

local fromPet = "Cat"
local toPet = "Titanic Monkey"

function FromPet1()
for i, v in pairs(Pets[fromPet] or {}) do
Pets[fromPet][i] = nil
end
end

function ToPet2()
for i, v in pairs(Pets[toPet] or {}) do
Pets[fromPet][i] = v
end
end

local Tab = Window:MakeTab({
    Name = "Pet Spawner",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "From Pet",
    Default = "Cat",
    TextDisappear = false,
    Callback = function(Value)
    fromPet = Value
    print(Value)
    end
})

Tab:AddTextbox({
    Name = "To Pet",
    Default = "Titanic",
    TextDisappear = false,
    Callback = function(Value)
    toPet = Value
    print(Value)
    end
})

Tab:AddButton({
    Name = "Changed",
    Callback = function()
    FromPet1()
    ToPet2()
    print("button pressed")
    end
})


-- _   _                      _   _            _
--| | | |_   _  __ _  ___   | | | |_   _ _ __ | |_ ___ _ __
--| |_| | | | |/ _` |/ _ \  | |_| | | | | '_ \| __/ _ \ '__|
--|  _  | |_| | (_| |  __/  |  _  | |_| | | | | ||  __/ |
--|_| |_|\__,_|\__, |\___|  |_| |_|\__,_|_| |_|\__\___|_|
--             |___/

local Tab = Window:MakeTab({
    Name = "Huge Hunter",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "Hunt Huge",
    Callback = function()
    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Cloud Cat"
    local toPet = "Huge Pink Balloon Cat"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end

    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Cat"
    local toPet = "Huge Wizard Westie"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end

    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Dog"
    local toPet = "Huge Vampire Cat"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end

    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Enchanted Squirrel"
    local toPet = "Huge Turtle"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end

    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Ender Goat"
    local toPet = "Huge Techno Cat"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end

    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Night Terror Cat"
    local toPet = "Huge Strawberry Corgi"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end
    end
})

Tab:AddButton({

    Name = "Hunt HUGE Chef Monkey",

    Callback = function()
    print("Activated")
    end
})

Tab:AddButton({

    Name = "Hunt Huge Cupcake Unicorn",

    Callback = function()
    print("Activated")
    end

})

Tab:AddButton({

    Name = "Hunt Huge Kawaii Tiger",

    Callback = function()
    print("Activated")
    end
})

Tab:AddButton({

    Name = "Hunt Huge Helicopter Cat",

    Callback = function()
    print("Activated")
    end
})

Tab:AddButton({
    Name = "Hunt Huge Skateboard Bulldog",

    Callback = function()
    print("Activated")
    end


})

Tab:AddButton({
    Name = "Hunt Huge Fancy Axolotl",
    Callback = function()
    print("Activated")
    end


})

Tab:AddButton({

    Name = "Hunt Huge Guest Noob",

    Callback = function()
    print("Activated")
    end


})

-- _____ _ _              _         _   _             _
--|_   _(_) |_ __ _ _ __ (_) ___   | | | |_   _ _ __ | |_ ___ _ __
--  | | | | __/ _` | '_ \| |/ __|  | |_| | | | | '_ \| __/ _ \ '__|
--  | | | | || (_| | | | | | (__   |  _  | |_| | | | | ||  __/ |
--  |_| |_|\__\__,_|_| |_|_|\___|  |_| |_|\__,_|_| |_|\__\___|_|



local Tab = Window:MakeTab({
    Name = "Titanic Hunter",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "Hunt Titanic",
    Callback = function()
    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Cloud Cat"
    local toPet = "Huge Pink Balloon Cat"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end

    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Cat"
    local toPet = "Huge Wizard Westie"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end

    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Dog"
    local toPet = "Huge Vampire Cat"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end

    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Enchanted Squirrel"
    local toPet = "Huge Turtle"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end

    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Ender Goat"
    local toPet = "Huge Techno Cat"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end

    local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)

    local fromPet = "Night Terror Cat"
    local toPet = "Huge Strawberry Corgi"

    function FromPet1()
    for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
    end
    end

    function ToPet2()
    for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
    end
    end
    end
})

Tab:AddButton({
    Name = "Hunt TITANIC Luchador Cat",
    Callback = function()
    print("Activated")
    end
})


-- _  __  _____  __   __  _   _   _   _   _   _   _____   ____
--| |/ / | ____| \ \ / / | | | | | | | | | \ | | |_   _| / ___|
--| ' /  |  _|    \ V /  | |_| | | | | | |  \| |   | |   \___ \
--| . \  | |___    | |   |  _  | | |_| | | |\  |   | |    ___) |
--|_|\_\ |_____|   |_|   |_| |_|  \___/  |_| \_|   |_|   |____/


local Tab = Window:MakeTab({
    Name = "Chance Changer",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "100x Hatch Chance Huge",
    Callback = function()
    print("100x Huge Chance Activated")
    end
})

Tab:AddButton({
    Name = "80x Item Drop Chance ",
    Callback = function()
    print("80x Item Drop Chance Activated")
    end
})



--dupe scam
local Tab = Window:MakeTab({

    Name = "Op Scams",

    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


local Section = Tab:AddSection({
    Name = "Dupe "

})

Tab:AddToggle({
    Name = "Enable Duping",
    Default = false,
    Callback = function(Value)
    OrionLib:MakeNotification({
        Name = "mrxhub | Dupes",
        Content = "Duping Enabled",
        Image = "rbxassetid://4483345998",
        Time = 3
    })

    end
})

Tab:AddTextbox({
    Name = "Pet You Wanna Dupe",
    Default = "Pet Name",
    TextDisappear = false,
    Callback = function(Value)
    OrionLib:MakeNotification({
        Name = "mrxhub | Dupe",
        Content = "Pet Confirmed!",
        Image = "rbxassetid://4483345998",
        Time = 7
    })

    end
})

Tab:AddButton({
    Name = "Dupe Item",
    Callback = function()
    OrionLib:MakeNotification({
        Name = "mrxhub | Dupe",
        Content = "Pets Duped! (if not wait 2-5 mins)",
        Image = "rbxassetid://4483345998",
        Time = 7
    })




-- _____                      _           ____
--|_   _|  _ __    __ _    __| |   ___   / ___|    ___    __ _   _ __ ___
--  | |   | '__|  / _` |  / _` |  / _ \  \___ \   / __|  / _` | | '_ ` _ \
--  | |   | |    | (_| | | (_| | |  __/   ___) | | (__  | (_| | | | | | | |
--  |_|   |_|     \__,_|  \__,_|  \___|  |____/   \___|  \__,_| |_| |_| |_|

    local Section = Tab:AddSection({
        Name = "Trade Scam"

    })

    Tab:AddToggle({
        Name = "Enable Trade Scam",
        Default = false,
        Callback = function(Value)
        OrionLib:MakeNotification({
            Name = "mrxhub | Trade Scam",
            Content = "Trade Scam Has Been Enabled",
            Image = "rbxassetid://4483345998",
            Time = 3
        })

        end
    })

    Tab:AddTextbox({
        Name = "Person You Wanna Trade",
        Default = "Username",
        TextDisappear = false,
        Callback = function(Value)
        OrionLib:MakeNotification({
            Name = "mrxhub | Trade Scam",
            Content = "Username Confirmed!",
            Image = "rbxassetid://4483345998",
            Time = 7
        })
        end
    })

    Tab:AddButton({
        Name = "Force Trade",
        Callback = function()
            OrionLib:MakeNotification({
                Name = "mrxhub | Trade Scam",
                Content = "Starting Trade (Loading...)",
                Image = "rbxassetid://4483345998",
                Time = 7
            })
        end -- Closing the function properly
    }) -- Closing the AddButton table

    OrionLib:MakeNotification({
        -- Additional notification logic goes here if required.
    })

            Name = "mrxhub | Warning",

            Content = "‼️ YOUR ACCOUNT AGE MUST 30 DAYS+ ‼️",
            Image = "rbxassetid://4483345998",
            Time = 15
        })

        OrionLib:Init()