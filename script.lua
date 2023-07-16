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
