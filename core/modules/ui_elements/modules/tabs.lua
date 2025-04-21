-- modules/tabs.lua

local Tabs = {}
Tabs.__index = Tabs

function Tabs.new(parent, name, Elements)
	local self = setmetatable({}, Tabs)

	local TabFrame = Instance.new("Frame")
	TabFrame.Size = UDim2.new(1, -20, 1, -50)
	TabFrame.Position = UDim2.new(0, 10, 0, 40)
	TabFrame.BackgroundTransparency = 1
	TabFrame.Name = name
	TabFrame.Parent = parent

	local Label = Instance.new("TextLabel")
	Label.Size = UDim2.new(1, 0, 0, 30)
	Label.Position = UDim2.new(0, 0, 0, 0)
	Label.Text = "Tab: " .. name
	Label.BackgroundTransparency = 1
	Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label.Font = Enum.Font.Gotham
	Label.TextSize = 20
	Label.Parent = TabFrame

	self.Tab = TabFrame
	self.Elements = Elements

	return self
end

function Tabs:AddButton(text, callback)
	self.Elements.Button.new(self.Tab, text, callback)
end

return Tabs
