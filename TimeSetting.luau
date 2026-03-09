-- LocalScript (StarterPlayerScripts)
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")

-- 기존 클라이언트에서 만든 Sky, Atmosphere, ColorGradingEffect 삭제
for _, child in ipairs(Lighting:GetChildren()) do
	if child:IsA("Sky") or child:IsA("Atmosphere") or child:IsA("ColorGradingEffect") then
		child:Destroy()
	end
end

-- 기본 Lighting 설정
Lighting.Brightness = 1.45
Lighting.ClockTime = 12.2
Lighting.EnvironmentDiffuseScale = 0.35
Lighting.GlobalShadows = true

-- Atmosphere 설정 (레트로 느낌)
local atmosphere = Instance.new("Atmosphere")
atmosphere.Parent = Lighting
atmosphere.Density = 0.35
atmosphere.Offset = 0
atmosphere.Color = Color3.fromRGB(255, 255, 255)
atmosphere.Glare = 0
atmosphere.Haze = 0.1

-- ColorGradingEffect 생성 (레트로 톤)
local colorGrading = Instance.new("ColorGradingEffect")
colorGrading.Parent = Lighting
colorGrading.TonemapperPreset = Enum.TonemapperPreset.Retro
colorGrading.Brightness = 0.05
colorGrading.Contrast = 0.15
colorGrading.Saturation = 0.2
colorGrading.TintColor = Color3.fromRGB(255, 200, 150)

-- ClockTime 고정
RunService.RenderStepped:Connect(function()
	Lighting.ClockTime = 12.2
end)
