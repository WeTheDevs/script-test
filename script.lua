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
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(txt)
end
})

Tab1:AddTextbox({
Name = "JumpPower",
Default = "50",
TextDisappear = true,
Callback = function(txt)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(txt)
end
})

Tab1:AddTextbox({
Name = "Gravity",
Default = "196.2",
TextDisappear = true,
Callback = function(txt)
game.Workspace.Gravity = tonumber(txt)
end
})

Tab1:AddTextbox({
Name = "FOV",
Default = "70",
TextDisappear = true,
Callback = function(txt)
workspace.CurrentCamera.FieldOfView = tonumber(txt)
end
})

local Noclip = nil
local Clip = nil
local floatName = "FloatPart"

local function noclip()
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

local function clip()
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
Name = "Health Text",
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
Name = "Box Outline Color",
Default = Color3.new(),
Callback = function(Color)
Sense.teamSettings.enemy.boxOutlineColor[1] = Color
end
})

Tab2:AddColorpicker({
Name = "Box Fill Color",
Default = Color3.new(1, 0, 0),
Callback = function(Color)
Sense.teamSettings.enemy.boxFillColor[1] = Color
end
})

Tab2:AddColorpicker({
Name = "Dying Color",
Default = Color3.new(1, 0, 0),
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
Default = Color3.new(1, 1, 1),
Callback = function(Color)
Sense.teamSettings.enemy.healthTextColor[1] = Color
end
})

Tab2:AddColorpicker({
Name = "Box 3D Color",
Default = Color3.new(1, 0, 0),
Callback = function(Color)
Sense.teamSettings.enemy.box3dColor[1] = Color
end
})

Tab2:AddColorpicker({
Name = "Name Color",
Default = Color3.new(1, 1, 1),
Callback = function(Color)
Sense.teamSettings.enemy.nameColor[1] = Color
end
})

Sense.Load()

local Tab3 = Window:MakeTab({
Name = "🕹️ | Advantages",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local Section4 = Tab3:AddSection({
Name = "Items Tp"
})

Tab3:AddButton({
Name = "Tp to Bag",
Callback = function()
local player = game.Players.LocalPlayer
local modelToTeleportTo = workspace.Idols.Bag

local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
if not hrp then
return
end

local primaryPart = modelToTeleportTo.PrimaryPart
if primaryPart then
hrp.CFrame = primaryPart.CFrame
else
local basePart = modelToTeleportTo:FindFirstChildWhichIsA("BasePart", true)
if basePart then
hrp.CFrame = basePart.CFrame
end
end
end
})

Tab3:AddButton({
Name = "Tp to Safety Statue",
Callback = function()
local player = game.Players.LocalPlayer
local modelToTeleportTo = workspace.Idols.SafetyStatue

local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
if not hrp then
return
end

local primaryPart = modelToTeleportTo.PrimaryPart
if primaryPart then
hrp.CFrame = primaryPart.CFrame
else
local basePart = modelToTeleportTo:FindFirstChildWhichIsA("BasePart", true)
if basePart then
hrp.CFrame = basePart.CFrame
end
end
end
})
local Section5 = Tab3:AddSection({
Name = "Bootcamp"
})
Tab3:AddButton({
	Name = "Delete Mud Teleport",
	Callback = function()
local objectToDelete = workspace.Assets.Bootcamp.Mud
objectToDelete:Destroy()

  	end    
})
Tab3:AddButton({
	Name = "Delete Chef",
	Callback = function()
local objectToDelete = workspace.Assets.Bootcamp["    "]
objectToDelete:Destroy()

  	end    
})
Tab3:AddButton({
Name = "Tp to finish",
Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local finishPart = game.Workspace.Assets.Bootcamp.Finish
character:SetPrimaryPartCFrame(finishPart.CFrame)
    end
})
local Section6 = Tab3:AddSection({
Name = "Cave Chaos"
})
Tab3:AddButton({
Name = "Remove Pickaxe",
Callback = function()
local childToDelete = workspace.Assets["Cave Chaos"].CaveChaos.Challenge:GetChildren()[145]
if childToDelete then
childToDelete:Destroy()
else
print("Child does not exist.")
end

end
})
Tab3:AddButton({
Name = "Remove water kill",
Callback = function()
local waterObject = workspace.Assets["Cave Chaos"].Water
if waterObject then
waterObject:Destroy()
else
print("Water object does not exist.")
end
end
})
Tab3:AddButton({
Name = "Tp to finish",
Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local finishPart = game.Workspace.Assets["Cave Chaos"].Finish
character:SetPrimaryPartCFrame(finishPart.CFrame)
end
})
local Section7 = Tab3:AddSection({
	Name = "Cliff Diving"
})
Tab3:AddButton({
	Name = "Tp to finish",
	Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local finishPart = game.workspace.Assets["Cliff Diving"].Finish
character:SetPrimaryPartCFrame(finishPart.CFrame)
  	end    
})
local Section8 = Tab3:AddSection({
	Name = "Lava Dash"
})
Tab3:AddButton({
	Name = "Delete Lava teleport",
	Callback = function()
local scriptToDelete = workspace.Assets["Lava Dash"].Lava.Script
if scriptToDelete then
    scriptToDelete:Destroy()
else
    print("Script does not exist.")
end
  	end    
})
Tab3:AddButton({
	Name = "Tp to finish",
	Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local finishPart = workspace.Assets["Lava Dash"].Finish
character:SetPrimaryPartCFrame(finishPart.CFrame)
  	end    
})
local Section9 = Tab3:AddSection({
	Name = "Obstacle Course"
})
Tab3:AddButton({
	Name = "Remove InvisWalls",
	Callback = function()
local invisWallsObject = workspace.Assets["Obstacle Course"].ObstacleCourse.InvisWalls
if invisWallsObject then
    invisWallsObject:Destroy()
else
    print("InvisWalls object does not exist.")
end

  	end    
})
Tab3:AddButton({
	Name = "Tp to finish",
	Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local finishPart = workspace.Assets["Obstacle Course"].Finish
character:SetPrimaryPartCFrame(finishPart.CFrame)
  	end    
})
local Section10 = Tab3:AddSection({
	Name = "Pond Pier"
})
Tab3:AddButton({
	Name = "Delete InvisWalls",
	Callback = function()
local invisibleWallsObject = workspace.Assets["Pond Pier"].PondPier.InvisibleWalls
if invisibleWallsObject then
    invisibleWallsObject:Destroy()
else
    print("InvisibleWalls object does not exist.")
end

  	end    
})
Tab3:AddButton({
	Name = "Tp to finish",
	Callback = function()
      	local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local finishPart = game.Workspace.Assets["Pond Pier"].Finish
        character:SetPrimaryPartCFrame(finishPart.CFrame)
  	end    
})
Tab3:AddButton({
	Name = "Remove Hay",
	Callback = function()
local challengeObject = workspace.Assets["Pond Pier"].PondPier.Challenge
if challengeObject then
    local childToDelete1 = challengeObject:GetChildren()[54]
    local childToDelete2 = challengeObject:GetChildren()[50]
    if childToDelete1 and childToDelete2 then
        childToDelete1:Destroy()
        childToDelete2:Destroy()
    else
        print("One or both children do not exist.")
    end
else
    print("Challenge object does not exist.")
end

  	end    
})
local Section11 = Tab3:AddSection({
	Name = "Rickety Rail"
})
Tab3:AddButton({
	Name = "Tp to finish",
	Callback = function()
      	local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local finishPart = game.Workspace.Assets["Rickety Rail"].Finish
        character:SetPrimaryPartCFrame(finishPart.CFrame)
  	end    
})
local Section12 = Tab3:AddSection({
	Name = "Rockwall"
})
Tab3:AddButton({
    Name = "Tp to finish",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local finishPart = game.Workspace.Assets["Rickety Rail"].Finish
        character:SetPrimaryPartCFrame(finishPart.CFrame)
    end
})
local Section13 = Tab3:AddSection({
	Name = "Spleef"
})
Tab3:AddButton({
	Name = "Remove Invisible walls",
	Callback = function()
local invisibleBarriersObject = workspace.Assets.Spleef.Spleef.InvisibleBarriers
if invisibleBarriersObject then
    invisibleBarriersObject:Destroy()
else
    print("InvisibleBarriers object does not exist.")
end
  	end    
})
Tab3:AddButton({
	Name = "Delete KillPart",
	Callback = function()
local partObject = workspace.Assets.Spleef.Part
if partObject then
    partObject:Destroy()
else
    print("Part object does not exist.")
end

  	end    
})
Tab3:AddButton({
    Name = "Tp to safe area",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local finishPart = game.workspace.Assets.Spleef.Spleef.Props.Crates:GetChildren()[4].Part
        character:SetPrimaryPartCFrame(finishPart.CFrame)
    end
})
