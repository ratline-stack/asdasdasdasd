local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local Lighting = game:GetService("Lighting")
local Workspace = game.Workspace

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

function CreateButton(text, position, callback)
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
    Hint.Text = "⛧ EXOVM OWNS YOU ⛧ GAME COURRUPTED"
    Hint.Parent = Workspace
end

local function Message()
    local Message = Instance.new("Message")
    Message.Text = "[ EXOVM IS SPYING ON U ] -- [ 0% ]"
    Message.Parent = Workspace
end

local function ColorChanger()
    task.spawn(function()
        while true do
            for _, part in pairs(Workspace:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Color = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
                end
            end
            task.wait(0.1)
        end
    end)
end

local function RandomBrickColorFlicker()
    task.spawn(function()
        while true do
            for _, part in pairs(Workspace:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.BrickColor = BrickColor.random()
                end
            end
            task.wait(0.1)
        end
    end)
end

local function RandomTransparencyFlicker()
    task.spawn(function()
        while true do
            for _, part in pairs(Workspace:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = math.random()
                end
            end
            task.wait(0.1)
        end
    end)
end

local function CameraShake()
    local cam = Workspace.CurrentCamera
    local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        task.spawn(function()
            while true do
                humanoid.CameraOffset = Vector3.new(
                    math.random(-300, 300) / 100,
                    math.random(-300, 300) / 100,
                    0
                )
                task.wait(0.02)
            end
        end)
    end
end

local function RandomPartScale()
    task.spawn(function()
        while true do
            for _, part in pairs(Workspace:GetDescendants()) do
                if part:IsA("BasePart") then
                    local newScale = Vector3.new(
                        math.random(5, 100) / 10,
                        math.random(5, 100) / 10,
                        math.random(5, 100) / 10
                    )
                    part.Size = newScale
                end
            end
            task.wait(1)
        end
    end)
end

local function SpinParts()
    task.spawn(function()
        while true do
            for _, part in pairs(Workspace:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CFrame = part.CFrame * CFrame.Angles(0, math.rad(3), 0)
                end
            end
            task.wait(0.03)
        end
    end)
end

local function DecalSpam()
    for _, part in pairs(Workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            for _, face in ipairs(Enum.NormalId:GetEnumItems()) do
                local decal = Instance.new("Decal")
                decal.Texture = "rbxassetid://96065759167499"
                decal.Face = face
                decal.Parent = part
            end
        end
    end
end

-- SCARY CONSOLE EFFECT
local function FakeConsole()
    local gui = Instance.new("ScreenGui", PlayerGui)
    gui.Name = "WH1T3_CONSOLE"
    local text = Instance.new("TextLabel", gui)
    text.Size = UDim2.new(1, 0, 1, 0)
    text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    text.TextColor3 = Color3.fromRGB(0, 255, 0)
    text.Font = Enum.Font.Code
    text.TextSize = 16
    text.TextXAlignment = Enum.TextXAlignment.Left
    text.TextYAlignment = Enum.TextYAlignment.Top
    text.Text = ">>> CONNECTING TO WH1T3 SYSTEM...\n>>> SYSTEM BREACH SUCCESSFUL.\n>>> USER: INFECTED\n>>> ESCAPE: 0%\n>>> ALL DATA: COMPROMISED"
    text.TextWrapped = true
    -- Auto destroy after 1 second
    task.delay(1, function()
        gui:Destroy()
    end)
end

-- FAKE JUMPSCARE
local function Jumpscare()
    local gui = Instance.new("ScreenGui", PlayerGui)
    gui.Name = "EXOVM_JUMPSCARE"
    local img = Instance.new("ImageLabel", gui)
    img.Size = UDim2.new(1, 0, 1, 0)
    img.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    img.Image = "rbxassetid://96065759167499"
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://128186476216166"
    sound.Volume = 100000
    sound.Parent = Workspace
    sound:Play()
end

CreateButton("[ SKYBOX HACK INIT ]", 0, Skybox)
CreateButton("[ INFECT SOUND ]", 0.06, Sound)
CreateButton("[ INFECT PARTICLES ]", 0.12, Particles)
CreateButton("[ SYSTEM HINT WARN ]", 0.18, Hint)
CreateButton("[ SYSTEM MESSAGE ]", 0.24, Message)
CreateButton("[ INFECT COLORS ]", 0.30, ColorChanger)
CreateButton("[ BRICKCOLOR FLICKER ]", 0.36, RandomBrickColorFlicker)
CreateButton("[ TRANSPARENCY FLICKER ]", 0.42, RandomTransparencyFlicker)
CreateButton("[ CAMERA MALFUNCTION ]", 0.48, CameraShake)
CreateButton("[ SCALE DISTORT ]", 0.54, RandomPartScale)
CreateButton("[ ROTATE CHAOS ]", 0.60, SpinParts)
CreateButton("[ DECAL SPAM ]", 0.66, DecalSpam)
CreateButton("[ INITIATE ALL SYSTEMS ]", 0.72, function()
    Skybox()
    Sound()
    Particles()
    Hint()
    Message()
    ColorChanger()
    RandomBrickColorFlicker()
    RandomTransparencyFlicker()
    CameraShake()
    RandomPartScale()
    SpinParts()
    DecalSpam()
end)
CreateButton("[ FAKE CONSOLE INFECT ]", 0.78, FakeConsole)
CreateButton("[ JUMPSCARE ATTACK ]", 0.84, Jumpscare)

print("[ EXOVM GUI FINAL ] -- SYSTEM: INFECTED | ESCAPE: 0% | STATUS: HOPELESS")
