 print("Loaded ArcHub!")
    
    local HubName = "ArcHub - +1 Jump Every Second"

    -- [SETUP] --

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib(HubName, themeStyles)
    
    -- [TABS] --
    
    local Updates = Window:NewTab("Updates")
    local Autofarm = Window:NewTab("Autofarm")
    local Trolling = Window:NewTab("Trolling")
    local Tweaks = Window:NewTab("Tweaks")
    local antiafk = Window:NewTab("AntiAFK")
    
    -- [TROLLING] --
    
    local TrollingSection = Trolling:NewSection("Trolling lolz")
    
    TrollingSection:NewButton("Sign Troll", "ButtonInfo", function()
        while wait(0.00000001) do
        game.Players.LocalPlayer.Backpack.Sign.TextPart.UI.Label.Text = "Trash game L ez GG trash"
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Sign)
        wait(0.0005)
        game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
        end
    end)
    
    
    TrollingSection:NewButton("Stop Sign Troll", "ButtonInfo", function()
        t = game.Players.LocalPlayer.Backpack:WaitForChild("Sign"):Clone()
        wait(0.1)
        game.Players.LocalPlayer.Backpack:WaitForChild("Sign"):Destroy()
        wait(1)
        t.Parent=game.Players.LocalPlayer.Backpack
        t.Name="Sign"
        
    end)
    
    -- [TWEAKS] --
    
     local TweakzSection = Tweaks:NewSection("tweakziness")
    
    TweakzSection:NewButton("Anti-Ban", "ButtonInfo", function()
        while wait(0.00000000000005) do
        game.Players.LocalPlayer.Character.Head.Color = Color3.new(1,0,0)
        end
    end)
    
    TweakzSection:NewButton("infY", "ButtonInfo", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)
    TweakzSection:NewButton("Rejoin", "ButtonInfo", function()
        local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 

ts:Teleport(game.PlaceId, p)
    end)
    
    -- [AUTOFARM] --
    
    local AutofarmSection = Autofarm:NewSection("Autofarmz")
    
    AutofarmSection:NewButton("Autofarm #1", "ButtonInfo", function()
        local part = game:GetService("Workspace").WinPaths["Horror Tower"].TouchPart -- Name of part you want to teleport to
        local plr = game.Players.LocalPlayer

        script.Parent.MouseButton1Click:Connect(function()
        local humanoidrootpart = plr.Character:FindFirstChild("HumanoidRootPart")
        if humanoidrootpart then
           humanoidrootpart.CFrame = CFrame.new(part.CFrame.p) + Vector3.new(0,5,0)
        end
        end)
    end)
    
    -- [ANTIAFK] --
    
     local antiafkas = antiafk:NewSection("Anti-AFK")
    
    antiafkas:NewButton("Enable", "ButtonInfo", function()
        wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,304,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti Afk Kick Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,304,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,304,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by XxSwordmaster_2xX"
_b.TextColor3=Color3.new(1,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377379,0)
ab.Size=UDim2.new(0,304,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Script Started"
ab.TextColor3=Color3.new(1,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="You went idle and ROBLOX tried to kick you but we reflected it!"wait(2)ab.Text="Script Re-Enabled"end)
end)
