-- RYNTRAX HUB - SCRIPT CLOSED (HACKER STYLE)

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "RYNTRAX_CloseGui"
gui.ResetOnSpawn = false
gui.Parent = PlayerGui

-- Black background
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.05
frame.Parent = gui

-- Hacker text
local text = Instance.new("TextLabel")
text.Size = UDim2.new(1, 0, 0.25, 0)
text.Position = UDim2.new(0, 0, 0.32, 0)
text.BackgroundTransparency = 1
text.Text = "RYNTRAX HUB\n[SCRIPT CLOSED]"
text.TextColor3 = Color3.fromRGB(255, 0, 0)
text.TextScaled = true
text.Font = Enum.Font.Code
text.Parent = frame

-- Neon stroke
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 0, 0)
stroke.Thickness = 2
stroke.Parent = text

-- Glow gradient
local glow = Instance.new("UIGradient")
glow.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,0,0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,80,80))
}
glow.Parent = text

-- OK / EXIT button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 220, 0, 55)
button.Position = UDim2.new(0.5, -110, 0.62, 0)
button.BackgroundColor3 = Color3.fromRGB(15, 0, 0)
button.Text = "OK / EXIT"
button.TextColor3 = Color3.fromRGB(255, 0, 0)
button.Font = Enum.Font.Code
button.TextScaled = true
button.Parent = frame

local btnStroke = Instance.new("UIStroke")
btnStroke.Color = Color3.fromRGB(255, 0, 0)
btnStroke.Thickness = 2
btnStroke.Parent = button

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = button

-- Hacker blink effect
spawn(function()
	while gui.Parent do
		wait(0.8)
		text.TextTransparency = 0.4
		wait(0.1)
		text.TextTransparency = 0
	end
end)

-- Click to close UI
button.MouseButton1Click:Connect(function()
	gui:Destroy()
end)
