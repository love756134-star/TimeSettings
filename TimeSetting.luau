-- LocalScript (StarterPlayerScripts)
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")

-- ========================
-- 기존 클라이언트에서 만든 Sky, Atmosphere, ColorGradingEffect 삭제
-- ========================
for _, child in ipairs(Lighting:GetChildren()) do
	if child:IsA("Sky") or child:IsA("Atmosphere") or child:IsA("ColorGradingEffect") then
		child:Destroy()
	end
end

-- ========================
-- 기본 Lighting 설정
-- ========================
Lighting.Brightness = 1.9
Lighting.ClockTime = 12.2
Lighting.EnvironmentDiffuseScale = 0.35

-- ========================
-- Atmosphere 설정 (레트로 느낌)
-- ========================
local atmosphere = Instance.new("Atmosphere")
atmosphere.Parent = Lighting
atmosphere.Density = 0.35
atmosphere.Offset = 0
atmosphere.Color = Color3.fromRGB(255, 180, 120)

-- ========================
-- Skybox 설정 (Decal ID: 11138450201)
-- ========================
local sky = Instance.new("Sky")
sky.Parent = Lighting
sky.SkyboxBk = "rbxassetid://11138450201"
sky.SkyboxDn = "rbxassetid://11138450201"
sky.SkyboxFt = "rbxassetid://11138450201"
sky.SkyboxLf = "rbxassetid://11138450201"
sky.SkyboxRt = "rbxassetid://11138450201"
sky.SkyboxUp = "rbxassetid://11138450201"

-- ========================
-- ClockTime 고정
-- ========================
RunService.RenderStepped:Connect(function()
	Lighting.ClockTime = 12.2
end)