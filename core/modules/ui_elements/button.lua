-- modules/ui_elements/button.lua

local Button = {}
Button.__index = Button

function Button.new(parent, text, callback)
	local Btn = Instance.new("TextButton")
	Btn.Size = UDim2.new(1, 0, 0, 40)
	Btn.Position = UDim2.new(0, 0, 0, 40)
	Btn.Text = text
	Btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	Btn.Font = Enum.Font.Gotham
	Btn.TextSize = 16
	Btn.Parent = parent

	local corner = Instance.new("UICorner", Btn)
	corner.CornerRadius = UDim.new(0, 6)

	Btn.MouseButton1Click:Connect(function()
		pcall(callback)
	end)

	return Btn
end

return Button
