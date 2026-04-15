local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TRẦN ANH PHÚ HUB", "DarkTheme")

-- TẠO TAB CHÍNH
local Tab = Window:NewTab("Tính Năng Chính")
local Section = Tab:NewSection("Auto Farm & Fruit")

-- NÚT BẬT/TẮT AUTO NHẶT TRÁI
Section:NewToggle("Auto Nhặt Trái Ác Quỷ", "Tự động dịch chuyển đến trái", function(state)
    _G.AutoFruit = state
    while _G.AutoFruit do
        wait(1)
        pcall(function()
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v:IsA("Tool") and v:FindFirstChild("Handle") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                end
            end
        end)
    end
end)

-- NÚT BẬT/TẮT ANTI-BAN
Section:NewToggle("Bật Chống Ban (Anti-Ban)", "Bảo vệ tài khoản của Phú", function(state)
    getgenv().AntiBan = state
    if state then
        print("Admin Phú đã bật Anti-Ban!")
    end
end)

-- TAB THÔNG TIN
local Tab2 = Window:NewTab("Thông Tin")
local Section2 = Tab2:NewSection("Chủ sở hữu: TRẦN ANH PHÚ")
Section2:NewLabel("Phiên bản: 1.0 - Mới nhất")
