local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/IreXion-UI-Library/main/IreXion%20UI%20Library"))()
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
local Gui = Library:AddGui({
	Title = {"Tower Tower", "v2"},
	ThemeColor = Color3.fromRGB(0,200,0),
	ToggleKey = Enum.KeyCode.LeftAlt,
})
getgenv().autofarm = false
getgenv().godmode = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
     char:WaitForChild("KillScript").Disabled = getgenv().godmode
end)
game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Changed:Connect(function(change)
    if change == "Text" and getgenv().autofarm == true then
        print(game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Text)
        if game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Text == "0:30" or game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Text == "1:00" or game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Text == "1:30" then
            char.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace"):WaitForChild("tower").finishes:FindFirstChild("Finish").Position)
            char.Humanoid.Jump = true
            wait(.5)
            char.Humanoid.Jump = true
            wait(1)
            char.Humanoid.Jump = true
        end
    end
end)
local Tab = Gui:AddTab("General")
local godmode = Tab:AddCategory("General")
local Toggle = godmode:AddToggle("Auto-Farm", false, function(toggle)
    getgenv().autofarm = toggle
end)
local Toggle = godmode:AddToggle("Invincibility", false, function(toggle)
    getgenv().godmode = toggle
	char.KillScript.Disabled = toggle
end)
local Button = godmode:AddButton("Get all Items", function()
	for i,v in pairs(game:GetService("ReplicatedStorage").Gear:GetChildren()) do
        v.Parent = game.Players.LocalPlayer.Backpack 
    end
end)
local Button = godmode:AddButton("Appeal", function()
    if game:GetService("Players").LocalPlayer.PlayerGui.shop2.shop.tabs:FindFirstChild("appeal") then
        local appealscript = getsenv(game:GetService("Players").LocalPlayer.PlayerGui.shop2.shop.items.appeal.LocalScript)
        game:GetService("Players").LocalPlayer.PlayerGui.shop2.shop.items.appeal.agreementBox.Text = game:GetService("Players").LocalPlayer.PlayerGui.shop2.shop.items.appeal.justifiedAgreement.Text
        appealscript.appeal()
    end
end)
local anti = Tab:AddCategory("Anti-Cheat")
local Button = anti:AddButton("Disable Anti-Cheat", function()
    --the disabler script made by myself
    getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript).kick = function()
        return; -- replaces kick function with a function that just returns
    end
end)
local tab2 = Gui:AddTab("Movement")
local move = tab2:AddCategory("Disable Anti-Cheat before using!")
local Box = move:AddBox("WalkSpeed", function(str)
	char.Humanoid.WalkSpeed = tonumber(str)
end)
local Box = move:AddBox("JumpPower", function(str)
	char.Humanoid.JumpPower = tonumber(str)
end)
local Dropdown = move:AddDropdown("Teleports", {
	"Finish",
	"Spawn"
}, function(name)
	if name == "Finish" then
        char.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").tower.sections.finish.exit.ParticleBrick.Position)
    elseif name == "Spawn" then
        char.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").tower.sections.start.center.Position)
    end
end)
local credits = Gui:AddTab("Credits")
local unob = credits:AddCategory("Open Sourced")
local Label = unob:AddLabel("By Tomato")
local Button = unob:AddButton("Copy Discord Invite", function()
	setclipboard("https://discord.com/invite/8N2M9fHJqa")
end)
Library:Notify("Tower Tower has loaded. Copy Discord Invite?", function(bool)
	if bool == true then
        setclipboard("https://discord.com/invite/8N2M9fHJqa")
    end
end)
