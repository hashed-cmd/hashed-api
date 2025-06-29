local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local localPlayer = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local titleBg = Instance.new("TextLabel")
local text = Instance.new("TextLabel")
local run = Instance.new("TextButton")
local privacy = Instance.new("TextButton")
local notification = Instance.new("Frame")
local title_2 = Instance.new("TextLabel")
local titleBg_2 = Instance.new("TextLabel")
local text_2 = Instance.new("TextLabel")
local text_3 = Instance.new("TextLabel")

ScreenGui.Parent = gethui() or game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, -149, 0.5, -163)
Frame.Size = UDim2.new(0, 299, 0, 327)

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.0368, 0, 0.0214, 0)
title.Size = UDim2.new(0, 277, 0, 29)
title.Font = Enum.Font.Gotham
title.Text = "Welcome, " .. localPlayer.Name
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 20
title.TextWrapped = true
title.TextXAlignment = Enum.TextXAlignment.Left

titleBg.Name = "titleBg"
titleBg.Parent = Frame
titleBg.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
titleBg.BorderSizePixel = 0
titleBg.Position = UDim2.new(0, 0, 0, 0)
titleBg.Size = UDim2.new(0, 298, 0, 43)
titleBg.ZIndex = -1
titleBg.Font = Enum.Font.Gotham
titleBg.Text = ""
titleBg.TextColor3 = Color3.fromRGB(255, 255, 255)
titleBg.TextSize = 30

text.Name = "text"
text.Parent = Frame
text.BackgroundTransparency = 1
text.Position = UDim2.new(0.0368, 0, 0.1927, 0)
text.Size = UDim2.new(0, 277, 0, 63)
text.Font = Enum.Font.Gotham
text.Text = "Greetings! Running this script means you agree to the Privacy Policy."
text.TextColor3 = Color3.fromRGB(255, 255, 255)
text.TextSize = 20
text.TextWrapped = true
text.TextXAlignment = Enum.TextXAlignment.Left

run.Name = "run"
run.Parent = Frame
run.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
run.Position = UDim2.new(0.0368, 0, 0.8379, 0)
run.Size = UDim2.new(0, 277, 0, 38)
run.Font = Enum.Font.Gotham
run.Text = "Run"
run.TextColor3 = Color3.fromRGB(255, 255, 255)
run.TextSize = 20

privacy.Name = "privacy"
privacy.Parent = Frame
privacy.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
privacy.Position = UDim2.new(0.0368, 0, 0.6972, 0)
privacy.Size = UDim2.new(0, 135, 0, 38)
privacy.Font = Enum.Font.Gotham
privacy.Text = "Privacy Policy"
privacy.TextColor3 = Color3.fromRGB(255, 255, 255)
privacy.TextSize = 20

notification.Name = "notification"
notification.Parent = Frame
notification.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
notification.Position = UDim2.new(-0.662, 0, 0, 0)
notification.Size = UDim2.new(0, 188, 0, 327)
notification.Visible = false

title_2.Name = "title"
title_2.Parent = notification
title_2.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
title_2.Position = UDim2.new(0.074, 0, 0.0214, 0)
title_2.Size = UDim2.new(0, 157, 0, 29)
title_2.Font = Enum.Font.Gotham
title_2.Text = "Privacy Policy"
title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
title_2.TextSize = 20
title_2.TextXAlignment = Enum.TextXAlignment.Left

titleBg_2.Name = "titleBg"
titleBg_2.Parent = notification
titleBg_2.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
titleBg_2.Position = UDim2.new(0, 0, 0, 0)
titleBg_2.Size = UDim2.new(0, 187, 0, 43)
titleBg_2.ZIndex = -1
titleBg_2.Text = ""

text_2.Name = "text"
text_2.Parent = notification
text_2.BackgroundTransparency = 1
text_2.Position = UDim2.new(0.074, 0, 0.1927, 0)
text_2.Size = UDim2.new(0, 157, 0, 63)
text_2.Font = Enum.Font.Gotham
text_2.Text = "Please paste the link into your browser."
text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
text_2.TextSize = 20
text_2.TextWrapped = true
text_2.TextXAlignment = Enum.TextXAlignment.Left

text_3.Name = "text"
text_3.Parent = notification
text_3.BackgroundTransparency = 1
text_3.Position = UDim2.new(0.074, 0, 0.5046, 0)
text_3.Size = UDim2.new(0, 157, 0, 116)
text_3.Font = Enum.Font.Gotham
text_3.Text = "If link didn't copy for you, please visit: https://shorturl.at/HkMB2"
text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
text_3.TextSize = 20
text_3.TextWrapped = true
text_3.TextXAlignment = Enum.TextXAlignment.Left

privacy.MouseButton1Click:Connect(function()
	setclipboard("https://raw.githubusercontent.com/hashed-cmd/hashed-api/refs/heads/main/notice/privacy-policy.txt")
	notification.Visible = not notification.Visible
end)

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
		warn("_G missing")
	end
end)
