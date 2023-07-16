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
	Default = "70",
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
Tab1:AddButton({
	Name = "Reset Gravity",
	Callback = function()
      		game.Workspace.Gravity = 196.2
  	end    
})
Tab1:AddButton({
	Name = "Reset Fov",
	Callback = function()
      		workspace.CurrentCamera.FieldOfView = 70
  	end    
})
local Tab2 = Window:MakeTab({
	Name = "🎲 | Visuals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section2 = Tab2:AddSection({
	Name = "Visuals"
})
local Sense = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Sirius/request/library/sense/source.lua'))()
Tab2:AddToggle({
	Name = "Enable",
	Default = false,
	Callback = function(Toggle)
		Sense.teamSettings.enemy.enabled = Toggle
	end    
})
Tab2:AddToggle({
	Name = "Box",
	Default = false,
	Callback = function(Toggle)
		Sense.teamSettings.enemy.box = Toggle
	end    
})
Tab2:AddToggle({
	Name = "Box Outline",
	Default = false,
	Callback = function(Toggle)
		Sense.teamSettings.enemy.boxOutline = Toggle
	end    
})
Tab2:AddToggle({
	Name = "Box Fill",
	Default = false,
	Callback = function(Toggle)
		Sense.teamSettings.enemy.boxFill = Toggle
	end    
})
Tab2:AddToggle({
	Name = "Health Bar",
	Default = false,
	Callback = function(Toggle)
		Sense.teamSettings.enemy.healthBar = Toggle
	end    
})
Tab2:AddToggle({
	Name = "Health Bar Outline",
	Default = false,
	Callback = function(Toggle)
		Sense.teamSettings.enemy.healthBarOutline = Toggle
	end    
})
Tab2:AddToggle({
	Name = " Health Text",
	Default = false,
	Callback = function(Toggle)
		Sense.teamSettings.enemy.healthText = Toggle
	end    
})
Tab2:AddToggle({
	Name = "Health Text Outline",
	Default = false,
	Callback = function(Toggle)
		Sense.teamSettings.enemy.healthTextOutline = Toggle
	end    
})
Tab2:AddToggle({
	Name = "Box 3D",
	Default = false,
	Callback = function(Toggle)
		Sense.teamSettings.enemy.box3d = Toggle
	end    
})
Tab2:AddToggle({
	Name = "Name",
	Default = false,
	Callback = function(Toggle)
		Sense.teamSettings.enemy.name = Toggle
	end    
})
Tab2:AddToggle({
	Name = "Name Outline",
	Default = false,
	Callback = function(Toggle)
		Sense.teamSettings.enemy.nameOutline = Toggle
	end    
})
local Section3 = Tab2:AddSection({
	Name = "Esp Color"
})
Tab2:AddColorpicker({
	Name = "Box Color",
	Default = Color3.new(0, 0.25, 0.75),
	Callback = function(Color)
		Sense.teamSettings.enemy.boxColor[1] = Color
	end	  
})
Tab2:AddColorpicker({
	Name = " Box Outline Color",
	Default = Color3.new(),
	Callback = function(Color)
		Sense.teamSettings.enemy.boxOutlineColor[1] = Color
	end	  
})
Tab2:AddColorpicker({
	Name = "Box Fill Color",
	Default = Color3.new(1,0,0),
	Callback = function(Color)
		Sense.teamSettings.enemy.boxFillColor[1] = Color
	end	  
})
Tab2:AddColorpicker({
	Name = "Dying Color",
	Default = Color3.new(1,0,0),
	Callback = function(Color)
		Sense.teamSettings.enemy.boxFillColor[1] = Color
	end	  
})
Tab2:AddColorpicker({
	Name = "Health Bar Outline Color",
	Default = Color3.new(),
	Callback = function(Color)
		Sense.teamSettings.enemy.healthBarOutlineColor[1] = Color
	end	  
})
Tab2:AddColorpicker({
	Name = "Health Text Color",
	Default = Color3.new(1,1,1),
	Callback = function(Color)
		Sense.teamSettings.enemy.healthTextColor[1] = Color
	end	  
})
Tab2:AddColorpicker({
	Name = "Box 3D Color ",
	Default = Color3.new(1,0,0),
	Callback = function(Color)
		Sense.teamSettings.enemy.box3dColor[1] = Color
	end	  
})
Tab2:AddColorpicker({
	Name = "Name Color",
	Default = Color3.new(1,1,1),
	Callback = function(Color)
		Sense.teamSettings.enemy.nameColor[1] = Color
	end	  
})
Tab2:AddColorpicker({
	Name = "Name Out line Color",
	Default = Color3.new(),
	Callback = function(Color)
		Sense.teamSettings.enemy.nameOutlineColor[1] = Color
	end	  
})
Sense.Load()
