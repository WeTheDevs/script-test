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
Tab1:AddTextbox({
	Name = "FOV",
	Default = "196.2",
	TextDisappear = true,
	Callback = function(txt)
		workspace.CurrentCamera.FieldOfView = txt
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
local InfiniteJumpEnabled = false
local function infiniteJump()
game:GetService("UserInputService").JumpRequest:Connect(function()
if InfiniteJumpEnabled then
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
end
end)
end
local function onToggleChange(toggleValue)
InfiniteJumpEnabled = toggleValue
end
local toggle = Tab1:AddToggle({
Name = "Infinite Jump",
Default = false,
Callback = onToggleChange,
})
infiniteJump()
local isAutoJumpEnabled = false

Tab1:AddToggle({
    Name = "Auto Jump",
    Default = false,
    Callback = function(Toggle)
        isAutoJumpEnabled = Toggle
        while isAutoJumpEnabled do
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
            wait()
        end
    end
})

Tab1:AddButton({
	Name = "Fly UI",
	Callback = function()
      		loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
  	end    
})
Tab1:AddButton({
	Name = "Mobile Shift Lock",
	Callback = function()
      		loadstring(game:HttpGet('https://pastebin.com/raw/qTJCkD1k'))()
			OrionLib:MakeNotification({
	Name = "UI",
	Content = "Hey! Just a heads up, this script is exclusively designed for mobile devices, so it won't work on PCs.",
	Image = "rbxassetid://4483345998",
	Time = 10
})
  	end    
})
local Section2 = Tab1:AddSection({
	Name = "Settings"
})
Tab1:AddButton({
	Name = "Reset Walkspeed",
	Callback = function()
      		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
  	end    
})
Tab1:AddButton({
	Name = "Reset JumpPower",
	Callback = function()
      		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
  	end    
})
