local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Cheat Gui", "RJTheme3")

local Tab = Window:NewTab("Power")

local Section = Tab:NewSection("Power")

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
Section:NewSlider("WalkSpeed", "SliderInfo", 500, 0, function(h) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = h
end)

-- Слайдер
Section:NewSlider("JumpPower", "SliderInfo", 100, 0, function(g) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = g
end)

-- Дропдаун
Section:NewDropdown("WalkSpeed", "DropdownInf", {"Default", "x2", "x4"}, function(jojo)
    if jojo == "Default" then
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
elseif jojo == "x2" then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
elseif jojo == "x4" then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 64
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

-- Кнопка
Section:NewButton("click to tp", "ButtonInfo", function()
    mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "click to tp"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)



local Tab = Window:NewTab("Auto farm")

local Section = Tab:NewSection("Auto farm Coin")

-- Переключатель
Section:NewToggle("Auto famr coin", "Hide and seek EXtreme", function(state)
    if state then
        for i,v in pairs(game:GetDescendants()) do
            if v.Name == 'Credit' then
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            end
        end
    else
        for i,v in pairs(game:GetDescendants()) do
            if v.Name == 'Credit' then
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(86400)
            end
        end
    end
end)

local Tab = Window:NewTab("other")

local Section = Tab:NewSection("other")

-- Кнопка
Section:NewButton("TAS, only fe2", "TAS TOOL on FE2", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/7ih/Lexian-TAS-Tools/main/script.lua', true))()
end)

-- Кнопка
Section:NewButton("Global TAS", "For all games", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/7ih/Lexian-TAS-Tools/main/GlobalTAS.lua', true))()
end)

-- Кнопка
Section:NewButton("Farm fe2", "Dont working", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/7ih/Lexian-TAS-Tools/main/GlobalTAS.lua', true))()
end)

Section:NewButton("ESP", "ESP FOR ALL GAMES", function ()
    while wait(0.5) do
        for i, childrik in ipairs(workspace:GetDescendants()) do
            if childrik:FindFirstChild("Humanoid") then
                if not childrik:FindFirstChild("EspBox") then
                    if childrik ~= game.Players.LocalPlayer.Character then
                        local esp = Instance.new("BoxHandleAdornment",childrik)
                        esp.Adornee = childrik
                        esp.ZIndex = 0
                        esp.Size = Vector3.new(4, 5, 1)
                        esp.Transparency = 0.65
                        esp.Color3 = Color3.fromRGB(255,48,48)
                        esp.AlwaysOnTop = true
                        esp.Name = "EspBox"
                    end
                end
            end
        end
    end
end)

-- Кнопка
Section:NewButton("fatesc admin", "fatesc admin", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua', true))()
end)

-- Кнопка
Section:NewButton("fly", "fly bye", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/PhoenixAceVFX/Roblox-Scripts/master/FE%20Fly.lua', true))()
end)

--кнопка
Section:NewButton("inf yield", "infinite yield", function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/PhoenixAceVFX/Roblox-Scripts/master/INFINITE%20YIELD%20FD.lua', true))()
end)
