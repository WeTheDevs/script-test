local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Total Roblox Drama | WeTheDevs", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})
OrionLib:MakeNotification({
	Name = "UI",
	Content = "The user interface (UI) has finished loading.",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local Tab1 = Window:MakeTab({
	Name = "🎮 | Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section1 = Tab1:AddSection({
	Name = "Players"
})
Tab1:AddTextbox({
	Name = "Walkspeed",
	Default = "16",
	TextDisappear = true,
	Callback = function(txt)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
	end	  
})
Tab1:AddTextbox({
	Name = "JumpPower",
	Default = "50",
	TextDisappear = true,
	Callback = function(txt)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
	end	  
})
Tab1:AddTextbox({
	Name = "Gravity",
	Default = "196.2",
	TextDisappear = true,
	Callback = function(txt)
		game.Workspace.Gravity = txt
	end	  
})
local Noclip = nil
local Clip = nil
local floatName = "FloatPart"
function noclip()
Clip = false
local function Nocl()
if Clip == false and game.Players.LocalPlayer.Character ~= nil then
for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
v.CanCollide = false
end
end
end
wait(0)
end
Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end
function clip()
if Noclip then Noclip:Disconnect() end
Clip = true
end
local function onToggleChange(toggleValue)
if toggleValue then
noclip()
else
clip()
end
end
Tab1:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = onToggleChange,
})
