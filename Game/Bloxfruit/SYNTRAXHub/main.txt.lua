-- BLACK SCREEN + CLOSE SCRIPT MESSAGE (ENGLISH)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "CloseScriptGui"
gui.ResetOnSpawn = false
gui.Parent = PlayerGui

-- Black background
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 1
frame.Parent = gui

-- Text message
local text = Instance.new("TextLabel")
text.Size = UDim2.new(1, 0, 0.2, 0)
text.Position = UDim2.new(0, 0, 0.4, 0)
text.BackgroundTransparency = 1
text.Text = "The script closes in about 3 hours."
text.TextColor3 = Color3.fromRGB(255, 255, 255)
text.TextScaled = true
text.Font = Enum.Font.GothamBold
text.TextTransparency = 1
text.Parent = frame

-- Fade effect
local TweenService = game:GetService("TweenService")

local tween1 = TweenService:Create(frame, TweenInfo.new(1), {BackgroundTransparency = 0})
local tween2 = TweenService:Create(text, TweenInfo.new(1), {TextTransparency = 0})

tween1:Play()
tween2:Play()
