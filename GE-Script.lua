local Config = {
    WindowName = "Fade's General Exploit",
	Color = Color3.fromRGB(0,114,163),
	Keybind = Enum.KeyCode.RightShift
}

local players = game:GetService("Players")
local lPlayer = players.LocalPlayer
local numbr = 0

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/FadeRemix/UI-Librarys/main/LOADSTRINGS/BracketV3%20Loadstring"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("General Settings")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("Player")
local Pref = Tab1:CreateSection("Performance")
local Misc = Tab1:CreateSection("Misc")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")

---------------- Walkspeed

local Slider1 = Section1:CreateSlider("Walkspeed", 0,100,nil,true, function(Value)
	lPlayer.Character.Humanoid.WalkSpeed = (Value)
end)
Slider1:AddToolTip("Adjusts your walkspeed")
Slider1:SetValue(16)

local ButtonWALK = Section1:CreateButton("Reset Walk Speed", function()
Slider1:SetValue(16)
end)
ButtonWALK:AddToolTip("Will reset walk speed")

------------------ Jump Height

local Slider2 = Section1:CreateSlider("Jump Height", 0,500,nil,true, function(Value)
	lPlayer.Character.Humanoid.JumpPower = (Value)
	--print(Value)
end)
Slider2:AddToolTip("Adjusts your jump height")
Slider2:SetValue(50)

local ButtonJUMP = Section1:CreateButton("Reset Jump Height", function()
Slider2:SetValue(50)
end)
ButtonJUMP:AddToolTip("Will reset jump height")

---------------- Hip Heigt

local Slider3 = Section1:CreateSlider("Hip Height", 0,100,nil,true, function(Value)
	lPlayer.Character.Humanoid.HipHeight = (Value)
end)
Slider3:AddToolTip("Adjusts your hip height")
Slider3:SetValue(2)

local ButtonHIP = Section1:CreateButton("Reset Hip Height", function()
  Slider3:SetValue(2)
end)
ButtonHIP:AddToolTip("Will reset hip height")

---------------- Suicide

local Button1 = Section1:CreateButton("Suicide", function()
		character = lPlayer.Character
		humanoid = character:FindFirstChild('Humanoid')
		humanoid.Health = 0
end)
Button1:AddToolTip("Kills your player")

---------------- Name Scrambler

local Button2 = Misc:CreateButton("Scramble Names", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FadeRemix/GEv1/main/GE-NameScramble.lua"))()
end)
Button2:AddToolTip("Will make all player names random")

---------------- Force Sit

local Toggle1 = Misc:CreateToggle("Force Sit", nil, function(State)
	if State == true then
		lPlayer.Character.Humanoid.Sit = true
			elseif State == false then
		lPlayer.Character.Humanoid.Sit = false
	end
end)
Toggle1:AddToolTip("Will force your player to sit")
Toggle1:CreateKeybind("Y", function(Key)
	print(Key)
end)


local Label1 = Misc:CreateLabel("Name: "..lPlayer.Name)
local Label2 = Misc:CreateLabel("Display Name: "..lPlayer.DisplayName)

------------ Extra UI stuff
--[[
local Toggle1 = Section1:CreateToggle("Toggle 1", nil, function(State)
	print(State)
end)
Toggle1:AddToolTip("Toggle 1 ToolTip")
Toggle1:CreateKeybind("Y", function(Key)
	print(Key)
end)

local TextBox1 = Section1:CreateTextBox("TextBox 1", "Only numbers", true, function(Value)
	print(Value)
end)
TextBox1:AddToolTip("Yes only numbers")
--TextBox1:SetValue("new value here")
Section1:CreateTextBox("TextBox 1\nMultiline", "numbers and letters", false, function(String)
	print(String)
end)
-------------
local Dropdown1 = Section1:CreateDropdown("Dropdown 1", {"Option 1","Option 2","Option 3"}, function(String)
	print(String)
end)
Dropdown1:AddToolTip("Dropdown 1 ToolTip")
Dropdown1:SetOption("Option 1")
-------------
local Colorpicker1 = Section1:CreateColorpicker("Colorpicker 1", function(Color)
	print(Color)
end)
Colorpicker1:AddToolTip("Colorpicker 1 ToolTip")
Colorpicker1:UpdateColor(Color3.fromRGB(255,0,0))
-------------
Section2:CreateLabel("Label 2\nMultiline")
-------------
local Button2 = Section2:CreateButton("Button 2\nMultiline", function()
	print("Click Button 2")
end)
Button2:AddToolTip("Button 2 ToolTip\nMultiline")
-------------
local Toggle2 = Section2:CreateToggle("Toggle 2\nMultiline", nil, function(State)
	print(State)
end)
Toggle2:AddToolTip("Toggle 2 ToolTip\nMultiline")
Toggle2:CreateKeybind("U", function(Key)
	print(Key)
end)
-------------
local Slider2 = Section2:CreateSlider("Slider 2\nMultiline", 0,100,nil,false, function(Value)
	print(Value)
end)
Slider2:AddToolTip("Slider 2 ToolTip\nMultiline")
Slider2:SetValue(25)
-------------
local Dropdown2 = Section2:CreateDropdown("Dropdown 2\nMultiline", {"Option 4","Option 5","Option 6"}, function(String)
	print(String)
end)
Dropdown2:AddToolTip("Dropdown 2 ToolTip")
Dropdown2:SetOption("Option 6")
-------------
local Colorpicker2 = Section2:CreateColorpicker("Colorpicker 2\nMultiline", function(Color)
	print(Color)
end)
Colorpicker2:AddToolTip("Colorpicker 2 ToolTip")
Colorpicker2:UpdateColor(Color3.fromRGB(0,0,255))
]]

-------------

local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)

local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)

-- credits to jan for patterns
local Dropdown3 = Section4:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
	if Name == "Default" then
		Window:SetBackground("2151741365")
	elseif Name == "Hearts" then
		Window:SetBackground("6073763717")
	elseif Name == "Abstract" then
		Window:SetBackground("6073743871")
	elseif Name == "Hexagon" then
		Window:SetBackground("6073628839")
	elseif Name == "Circles" then
		Window:SetBackground("6071579801")
	elseif Name == "Lace With Flowers" then
		Window:SetBackground("6071575925")
	elseif Name == "Floral" then
		Window:SetBackground("5553946656")
	end
end)
Dropdown3:SetOption("Default")

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)
