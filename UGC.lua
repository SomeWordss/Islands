local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character
local Root = Character.HumanoidRootPart

local Tokens = game:GetService("Workspace").ClientTokens

Tokens.ChildAdded:Connect(function(instance)
    instance.CFrame = Root.CFrame
end)

for index,instance in pairs(Tokens:GetChildren()) do
    instance.CFrame = Root.CFrame
end
