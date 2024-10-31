--// Script Location
local ScriptV: number = 1.1;
local HUDLocation = game:GetService("CoreGui");

--// GUI Setup
local _BSMBHub = Instance.new("ScreenGui")
local _Main = Instance.new("Frame")
local _TopBar = Instance.new("Frame")
local _UICorner = Instance.new("UICorner")
local _TextLabel = Instance.new("TextLabel")
local _Close = Instance.new("TextButton")
local _UICorner_2 = Instance.new("UICorner")
local _Minimize = Instance.new("TextButton")
local _UICorner_3 = Instance.new("UICorner")
local _UICorner_4 = Instance.new("UICorner")
local _ModsTab = Instance.new("Frame")
local _UICorner_5 = Instance.new("UICorner")
local _TextLabel_2 = Instance.new("TextLabel")
local _Buttons = Instance.new("Frame")
local _UIListLayout = Instance.new("UIListLayout")
local _ModsFrame = Instance.new("Frame")
local _MoveableMouse = Instance.new("TextButton")
local _Template = Instance.new("Frame")
local _ButtonText = Instance.new("TextLabel")
local _ButtonToggle = Instance.new("ImageButton")
local _UIListLayout_2 = Instance.new("UIListLayout")
local _CategoryTemplate = Instance.new("Frame")
local _UIPadding = Instance.new("UIPadding")
local _UIGridLayout = Instance.new("UIGridLayout")
local _ModTabTemplate = Instance.new("TextButton")
local _UICorner_6 = Instance.new("UICorner")
local _OpenKeybind = Instance.new("TextLabel")
local _ModBlur = Instance.new("BlurEffect")
local _Open = Instance.new("TextButton")
local _UICorner_7 = Instance.new("UICorner")
local _Credit = Instance.new("TextLabel")
local temp = Instance.new("Folder")
_BSMBHub.Name = "BSMB Hub"
_BSMBHub.Parent = HUDLocation
_BSMBHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_BSMBHub.IgnoreGuiInset = true
_BSMBHub.DisplayOrder = 999
temp.Name = "temp"
temp.Parent = _BSMBHub
_ModBlur.Enabled = true
_ModBlur.Size = 0
_ModBlur.Name = "ModBlur"
_ModBlur.Parent = temp
_Main.Name = "Main"
_Main.Parent = _BSMBHub
_Main.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
_Main.BorderColor3 = Color3.new(0, 0, 0)
_Main.BorderSizePixel = 0
_Main.Position = UDim2.new(0.35489741, 0, 0.262396693, 0)
_Main.Size = UDim2.new(0.289543331, 0, 0.46280992, 0)
_TopBar.Name = "TopBar"
_TopBar.Parent = _Main
_TopBar.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
_TopBar.BorderColor3 = Color3.new(0, 0, 0)
_TopBar.BorderSizePixel = 0
_TopBar.Size = UDim2.new(1, 0, 0.15625, 0)
_UICorner.Parent = _TopBar
_UICorner.CornerRadius = UDim.new(0.25, 0)
_Credit.Name = "Credit"
_Credit.Parent = _TopBar
_Credit.BackgroundColor3 = Color3.new(1, 1, 1)
_Credit.BackgroundTransparency = 1
_Credit.BorderColor3 = Color3.new(0, 0, 0)
_Credit.BorderSizePixel = 0
_Credit.Position = UDim2.new(0.100828171, 0, 9.43778324, 0)
_Credit.Size = UDim2.new(0.791568458, 0, 0.46321395, 0)
_Credit.Font = Enum.Font.FredokaOne
_Credit.Text = "Forked from: Quotas Hub"
_Credit.TextColor3 = Color3.new(1, 1, 1)
_Credit.TextScaled = true
_Credit.TextSize = 14
_Credit.TextStrokeColor3 = Color3.new(1, 1, 1)
_Credit.TextWrapped = true
_TextLabel.Parent = _TopBar
_TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
_TextLabel.BackgroundTransparency = 1
_TextLabel.BorderColor3 = Color3.new(0, 0, 0)
_TextLabel.BorderSizePixel = 0
_TextLabel.Position = UDim2.new(0.279591769, 0, 0.114285715, 0)
_TextLabel.Size = UDim2.new(0.439999998, 0, 0.771428585, 0)
_TextLabel.Font = Enum.Font.FredokaOne
_TextLabel.Text = "BSMB Hub"..(if ScriptV then " v"..tostring(ScriptV) else "")
_TextLabel.TextColor3 = Color3.new(1, 1, 1)
_TextLabel.TextScaled = true
_TextLabel.TextSize = 14
_TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
_TextLabel.TextWrapped = true
_Open.Name = "Open"
_Open.Parent = _BSMBHub
_Open.BackgroundColor3 = Color3.new(0.215686, 1, 0)
_Open.BorderColor3 = Color3.new(0, 0, 0)
_Open.BorderSizePixel = 0
_Open.Position = UDim2.new(0.15, 0,0.025, 0)
_Open.Size = UDim2.new(0.1, 0, 0.1, 0)
_Open.Font = Enum.Font.FredokaOne
_Open.Text = "Open BSMB"
_Open.TextColor3 = Color3.new(1, 1, 1)
_Open.TextScaled = true
_Open.TextSize = 14
_Open.TextWrapped = true
_UICorner_7.Parent = _Open
_UICorner_7.CornerRadius = UDim.new(0.25, 0)
_Close.Name = "Close"
_Close.Parent = _TopBar
_Close.BackgroundColor3 = Color3.new(1, 0.0313726, 0.129412)
_Close.BorderColor3 = Color3.new(0, 0, 0)
_Close.BorderSizePixel = 0
_Close.Position = UDim2.new(0.902857125, 0, 0.114285715, 0)
_Close.Size = UDim2.new(0.0771428943, 0, 0.771428764, 0)
_Close.Font = Enum.Font.FredokaOne
_Close.Text = "X"
_Close.TextColor3 = Color3.new(1, 1, 1)
_Close.TextScaled = true
_Close.TextSize = 14
_Close.TextWrapped = true
_UICorner_2.Parent = _Close
_UICorner_2.CornerRadius = UDim.new(0.25, 0)
_Minimize.Name = "Minimize"
_Minimize.Parent = _TopBar
_Minimize.BackgroundColor3 = Color3.new(1, 0.784314, 0)
_Minimize.BorderColor3 = Color3.new(0, 0, 0)
_Minimize.BorderSizePixel = 0
_Minimize.Position = UDim2.new(0.805714309, 0, 0.114285715, 0)
_Minimize.Size = UDim2.new(0.0771428943, 0, 0.771428764, 0)
_Minimize.Font = Enum.Font.FredokaOne
_Minimize.Text = "-"
_Minimize.TextColor3 = Color3.new(1, 1, 1)
_Minimize.TextScaled = true
_Minimize.TextSize = 14
_Minimize.TextWrapped = true
_UICorner_4.Parent = _Minimize
_UICorner_4.CornerRadius = UDim.new(0.25, 0)
_UICorner_3.Parent = _Main
_UICorner_3.CornerRadius = UDim.new(0.0500000007, 0)
_ModsTab.Name = "ModsTab"
_ModsTab.Parent = _Main
_ModsTab.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
_ModsTab.BorderColor3 = Color3.new(0, 0, 0)
_ModsTab.BorderSizePixel = 0
_ModsTab.Position = UDim2.new(0.0399999991, 0, 0.183035716, 0)
_ModsTab.Size = UDim2.new(0.914285719, 0, 0.142857149, 0)
_UICorner_5.Parent = _ModsTab
_UICorner_5.CornerRadius = UDim.new(0.25, 0)
_TextLabel_2.Parent = _ModsTab
_TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
_TextLabel_2.BackgroundTransparency = 1
_TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
_TextLabel_2.BorderSizePixel = 0
_TextLabel_2.Position = UDim2.new(0.0420920365, 0, 0.114285469, 0)
_TextLabel_2.Size = UDim2.new(0.248086542, 0, 0.771428585, 0)
_TextLabel_2.Font = Enum.Font.FredokaOne
_TextLabel_2.Text = "Mods"
_TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
_TextLabel_2.TextScaled = true
_TextLabel_2.TextSize = 14
_TextLabel_2.TextStrokeColor3 = Color3.new(1, 1, 1)
_TextLabel_2.TextWrapped = true
_TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
_Buttons.Name = "Buttons"
_Buttons.Parent = _ModsTab
_Buttons.BackgroundColor3 = Color3.new(1, 1, 1)
_Buttons.BackgroundTransparency = 1
_Buttons.BorderColor3 = Color3.new(0, 0, 0)
_Buttons.BorderSizePixel = 0
_Buttons.Position = UDim2.new(0.259375006, 0, 0.09375, 0)
_Buttons.Size = UDim2.new(0.740625024, 0, 0.791964054, 0)
_UIListLayout.Parent = _Buttons
_UIListLayout.FillDirection = Enum.FillDirection.Horizontal
_UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
_UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
_UIListLayout.Padding = UDim.new(0.0250000004, 0)
_ModsFrame.Name = "ModsFrame"
_ModsFrame.Parent = _Main
_ModsFrame.BackgroundColor3 = Color3.new(1, 1, 1)
_ModsFrame.BackgroundTransparency = 1
_ModsFrame.BorderColor3 = Color3.new(0, 0, 0)
_ModsFrame.BorderSizePixel = 0
_ModsFrame.Size = UDim2.new(1, 0, 1, 0)
_MoveableMouse.Name = "MoveableMouse"
_MoveableMouse.Parent = _BSMBHub
_MoveableMouse.BackgroundColor3 = Color3.new(1, 1, 1)
_MoveableMouse.BackgroundTransparency = 1
_MoveableMouse.BorderColor3 = Color3.new(0, 0, 0)
_MoveableMouse.BorderSizePixel = 0
_MoveableMouse.Selectable = false
_MoveableMouse.Size = UDim2.new(1, 0, 1, 0)
_MoveableMouse.ZIndex = 0
_MoveableMouse.Modal = true
_MoveableMouse.Font = Enum.Font.SourceSans
_MoveableMouse.Text = " "
_MoveableMouse.TextColor3 = Color3.new(0, 0, 0)
_MoveableMouse.TextSize = 1
_MoveableMouse.TextTransparency = 1
_Template.Name = "Template"
_Template.Parent = temp
_Template.BackgroundColor3 = Color3.new(1, 1, 1)
_Template.BackgroundTransparency = 1
_Template.BorderColor3 = Color3.new(0, 0, 0)
_Template.BorderSizePixel = 0
_Template.LayoutOrder = 1
_Template.Position = UDim2.new(0.102857143, 0, 0.601722062, 0)
_Template.Size = UDim2.new(0.379999995, 0, 0.177349657, 0)
_ButtonText.Name = "ButtonText"
_ButtonText.Parent = _Template
_ButtonText.BackgroundColor3 = Color3.new(1, 1, 1)
_ButtonText.BackgroundTransparency = 1
_ButtonText.BorderColor3 = Color3.new(0, 0, 0)
_ButtonText.BorderSizePixel = 0
_ButtonText.Size = UDim2.new(0.736842036, 0, 0.800000012, 0)
_ButtonText.Font = Enum.Font.FredokaOne
_ButtonText.Text = "TemplateText"
_ButtonText.TextColor3 = Color3.new(1, 1, 1)
_ButtonText.TextScaled = true
_ButtonText.TextSize = 10
_ButtonText.TextWrapped = true
_ButtonToggle.Name = "ButtonToggle"
_ButtonToggle.Parent = _Template
_ButtonToggle.BackgroundColor3 = Color3.new(0.580392, 0.580392, 0.580392)
_ButtonToggle.BackgroundTransparency = 1
_ButtonToggle.BorderColor3 = Color3.new(0, 0, 0)
_ButtonToggle.BorderSizePixel = 0
_ButtonToggle.LayoutOrder = 1
_ButtonToggle.Position = UDim2.new(0.441229492, 0, -0.25, 0)
_ButtonToggle.Size = UDim2.new(0.168421045, 0, 0.800000012, 0)
_ButtonToggle.Image = "http://www.roblox.com/asset/?id=1264513374"
_ButtonToggle.ScaleType = Enum.ScaleType.Fit
_UIListLayout_2.Parent = _Template
_UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
_UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
_UIListLayout_2.Padding = UDim.new(0.100000001, 0)
_CategoryTemplate.Name = "CategoryTemplate"
_CategoryTemplate.Parent = temp
_CategoryTemplate.BackgroundColor3 = Color3.new(1, 1, 1)
_CategoryTemplate.BackgroundTransparency = 1
_CategoryTemplate.BorderColor3 = Color3.new(0, 0, 0)
_CategoryTemplate.BorderSizePixel = 0
_CategoryTemplate.Position = UDim2.new(0, 0, 0.362148702, 0)
_CategoryTemplate.Size = UDim2.new(1, 0, 0.637851357, 0)
_CategoryTemplate.Visible = false
_UIPadding.Parent = _CategoryTemplate
_UIPadding.PaddingLeft = UDim.new(0.0500000007, 0)
_UIGridLayout.Parent = _CategoryTemplate
_UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
_UIGridLayout.CellPadding = UDim2.new(0.100000001, 0, 0.0500000007, 0)
_UIGridLayout.CellSize = UDim2.new(0.379999995, 0, 0.177000001, 0)
_ModTabTemplate.Name = "ModTabTemplate"
_ModTabTemplate.Parent = temp
_ModTabTemplate.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
_ModTabTemplate.BorderColor3 = Color3.new(0, 0, 0)
_ModTabTemplate.BorderSizePixel = 0
_ModTabTemplate.Position = UDim2.new(0, 0, 0.0630543381, 0)
_ModTabTemplate.Size = UDim2.new(0.263776302, 0, 0.873891592, 0)
_ModTabTemplate.Font = Enum.Font.FredokaOne
_ModTabTemplate.Text = "???"
_ModTabTemplate.TextColor3 = Color3.new(1, 1, 1)
_ModTabTemplate.TextScaled = true
_ModTabTemplate.TextSize = 14
_ModTabTemplate.TextWrapped = true
_UICorner_6.Parent = _ModTabTemplate
_UICorner_6.CornerRadius = UDim.new(0.25, 0)
_OpenKeybind.Name = "OpenKeybind"
_OpenKeybind.Parent = _BSMBHub
_OpenKeybind.BackgroundColor3 = Color3.new(1, 1, 1)
_OpenKeybind.BackgroundTransparency = 1
_OpenKeybind.BorderColor3 = Color3.new(0, 0, 0)
_OpenKeybind.BorderSizePixel = 0
_OpenKeybind.Position = UDim2.new(0.302980125, 0, 0.644628108, 0)
_OpenKeybind.Size = UDim2.new(0.391556323, 0, 0.103305787, 0)
_OpenKeybind.Visible = false
_OpenKeybind.Font = Enum.Font.FredokaOne
_OpenKeybind.Text = "Use Unknown (aka \"?\") to open BSMB Hub again."
_OpenKeybind.TextColor3 = Color3.new(1, 1, 1)
_OpenKeybind.TextScaled = true
_OpenKeybind.TextSize = 14
_OpenKeybind.TextWrapped = true

--// Hub Script
local function BSMBHub()
	local script = Instance.new('LocalScript', _BSMBHub)
	script.Name = "temp"
	_ModBlur.Parent = script
	_CategoryTemplate.Parent = script
	_Template.Parent = script
	_ModTabTemplate.Parent = script

	--// Services
	local UIS = game:GetService('UserInputService')
	local TweenService = game:GetService("TweenService")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")

	--// Variables
	local currentFov = workspace.CurrentCamera.FieldOfView
	local MainFrame = script.Parent:WaitForChild("Main")
	local TopBar = MainFrame:WaitForChild("TopBar")
	local ModsTab = MainFrame:WaitForChild("ModsTab")
	local ModsFrame = MainFrame:WaitForChild("ModsFrame")
	local MoveableMouse = script.Parent.MoveableMouse
	local CloseButton = TopBar.Close
	local Open = script.Parent.Open
	local Minimize = TopBar.Minimize
	local Template = script.Template
	local CategoryTemplate = script.CategoryTemplate
	local ModTabTemplate = script.ModTabTemplate
	local OpenKeybind = Enum.KeyCode.RightBracket
	local Blur = script.ModBlur
	local BlurSize = 12
	local WsSignal
	local InProgress = false
	local Closing = false
	local LoadedMods = 0
	local isRolve = game.PlaceId == 286090429
	local ModsOrder = {
		["Aim"] = 1;
		["Gun"] = 2;
		["Player"] = 3;
	}
	local OpenGui = {
		Activation = OpenKeybind;
		KeyName = OpenKeybind.Name;
		KeyString = UIS:GetStringForKeyCode(OpenKeybind);
		Message = script.Parent.OpenKeybind;
	}
	local ToggledImages = {
		Enabled = "1264515756";
		Disabled = "1264513374"
	}

	--// Mods
	local mods = {
		Aim = {
			["SilentAim"] = {
				Display = "Extended Hitboxes";
				DisplayOrder = 1;
				Callback = function()
					toggleSilentAim()
					return
				end,
			};
			["MoreBodyShots"] = {
				Display = "Prioritize Body";
				DisplayOrder = 2;
				Callback = function()
					return
				end;
			};
			["VisibleHitboxes"] = {
				Display = "Visible EXHB";
				DisplayOrder = 5;
				Callback = function()
					return;
				end;
			};
			["ESP"] = {
				Display = "ESP";
				DisplayOrder = 3;
				Callback = function()
					return
				end,
			};
			["TeammateESP"] = {
				Display = "Team Check";
				DisplayOrder = 4;
				Callback = function()
					return
				end,
			};
		};
		Gun = {
			["InfAmmo"] = {
				Display = "Infinite Ammo";
				DisplayOrder = 1;
				Callback = function()
					toggleInfAmmo()
					return
				end,
			};
			["NoRecoil"] = {
				Display = "No Recoil";
				DisplayOrder = 2;
				Callback = function()
					toggleRecoil()
					return
				end,
			};
			["FirerateToggle"] = {
				Display = "Sonic Firerate";
				DisplayOrder = 3;
				Callback = function()
					toggleFireRate()
					return
				end,
			};
		};
		Player = {
			["SonicSpeed"] = {
				Display = "Sonic Speed";
				DisplayOrder = 1;
				Speed = 100;
				Callback = function(t, ws)
					toggleSonicSpeed()
					return
				end,
			};
			["InfJump"] = {
				Display = "Infinite Jump";
				DisplayOrder = 2;
				Callback = function()
					return
				end,
			};
		};
	}

	--// Toggles Loader
	local toggles = {}
	for name, value in pairs(mods) do
		toggles[name] = {}
		for modName, _ in pairs(value) do
			toggles[name][modName] = false
		end
	end

	--// Core Gui Toggle
	local function controlBlur(val)
		local waitTime = .15
		local fovTween = currentFov*0.85
		local function blur(bl, sz)
			TweenService:Create(bl, TweenInfo.new(waitTime, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = sz}):Play()
		end
		local function fov()
			TweenService:Create(workspace.CurrentCamera, TweenInfo.new(waitTime, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {FieldOfView = (val == true and fovTween or currentFov)}):Play()
		end
		fov()
		if val == true then
			if game.Lighting:FindFirstChild(Blur.Name) then
				game.Lighting[Blur.Name]:Destroy()
			end
			local newBlur = Blur:Clone()
			newBlur.Parent = game.Lighting
			blur(newBlur, BlurSize)
		else
			if game.Lighting:FindFirstChild(Blur.Name) then
				local currentBlur = game.Lighting[Blur.Name]
				blur(currentBlur, 0)
				wait(waitTime+.1)
				currentBlur:Destroy()
			end
		end
	end
	local function message(msg, ctime)
		if not InProgress then
			InProgress = true
			OpenGui.Message.TextTransparency = 1
			OpenGui.Message.Text = msg
			OpenGui.Message.Visible = true
			TweenService:Create(OpenGui.Message, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextTransparency = 0}):Play()
			wait((ctime or 2))
			TweenService:Create(OpenGui.Message, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextTransparency = 1}):Play()
			wait(2)
			OpenGui.Message.Visible = false
			InProgress = false
		end
	end
	controlBlur(true)
	Open.Visible = UIS.TouchEnabled
	CloseButton.Activated:Connect(function()
		Closing = true
		for i, v in pairs(toggles) do
			for modName, _ in pairs(v) do
				if toggles[i][modName] == true then
					toggles[i][modName] = false
					mods[i][modName].Callback()
				end
			end
		end
		script.Parent.Main.Visible = false
		Open.Visible = false
		controlBlur(false)
		message('You have closed BSMB Hub, all your mods have been disabled as well.', 5)
		for i, v in pairs(game.Lighting:GetChildren()) do
			if v.name == "ModBlur" then
				v:Destroy()
			end
		end
		script.Parent:Destroy()
	end)
	Minimize.Activated:Connect(function()
		MainFrame.Visible = false
		MoveableMouse.Visible = false
		Open.Visible = UIS.TouchEnabled
		coroutine.wrap(function()
			controlBlur(false)
		end)()
		message('Use '..OpenGui.KeyName..' (aka "'..OpenGui.KeyString..'") to open BSMB Hub again.', 2)
	end)
	Open.Activated:Connect(function()
		if Closing then return end
		if MainFrame.Visible == false then
			controlBlur(true)
			Open.Visible = false
			MainFrame.Visible = true
			MoveableMouse.Visible = true
		end
	end)
	UIS.InputBegan:Connect(function(i)
		if Closing then return end
		if i.KeyCode == OpenGui.Activation then
			if MainFrame.Visible == false then
				controlBlur(true)
				Open.Visible = false
				MainFrame.Visible = true
				MoveableMouse.Visible = true
			end
		end
	end)

	--// Mods Loader
	for i, v in pairs(mods) do
		LoadedMods += 1
		local function setupMods(selectedtab)
			for modName, mod in pairs(v) do
				local newTemplate = Template:Clone()
				newTemplate.Parent = selectedtab
				newTemplate.Name = modName
				newTemplate.LayoutOrder = mod.DisplayOrder
				newTemplate.ButtonText.Text = mod.Display
				newTemplate.ButtonToggle.Activated:Connect(function()
					toggles[i][modName] = not toggles[i][modName]
					mod.Callback()
					if toggles[i][modName] then
						newTemplate.ButtonToggle.Image = 'http://www.roblox.com/asset/?id='..ToggledImages["Enabled"]
					else
						newTemplate.ButtonToggle.Image = 'http://www.roblox.com/asset/?id='..ToggledImages["Disabled"]
					end
				end)
			end
		end
		local function setupModsTab(newTab)
			newTab.Activated:Connect(function()
				for _,obj in pairs(ModsFrame:GetChildren()) do
					obj.Visible = false
				end
				ModsFrame[i].Visible = true
			end)
		end
		if ModsFrame:FindFirstChild(i) then
			setupMods(ModsFrame[i])
		else
			local newCat = CategoryTemplate:Clone()
			newCat.Parent = ModsFrame
			newCat.Name = i
			setupMods(newCat)
		end
		if ModsFrame:FindFirstChild("Aim") then
			ModsFrame.Aim.Visible = true
		end
		--[[local hasVisible = false
		for _,obj in pairs(ModsFrame:GetChildren()) do
			if obj.Visible == true then
				hasVisible = true
			end
		end
		if hasVisible == false then
			ModsFrame[i].Visible = true
		end]]
		if ModsTab.Buttons:FindFirstChild(i) then
			ModsTab.Buttons[i].LayoutOrder = ModsOrder[i]
			setupModsTab(ModsTab.Buttons[i])
		else
			local newModsTab = ModTabTemplate:Clone()
			newModsTab.Name = i
			newModsTab.Text = i
			newModsTab.LayoutOrder = ModsOrder[i]
			newModsTab.Parent = ModsTab.Buttons
			setupModsTab(newModsTab)
		end
	end

	--// Mods Controller
	function toggleSilentAim()
		local plr = game.Players.LocalPlayer
		coroutine.resume(coroutine.create(function()
			while toggles["Aim"]["SilentAim"] do
				coroutine.resume(coroutine.create(function()
					for _,v in pairs(game.Players:GetPlayers()) do
						if v.Name ~= plr.Name and v.Character then
							local function activateHitbox()
								local char = v.Character
								local headhitbox = (isRolve and char.HeadHB or char.Head)
								local hbSize = getgenv().HitboxSize or 13
								headhitbox.CanCollide = false
								headhitbox.Transparency = (toggles["Aim"]["VisibleHitboxes"] and 0.5 or 10)
								headhitbox.Size = Vector3.new(hbSize,hbSize,hbSize)
								char.HumanoidRootPart.CanCollide = false
								char.HumanoidRootPart.Transparency = (toggles["Aim"]["VisibleHitboxes"] and 0.5 or 10)
								char.HumanoidRootPart.Size = Vector3.new(hbSize,hbSize, hbSize)
								if toggles["Aim"]["MoreBodyShots"] then
									char.RightUpperLeg.CanCollide = false
									char.RightUpperLeg.Transparency = (toggles["Aim"]["VisibleHitboxes"] and 0.5 or 10)
									char.RightUpperLeg.Size = Vector3.new(hbSize,hbSize,hbSize)
									char.LeftUpperLeg.CanCollide = false
									char.LeftUpperLeg.Transparency = (toggles["Aim"]["VisibleHitboxes"] and 0.5 or 10)
									char.LeftUpperLeg.Size = Vector3.new(hbSize,hbSize,hbSize)
								end
							end
							if toggles["Aim"]["TeammateESP"] and v.Team ~= plr.Team then
								activateHitbox()
							elseif not toggles["Aim"]["TeammateESP"] then
								activateHitbox()
							end
						end
					end
				end))
				wait(1)
			end
		end))
	end
	function toggleInfAmmo()
		while toggles["Gun"]["InfAmmo"] do
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
			wait()
		end
	end
	function toggleFireRate()
		while toggles["Gun"]["FirerateToggle"] do
			for i, v in pairs(ReplicatedStorage.Weapons:GetDescendants()) do
				if v.Name == "Auto" then
					v.Value = true
				end
				if v.Name == "FireRate" then
					v.Value = 0.02
				end
			end
			wait(5)
		end
	end
	function toggleRecoil()
		while toggles["Gun"]["NoRecoil"] do
			for i, v in pairs(ReplicatedStorage.Weapons:GetDescendants()) do
				if v.Name == "RecoilControl" then
					v.Value = 0
				end
				if v.Name == "MaxSpread" then
					v.Value = 0
				end
			end
			wait(5)
		end
	end
	function toggleSonicSpeed()
		local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
		if toggles["Player"]["SonicSpeed"] then
			WsSignal = Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
				Humanoid.WalkSpeed = mods["Player"]["SonicSpeed"].Speed
			end)
			Humanoid.WalkSpeed = mods["Player"]["SonicSpeed"].Speed
		else
			if WsSignal then
				WsSignal:Disconnect()
				Humanoid.WalkSpeed = 16
			end
		end
	end
	game:GetService("UserInputService").JumpRequest:Connect(function()
		if toggles["Player"]["InfJump"] then
			if game.Players.LocalPlayer.Character then
				local char = game.Players.LocalPlayer.Character
				local hum = char:FindFirstChildOfClass("Humanoid")
				hum:ChangeState("Jumping")
			end
		end
	end)

	--// ESP Main
	local RunService = game:GetService("RunService")
	local Players = game:GetService("Players")
	local esp = Instance.new("BillboardGui")
	local name = Instance.new("TextLabel")
	local mainesp = Instance.new("BillboardGui")
	local box = Instance.new("ImageLabel")
	local LocalPlayer = Players.LocalPlayer
	esp.Name = "esp" 
	esp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	esp.Active = true
	esp.AlwaysOnTop = true
	esp.LightInfluence = 1.000
	esp.Size = UDim2.new(0, 300, 0, 30)
	esp.StudsOffset = Vector3.new(0, 3, 0)
	name.Name = "name"
	name.Parent = esp
	name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	name.BackgroundTransparency = 1.000
	name.BorderColor3 = Color3.fromRGB(0, 0, 0)
	name.BorderSizePixel = 0
	name.Size = UDim2.new(1, 0, 1, 0)
	name.Font = Enum.Font.Ubuntu
	name.TextColor3 = Color3.fromRGB(255, 255, 255)
	name.TextScaled = false
	name.TextSize = 9.000
	name.TextStrokeTransparency = 0.000
	name.TextWrapped = true
	name.TextTransparency = 1
	mainesp.Name = "mainesp"
	mainesp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	mainesp.Active = true
	mainesp.AlwaysOnTop = true
	mainesp.LightInfluence = 1.000
	mainesp.MaxDistance = 999999.000
	mainesp.Size = UDim2.new(4, 0, 6, 0)
	box.Name = "box"
	box.Parent = mainesp
	box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	box.BackgroundTransparency = 1.000
	box.BorderColor3 = Color3.fromRGB(0, 0, 0)
	box.BorderSizePixel = 0
	box.Size = UDim2.new(1, 0, 1, 0)
	box.Image = "http://www.roblox.com/asset/?id=16946608585"
	box.ImageTransparency = 1
	RunService.RenderStepped:Connect(function()
		for i, v in pairs(Players:GetChildren()) do
			local sigma = Players.LocalPlayer
			if v.Character then
				if v.Character:FindFirstChild("Head") then
					if not v.Character.Head:FindFirstChild("esp") then
						if v ~= game.Players.LocalPlayer then
							local sigma = Players.LocalPlayer
							local nameClone = esp:Clone()
							local espClone = mainesp:Clone()
							nameClone.Parent = v.Character:FindFirstChild("Head")
							nameClone:FindFirstChild("name").Text = nameClone.Parent.Parent.Name
							espClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
						end
					end
					if toggles["Aim"]["TeammateESP"] == true then
						if v ~= sigma then
							if v.Team == sigma.Team then
								if v.Character.Head:FindFirstChild("esp") then
									v.Character.Head:FindFirstChild("esp"):Destroy()
									v.Character.HumanoidRootPart:FindFirstChild("mainesp"):Destroy()
								end
							end
						end
					end
					if toggles["Aim"]["ESP"] == true then
						if v.Character.Head:FindFirstChild("esp") then
							if v.Character.HumanoidRootPart:FindFirstChild("mainesp") then
								v.Character.Head:FindFirstChild("esp").name.TextTransparency = 0
								v.Character.HumanoidRootPart:FindFirstChild("mainesp").box.ImageTransparency = 0.43
							end
						end
					else do
							if v.Character.Head:FindFirstChild("esp") then
								if v.Character.HumanoidRootPart:FindFirstChild("mainesp") then
									v.Character.Head:FindFirstChild("esp").name.TextTransparency = 1
									v.Character.HumanoidRootPart:FindFirstChild("mainesp").box.ImageTransparency = 1
								end
							end
						end
					end
				end
			end
		end
	end)
	Players.PlayerAdded:Connect(function(player)
		local sigma = Players.LocalPlayer
		if player.Character then
			if not player.Character.Head:FindFirstChild("esp") then
				if player ~= game.Players.LocalPlayer then
					local sigma = Players.LocalPlayer
					local nameClone = esp:Clone()
					local espClone = mainesp:Clone()
					nameClone.Parent = player.Character:FindFirstChild("Head")
					nameClone:FindFirstChild("name").Text = nameClone.Parent.Parent.Name
					wait(1)
					espClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
				end
			end
			if player ~= sigma then
				if toggles["Aim"]["TeammateESP"] == true then
					if player.Team == sigma.Team then
						if player.Character.Head:FindFirstChild("esp") then
							player.Character.Head:FindFirstChild("esp"):Destroy()
							player.Character.HumanoidRootPart:FindFirstChild("mainesp"):Destroy()
						end
					end
				end
			end
		end
	end)
end
coroutine.wrap(BSMBHub)()
temp:Destroy()