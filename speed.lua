local speed = 100
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function changeSpeed()
    humanoid.WalkSpeed = speed
end

player.CharacterAdded:Connect(function(character)
    humanoid = character:WaitForChild("Humanoid")
    changeSpeed()
end)

changeSpeed()
