local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "QleHub Anime Adventures", HidePremium = false, IntroText = "QleHub", SaveConfig = true, ConfigFolder = "QleConfig"})
-- Values

_G.autoErwin = true
_G.autoShanks = true
_G.autoKisuke = true
_G.autoLulu = true
_G.autoWhiteBeard = true
_G.autoJotaro = true
_G.autoDiavolo = true


  

-- Functions

-- Auto Ability Tab Functions


function autoDiavolo()
    local DiavoloUnit = {}
    local localPlayer = game:GetService("Players").LocalPlayer
    if _G.autoDiavolo == true then
        repeat task.wait(3)
            for _, instance in next, workspace._UNITS:GetChildren() do
              if instance.Name ~= "diavolo" then continue end
              if instance._stats.player.Value ~= localPlayer then continue end
              if table.find(DiavoloUnit, instance) then continue end
              table.insert(DiavoloUnit, instance)
            end
        until #DiavoloUnit == 1
    end
    while _G.autoDiavolo == true do
        if _G.autoDiavolo == false then
            break
        end
        repeat task.wait() until DiavoloUnit[1]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(DiavoloUnit[1])
        wait(90)
        if _G.autoDiavolo == false then
            break
        end
    end
end

function autoJotaro()
    local JotaroUnits = {}
    local localPlayer = game:GetService("Players").LocalPlayer
    if _G.autoJotaro == true then
        repeat task.wait(3)
            for _, instance in next, workspace._UNITS:GetChildren() do
              if instance.Name ~= "jotaro" then continue end
              if instance._stats.player.Value ~= localPlayer then continue end
              if table.find(JotaroUnits, instance) then continue end
              table.insert(JotaroUnits, instance)
            end
        until #JotaroUnits == 3
    end   
    while _G.autoJotaro == true do
        if _G.autoJotaro == false then
            break
        end
        repeat task.wait() until JotaroUnits[1]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(JotaroUnits[1])
        wait(15.3)
        if _G.autoJotaro == false then
            break
        end
        repeat task.wait() until JotaroUnits[2]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(JotaroUnits[2])
        wait(15.3)
        if _G.autoJotaro == false then
            break
        end
        repeat task.wait() until JotaroUnits[3]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(JotaroUnits[3])
        wait(15.3)
        if _G.autoJotaro == false then
            break
        end
    end
end

function autoWhiteBeard()
    local WhiteBeardUnits = {}
    local localPlayer = game:GetService("Players").LocalPlayer
    if _G.autoWhiteBeard == true then
        repeat task.wait(3)
            for _, instance in next, workspace._UNITS:GetChildren() do
              if instance.Name ~= "whitebeard" then continue end
              if instance._stats.player.Value ~= localPlayer then continue end
              if table.find(WhiteBeardUnits, instance) then continue end
              table.insert(WhiteBeardUnits, instance)
            end
        until #WhiteBeardUnits == 3
    end   
    while _G.autoWhiteBeard == true do
        if _G.autoWhiteBeard == false then
            break
        end
        repeat task.wait() until WhiteBeardUnits[1]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(WhiteBeardUnits[1])
        wait(36)
        if _G.autoWhiteBeard == false then
            break
        end
        repeat task.wait() until WhiteBeardUnits[2]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(WhiteBeardUnits[2])
        wait(36)
        if _G.autoWhiteBeard == false then
            break
        end
        repeat task.wait() until WhiteBeardUnits[3]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(WhiteBeardUnits[3])
        wait(36)
        if _G.autoWhiteBeard == false then
            break
        end
    end
end

function autoLulu()
    local LuluUnit = {}
    local localPlayer = game:GetService("Players").LocalPlayer
    if _G.autoLulu == true then
        repeat task.wait(3)
            for _, instance in next, workspace._UNITS:GetChildren() do
              if instance.Name ~= "lelouch" then continue end
              if instance._stats.player.Value ~= localPlayer then continue end
              if table.find(LuluUnit, instance) then continue end
              table.insert(LuluUnit, instance)
            end
        until #LuluUnit == 1
    end
    while _G.autoLulu == true do
        if _G.autoLulu == false then
            break
        end
        repeat task.wait() until LuluUnit[1]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(LuluUnit[1])
        wait(40)
        if _G.autoLulu == false then
            break
        end
    end
end

function autoErwin()
    local ErwinUnits = {}
    local localPlayer = game:GetService("Players").LocalPlayer
    if _G.autoErwin == true then
        repeat task.wait(3)
            for _, instance in next, workspace._UNITS:GetChildren() do
              if instance.Name ~= "erwin" then continue end
              if instance._stats.player.Value ~= localPlayer then continue end
              if table.find(ErwinUnits, instance) then continue end
              table.insert(ErwinUnits, instance)
            end
        until #ErwinUnits >= 2
    end
    while _G.autoErwin == true do
        if _G.autoErwin == false then
            break
        end
        repeat task.wait() until ErwinUnits[1]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(ErwinUnits[1])
        wait(20)
        if _G.autoErwin == false then
            break
        end
        repeat task.wait() until ErwinUnits[2]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(ErwinUnits[2])
        wait(20)
        if _G.autoErwin == false then
            break
        end
    end
end


function autoShanks()
    local ShanksUnits = {}
    local localPlayer = game:GetService("Players").LocalPlayer
    if _G.autoShanks == true then
        repeat task.wait(3)
            for _, instance in next, workspace._UNITS:GetChildren() do
              if instance.Name ~= "shanks" then continue end
              if instance._stats.player.Value ~= localPlayer then continue end
              if table.find(ShanksUnits, instance) then continue end
              table.insert(ShanksUnits, instance)
            end
        until #ShanksUnits == 3
    end   
    while _G.autoShanks == true do
        if _G.autoShanks == false then
            break
        end
        repeat task.wait() until ShanksUnits[1]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(ShanksUnits[1])
        wait(18)
        if _G.autoShanks == false then
            break
        end
        repeat task.wait() until ShanksUnits[2]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(ShanksUnits[2])
        wait(18)
        if _G.autoShanks == false then
            break
        end
        repeat task.wait() until ShanksUnits[3]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(ShanksUnits[3])
        wait(18)
        if _G.autoShanks == false then
            break
        end
    end
end



function autoKisuke()
    local uraharaUnits = {}
    local localPlayer = game:GetService("Players").LocalPlayer
    if _G.autoKisuke == true then
        repeat task.wait(3)
            for _, instance in next, workspace._UNITS:GetChildren() do
              if instance.Name ~= "kisuke_evolved" then continue end
              if instance._stats.player.Value ~= localPlayer then continue end
              if table.find(uraharaUnits, instance) then continue end
              table.insert(uraharaUnits, instance)
            end
        until #uraharaUnits == 3
    end   
    while _G.autoKisuke == true do
        if _G.autoKisuke == false then
            break
        end
        repeat task.wait() until uraharaUnits[1]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(uraharaUnits[1])
        wait(40)
        if _G.autoKisuke == false then
            break
        end
        repeat task.wait() until uraharaUnits[2]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(uraharaUnits[2])
        wait(40)
        if _G.autoKisuke == false then
            break
        end
        repeat task.wait() until uraharaUnits[3]._stats.unit_stunned.Value == 0
        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(uraharaUnits[3])
        wait(40)
        if _G.autoKisuke == false then
            break
        end
    end
end



-- Remove Stuff Tab Functions


function removeMap()
    while not game:IsLoaded() do
        wait(1)
    end

    game.Players.LocalPlayer:WaitForChild("_settingsLoaded")
    game.Workspace:WaitForChild("_waves_started")
    if game.Workspace._MAP_CONFIG.IsLobby.Value == false then
        repeat wait() until game.Players.LocalPlayer._settingsLoaded.Value == true
        repeat wait() until game.Workspace._waves_started.Value == true
    end

    if game.Workspace:FindFirstChild("dbz_1") then
        game.Workspace._map:Destroy()
        game.Workspace._terrain.hill:Destroy()
        for _,v in next, game.Workspace._terrain.terrain:GetChildren() do
            v:Destroy()
        end

        local plate = Instance.new("Part")
        plate.Anchored = true
        plate.CFrame = CFrame.new(-2913.689453125,91.20619812011719,-718.9261474609375)
        plate.Size = Vector3.new(200,1,200)
        plate.Parent = game.Workspace._terrain.ground

        for _,v in next, game.Workspace._terrain.ground:GetDescendants() do
            if v.Name == "namek grass" or v.Name == "sand" then
                v:Destroy()
            end
        end

        for _,v in next, game.Workspace.ignore:GetChildren() do
            v:Destroy()
        end
    end

    ------------------------------------------------------------------------------------------------

    if game.Workspace:FindFirstChild("aot_1") then
        game.Workspace._map:Destroy()
        game.Workspace._terrain.hill:Destroy()
        game.Workspace._road.ground:Destroy()
        for _,v in next, game.Workspace._terrain.terrain:GetChildren() do
          v:Destroy()
        end

        local plate = Instance.new("Part")
        plate.Anchored = true
        plate.CFrame = CFrame.new(-3001.126220703125,33.041798400878906,-692.4129028320312)
        plate.Size = Vector3.new(200,1,200)
        plate.Parent = game.Workspace._terrain.ground

        for _,v in next, game.Workspace._terrain.ground:GetDescendants() do
            if v.Name == "ground" or v.Name == "grass" or v.Name == "Union" then
                v:Destroy()
            end
        end

        for _,v in next, game.Workspace.ignore:GetChildren() do
            v:Destroy()
        end
    end

    -------------------------------------------------------------------------------------------------

    if game.Workspace:FindFirstChild("demonslayer_1") then
        game.Workspace._map:Destroy()
        game.Workspace._terrain.hill:Destroy()
        game.Workspace._road.side:Destroy() 
        for _,v in next, game.Workspace._terrain.terrain:GetChildren() do
            v:Destroy()
        end

        local plate = Instance.new("Part")
        plate.Anchored = true
        plate.CFrame = CFrame.new(-2914.495361328125,33.840625,-129.53506469726562)
        plate.Size = Vector3.new(250,1,200)
        plate.Parent = game.Workspace._terrain.ground

        for _,v in next, game.Workspace._terrain.ground:GetDescendants() do
            if v.Name == "snow grass" then
                v:Destroy()
            end
        end

        for _,v in next, game.Workspace.ignore:GetChildren() do
            v:Destroy()
        end
    end

    --------------------------------------------------------------------------------------------------

    if game.Workspace:FindFirstChild("naruto_1") then
        game.Workspace._map:Destroy()
        game.Workspace._terrain.hill:Destroy()
        for _,v in next, game.Workspace._terrain.terrain:GetChildren() do
            v:Destroy()
        end

        local plate = Instance.new("Part")
        plate.Anchored = true
        plate.CFrame = CFrame.new(-889.8439331054688,24.756088638305664,283.11871337890625)
        plate.Size = Vector3.new(300,1,300)
        plate.Parent = game.Workspace._terrain.ground

        for _,v in next, game.Workspace._terrain.ground:GetDescendants() do
            if v.Name == "road" or v.Name == "BasePlate" then
                v:Destroy()
            end
        end

        for _,v in next, game.Workspace.ignore:GetChildren() do
            v:Destroy()
        end
    end

    --------------------------------------------------------------------------------------------------

    if game.Workspace:FindFirstChild("onepiece_1") then
        game.Workspace._map:Destroy()
        game.Workspace._barrier:Destroy()
        game.Workspace._terrain.hill:Destroy()
        for _,v in next, game.Workspace._terrain.terrain:GetChildren() do
            v:Destroy()
        end
        
        local plate = Instance.new("Part")
        plate.Anchored = true
        plate.CFrame = CFrame.new(-2589.566162109375,24.7108727,-45.62839126586914)
        plate.Size = Vector3.new(300,1,200)
        plate.Parent = game.Workspace._terrain.ground

        for _,v in next, game.Workspace._terrain.ground:GetDescendants() do
            if v.Name == "ice_ground" then
                v:Destroy()
            end
        end

        for _,v in next, game.Workspace.ignore:GetChildren() do
            v:Destroy()
        end
    end

    --------------------------------------------------------------------------------------------------

    if game.Workspace:FindFirstChild("tokyo_ghoul_1") then
        game.Workspace._map:Destroy()
        game.Workspace._terrain.hill:Destroy()
        for _,v in next, game.Workspace._terrain.terrain:GetChildren() do
            v:Destroy()
        end

        local plate = Instance.new("Part")
        plate.Anchored = true
        plate.CFrame = CFrame.new(-2923.435302734375,58.08464431762695,-86.16637420654297)
        plate.Size = Vector3.new(300,1,300)
        plate.Parent = game.Workspace._terrain.ground

        for _,v in next, game.Workspace._terrain.ground:GetDescendants() do
            if v.Name == "_" or v.Name == "Union" then
                v:Destroy()
            end
        end

        for _,v in next, game.Workspace.ignore:GetChildren() do
            v:Destroy()
        end
    end

    ---------------------------------------------------------------------------------------------------

    if game.Workspace:FindFirstChild("bleach_1") then
        game.Workspace._map:Destroy()
        game.Workspace._terrain.hill:Destroy()
        for _,v in next, game.Workspace._terrain.terrain:GetChildren() do
            v:Destroy()
        end

        local plate = Instance.new("Part")
        plate.Anchored = true
        plate.CFrame = CFrame.new(-178.13006591796875,132.06392517089844,-688.171630859375)
        plate.Size = Vector3.new(500,1,500)
        plate.Parent = game.Workspace._terrain.ground
        
        for _,v in next, game.Workspace._terrain.ground:GetDescendants() do
            if v.Name == "ground1" or v.Name == "Union" then
                v:Destroy()
            end
        end

        for _,v in next, game.Workspace.ignore:GetChildren() do
            v:Destroy()
        end
    end

    --------------------------------------------------------------------------------------------------

    if game.Workspace:FindFirstChild("hxh_1") then
        game.Workspace._map:Destroy()
        game.Workspace._terrain.hill:Destroy()
        game.Workspace._road.Model:Destroy()
        for _,v in next, game.Workspace._terrain.terrain:GetChildren() do
            v:Destroy()
        end

        local plate = Instance.new("Part")
        plate.Anchored = true
        plate.CFrame = CFrame.new(-123.865997, 22.5125999, 2972.46997)
        plate.Size = Vector3.new(500,1,500)
        plate.Parent = game.Workspace._terrain.ground

        for _,v in next, game.Workspace._terrain.ground:GetDescendants() do
            if v.Name == "sand" or v.Name == "_groundgrass" then
                v:Destroy()
            end
        end

        for _,v in next, game.Workspace.ignore:GetChildren() do
            v:Destroy()
        end
    end

    ---------------------------------------------------------------------------------------------------   

    if game.Workspace:FindFirstChild("ft_1") then
        game.Workspace._map:Destroy()
        game.Workspace._terrain.hill:Destroy()
        game.Workspace._road.Model:Destroy()
        for _,v in next, game.Workspace._road:GetChildren() do
            if v.Name == "Part" or v.Name == "Union" then
                v:Destroy()
            end
        end
        for _,v in next, game.Workspace._terrain.terrain:GetChildren() do
            v:Destroy()
        end

        local plate = Instance.new("Part")
        plate.Anchored = true
        plate.CFrame = CFrame.new(-656.741, 6.4, -821.584)
        plate.Size = Vector3.new(500,1,500)
        plate.Parent = game.Workspace._terrain.ground

        for _,v in next, game.Workspace._terrain.ground:GetDescendants() do
            if v.Name == "stones" or v.Name == "park_grass" then
                v:Destroy()
            end
        end

        for _,v in next, game.Workspace.ignore:GetChildren() do
            v:Destroy()
    end

    --------------------------------------------------------------------------------------------------

    for _,v in next, game.Workspace._road:GetChildren() do
        v.Parent = Workspace
    end

    repeat
        game.Workspace.ignore:WaitForChild("_bounds")
        for _,v in next, game.Workspace.ignore._bounds:GetChildren() do
            v:Destroy()
        end
        wait()
    until
    #game.Workspace.ignore._bounds:GetChildren() == 0
end
end

function removeUnitHitbox()
    while not game:IsLoaded() do
        wait(1)
    end
    game.Players.LocalPlayer:WaitForChild("_settingsLoaded")
    game.Workspace:WaitForChild("_UNITS")

    for _,v in next, game.Workspace._UNITS:GetDescendants() do
        if v.Name == "_hitbox" then
            v:Destroy()
        end
    end

    workspace._UNITS.ChildAdded:Connect(function(child)
        local hitbox = child:WaitForChild("_hitbox")
        hitbox:Destroy()
    end)
end


function hybridPlacement()
    local table = {
        game:GetService("ReplicatedStorage").src.Data.Units
    }

    for i,v in next, table do
        for i2,v2 in pairs(require(v)) do
            v2.hybrid_placement = true
            v2.hill_unit = false
        end
    end
end





-- Tabs

-- Auto Ability Tabs


local LeaderBoard = Window:MakeTab({
	Name = "Auto Ability",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


-- Remove Stuff


local LeaderBoard2 = Window:MakeTab({
	Name = "Remove Stuff",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


-- Toggles

-- Auto Ability Tab Toggles


LeaderBoard:AddToggle({
	Name = "Auto Erwin",
	Default = false,
	Callback = function(Value)
		_G.autoErwin = Value
        autoErwin()
	end    
})

LeaderBoard:AddToggle({
	Name = "Auto Kisuke",
	Default = false,
	Callback = function(Value)
        _G.autoKisuke = Value
        autoKisuke()
	end    
})

LeaderBoard:AddToggle({
	Name = "Auto Shanks",
	Default = false,
	Callback = function(Value)
		_G.autoShanks = Value
        autoShanks()
	end    
})

LeaderBoard:AddToggle({
	Name = "Auto Lulu",
	Default = false,
	Callback = function(Value)
		_G.autoLulu = Value
        autoLulu()
	end    
})

LeaderBoard:AddToggle({
	Name = "Auto Jotaro",
	Default = false,
	Callback = function(Value)
        _G.autoJotaro = Value
        autoJotaro()
	end    
})

LeaderBoard:AddToggle({
	Name = "Auto WhiteBeard",
	Default = false,
	Callback = function(Value)
		_G.autoWhiteBeard = Value
        autoWhiteBeard()
	end    
})

LeaderBoard:AddToggle({
	Name = "Auto Diavolo",
	Default = false,
	Callback = function(Value)
		_G.autoDiavolo = Value
        autoDiavolo()
	end    
})

--Button

--Remove Stuff Tab Button


LeaderBoard2:AddButton({
	Name = "Remove Map (Any Maps)",
	Callback = function()
        removeMap()
  	end    
})

LeaderBoard2:AddButton({
	Name = "Clumsy (Remove Unit Hitbox)",
	Callback = function()
        removeUnitHitbox()
  	end    
})

LeaderBoard2:AddButton({
	Name = "Hybrid Placement Module",
	Callback = function()
        hybridPlacement()
  	end    
})



OrionLib:Init()
