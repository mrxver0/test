local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "MRX ScriptHub", HidePremium = true, SaveConfig = false, ConfigFolder = "OrionTest"})


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
	Name = "AtherHub / keyless",
	Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/PETS-GO!-NEW-AtherHub-20940"))()
  	end    
})

Tab:AddButton({
	Name = "ZapHub / key",
	Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/PETS-GO!-NEW-The-Best-Free-Script-ZapHub-20119"))()
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


local Tab = Window:MakeTab({
    Name = "Visual Pets!",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "From Pet",
    Default = "None",
    TextDisappear = false,
    Callback = function(Value)
        fromPet = Value
    end
})

local message = require(game.ReplicatedStorage.Library.Client.Message)

local Pets = require(game:GetService("ReplicatedStorage").Library.Items.PetItem).Directory

local fromPet = "None"
local toPet = "None"
local selectedHugePet = "None"

function FromPet1()
    if fromPet ~= "None" then
        for i, v in pairs(Pets[fromPet] or {}) do
            Pets[fromPet][i] = nil
        end
    end
end

function ToPet2()
    if toPet ~= "None" then 
        for i, v in pairs(Pets[toPet] or {}) do
            Pets[fromPet][i] = v
        end
    end
    
    if selectedHugePet ~= "None" then
        for i, v in pairs(Pets[selectedHugePet] or {}) do
            Pets[fromPet][i] = v
        end
    end
end



local petOptions = {"None"} 

for petName in pairs(Pets) do
    table.insert(petOptions, petName)
end

Tab:AddDropdown({
    Name = "Pets",
    Default = "None", 
    Options = petOptions,
    Callback = function(Value)
        toPet = Value
    end
})

local hugePetsOptions = {"None"} 

for petName in pairs(Pets) do
    if string.match(petName, "^Huge") then
        table.insert(hugePetsOptions, petName)
    end
end

Tab:AddDropdown({
    Name = "Huge Pets",
    Default = hugePetsOptions[1],
    Options = hugePetsOptions,
    Callback = function(Value)
        selectedHugePet = Value
    end
})

Tab:AddButton({
    Name = "Changed",
    Callback = function()
        FromPet1()
        ToPet2()
        local message = require(game.ReplicatedStorage.Library.Client.Message)
        message.New("Pet Changed!\ndiscord.gg/PWDCVWN4N3", { title = "Successfully Changed" })
    end
})





local Tab = Window:MakeTab({



	Name = "OP SCRIPTS",

	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Dupe Scam"
	
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
	Content = "Item Confirmed!",
	Image = "rbxassetid://4483345998",
	Time = 7
})

	end	  
})

Tab:AddButton({
	Name = "Dupe Pet",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "mrxhub | Dupe",
	Content = "Pet Duped! (if not wait 2-5 mins)",
	Image = "rbxassetid://4483345998",
	Time = 7
})

  	end    
})

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

  	end    
}
)

OrionLib:Init()