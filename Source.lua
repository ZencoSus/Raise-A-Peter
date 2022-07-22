-- All extra stuff
local plr = game.Players.LocalPlayer
local chr = plr.Character
local humroot = chr.HumanoidRootPart
local humanoid = chr.Humanoid
--Gui Lib
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
--Creates the Whole Gui
local Window = OrionLib:MakeWindow({Name = "Raise A Peter Script"})
--All the tabs and scripts placed here
local MainTab = Window:MakeTab({
	Name = "Main"
})
local TeleportTab = Window:MakeTab({
    Name = "Teleports"
})
local CreditsTab = Window:MakeTab({
    Name = "Credits"
})
--Main area
MainTab:AddLabel("Dont execute the script again if any buttons are toggled!")
local Section = MainTab:AddSection({
	Name = "Auto Farm"
})
MainTab:AddToggle({
	Name = "Toggle Auto Farm",
	Default = false,
	Callback = function(Value)
	    farm = Value
		while farm do wait(0)
        for a,b in pairs(game:GetService("Workspace").Interactables.MoneyBills:GetChildren())do if b.Name=="Money"then firetouchinterest(b,humroot,0)firetouchinterest(b,humroot,1)end end;for a,c in pairs(game:GetService("Workspace").Interactables.Peter:GetChildren())do if c.Name=="Peter"then humroot.CFrame=c.Clickable.CFrame*CFrame.new(0,-1.1,0)fireclickdetector(c.Clickable.DropMoney,0)end end;for a,d in pairs(game:GetService("Workspace").Interactables.BagFolder:GetChildren())do if d.Name=="Bag"then firetouchinterest(d,humroot,0)firetouchinterest(d,humroot,1)end end
end
end
})
MainTab:AddToggle({
    Name = "Toggle OpenBoxes",
	Default = false,
	Callback = function(Value)
	    openbox = Value
	   while openbox == true do wait(0)
	    game:GetService("Workspace").Interactables.Objects.FrontDoor.Open.Value = true
        for a,b in pairs(game:GetService("Workspace"):GetDescendants())do if b.Name=="ProximityPrompt"then if b.Parent.Parent.Name=="Bottom"then humroot.CFrame=b.Parent.Parent.CFrame;fireproximityprompt(b,0)end end end
end
end
})
MainTab:AddToggle({
    Name = "Toggle Contacts",
	Default = false,
	Callback = function(Value)
	   if Value == true then
	   game:GetService("Players").LocalPlayer.PlayerGui.ShopGUI.Phone.Visible = true
	   else
	   game:GetService("Players").LocalPlayer.PlayerGui.ShopGUI.Phone.Visible = false
end
end

})
MainTab:AddToggle({
    Name = "Toggle Computer",
	Default = false,
	Callback = function(Value)
	   if Value == true then
	   game:GetService("Players").LocalPlayer.PlayerGui.ShopGUI.Computer.Visible = true
	   else
	   game:GetService("Players").LocalPlayer.PlayerGui.ShopGUI.Computer.Visible = false
end
end

})
MainTab:AddToggle({
    Name = "Toggle FeatherShop",
	Default = false,
	Callback = function(Value)
	   if Value == true then
	   game:GetService("Players").LocalPlayer.PlayerGui.ShopGUI.ChickenCoop.Visible = true
	   else
	   game:GetService("Players").LocalPlayer.PlayerGui.ShopGUI.ChickenCoop.Visible = false
end
end

})
--Teleports area
TeleportTab:AddButton({
    Name = "Teleport To Gas Station",
    Callback = function()
        humroot.CFrame = CFrame.new(134.715775, 3.24999881, 121.296318)
    end
})
TeleportTab:AddButton({
    Name = "Teleport Home",
    Callback = function()
        humroot.CFrame = CFrame.new(125.529221, 3.72332239, 49.8836975)
    end
})
--Credits area
local Section = CreditsTab:AddSection({
	Name = "Credits"
})
CreditsTab:AddLabel("Script Maker: Zenco on V3rmillion")
CreditsTab:AddLabel("Gui Maker: Thanks to sirus for the Gui Lib")
CreditsTab:AddButton({
    Name = "Click for Sirus discord link!",
	Callback = function()
      		setclipboard("https://discord.gg/QaZ5yKCPzr")
  	end   
})
OrionLib:Init()