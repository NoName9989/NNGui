-- core/main.lua

local Tabs = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoName9989/NNGui/main/modules/tabs.lua"))()
local Elements = {
	Button = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoName9989/NNGui/main/modules/ui_elements/button.lua"))(),
}

local NNHub = {}
NNHub.__index = NNHub

function NNHub:CreateWindow(config)
	local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
	ScreenGui.Name = "NNHubGlass"
	ScreenGui.ResetOnSpawn = false

	local MainFrame = Instance.new("Frame")
	MainFrame.Size = UDim2.new(0, 600, 0, 400)
	MainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
	MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	MainFrame.BackgroundTransparency = 0.3
	MainFrame.Parent = ScreenGui

	self.Gui = ScreenGui
	self.Main = MainFrame
	self.Tabs = {}
	self.Elements = Elements
	self.TabsModule = Tabs

	return self
end

function NNHub:CreateTab(name)
	local tab = self.TabsModule.new(self.Main, name, self.Elements)
	table.insert(self.Tabs, tab)
	return tab
end

return setmetatable({}, NNHub)
