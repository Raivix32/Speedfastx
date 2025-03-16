local speed = 100
local player = game.Players.LocalPlayer

local function changeSpeed(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = speed
end

player.CharacterAdded:Connect(function(character)
    changeSpeed(character)
end)

if player.Character then
    changeSpeed(player.Character)
end
