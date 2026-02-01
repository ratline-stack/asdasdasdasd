-- EXOVMModule (ModuleScript in ReplicatedStorage)
local EXOVM = {}

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")

local function getPlayerGui()
    local LocalPlayer = Players.LocalPlayer
    return LocalPlayer:WaitForChild("PlayerGui")
end

function EXOVM.exovm(arg)
    local PlayerGui = getPlayerGui()

    -- MAIN GUI
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "EXOVM"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = PlayerGui

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 310, 0, 550)
    Frame.Position = UDim2.new(0.5, -155, 0.3, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    Frame.BorderSizePixel = 3
    Frame.BorderColor3 = Color3.fromRGB(0, 255, 0)
    Frame.Active = true
    Frame.Draggable = true
    Frame.Parent = ScreenGui

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 40)
    Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Title.TextColor3 = Color3.fromRGB(0, 255, 0)
    Title.Text = "[ WH1T3 CORE OVERWRITE ACTIVE ]"
    Title.Font = Enum.Font.Code
    Title.TextSize = 16
    Title.Parent = Frame

    local CloseButton = Instance.new("TextButton")
    CloseButton.Size = UDim2.new(0, 30, 0, 30)
    CloseButton.Position = UDim2.new(1, -35, 0, 5)
    CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    CloseButton.TextColor3 = Color3.fromRGB(0, 255, 0)
    CloseButton.Text = "X"
    CloseButton.Font = Enum.Font.Code
    CloseButton.TextSize = 20
    CloseButton.Parent = Frame
    CloseButton.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)

    local ScrollingFrame = Instance.new("ScrollingFrame")
    ScrollingFrame.Size = UDim2.new(1, 0, 1, -50)
    ScrollingFrame.Position = UDim2.new(0, 0, 0, 50)
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 1400)
    ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 255, 0)
    ScrollingFrame.BackgroundTransparency = 1
    ScrollingFrame.Parent = Frame

    local function CreateButton(text, position, callback)
        local Button = Instance.new("TextButton")
        Button.Size = UDim2.new(0.9, 0, 0, 40)
        Button.Position = UDim2.new(0.05, 0, position, 0)
        Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Button.TextColor3 = Color3.fromRGB(0, 255, 0)
        Button.Text = text
        Button.Font = Enum.Font.Code
        Button.TextSize = 16
        Button.Parent = ScrollingFrame
        Button.MouseButton1Click:Connect(callback)
    end

    -- CORE FUNCTIONS
    local function Skybox()
        Lighting:ClearAllChildren()
        local sky = Instance.new("Sky")
        local id = "http://www.roblox.com/asset/?id=96065759167499"
        sky.SkyboxBk = id
        sky.SkyboxDn = id
        sky.SkyboxFt = id
        sky.SkyboxLf = id
        sky.SkyboxRt = id
        sky.SkyboxUp = id
        sky.Parent = Lighting
    end

    local function Sound()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://122975386332555"
        sound.Looped = true
        sound.Volume = 100000
        sound.Parent = Workspace
        sound:Play()
    end

    local function Particles()
        for _, part in pairs(Workspace:GetDescendants()) do
            if part:IsA("BasePart") then
                local particle = Instance.new("ParticleEmitter")
                particle.Texture = "rbxassetid://72080024566229"
                particle.Rate = 5
                particle.Lifetime = NumberRange.new(99999, 99999)
                particle.Speed = NumberRange.new(30, 70)
                particle.Parent = part
            end
        end
    end

    local function Hint()
        local Hint = Instance.new("Hint")
        Hint.Text = "⛧ EXOVM OWNS YOU ⛧ GAME CORRUPTED"
        Hint.Parent = Workspace
    end

    local function Message()
        local Message = Instance.new("Message")
        Message.Text = "[ EXOVM IS SPYING ON U ] -- [ 0% ]"
        Message.Parent = Workspace
    end

    -- ADD BUTTONS
    CreateButton("[ SKYBOX HACK INIT ]", 0, Skybox)
    CreateButton("[ INFECT SOUND ]", 0.06, Sound)
    CreateButton("[ INFECT PARTICLES ]", 0.12, Particles)
    CreateButton("[ SYSTEM HINT WARN ]", 0.18, Hint)
    CreateButton("[ SYSTEM MESSAGE ]", 0.24, Message)

    print("[ EXOVM GUI FINAL ] -- SYSTEM: INFECTED | ESCAPE: 0% | STATUS: HOPELESS")
end

return EXOVM
