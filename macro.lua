local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")  -- For JSON encoding/decoding
local Macro = {}
local IsRecording = false
local MacroRecording = {}
local Actions = {}

-- Function to start recording
function Macro.StartRecording()
    IsRecording = true
    MacroRecording = {}
    print("Recording started.")
end

-- Function to stop recording
function Macro.StopRecording()
    IsRecording = false
    print("Recording stopped.")
end

-- Function to play back the recorded macro
function Macro.PlayMacro()
    for _, action in ipairs(MacroRecording) do
        wait(action.Time)
        Actions[action.Function](table.unpack(action.Args))
    end
    print("Playback completed.")
end

-- Example action function
function Actions.KeyPress(keyCode)
    keypress(keyCode)
end

function Actions.MouseClick(x, y)
    mouseclick(x, y)
end

-- Record key presses
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if IsRecording and not gameProcessed then
        table.insert(MacroRecording, {
            Time = tick() - (MacroRecording[#MacroRecording] and MacroRecording[#MacroRecording].Time or tick()),
            Function = "KeyPress",
            Args = {input.KeyCode}
        })
    end
end)

-- Record mouse clicks
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if IsRecording and input.UserInputType == Enum.UserInputType.MouseButton1 then
        table.insert(MacroRecording, {
            Time = tick() - (MacroRecording[#MacroRecording] and MacroRecording[#MacroRecording].Time or tick()),
            Function = "MouseClick",
            Args = {input.Position.X, input.Position.Y}
        })
    end
end)

-- Function to save the recorded macro to a file
function Macro.SaveMacro(filename)
    local json = HttpService:JSONEncode(MacroRecording)
    writefile(filename, json)
    print("Macro saved to " .. filename)
end

-- Function to load the macro from a file
function Macro.LoadMacro(filename)
    if isfile(filename) then
        local json = readfile(filename)
        MacroRecording = HttpService:JSONDecode(json)
        print("Macro loaded from " .. filename)
    else
        print("File not found: " .. filename)
    end
end

-- Create a simple GUI with buttons
local ScreenGui = Instance.new("ScreenGui")
local StartStopButton = Instance.new("TextButton")
local PlayButton = Instance.new("TextButton")
local SaveButton = Instance.new("TextButton")
local LoadButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

StartStopButton.Parent = ScreenGui
StartStopButton.Size = UDim2.new(0, 200, 0, 50)
StartStopButton.Position = UDim2.new(0, 10, 0, 10)
StartStopButton.Text = "Start Recording"
StartStopButton.MouseButton1Click:Connect(function()
    if IsRecording then
        Macro.StopRecording()
        StartStopButton.Text = "Start Recording"
    else
        Macro.StartRecording()
        StartStopButton.Text = "Stop Recording"
    end
end)

PlayButton.Parent = ScreenGui
PlayButton.Size = UDim2.new(0, 200, 0, 50)
PlayButton.Position = UDim2.new(0, 10, 0, 70)
PlayButton.Text = "Play Macro"
PlayButton.MouseButton1Click:Connect(function()
    if not IsRecording then
        Macro.PlayMacro()
    end
end)

SaveButton.Parent = ScreenGui
SaveButton.Size = UDim2.new(0, 200, 0, 50)
SaveButton.Position = UDim2.new(0, 10, 0, 130)
SaveButton.Text = "Save Macro"
SaveButton.MouseButton1Click:Connect(function()
    Macro.SaveMacro("saved_macro.txt")
end)

LoadButton.Parent = ScreenGui
LoadButton.Size = UDim2.new(0, 200, 0, 50)
LoadButton.Position = UDim2.new(0, 10, 0, 190)
LoadButton.Text = "Load Macro"
LoadButton.MouseButton1Click:Connect(function()
    Macro.LoadMacro("saved_macro.txt")
end)
