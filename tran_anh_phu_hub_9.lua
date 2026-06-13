-- Bật Anti-Ban bảo vệ tài khoản
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Chặn các thông báo hệ thống gây chú ý
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if method == "FireServer" and self.Name == "TeleportHandling" then
        return nil
    end
    return old(self, ...)
end)
setreadonly(mt, true)
