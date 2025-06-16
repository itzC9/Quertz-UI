💡 Kavo-UI Library

💡 Kavo UI Library by xxHept

🔮 Quertz-UI Library

🔮 Quertz UI Library By itzYuki

***⚡ Powered by GitHub***

# 📂 Documentation:

# 🗃️Updates-:
All of the latest updates may or can be found in here.

# 🚨 Important-:
***All of those who gives template of Kavo is not a part of KavoTeam!***
***they are big scams! please beware of using them because it may have a logger.***
***this is the official Quertz x Kavo UI Library.***
***You may use this Quertz-UI Library because original Kavo was Discontinued.***

# ***Latest Added:***
```
# Section Update Functions
***New Themes:***
- Mystic [New]
- Sunset [New]
- Forest [New]
- Royal [New]
- Flame [New]
- Moon [New]
- Sunrise [New]
- Kali [New]
- Recommend More (@itzC9#0000)

***New Component:***
- Label
- Notification
- recommend more (discord.gg/QuertzClient)

***Rich Text Support For:***
- UI Title,
- Sections,
- And Other Elements (exc tabs)
```
Getting Loadstring
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/itzC9/Trinx-Kavo-UI/main/tQuertz.lua"))()
```
Creating UI Library Window
```lua
local Window = Library.MakeLib("TITLE", "Theme")
```
Themes:
```
    LightTheme
    DarkTheme
    GrapeTheme
    BloodTheme
    Ocean
    Midnight
    Sentinel
    Synapse
    Mystic
    Sunset
    Forest
    Royal
    Flame
    Moon
    Sunrise
    Kali
```
Creating Tabs
```lua
local Tab = Window:MakeTab("TabName")
```
Creating Section
```lua
local Section = Tab:AddSection("SectionName")
```
Update Section
```lua
Section:UpdateSection("SectionNewTitle")
```
Creating Labels
```lua
Section:AddLabel("LabelText")
```
Update Label
```lua
label:UpdateLabel("New Text")
```
Creating Buttons
```lua
Section:AddButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)
```
Update Button
Make sure your button is local when updating it.
```lua
button:UpdateButton("NewText")
```
Creating Toggles
```lua
Section:AddToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
```
Updating Toggles
```lua
getgenv().Toggled = false

local toggle = Section:NewToggle("Toggle", "Info", (state)
    getgenv().Toggled = state
end)

game:GetService("RunService").RenderStepped:Connect(function()
	if getgenv().Toggled then
		toggle:UpdateToggle("Toggle On")
	else
		toggle:UpdateToggle("Toggle Off")
	end
end)
```
Creating Sliders
```lua
Section:AddSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
```
Creating Textboxes
```lua
Section:AddTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)
```

Default Notification
```lua
Section:MakeNotification("Title", "WASSUP THIS IS DESCRIPTION!")
```
Timer Notification
```lua
Section:MakeNotification("Title", "WASSUP THIS IS DESCRIPTION!", 5)
```
Creating Keybinds
```lua
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)
```
Toggling UI with Keybinds (Useful on Open and Close Button)
```lua
Section:AddKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
```
Creating Dropdowns
```lua
Section:AddDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)
```
Dropdown Refresh
```lua
local oldList = {
  "2019",
  "2020"
}
local newList = {
  "2021",
  "2022"
}
local dropdown = Section:NewDropdown("Dropdown","Info", oldList, function()

end)
Section:AddButton("Update Dropdown", "Refreshes Dropdown", function()
  dropdown:Refresh(newList)
end)
```
Creating Color Pickers
```lua
Section:AddColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)
```
Applying Custom Themes / Colors
Make new table, here you are going to put your colors, as shown below.

```lua
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
```
Applying it: Change your window code little bit.

```lua
local Window = Library.MakeLib("TITLE", colors)
```
Want to add fully customizable UI?
Add this code in your section. This will create color pickers.
Make sure you have added table with all the values of UI. then apply it to window. Like shown above.
```lua
for theme, color in pairs(themes) do
    Section:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end
```
Last updated Friday, July 19 2024 Philippines Standard Time.
