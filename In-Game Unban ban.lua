-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Username = Instance.new("TextBox")
local UnbanButton = Instance.new("TextButton")
local ErrorText = Instance.new("TextLabel")
local BanButton = Instance.new("TextButton")
local UsernameTitle = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.StarterGui.Unban GUI
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 4
Frame.Position = UDim2.new(0.168170631, 0, 0.325665861, 0)
Frame.Size = UDim2.new(0, 423, 0, 267)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 4
Title.Size = UDim2.new(0, 423, 0, 31)
Title.Font = Enum.Font.SourceSans
Title.Text = "In-Game Unbanner"
Title.TextColor3 = Color3.fromRGB(255, 170, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Username.Name = "Username"
Username.Parent = Frame
Username.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
Username.BorderColor3 = Color3.fromRGB(255, 170, 0)
Username.BorderSizePixel = 4
Username.Position = UDim2.new(0, 0, 0.21348314, 0)
Username.Size = UDim2.new(0, 423, 0, 32)
Username.Font = Enum.Font.SourceSans
Username.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Username.Text = ""
Username.TextColor3 = Color3.fromRGB(255, 255, 255)
Username.TextScaled = true
Username.TextSize = 14.000
Username.TextWrapped = true

UnbanButton.Name = "UnbanButton"
UnbanButton.Parent = Frame
UnbanButton.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
UnbanButton.BorderColor3 = Color3.fromRGB(255, 170, 0)
UnbanButton.BorderSizePixel = 4
UnbanButton.Position = UDim2.new(0.262411356, 0, 0.355805248, 0)
UnbanButton.Size = UDim2.new(0, 200, 0, 50)
UnbanButton.Font = Enum.Font.SourceSans
UnbanButton.Text = "Unban"
UnbanButton.TextColor3 = Color3.fromRGB(255, 255, 255)
UnbanButton.TextScaled = true
UnbanButton.TextSize = 14.000
UnbanButton.TextWrapped = true

ErrorText.Name = "ErrorText"
ErrorText.Parent = Frame
ErrorText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ErrorText.BackgroundTransparency = 1.000
ErrorText.BorderColor3 = Color3.fromRGB(0, 0, 0)
ErrorText.BorderSizePixel = 0
ErrorText.Position = UDim2.new(0, 0, 0.82397002, 0)
ErrorText.Size = UDim2.new(0, 423, 0, 21)
ErrorText.Font = Enum.Font.SourceSans
ErrorText.Text = "Results Are Here"
ErrorText.TextColor3 = Color3.fromRGB(255, 255, 255)
ErrorText.TextSize = 14.000

BanButton.Name = "BanButton"
BanButton.Parent = Frame
BanButton.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
BanButton.BorderColor3 = Color3.fromRGB(255, 170, 0)
BanButton.BorderSizePixel = 4
BanButton.Position = UDim2.new(0.262411356, 0, 0.584269643, 0)
BanButton.Size = UDim2.new(0, 200, 0, 50)
BanButton.Font = Enum.Font.SourceSans
BanButton.Text = "Ban"
BanButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BanButton.TextScaled = true
BanButton.TextSize = 14.000
BanButton.TextWrapped = true

UsernameTitle.Name = "Username Title"
UsernameTitle.Parent = Frame
UsernameTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UsernameTitle.BackgroundTransparency = 1.000
UsernameTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
UsernameTitle.BorderSizePixel = 0
UsernameTitle.Position = UDim2.new(-0.0023640662, 0, 0.134831458, 0)
UsernameTitle.Size = UDim2.new(0, 423, 0, 21)
UsernameTitle.Font = Enum.Font.SourceSans
UsernameTitle.Text = "Insert UserID Below"
UsernameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
UsernameTitle.TextSize = 14.000

-- Scripts:

local function ABMIHB_fake_script() -- Frame.Main 
	local script = Instance.new('LocalScript', Frame)

	local players = game:GetService("Players")
	local player = game.Players.LocalPlayer
	local gui = script.Parent
	local unbanButton = gui.UnbanButton
	local username = gui.Username
	local errortext = gui.ErrorText
	local banButton = gui.BanButton
	
	unbanButton.MouseButton1Click:Connect(function()
		local config: UnbanConfigType = {
			UserIds = { username.text },
			ApplyToUniverse = false,
			}
		local success, err = pcall(function()
		end)
			players:UnbanAsync(config)
		end)
		if success then
			errortext.Text = "Successfully unbanned " .. username.Text
		else
			errortext.Text = "Error: " .. err
		end
	end)
	banButton.MouseButton1Click:Connect(function()
		local config: BanConfigType = {
			UserIds = { username.text },
			Duration = 60,
			DisplayReason = "You were caught Exploiting (Not really)",
			PrivateReason = "Hacking/Exploits",
			ExcludeAltAccounts = false,
			ApplyToUniverse = true,
			}
		local success, err = pcall(function()
			players:BanAsync(config)
		end)
		if success then
			errortext.Text = "Successfully banned " .. username.Text
		else
			errortext.Text = "Error: " .. err
		end
	end)
end
coroutine.wrap(ABMIHB_fake_script)()
local function JVZSSM_fake_script() -- Frame.Drag 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService('UserInputService')
	
	local frame = script.Parent
	
	local leadFrame = Instance.new('Frame') do
		leadFrame.AnchorPoint = frame.AnchorPoint
		leadFrame.Position = frame.Position
		leadFrame.Size = frame.Size
		leadFrame.Name = `Lead {frame.Name}`
		leadFrame.Visible = false
		leadFrame.Parent = frame.Parent
	end
	
	local screenGui = frame:FindFirstAncestorOfClass('ScreenGui')
	
	local inputChanged = nil
	local inputEnded = nil
	
	local function getBoundsRelations(guiObject : GuiObject)
		local bounds = screenGui.AbsoluteSize
		local topLeft = screenGui.IgnoreGuiInset and guiObject.AbsolutePosition + Vector2.new(0, 36) or guiObject.AbsolutePosition
		local bottomRight = topLeft + guiObject.AbsoluteSize
	
		local boundRelations = {
			Top = topLeft.Y < 0 and math.abs(topLeft.Y) or nil,
			Left = topLeft.X < 0 and math.abs(topLeft.X) or nil,
			Right = bottomRight.X > bounds.X and math.abs(bottomRight.X - bounds.X) or nil,
			Bottom = bottomRight.Y > bounds.Y and math.abs(bottomRight.Y - bounds.Y) or nil,
		}
	
		return (not boundRelations.Top
			and not boundRelations.Bottom
			and not boundRelations.Left
			and not boundRelations.Right), boundRelations
	end
	
	frame.InputBegan:Connect(function(inputObject : InputObject)
		if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
	
			local lastMousePosition = UserInputService:GetMouseLocation()
			local goalPosition = frame.Position
	
			inputChanged = UserInputService.InputChanged:Connect(function(input : InputObject, event : boolean)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					local currentMousePosition = UserInputService:GetMouseLocation()
					local mouseDelta = currentMousePosition - lastMousePosition
	
					goalPosition += UDim2.fromOffset(mouseDelta.X, mouseDelta.Y)
	
					leadFrame.Position = goalPosition
	
					local isInBounds, relations = getBoundsRelations(leadFrame)
	
					if not isInBounds then
						local x = (relations.Left or 0) - (relations.Right or 0)
						local y = (relations.Top or 0) - (relations.Bottom or 0)
	
						goalPosition += UDim2.fromOffset(x, y)
					end
	
					frame.Position = goalPosition
					lastMousePosition = currentMousePosition
				end
			end)
	
			inputEnded = frame.InputEnded:Connect(function(input : InputObject)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					inputChanged:Disconnect()
					inputChanged = nil
	
					inputEnded:Disconnect()
					inputEnded = nil
				end
			end)
		end
	end)
	
	frame.Destroying:Once(function()
	
		leadFrame = leadFrame:Destroy()
	
		if inputChanged  then
			inputChanged:Disconnect()
			inputChanged = nil
		end
	
		if inputEnded then
			inputEnded:Disconnect()
			inputEnded = nil
		end
	end)
end
coroutine.wrap(JVZSSM_fake_script)()
local function HCYF_fake_script() -- Frame.Script 
	local script = Instance.new('Script', Frame)

	local players = game:GetService("Players")
	local player = game.Players.LocalPlayer
	local gui = script.Parent
	local unbanButton = gui.UnbanButton
	local username = gui.Username
	local errortext = gui.ErrorText
	local banButton = gui.BanButton
	
	unbanButton.MouseButton1Click:Connect(function()
		local config: UnbanConfigType = {
			UserIds = { username.text },
			ApplyToUniverse = false,
		}
		local success, err = pcall(function()
		end)
		players:UnbanAsync(config)
			end)
			if success then
		errortext.Text = "Successfully unbanned " .. username.Text
	else
		errortext.Text = "Error: " .. err
	end
	end)
	banButton.MouseButton1Click:Connect(function()
		local config: BanConfigType = {
			UserIds = { username.text },
			Duration = 60,
			DisplayReason = "You were caught Exploiting (Not really)",
			PrivateReason = "Hacking/Exploits",
			ExcludeAltAccounts = false,
			ApplyToUniverse = true,
		}
		local success, err = pcall(function()
			players:BanAsync(config)
		end)
		if success then
			errortext.Text = "Successfully banned " .. username.Text
		else
			errortext.Text = "Error: " .. err
		end
	end)
end
coroutine.wrap(HCYF_fake_script)()
