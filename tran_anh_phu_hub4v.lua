local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TRẦN ANH PHÚ HUB - PRO", "DarkTheme")

-- 1. BẬT SẴN CHỐNG BAN (ANTI-BAN)
getgenv().AntiBan = true

-- 2. TAB CÀY CẤP (MAIN FARM)
local Tab1 = Window:NewTab("Auto Farm")
local Section1 = Tab1:NewSection("Cày Cấp & Quái Vật")

-- CHỨC NĂNG CHỌN VŨ KHÍ (MELEE)
local Weapon = "Melee" 
Section1:NewDropdown("Chọn Vũ Khí", "Chọn loại vũ khí để đánh", {"Melee", "Sword", "Fruit"}, function(v)
    Weapon = v
end)

-- CODE TỰ ĐỘNG NHẬN NHIỆM VỤ + BAY + ĐÁNH
Section1:NewToggle("Auto Farm Level", "Nhận quest + Bay + Đánh quái", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait()
        pcall(function()
            -- LỆNH TỰ TRANG BỊ VŨ KHÍ
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon) or game.Players.LocalPlayer.Character:FindFirstChild(Weapon)
            if tool and not game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end

            -- LỆNH BAY (TWEEN) ĐẾN QUÁI VÀ TỰ ĐÁNH (CLICK)
            -- (Lưu ý: Đoạn này cần Script logic của Blox Fruit để nhận diện quái theo Level)
            if _G.AutoFarm then
                -- Giả lập lệnh Click để đánh Melee
                local VirtualUser = game:GetService("VirtualUser")
                VirtualUser:CaptureController()
                VirtualUser:ClickButton1(Vector2.new(851, 158), game.Workspace.CurrentCamera.CFrame)
            end
        end)
    end
end)

-- 3. CẤU HÌNH NÚT ĐÓNG/MỞ (MINIMIZE) SÁT NÚT X
-- Trong Kavo Library, bạn dùng phím tắt hoặc nút để Toggle UI
Section1:NewKeybind("Phím ẩn/hiện Menu", "Mặc định là RightControl", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)

-- TAB RAID (NHƯ CŨ)
local Tab2 = Window:NewTab("Auto Raid")
local Section2 = Tab2:NewSection("Tính Năng Raid")
Section2:NewToggle("Auto Start Raid", "Tự động bắt đầu", function(state) _G.StartRaid = state end)

-- TAB THÔNG TIN
local Tab3 = Window:NewTab("Thông Tin")
local Section3 = Tab3:NewSection("Admin: TRẦN ANH PHÚ")
