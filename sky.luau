-- LocalScript (StarterPlayerScripts)
local Lighting = game:GetService("Lighting")

-- ========================
-- 기존 클라이언트 스카이 삭제
-- ========================
for _, child in ipairs(Lighting:GetChildren()) do
	if child:IsA("Sky") then
		child:Destroy()
	end
end

-- ========================
-- 새로운 스카이 생성
-- ========================
local sky = Instance.new("Sky")
sky.Name = "CustomSky"

-- 각 면에 사용할 이미지 ID를 설정
-- 원하는 ID로 바꿔주세요
sky.SkyboxBk = "rbxassetid://15436783" -- 뒤
sky.SkyboxDn = "rbxassetid://15436796" -- 아래
sky.SkyboxFt = "rbxassetid://15436831" -- 앞
sky.SkyboxLf = "rbxassetid://15437157" -- 왼쪽
sky.SkyboxRt = "rbxassetid://15437166" -- 오른쪽
sky.SkyboxUp = "rbxassetid://15437184" -- 위

-- Lighting에 적용
sky.Parent = Lighting