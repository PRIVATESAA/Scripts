local Solaris = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

--[[SolarisLib:New({
  Name - Title of the UI <string>
  FolderToSave - Name of the folder where the UI files will be stored <string>
})]]
local win = Solaris:New({
  Name = "MH+ WIP",
  FolderToSave = "Settings"
})

--win:Tab(title <string>)
local tab = win:Tab("Guis")

--tab:Section(title <string>)
local sec = tab:Section("Guis")

--sec:Button(title <string>, callback <function>)
sec:Button("Masked Man", function()
    local gui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GUI")
    if gui.Masked_Man.Visible == false then
    gui.Masked_Man.Visible = true
    end
end)
sec:Button("Box Man", function()
    local gui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GUI")
    if gui.Boxman.Visible == false then
    gui.Boxman.Visible = true
    end
end)
sec:Button("Supreme", function()
    local gui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GUI")
    if gui.SupremacyForge.Visible == false then
    gui.SupremacyForge.Visible = true
    end
end)
sec:Button("Boxes", function()
    local gui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GUI")
    if gui.Boxes.Visible == false then
    gui.Boxes.Visible = true
    end
end)
sec:Button("Wanderer", function()
    local gui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GUI")
    if gui.The_Wanderer.Visible == false then
    gui.The_Wanderer.Visible = true
    end
end)
sec:Button("Craftman", function()
    local gui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GUI")
    if gui.Craftsman.Visible == false then
    gui.Craftsman.Visible = true
    end
end)
sec:Button("Catalog", function()
    local gui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GUI")
    if gui.Catalog.Visible == false then
    gui.Catalog.Visible = true
    end
end)
sec:Button("Merchant", function()
    local gui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GUI")
    if gui.The_Merchant.Visible == false then
    gui.The_Merchant.Visible = true
    end
end)

local tab2 = win:Tab("Autofarm")

local sec2 = tab2:Section("Autofarm")

--sec:Toggle(title <string>,default <boolean>, flag <string>, callback <function>)
sec2:Toggle("Auto Rebirth", false,"Auto Rebirth", function(Rebirth)
    if Rebirth then
        Rebirthing = true
        while Rebirthing do
        game.ReplicatedStorage.resources.remotes.remote_functions.rebirth:InvokeServer()
        wait()
        end
        else
        Rebirthing = false
        end
        end)
sec2:Toggle("Auto Remote Mine", false, "Auto Remote Mine", function (Mine)
    if Mine then
        Mining = true
        while Mining do
game:GetService("ReplicatedStorage").resources.remotes.remote_events.remote_drop:FireServer()
wait()
        end
    else
        Mining = false
    end
end)

sec2:Button("Ores To Players", function ()
    local tycoon = game.Players.LocalPlayer.PlayerTycoon.Value
local ores = workspace.DroppedParts[tycoon.Name]:getChildren()
for i=1,#ores do
ores[i].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
end
end)

sec2:Button("Pulsar", function ()
game:GetService("ReplicatedStorage").resources.remotes.remote_events.pulse:FireServer()
end)

local tab3 = win:Tab("Layout")

local sec3 = tab3:Section("Layout")

sec3:Toggle("Layout 1", false,"Toggle", function (L1)
    if L1 then
        Loading = true
        while Loading do
        if Loading == true and #game.Players.LocalPlayer.PlayerTycoon.Value:getChildren() -4 ~= #game:GetService("HttpService"):JSONDecode(game.Players.LocalPlayer.Layouts.Layout1.Value) then
            local tycoon = game.Players.LocalPlayer.PlayerTycoon.Value
            game:GetService("ReplicatedStorage").resources.remotes["remote_functions"].layouts:InvokeServer("Load","Layout1")
        end
            wait()
        end
            end
            Loading = false
end)

sec3:Toggle("Layout 2", false,"Toggle", function (L2)
    if L2 then
        Loading = true
        while Loading do
        if Loading == true and #game.Players.LocalPlayer.PlayerTycoon.Value:getChildren() -4 ~= #game:GetService("HttpService"):JSONDecode(game.Players.LocalPlayer.Layouts.Layout2.Value) then
            local tycoon = game.Players.LocalPlayer.PlayerTycoon.Value
            game:GetService("ReplicatedStorage").resources.remotes["remote_functions"].layouts:InvokeServer("Load","Layout2")
        end
            wait()
        end
            end
            Loading = false
end)

sec3:Toggle("Layout 3", false,"Toggle", function (L3)
    if L3 then
        Loading = true
        while Loading do
        if Loading == true and #game.Players.LocalPlayer.PlayerTycoon.Value:getChildren() -4 ~= #game:GetService("HttpService"):JSONDecode(game.Players.LocalPlayer.Layouts.Layout3.Value) then
            local tycoon = game.Players.LocalPlayer.PlayerTycoon.Value
            game:GetService("ReplicatedStorage").resources.remotes["remote_functions"].layouts:InvokeServer("Load","Layout3")
        end
            wait()
        end
            end
            Loading = false
end)

sec3:Toggle("Layout 4", false,"Toggle", function (L4)
    if L4 then
        Loading = true
        while Loading do
        if Loading == true and #game.Players.LocalPlayer.PlayerTycoon.Value:getChildren() -4 ~= #game:GetService("HttpService"):JSONDecode(game.Players.LocalPlayer.Layouts.Layout4.Value) then
            local tycoon = game.Players.LocalPlayer.PlayerTycoon.Value
            game:GetService("ReplicatedStorage").resources.remotes["remote_functions"].layouts:InvokeServer("Load","Layout4")
        end
            wait()
        end
            end
            Loading = false
end)

sec3:Toggle("Layout 5", false,"Toggle", function (L5)
    if L5 then
        Loading = true
        while Loading do
        if Loading == true and #game.Players.LocalPlayer.PlayerTycoon.Value:getChildren() -4 ~= #game:GetService("HttpService"):JSONDecode(game.Players.LocalPlayer.Layouts.Layout5.Value) then
            local tycoon = game.Players.LocalPlayer.PlayerTycoon.Value
            game:GetService("ReplicatedStorage").resources.remotes["remote_functions"].layouts:InvokeServer("Load","Layout5")
        end
            wait()
        end
            end
            Loading = false
end)

local tab4 = win:Tab("Misc")

local sec4 = tab4:Section("Misc")

sec4:Toggle("Anti Afk",false,"AFK",function ()

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end)