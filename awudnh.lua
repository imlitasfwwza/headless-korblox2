local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function applyCosmetics(char)
    -- HEADLESS
    local head = char:WaitForChild("Head")
    head.Transparency = 1
    for _, part in pairs(head:GetChildren()) do
        if part:IsA("Decal") then
            part.Transparency = 1
        end
    end

    -- KORBLOX
    local rightFoot = char:WaitForChild("RightFoot")
    local rightLowerLeg = char:WaitForChild("RightLowerLeg")
    local rightUpperLeg = char:WaitForChild("RightUpperLeg")

    rightFoot.MeshId = "http://www.roblox.com/asset/?id=902942089"
    rightFoot.Transparency = 1
    rightLowerLeg.MeshId = "http://www.roblox.com/asset/?id=902942093"
    rightLowerLeg.Transparency = 1
    rightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
    rightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
end

-- Apply immediately if character exists
if player.Character then
    applyCosmetics(player.Character)
end

-- Apply on every respawn
player.CharacterAdded:Connect(applyCosmetics)
