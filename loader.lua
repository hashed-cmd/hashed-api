local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local titleBg = Instance.new("TextLabel")
local text = Instance.new("TextLabel")
local run = Instance.new("TextButton")
local privacy = Instance.new("TextButton")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

ScreenGui.Parent = gethui() or game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, -149, 0.5, -163)
Frame.Size = UDim2.new(0, 299, 0, 327)

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.0367892981, 0, 0.0214067269, 0)
title.Size = UDim2.new(0, 277, 0, 29)
title.Font = Enum.Font.Gotham
title.Text = "Welcome, " .. localPlayer.Name
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 20.000
title.TextWrapped = true
title.TextXAlignment = Enum.TextXAlignment.Left

titleBg.Name = "titleBg"
titleBg.Parent = Frame
titleBg.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
titleBg.BorderColor3 = Color3.fromRGB(0, 0, 0)
titleBg.BorderSizePixel = 0
titleBg.Position = UDim2.new(0.000422551093, 0, 0, 0)
titleBg.Size = UDim2.new(0, 298, 0, 43)
titleBg.ZIndex = -1
titleBg.Font = Enum.Font.Gotham
titleBg.Text = ""
titleBg.TextColor3 = Color3.fromRGB(255, 255, 255)
titleBg.TextSize = 30.000
titleBg.TextWrapped = true
titleBg.TextXAlignment = Enum.TextXAlignment.Left

text.Name = "text"
text.Parent = Frame
text.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
text.BackgroundTransparency = 1.000
text.BorderColor3 = Color3.fromRGB(0, 0, 0)
text.BorderSizePixel = 0
text.Position = UDim2.new(0.0367892981, 0, 0.192660555, 0)
text.Size = UDim2.new(0, 277, 0, 63)
text.Font = Enum.Font.Gotham
text.Text = "Greetings! Running this script means you agree to the Privacy Policy."
text.TextColor3 = Color3.fromRGB(255, 255, 255)
text.TextSize = 20.000
text.TextWrapped = true
text.TextXAlignment = Enum.TextXAlignment.Left

run.Name = "run"
run.Parent = Frame
run.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
run.BorderColor3 = Color3.fromRGB(0, 0, 0)
run.BorderSizePixel = 0
run.Position = UDim2.new(0.0367892981, 0, 0.837920487, 0)
run.Size = UDim2.new(0, 277, 0, 38)
run.Font = Enum.Font.Gotham
run.Text = "Run"
run.TextColor3 = Color3.fromRGB(255, 255, 255)
run.TextSize = 20.000

privacy.Name = "privacy"
privacy.Parent = Frame
privacy.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
privacy.BorderColor3 = Color3.fromRGB(0, 0, 0)
privacy.BorderSizePixel = 0
privacy.Position = UDim2.new(0.0367892981, 0, 0.697247684, 0)
privacy.Size = UDim2.new(0, 135, 0, 38)
privacy.Font = Enum.Font.Gotham
privacy.Text = "Privacy Policy"
privacy.TextColor3 = Color3.fromRGB(255, 255, 255)
privacy.TextSize = 20.000

privacy.MouseButton1Click:Connect(function()
	setclipboard("https://raw.githubusercontent.com/hashed-cmd/hashed-api/refs/heads/main/notice/privacy-policy.txt")
end)

local TweenService = game:GetService("TweenService")

run.MouseButton1Click:Connect(function()
	if _G.ScriptToRun and typeof(_G.ScriptToRun) == "string" then
		local success, result = pcall(function()
			run.Text = "Loading..."
			run.Interactable = false
			local code = game:HttpGet(_G.ScriptToRun)
			loadstring(code)()
			ScreenGui:Destroy()
		end)

		if not success then
			warn("hashed-script failed:", tostring(result))
			return
		end
	else
		warn("_G problem")
	end
end)
