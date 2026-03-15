loadstring(game:HttpGet("https://raw.githubusercontent.com/Testgameak/script.lua/refs/heads/main/SynTraxhubfix"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Testgameak/RYNtraxHub/refs/heads/main/attack%20fasst"))()
-- FIX LAG ROBLOX

local lighting = game:GetService("Lighting")
local terrain = workspace:FindFirstChildOfClass("Terrain")

-- Tắt hiệu ứng Lighting
lighting.GlobalShadows = false
lighting.FogEnd = 100000
lighting.Brightness = 1

-- Xóa hiệu ứng nặng
for i,v in pairs(game:GetDescendants()) do
    if v:IsA("ParticleEmitter") 
    or v:IsA("Trail") 
    or v:IsA("Smoke") 
    or v:IsA("Fire") 
    or v:IsA("Sparkles") then
        v.Enabled = false
    end
end

-- Giảm texture
for i,v in pairs(game:GetDescendants()) do
    if v:IsA("BasePart") then
        v.Material = Enum.Material.Plastic
        v.Reflectance = 0
    end
end

-- Tắt decal và texture
for i,v in pairs(game:GetDescendants()) do
    if v:IsA("Decal") or v:IsA("Texture") then
        v.Transparency = 1
    end
end

-- Terrain tối giản
if terrain then
    terrain.WaterWaveSize = 0
    terrain.WaterWaveSpeed = 0
    terrain.WaterReflectance = 0
    terrain.WaterTransparency = 1
end

print("✅ FIX LAG ACTIVATED")
