local speed = 100
local player = game.Players.LocalPlayer

local function setSpeed()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = speed
end

player.CharacterAdded:Connect(setSpeed)

if player.Character then
    setSpeed()
end
