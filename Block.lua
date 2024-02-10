-- loadstring(game:HttpGet("https://raw.githubusercontent.com/SomeWordss/Islands/main/Block"))()

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

local Type = "grass"

local Island

for i,v in pairs(game.Workspace:GetDescendants()) do
	if v.Name == "IsCooperative" and v.Parent:FindFirstChild("BlockCount") then
		Island = v.Parent
	end
end

local function Block_Place(Position,Type)
	local args = {
		[1] = {
			["lFjp"] = "\7\240\159\164\163\240\159\164\161\7\n\7\n\7\nphwfjsxjtfefmlbn",
			["cframe"] = CFrame.new(Position.X, Position.Y, Position.Z, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			["blockType"] = Type,
			["upperBlock"] = false
		}
	}

	game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("CLIENT_BLOCK_PLACE_REQUEST"):InvokeServer(unpack(args))
end

local Part0 = nil
local Part1 = nil

Mouse.Button1Down:Connect(function()
	local Part = Mouse.Target
	if not Part0 then
		Part0 = Part
	elseif Part0 and not Part1 then
		Part1 = Part
		Block_Place(Part1.Position+Vector3.new(10),Type)
	end
	if Part.Name == "stone" then
		
	end
end)

if Island then
else
	print("Island not found !")
end
