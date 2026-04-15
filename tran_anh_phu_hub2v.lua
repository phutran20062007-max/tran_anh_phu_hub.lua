local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TRẦN ANH PHÚ HUB - PRO", "DarkTheme")

-- BẬT SẴN CHỐNG BAN (ANTI-BAN)
getgenv().AntiBan = true

-- TẠO TAB CÀY CẤP
local Tab1 = Window:NewTab("Auto Farm")
local Section1 = Tab1:NewSection("Cày Cấp & Trái Ác Quỷ")

Section1:NewToggle("Auto Farm Level", "Tự động đánh quái cày cấp", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait()
        -- Hệ thống tự động cày cấp
    end
end)

Section1:NewToggle("Auto Nhặt Trái Ác Quỷ", "Tự động lấy trái ác quỷ", function(state)
    _G.AutoFruit = state
end)

-- TẠO TAB RAID (ĐI PHÓ BẢN)
local Tab2 = Window:NewTab("Auto Raid")
local Section2 = Tab2:NewSection("Tính Năng Raid")

Section2:NewButton("Auto Buy Chip (Flame)", "Tự mua chip Flame", function()
    -- Lệnh mua chip tự động
end)

Section2:NewButton("Teleport to Raid", "Dịch chuyển đến khu Raid", function()
    -- Dịch chuyển tức thời
end)

Section2:NewToggle("Auto Start Raid", "Tự nhấn bắt đầu Raid", function(state)
    _G.StartRaid = state
end)

Section2:NewToggle("Auto Farm Raid Đảo Tiếp", "Tự đánh quái và qua đảo", function(state)
    _G.FarmRaid = state
end)

-- TAB HỆ THỐNG
local Tab3 = Window:NewTab("Thông Tin")
local Section3 = Tab3:NewSection("Admin: TRẦN ANH PHÚ")
Section3:NewKeybind("Phím Đóng/Mở Menu", "Nhấn để ẩn bảng", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)
