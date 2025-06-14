--🌙 提示：“天空脚本中心”
local pg = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
local gui = Instance.new("ScreenGui", pg)
gui.Name = "SkyHint"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0.25, 0, 0.08, 0)
frame.Position = UDim2.new(0.5, 0, 0.85, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BackgroundTransparency = 0.2

Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

local txt = Instance.new("TextLabel", frame)
txt.Text = "天空脚本中心"
txt.Size = UDim2.new(1, 0, 1, 0)
txt.Font = Enum.Font.GothamBold
txt.TextSize = 24
txt.BackgroundTransparency = 1
txt.TextColor3 = Color3.new(1, 1, 1)

task.delay(3, function()
	frame:TweenPosition(UDim2.new(0.5, 0, 1.2, 0), "Out", "Quad", 1, true)
	wait(1.5)
	gui:Destroy()
end)

--🌙 Rayfield UI
local lib = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local win = lib:CreateWindow({ Name = "天空脚本中心", LoadingTitle = "加载中...", LoadingSubtitle = "By 晓月lol", ConfigurationSaving = { Enabled = true, FileName = "SkyHub" }, KeySystem = false })

local main = win:CreateTab("主页", 4483362458)
main:CreateToggle({ Name = "速度脚本", CurrentValue = false, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v and 100 or 16 end })
main:CreateSlider({ Name = "速度脚本", Range = {16, 200}, Increment = 1, CurrentValue = 16, Suffix = "Speed", Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end })

local rb = win:CreateTab("Rb脚本中心", "rbxassetid://8073107254")
rb:CreateButton({ Name = "加载Rb-Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/Rb-Hub"))() end })
