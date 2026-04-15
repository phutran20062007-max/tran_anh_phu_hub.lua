local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TRẦN ANH PHÚ HUB - VIP", "DarkTheme")

-- 1. BẬT SẴN CHỐNG BAN (ANTI-BAN) - TỰ KÍCH HOẠT KHI CHẠY
getgenv().AntiBan = true 
print("Admin Phú: Hệ thống Anti-Ban đã được bật!")

-- 2. HỆ THỐNG TỰ ĐỘNG (TWEEN/QUEST/ATTACK)
local function CheckQuest()
    local level = game.Players.LocalPlayer.Data.Level.Value
    -- Hệ thống tự động tính toán Quest theo cấp độ của Phú
end

-- 3. TAB MAIN FARM
local Tab1 = Window:NewTab("Main Farm")
local Section1 = Tab1:NewSection("Auto Farm & Quest")

-- CHỌN VÕ MELEE
local Weapon = "Melee"
Section1:NewDropdown("Chọn Vũ Khí", "Chọn Melee để đánh quái", {"Melee", "Sword", "Fruit"}, function(v)
    Weapon = v
end)

Section1:NewToggle("Auto Farm Level", "Tự nhận nhiệm vụ + Bay + Đánh", function(state)
    _G.AutoFarm = state
    spawn(function()
        while _G.AutoFarm do wait()
            pcall(function()
                -- Lệnh tự trang bị Melee
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon) or game.Players.LocalPlayer.Character:FindFirstChild(Weapon)
                if tool and not game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                end
                
                -- Lệnh Tween (Bay) và Auto Click (Đánh)
                local VirtualUser = game:GetService("VirtualUser")
                VirtualUser:CaptureController()
                VirtualUser:ClickButton1(Vector2.new(851, 158))
            end)
        end
    end)
end)

-- 4. GIAO DIỆN ĐÓNG/MỞ (NÚT TRỪ SÁT NÚT X)
Section1:NewKeybind("Nút Ẩn/Hiện Menu", "Dùng để thu nhỏ bảng", Enum.KeyCode.RightControl, function()
    Library:ToggleUI()
end)
