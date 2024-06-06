local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
  Name = "Rayfield Example Window",
  LoadingTitle = "Rayfield Interface Suite",
  LoadingSubtitle = "by Sirius",
  ConfigurationSaving = {
     Enabled = true,
     FolderName = nil, -- Create a custom folder for your hub/game
     FileName = "Big Hub"
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


  --  _____                    
 --  |  ___|_ _ _ __ _ __ ___  
 --  | |_ / _` | '__| '_ ` _ \ 
 --  |  _| (_| | |  | | | | | |
 --  |_|  \__,_|_|  |_| |_| |_|

 local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

 local Button = Tab:CreateButton({
  Name = "Button Example",
  Callback = function()
     loadstring(game:HttpGet("https://scriptblox.com/raw/18h-Pet-Simulator-99!-ZapHub-The-BEST-Auto-Farm-and-MORE-10049"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Button Example",
  Callback = function()
     loadstring(game:HttpGet("https://scriptblox.com/raw/Pet-Simulator-99!-UPD-5-Zer0-Hub-Rewrite-10670"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Button Example",
  Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/diepedyt/bui/main/temporynewkeysystem.lua"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Button Example",
  Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Button Example",
  Callback = function()
     loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/439bc415d8fe721fab08f3cebf76f4da.lua"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Button Example",
  Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/SKOIXLL/RIVERHUB-SKYHUB/main/WL.lua'))()
  end,
})

--  __  __   _              
-- |  \/  | (_)  ___    ___ 
-- | |\/| | | | / __|  / __|
-- | |  | | | | \__ \ | (__ 
-- |_|  |_| |_| |___/  \___|

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
  Name = "Button Example",
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

--  ____      _     ____                                       
-- |  _ \ ___| |_  / ___| _ __   __ ___      ___ __   ___ _ __ 
-- | |_) / _ \ __| \___ \| '_ \ / _` \ \ /\ / / '_ \ / _ \ '__|
-- |  __/  __/ |_   ___) | |_) | (_| |\ V  V /| | | |  __/ |   
-- |_|   \___|\__| |____/| .__/ \__,_| \_/\_/ |_| |_|\___|_|   

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

local lib = require(game.ReplicatedStorage.Library)

-- Variables to hold pet names
local fromPet = ""
local toPet = ""

-- Function to swap pets
local function swapPets(fromPet, toPet)
  if lib.Directory.Pets[fromPet] and lib.Directory.Pets[toPet] then
      for i, v in pairs(lib.Directory.Pets[fromPet]) do
          lib.Directory.Pets[fromPet][i] = nil
      end
      for i, v in pairs(lib.Directory.Pets[toPet]) do
          lib.Directory.Pets[fromPet][i] = v
      end
      print("Swapped " .. fromPet .. " with " .. toPet)
  else
      print("Invalid pet names provided.")
  end
end

-- Add textboxes to the Tab
Tab:AddTextbox({
  Name = "From Pet",
  Default = "",
  TextDisappear = false,
  Callback = function(Value)
      fromPet = Value
      print("From Pet set to: " .. fromPet)
  end
})

Tab:AddTextbox({
  Name = "To Pet",
  Default = "",
  TextDisappear = false,
  Callback = function(Value)
      toPet = Value
      print("To Pet set to: " .. toPet)
  end
})

-- Add button to execute the swap
Tab:CreateButton({
  Name = "Spawn Pet",
  Callback = function()
      swapPets(fromPet, toPet)
  end
})