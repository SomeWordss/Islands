local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

local Island

for i,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "IsCooperative" and v.Parent:FindFirstChild("BlockCount") then
        Island = v.Parent
    end
end

Mouse.Button1Down:Connect(function()
    print(Mouse.Hit.p)
end)

if Island then
    local Highlight = Instance.new("Highlight")
    Highlight.Parent = Island
else
    print("Island not found !")
end
