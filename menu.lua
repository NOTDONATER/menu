local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Name", "RJTheme3")

local Tab = Window:NewTab("TabName")

local Section = Tab:NewSection("Section Name")

-- Кнопка
Section:NewButton("ButtonText", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 250
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 250
end)

-- Переключатель
Section:NewToggle("Jump, speed", "JumpPower, and WalkSpeed", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 250
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 250
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

-- Слайдер
Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- Слайдер
Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(g) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = g
end)

-- Дропдаун
Section:NewDropdown("WalkSpeed", "DropdownInf", {"Default", "x2", "x4"}, function(jojo)
    if jojo == "Default" then
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
elseif jojo == "x2" then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
elseif jojo == "x4" then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
end
end)

-- Дропдаун
Section:NewDropdown("JumpPower", "DropdownInf", {"Default", "x2", "x4"}, function(jojo)
    if jojo == "Default" then
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
elseif jojo == "x2" then
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
elseif jojo == "x4" then
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200
end
end)
