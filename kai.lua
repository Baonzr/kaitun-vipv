-- Kaitun Script 2025 - Full VIP, tối ưu Android/PC, kèm menu Conan GUI
getgenv().Hide_UI = true
getgenv().BlackScreen = false
_G.HopFruit1M = false

_G.KaitunConfig = {
    ["Actions Allowed"] = {
        ["Awakening Fruit"] = true,
        ["Upgrading Race"] = true,
        ["Skull Guitar"] = true,
        ["Mirror Fractal"] = true,
        ["Pole (1st Form)"] = true,
        ["Buy accessories"] = true,
        ["Buy Hakis"] = true,
        ["Upgrade Weapons"] = true,
        ["Rainbown Haki"] = true,
        ["Cursed Dual Katana"] = true,
        ["Saber"] = true,
        ["Shark Anchor"] = true,
        ["Beast Tail"] = true,
        ["Slayer Armor"] = true,
        ["Auto Elite Hunter"] = true,
        ["Auto Enma Quest"] = true,
        ["Auto Buddy Sword"] = true,
        ["Auto Yama Unlock"] = true,
        ["Auto Get Hallow Essence"] = true,
        ["Auto Law Raid"] = true,
        ["Auto Factory Raid"] = true,
        ["Auto Rip Indra"] = true,
        ["Auto Kill Cake Queen"] = true,
        ["Auto Unlock CDK"] = true,
        ["Auto Haki V2"] = true,
        ["Auto Farm Mastery All"] = true,
        ["Auto Get God Chalice"] = true,
        ["Auto Kill Elite + Drop Savior"] = true,
        ["Auto Upgrade Race V4"] = true,
        ["Auto Craft Hallow Scythe"] = true,
        ["Kitsune Trials"] = true,
        ["Gear 5 Scroll"] = true,
        ["Meteor Farm"] = true,
        ["Skull Hop"] = true
    },

    ["Fps Boosting"] = true,
    ["Fruit Snipping"] = true,
    ["Fruit Eating"] = true,
    ["High Ping Hop"] = true,

    ["Fruit Choosen"] = {
        ["Dough-Dough"] = true,
        ["Dragon-Dragon"] = true,
        ["Leopard-Leopard"] = true,
        ["Kitsune-Kitsune"] = true,
        ["T-Rex-T-Rex"] = true,
        ["Mammoth-Mammoth"] = true,
        ["Shadow-Shadow"] = true,
        ["Venom-Venom"] = true,
        ["Control-Control"] = true,
        ["Spirit-Spirit"] = true,
        ["Gravity-Gravity"] = true,
        ["Dark-Dark"] = true
    },

    ["Player Nearing Hop"] = true,
    ["Allow Stored"] = true,

    ["Race Choosen"] = {
        ["Human"] = true,
        ["Ghoul"] = true,
        ["Angel"] = true,
        ["Cyborg"] = true,
        ["Skypian"] = true
    },

    ["Race Snipping"] = true,
    ["Tween Speed"] = 350,
    ["Same Y Tween"] = true,

    ["Webhook Log"] = "https://discord.com/api/webhooks/your-id/your-token",
    ["Auto Save Config"] = true,
    ["Auto Load Config"] = true,
    ["Auto Backup Token"] = true,
    ["Anti AFK"] = true,
    ["Auto Reconnect"] = true
}

-- Conan GUI hiển thị chức năng
spawn(function()
    local list = {}
    for k,v in pairs(_G.KaitunConfig["Actions Allowed"]) do
        if v then table.insert(list, "✔️ " .. k) end
    end

    local gui = Instance.new("ScreenGui", game.CoreGui)
    gui.Name = "KaitunConanMenu"

    local frame = Instance.new("Frame", gui)
    frame.Size = UDim2.new(0, 330, 0, #list * 20 + 40)
    frame.Position = UDim2.new(1, -350, 0, 10)
    frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
    frame.BackgroundTransparency = 0.15
    frame.BorderColor3 = Color3.fromRGB(33, 180, 252)
    frame.BorderSizePixel = 2

    local bg = Instance.new("ImageLabel", frame)
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.Image = "https://i.pinimg.com/736x/d9/2f/32/d92f3267b029a642788b0cd929be7c2e.jpg"
    bg.ImageTransparency = 0.85
    bg.BackgroundTransparency = 1
    bg.ZIndex = 0

    local title = Instance.new("TextLabel", frame)
    title.Size = UDim2.new(1, -10, 0, 25)
    title.Position = UDim2.new(0, 5, 0, 5)
    title.Text = "🔧 Kaitun - Chức năng đang bật"
    title.Font = Enum.Font.SourceSansBold
    title.TextSize = 18
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1

    for i, name in ipairs(list) do
        local lb = Instance.new("TextLabel", frame)
        lb.Size = UDim2.new(1, -20, 0, 20)
        lb.Position = UDim2.new(0, 10, 0, 25 + (i - 1) * 20)
        lb.Text = name
        lb.Font = Enum.Font.Code
        lb.TextSize = 16
        lb.TextXAlignment = Enum.TextXAlignment.Left
        lb.TextColor3 = Color3.fromRGB(200, 255, 255)
        lb.BackgroundTransparency = 1
    end
end)

-- Tải Kaitun chính (thay link nếu cần)
loadstring(game:HttpGet('https://raw.githubusercontent.com/yourusername/yourrepo/main/kaitun.lua'))()
