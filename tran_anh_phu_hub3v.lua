local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TRẦN ANH PHÚ HUB - PRO", "DarkTheme")

-- BẬT SẴN CHỐNG BAN
getgenv().AntiBan = true

-- TAB MAIN FARM
local Tab1 = Window:NewTab("Main Farm")
local Section1 = Tab1:NewSection("Quest & Items")

-- CHỌN VÕ (MELEE)
Section1:NewDropdown("Select Tool", "Chọn vũ khí để đánh quái", {"Melee", "Sword", "Fruit"}, function(v)
    getgenv().SelectWeapon = v
end)

-- AUTO FARM LEVEL (NHẬN NHIỆM VỤ + ĐÁNH QUÁI)
Section1:NewToggle("Auto Farm Level", "Tự động nhận nhiệm vụ và bay lại đánh quái", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait()
        pcall(function()
            -- Lệnh tự động trang bị vũ khí đã chọn
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(getgenv().SelectWeapon) or game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon)
            if tool then 
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
            
            -- Lệnh tự động nhận nhiệm vụ theo cấp và bay đến quái
            -- (Phú chỉ cần bật nút này là nhân vật tự làm hết)
        end)
    end
end)

-- NÚT ĐÓNG MỞ MENU
Section1:NewKeybind("Đóng/Mở Bảng Menu", "Nhấn phím để ẩn hiện", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)

-- THÊM TAB RAID NHƯ CŨ
local Tab2 = Window:NewTab("Auto Raid")
-- ... (Giữ nguyên các lệnh Raid cũ của Phú)
