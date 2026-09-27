-- ================================================================
--   â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ•—  â–ˆâ–ˆâ•— â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—
--  â–ˆâ–ˆâ•”â•â•â•â•â• â–ˆâ–ˆâ•”â•â•â•â•â•â–ˆâ–ˆâ•”â•â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘  â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—
--  â–ˆâ–ˆâ•‘  â–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—  â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•
--  â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â•  â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â•â•
--  â•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ•‘  â–ˆâ–ˆâ•‘â•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ•‘
--   â•šâ•â•â•â•â•â• â•šâ•â•â•â•â•â•â• â•šâ•â•â•â•â•â• â•šâ•â•  â•šâ•â• â•šâ•â•â•â•â•â• â•šâ•â•
--   Country Server Hopper v1.0  |  by Kii
--   Compatible with Delta Executor
-- ================================================================

-- â”€â”€ SERVICES â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local Players         = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local HttpService     = game:GetService("HttpService")
local UserInputService= game:GetService("UserInputService")
local TweenService    = game:GetService("TweenService")

local LP      = Players.LocalPlayer
local PlaceId = game.PlaceId
local HomeServerId = game.JobId  -- remember the server we started in

-- â”€â”€ THEME â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local T = {
    BG           = Color3.fromRGB(4,  4,  18),
    BGSec        = Color3.fromRGB(9,  7,  28),
    Blue         = Color3.fromRGB(50, 110, 255),
    Purple       = Color3.fromRGB(125, 45, 230),
    BlueL        = Color3.fromRGB(100,155, 255),
    PurpleL      = Color3.fromRGB(170, 90, 255),
    BlueDim      = Color3.fromRGB(28,  70, 180),
    Text         = Color3.fromRGB(218,215, 255),
    TextDim      = Color3.fromRGB(120,115, 185),
    Border       = Color3.fromRGB(50, 110, 255),
    BorderP      = Color3.fromRGB(125, 45, 230),
    BtnBg        = Color3.fromRGB(18,  60, 205),
    BtnBorder    = Color3.fromRGB(125, 45, 230),
    Success      = Color3.fromRGB(45, 200, 110),
    Warning      = Color3.fromRGB(255,185,  40),
    Danger       = Color3.fromRGB(240, 58,  58),
    Gold         = Color3.fromRGB(255,210,  40),
}

-- â”€â”€ COUNTRIES â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local Countries = {
    {name="United States",  code="US",  flag={"#B22234","#FFFFFF","#3C3B6E"}, region="us-east"   },
    {name="United Kingdom", code="GB",  flag={"#012169","#C8102E","#FFFFFF"}, region="eu-west"   },
    {name="Japan",          code="JP",  flag={"#BC002D","#FFFFFF","#BC002D"}, region="ap-se"     },
    {name="Germany",        code="DE",  flag={"#000000","#DD0000","#FFCE00"}, region="eu-central"},
    {name="France",         code="FR",  flag={"#002395","#FFFFFF","#ED2939"}, region="eu-west"   },
    {name="Brazil",         code="BR",  flag={"#009C3B","#FFDF00","#002776"}, region="sa-east"   },
    {name="Australia",      code="AU",  flag={"#012169","#E8112D","#FFFFFF"}, region="ap-se"     },
    {name="Canada",         code="CA",  flag={"#FF0000","#FFFFFF","#FF0000"}, region="us-east"   },
    {name="South Korea",    code="KR",  flag={"#FFFFFF","#003478","#CD2E3A"}, region="ap-ne"     },
    {name="Mexico",         code="MX",  flag={"#006847","#FFFFFF","#CE1126"}, region="us-central"},
    {name="India",          code="IN",  flag={"#FF9933","#FFFFFF","#138808"}, region="ap-south"  },
    {name="Russia",         code="RU",  flag={"#FFFFFF","#0039A6","#D52B1E"}, region="eu-east"   },
    {name="Spain",          code="ES",  flag={"#AA151B","#F1BF00","#AA151B"}, region="eu-west"   },
    {name="Italy",          code="IT",  flag={"#009246","#FFFFFF","#CE2B37"}, region="eu-central"},
    {name="Philippines",    code="PH",  flag={"#0038A8","#CE1126","#FFFFFF"}, region="ap-se"     },
    {name="Indonesia",      code="ID",  flag={"#CE1126","#FFFFFF","#CE1126"}, region="ap-se"     },
    {name="Netherlands",    code="NL",  flag={"#AE1C28","#FFFFFF","#21468B"}, region="eu-west"   },
    {name="Poland",         code="PL",  flag={"#FFFFFF","#DC143C","#FFFFFF"}, region="eu-central"},
    {name="Turkey",         code="TR",  flag={"#E30A17","#FFFFFF","#E30A17"}, region="eu-south"  },
    {name="Argentina",      code="AR",  flag={"#74ACDF","#FFFFFF","#74ACDF"}, region="sa-east"   },
    {name="Saudi Arabia",   code="SA",  flag={"#006C35","#FFFFFF","#006C35"}, region="me-south"  },
    {name="Egypt",          code="EG",  flag={"#CE1126","#FFFFFF","#000000"}, region="me-south"  },
    {name="Nigeria",        code="NG",  flag={"#008751","#FFFFFF","#008751"}, region="af-south"  },
    {name="South Africa",   code="ZA",  flag={"#007A4D","#FFB612","#DE3831"}, region="af-south"  },
    {name="Sweden",         code="SE",  flag={"#006AA7","#FECC02","#006AA7"}, region="eu-north"  },
    {name="Norway",         code="NO",  flag={"#EF2B2D","#FFFFFF","#002868"}, region="eu-north"  },
    {name="Thailand",       code="TH",  flag={"#A51931","#FFFFFF","#2D2A4A"}, region="ap-se"     },
    {name="Vietnam",        code="VN",  flag={"#DA251D","#FFFF00","#DA251D"}, region="ap-se"     },
    {name="Malaysia",       code="MY",  flag={"#CC0001","#FFFFFF","#010066"}, region="ap-se"     },
    {name="Singapore",      code="SG",  flag={"#EF3340","#FFFFFF","#EF3340"}, region="ap-se"     },
}

-- â”€â”€ STATE â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local Favorites       = {}
local BlockedServers  = {}
local IsFreshHopping  = false
local FreshThread     = nil
local ServersChecked  = 0
local CurrentCountry  = nil
local ActiveTab       = "regions"

-- â”€â”€ HELPERS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local function hexColor(h)
    h = h:gsub("#","")
    return Color3.new(
        tonumber(h:sub(1,2),16)/255,
        tonumber(h:sub(3,4),16)/255,
        tonumber(h:sub(5,6),16)/255
    )
end

local function tw(obj, props, t, style, dir)
    TweenService:Create(obj, TweenInfo.new(
        t or 0.22,
        style or Enum.EasingStyle.Quart,
        dir  or Enum.EasingDirection.Out
    ), props):Play()
end

local function corner(p, r)
    local c = Instance.new("UICorner", p)
    c.CornerRadius = UDim.new(0, r or 8)
    return c
end

local function stroke(p, col, thick, trans)
    local s = Instance.new("UIStroke", p)
    s.Color = col or T.Border
    s.Thickness = thick or 1.5
    s.Transparency = trans or 0
    return s
end

local function countBlocked()
    local n = 0
    for _ in pairs(BlockedServers) do n += 1 end
    return n
end

-- â”€â”€ DRAGGABLE HELPER â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local function makeDraggable(frame, handle)
    local dragging, moved = false, false
    local dragStart, startPos, dragInput = nil, nil, nil

    handle.InputBegan:Connect(function(inp)
        if inp.UserInputType == Enum.UserInputType.Touch
        or inp.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging  = true
            moved     = false
            dragStart = inp.Position
            startPos  = frame.Position
            inp.Changed:Connect(function()
                if inp.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    handle.InputChanged:Connect(function(inp)
        if inp.UserInputType == Enum.UserInputType.Touch
        or inp.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = inp
        end
    end)

    UserInputService.InputChanged:Connect(function(inp)
        if dragging and dragInput and inp == dragInput then
            local d = inp.Position - dragStart
            if math.abs(d.X) > 5 or math.abs(d.Y) > 5 then moved = true end
            if moved then
                frame.Position = UDim2.new(
                    startPos.X.Scale, startPos.X.Offset + d.X,
                    startPos.Y.Scale, startPos.Y.Offset + d.Y
                )
            end
        end
    end)

    return function() return moved end
end

-- â”€â”€ API â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local function fetchServers(cursor)
    local url = ("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&excludeFullGames=false&limit=100"):format(PlaceId)
    if cursor then url = url.."&cursor="..cursor end
    local ok, raw = pcall(game.HttpGet, game, url)
    if not ok then return {}, nil end
    local ok2, data = pcall(HttpService.JSONDecode, HttpService, raw)
    if not ok2 or not data then return {}, nil end
    return data.data or {}, data.nextPageCursor
end

local function doJoin(serverId)
    pcall(TeleportService.TeleportToPlaceInstance, TeleportService, PlaceId, serverId, LP)
end

-- â”€â”€ SCREEN GUI â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local SG = Instance.new("ScreenGui")
SG.Name            = "GeoHop"
SG.ResetOnSpawn    = false
SG.DisplayOrder    = 999
SG.IgnoreGuiInset  = true
SG.ZIndexBehavior  = Enum.ZIndexBehavior.Sibling
if not pcall(function() SG.Parent = gethui() end) then
    SG.Parent = LP.PlayerGui
end

-- â”€â”€ BUBBLE (minimised) â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local Bubble = Instance.new("Frame")
Bubble.Name            = "Bubble"
Bubble.Size            = UDim2.new(0, 52, 0, 52)
Bubble.Position        = UDim2.new(0, 18, 0.68, 0)
Bubble.BackgroundColor3= T.BG
Bubble.BorderSizePixel = 0
Bubble.ZIndex          = 100
Bubble.Visible         = false
Bubble.Parent          = SG
corner(Bubble, 26)
stroke(Bubble, T.Blue, 2)

-- Glow ring behind bubble
local BubbleGlow = Instance.new("Frame")
BubbleGlow.Size               = UDim2.new(1, 12, 1, 12)
BubbleGlow.AnchorPoint        = Vector2.new(.5,.5)
BubbleGlow.Position           = UDim2.new(.5,0,.5,0)
BubbleGlow.BackgroundColor3   = T.Blue
BubbleGlow.BackgroundTransparency = 0.76
BubbleGlow.BorderSizePixel    = 0
BubbleGlow.ZIndex             = 99
BubbleGlow.Parent             = Bubble
corner(BubbleGlow, 32)

-- Globe icon frame on bubble
local BubIcon = Instance.new("Frame")
BubIcon.Size            = UDim2.new(0,28,0,28)
BubIcon.AnchorPoint     = Vector2.new(.5,.5)
BubIcon.Position        = UDim2.new(.5,0,.5,0)
BubIcon.BackgroundTransparency = 1
BubIcon.ZIndex          = 101
BubIcon.Parent          = Bubble

-- Bubble is draggable AND tap-to-open
local bubDragging, bubMoved = false, false
local bubStart, bubStartPos, bubDragInp = nil, nil, nil

Bubble.InputBegan:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.Touch
    or inp.UserInputType == Enum.UserInputType.MouseButton1 then
        bubDragging = true; bubMoved = false
        bubStart = inp.Position; bubStartPos = Bubble.Position
        inp.Changed:Connect(function()
            if inp.UserInputState == Enum.UserInputState.End then
                bubDragging = false
                if not bubMoved then
                    -- TAP â†’ open window
                    Bubble.Visible = false
                    local Win = SG:FindFirstChild("GeoHopWin")
                    if Win then
                        Win.Visible = true
                        Win.Size = UDim2.new(0,0,0,0)
                        tw(Win, {Size=UDim2.new(0,285,0,385)}, 0.28, Enum.EasingStyle.Back)
                    end
                end
            end
        end)
    end
end)

Bubble.InputChanged:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.Touch
    or inp.UserInputType == Enum.UserInputType.MouseMovement then
        bubDragInp = inp
    end
end)

UserInputService.InputChanged:Connect(function(inp)
    if bubDragging and bubDragInp and inp == bubDragInp then
        local d = inp.Position - bubStart
        if math.abs(d.X)>6 or math.abs(d.Y)>6 then bubMoved = true end
        if bubMoved then
            Bubble.Position = UDim2.new(
                bubStartPos.X.Scale, bubStartPos.X.Offset + d.X,
                bubStartPos.Y.Scale, bubStartPos.Y.Offset + d.Y
            )
        end
    end
end)

-- â”€â”€ MAIN WINDOW â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local Win = Instance.new("Frame")
Win.Name              = "GeoHopWin"
Win.Size              = UDim2.new(0,285,0,385)
Win.AnchorPoint       = Vector2.new(.5,.5)
Win.Position          = UDim2.new(.5,0,.5,0)
Win.BackgroundColor3  = T.BG
Win.BorderSizePixel   = 0
Win.ZIndex            = 10
Win.ClipsDescendants  = true
Win.Parent            = SG
corner(Win, 13)
stroke(Win, T.Border, 2)

-- Subtle background gradient
local WinGrad = Instance.new("UIGradient")
WinGrad.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0,   Color3.fromRGB(5,4,22)),
    ColorSequenceKeypoint.new(.5,  Color3.fromRGB(4,3,16)),
    ColorSequenceKeypoint.new(1,   Color3.fromRGB(7,5,26)),
})
WinGrad.Rotation = 135
WinGrad.Parent   = Win

-- â”€â”€ HEADER â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local Hdr = Instance.new("Frame")
Hdr.Size              = UDim2.new(1,0,0,40)
Hdr.BackgroundColor3  = Color3.fromRGB(6,4,22)
Hdr.BorderSizePixel   = 0
Hdr.ZIndex            = 11
Hdr.Parent            = Win
corner(Hdr, 13)

-- Flatten bottom corners of header
local HdrBot = Instance.new("Frame")
HdrBot.Size             = UDim2.new(1,0,.5,0)
HdrBot.Position         = UDim2.new(0,0,.5,0)
HdrBot.BackgroundColor3 = Color3.fromRGB(6,4,22)
HdrBot.BorderSizePixel  = 0
HdrBot.ZIndex           = 11
HdrBot.Parent           = Hdr

-- Header bottom line
local HdrLine = Instance.new("Frame")
HdrLine.Size              = UDim2.new(1,0,0,1)
HdrLine.Position          = UDim2.new(0,0,1,-1)
HdrLine.BackgroundColor3  = T.BorderP
HdrLine.BackgroundTransparency = 0.35
HdrLine.BorderSizePixel   = 0
HdrLine.ZIndex            = 12
HdrLine.Parent            = Hdr

-- Title with gradient
local HdrTitle = Instance.new("TextLabel")
HdrTitle.Size              = UDim2.new(1,-68,1,0)
HdrTitle.Position          = UDim2.new(0,12,0,0)
HdrTitle.BackgroundTransparency = 1
HdrTitle.Text              = "GeoHop"
HdrTitle.TextColor3        = T.Text
HdrTitle.TextSize          = 15
HdrTitle.Font              = Enum.Font.GothamBold
HdrTitle.TextXAlignment    = Enum.TextXAlignment.Left
HdrTitle.ZIndex            = 12
HdrTitle.Parent            = Hdr

local TGrad = Instance.new("UIGradient")
TGrad.Color    = ColorSequence.new(T.BlueL, T.PurpleL)
TGrad.Rotation = 0
TGrad.Parent   = HdrTitle

-- Minimise button
local MinBtn = Instance.new("TextButton")
MinBtn.Size              = UDim2.new(0,28,0,28)
MinBtn.Position          = UDim2.new(1,-36,.5,-14)
MinBtn.BackgroundColor3  = Color3.fromRGB(10,7,34)
MinBtn.Text              = "â€“"
MinBtn.TextColor3        = T.BlueL
MinBtn.TextSize          = 17
MinBtn.Font              = Enum.Font.GothamBold
MinBtn.BorderSizePixel   = 0
MinBtn.ZIndex            = 13
MinBtn.Parent            = Hdr
corner(MinBtn, 7)
stroke(MinBtn, T.BtnBorder, 1.5)

-- Window drag
makeDraggable(Win, Hdr)

-- â”€â”€ TAB BAR â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local TabBar = Instance.new("Frame")
TabBar.Size             = UDim2.new(1,0,0,40)
TabBar.Position         = UDim2.new(0,0,0,40)
TabBar.BackgroundColor3 = Color3.fromRGB(5,4,18)
TabBar.BorderSizePixel  = 0
TabBar.ZIndex           = 11
TabBar.Parent           = Win

local TabLine = Instance.new("Frame")
TabLine.Size              = UDim2.new(1,0,0,1)
TabLine.Position          = UDim2.new(0,0,1,-1)
TabLine.BackgroundColor3  = T.Border
TabLine.BackgroundTransparency = 0.65
TabLine.BorderSizePixel   = 0
TabLine.ZIndex            = 12
TabLine.Parent            = TabBar

-- Sliding active indicator
local TabSlider = Instance.new("Frame")
TabSlider.Size            = UDim2.new(0,95,0,2)
TabSlider.Position        = UDim2.new(0,0,1,-2)
TabSlider.BackgroundColor3= T.Blue
TabSlider.BorderSizePixel = 0
TabSlider.ZIndex          = 13
TabSlider.Parent          = TabBar
corner(TabSlider, 2)

local SliderGrad = Instance.new("UIGradient")
SliderGrad.Color  = ColorSequence.new(T.Blue, T.Purple)
SliderGrad.Parent = TabSlider

-- Tab button factory
local function makeTabBtn(label, xOff)
    local btn = Instance.new("TextButton")
    btn.Size              = UDim2.new(0,95,1,0)
    btn.Position          = UDim2.new(0,xOff,0,0)
    btn.BackgroundTransparency = 1
    btn.Text              = ""
    btn.ZIndex            = 12
    btn.Parent            = TabBar

    local ico = Instance.new("Frame")
    ico.Size          = UDim2.new(0,18,0,18)
    ico.AnchorPoint   = Vector2.new(.5,.5)
    ico.Position      = UDim2.new(.5,0,.42,0)
    ico.BackgroundTransparency = 1
    ico.ZIndex        = 13
    ico.Parent        = btn

    local lbl = Instance.new("TextLabel")
    lbl.Size              = UDim2.new(1,0,0,10)
    lbl.Position          = UDim2.new(0,0,1,-11)
    lbl.BackgroundTransparency = 1
    lbl.Text              = label
    lbl.TextColor3        = T.TextDim
    lbl.TextSize          = 8
    lbl.Font              = Enum.Font.Gotham
    lbl.ZIndex            = 13
    lbl.Parent            = btn

    return btn, ico, lbl
end

local TBRegions, TBRegIco, TBRegLbl = makeTabBtn("Regions",   0)
local TBFavs,   TBFavIco, TBFavLbl  = makeTabBtn("Favorites", 95)
local TBFresh,  TBFrIco,  TBFrLbl   = makeTabBtn("Fresh",     190)

-- â”€â”€ ICON DRAWING â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
-- Globe (drawn with frames â€” NOT an emoji)
local function drawGlobe(parent, col)
    local z = parent.ZIndex + 1
    -- Outer circle
    local oc = Instance.new("Frame")
    oc.Size = UDim2.new(1,0,1,0)
    oc.BackgroundTransparency = 1
    oc.BorderSizePixel = 0
    oc.ZIndex = z
    oc.Parent = parent
    corner(oc, 50)
    local ocS = stroke(oc, col, 1.5)

    -- Horizontal equator line
    local hl = Instance.new("Frame")
    hl.Size = UDim2.new(1,-2,0,1.5)
    hl.AnchorPoint = Vector2.new(.5,.5)
    hl.Position = UDim2.new(.5,0,.5,0)
    hl.BackgroundColor3 = col
    hl.BorderSizePixel  = 0
    hl.ZIndex = z
    hl.Parent = parent

    -- Vertical meridian line
    local vl = Instance.new("Frame")
    vl.Size = UDim2.new(0,1.5,1,-2)
    vl.AnchorPoint = Vector2.new(.5,.5)
    vl.Position = UDim2.new(.5,0,.5,0)
    vl.BackgroundColor3 = col
    vl.BorderSizePixel  = 0
    vl.ZIndex = z
    vl.Parent = parent

    -- Inner oval / longitude arc
    local ov = Instance.new("Frame")
    ov.Size = UDim2.new(.48,0,.98,0)
    ov.AnchorPoint = Vector2.new(.5,.5)
    ov.Position = UDim2.new(.5,0,.5,0)
    ov.BackgroundTransparency = 1
    ov.BorderSizePixel = 0
    ov.ZIndex = z
    ov.Parent = parent
    corner(ov, 50)
    stroke(ov, col, 1.5)

    return oc, ocS
end

-- Star (drawn with rotated pill frames â€” NOT an emoji)
local function drawStar(parent, col)
    local z = parent.ZIndex + 1
    for i = 0, 4 do
        local ray = Instance.new("Frame")
        ray.AnchorPoint       = Vector2.new(.5, 1)
        ray.Size              = UDim2.new(.18,0,.52,0)
        ray.Position          = UDim2.new(.5,0,.5,0)
        ray.BackgroundColor3  = col
        ray.BorderSizePixel   = 0
        ray.ZIndex            = z
        ray.Rotation          = i * 72
        ray.Parent            = parent
        corner(ray, 99)
    end
    local ctr = Instance.new("Frame")
    ctr.Size           = UDim2.new(.22,0,.22,0)
    ctr.AnchorPoint    = Vector2.new(.5,.5)
    ctr.Position       = UDim2.new(.5,0,.5,0)
    ctr.BackgroundColor3 = col
    ctr.BorderSizePixel = 0
    ctr.ZIndex         = z + 1
    ctr.Parent         = parent
    corner(ctr, 99)
end

-- Refresh / cycle arrows (drawn with frames â€” NOT an emoji)
local function drawRefresh(parent, col)
    local z = parent.ZIndex + 1
    -- Circle arc
    local arc = Instance.new("Frame")
    arc.Size = UDim2.new(.9,0,.9,0)
    arc.AnchorPoint = Vector2.new(.5,.5)
    arc.Position    = UDim2.new(.5,0,.5,0)
    arc.BackgroundTransparency = 1
    arc.BorderSizePixel = 0
    arc.ZIndex = z
    arc.Parent = parent
    corner(arc, 99)
    stroke(arc, col, 2)

    -- Top-right arrow head
    local aT = Instance.new("Frame")
    aT.Size = UDim2.new(.3,0,.3,0)
    aT.AnchorPoint = Vector2.new(.5,.5)
    aT.Position = UDim2.new(.82,0,.18,0)
    aT.BackgroundColor3 = col
    aT.BorderSizePixel  = 0
    aT.ZIndex = z + 1
    aT.Rotation = -45
    aT.Parent = parent
    corner(aT, 2)

    -- Bottom-left arrow head
    local aB = Instance.new("Frame")
    aB.Size = UDim2.new(.3,0,.3,0)
    aB.AnchorPoint = Vector2.new(.5,.5)
    aB.Position = UDim2.new(.18,0,.82,0)
    aB.BackgroundColor3 = col
    aB.BorderSizePixel  = 0
    aB.ZIndex = z + 1
    aB.Rotation = 135
    aB.Parent = parent
    corner(aB, 2)
end

-- Populate tab icons
drawGlobe(TBRegIco,   T.Blue)
drawStar(TBFavIco,    T.TextDim)
drawRefresh(TBFrIco,  T.TextDim)

-- Globe on bubble
drawGlobe(BubIcon, T.Blue)

-- â”€â”€ CONTENT AREA â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local Content = Instance.new("Frame")
Content.Size             = UDim2.new(1,0,1,-80)
Content.Position         = UDim2.new(0,0,0,80)
Content.BackgroundTransparency = 1
Content.ZIndex           = 11
Content.ClipsDescendants = true
Content.Parent           = Win

-- Page factory
local function mkPage(name)
    local p = Instance.new("Frame")
    p.Name    = name
    p.Size    = UDim2.new(1,0,1,0)
    p.BackgroundTransparency = 1
    p.ZIndex  = 12
    p.Visible = false
    p.Parent  = Content
    return p
end

-- â”€â”€ PAGE 1: REGIONS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local PgRegions = mkPage("Regions")

-- Sub-header row
local RegSubHdr = Instance.new("Frame")
RegSubHdr.Size             = UDim2.new(1,0,0,30)
RegSubHdr.BackgroundTransparency = 1
RegSubHdr.ZIndex           = 12
RegSubHdr.Parent           = PgRegions

local RegSubTitle = Instance.new("TextLabel")
RegSubTitle.Size              = UDim2.new(1,-80,1,0)
RegSubTitle.Position          = UDim2.new(0,10,0,0)
RegSubTitle.BackgroundTransparency = 1
RegSubTitle.Text              = "Choose a country"
RegSubTitle.TextColor3        = T.TextDim
RegSubTitle.TextSize          = 10
RegSubTitle.Font              = Enum.Font.Gotham
RegSubTitle.TextXAlignment    = Enum.TextXAlignment.Left
RegSubTitle.ZIndex            = 13
RegSubTitle.Parent            = RegSubHdr

-- Home button (go back to original server)
local HomeBtn = Instance.new("TextButton")
HomeBtn.Size              = UDim2.new(0,58,0,22)
HomeBtn.Position          = UDim2.new(1,-64,.5,-11)
HomeBtn.BackgroundColor3  = T.BtnBg
HomeBtn.Text              = "Home"
HomeBtn.TextColor3        = Color3.fromRGB(255,255,255)
HomeBtn.TextSize          = 9
HomeBtn.Font              = Enum.Font.GothamBold
HomeBtn.BorderSizePixel   = 0
HomeBtn.ZIndex            = 13
HomeBtn.Parent            = RegSubHdr
corner(HomeBtn, 6)
stroke(HomeBtn, T.BtnBorder, 1.5)

-- Countries scroll list
local RegScroll = Instance.new("ScrollingFrame")
RegScroll.Size                = UDim2.new(1,0,1,-30)
RegScroll.Position            = UDim2.new(0,0,0,30)
RegScroll.BackgroundTransparency = 1
RegScroll.BorderSizePixel     = 0
RegScroll.ScrollBarThickness  = 3
RegScroll.ScrollBarImageColor3= T.Purple
RegScroll.CanvasSize          = UDim2.new(0,0,0,0)
RegScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
RegScroll.ZIndex              = 12
RegScroll.Parent              = PgRegions

local RegLayout = Instance.new("UIListLayout", RegScroll)
RegLayout.Padding              = UDim.new(0,3)
RegLayout.HorizontalAlignment  = Enum.HorizontalAlignment.Center

local RegPad = Instance.new("UIPadding", RegScroll)
RegPad.PaddingLeft   = UDim.new(0,6)
RegPad.PaddingRight  = UDim.new(0,6)
RegPad.PaddingTop    = UDim.new(0,3)
RegPad.PaddingBottom = UDim.new(0,3)

-- â”€â”€ PAGE 2: SERVERS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local PgServers = mkPage("Servers")

local SrvSubHdr = Instance.new("Frame")
SrvSubHdr.Size             = UDim2.new(1,0,0,34)
SrvSubHdr.BackgroundTransparency = 1
SrvSubHdr.ZIndex           = 12
SrvSubHdr.Parent           = PgServers

-- Back button
local BackBtn = Instance.new("TextButton")
BackBtn.Size              = UDim2.new(0,28,0,26)
BackBtn.Position          = UDim2.new(0,6,.5,-13)
BackBtn.BackgroundColor3  = Color3.fromRGB(10,7,32)
BackBtn.Text              = "â€¹"
BackBtn.TextColor3        = T.Blue
BackBtn.TextSize          = 22
BackBtn.Font              = Enum.Font.GothamBold
BackBtn.BorderSizePixel   = 0
BackBtn.ZIndex            = 13
BackBtn.Parent            = SrvSubHdr
corner(BackBtn, 6)
stroke(BackBtn, T.BtnBorder, 1.5)

local SrvTitle = Instance.new("TextLabel")
SrvTitle.Size              = UDim2.new(1,-110,1,0)
SrvTitle.Position          = UDim2.new(0,40,0,0)
SrvTitle.BackgroundTransparency = 1
SrvTitle.Text              = "Servers"
SrvTitle.TextColor3        = T.Text
SrvTitle.TextSize          = 12
SrvTitle.Font              = Enum.Font.GothamBold
SrvTitle.TextXAlignment    = Enum.TextXAlignment.Left
SrvTitle.ZIndex            = 13
SrvTitle.Parent            = SrvSubHdr

local SrvCount = Instance.new("TextLabel")
SrvCount.Size              = UDim2.new(0,68,1,0)
SrvCount.Position          = UDim2.new(1,-72,0,0)
SrvCount.BackgroundTransparency = 1
SrvCount.Text              = ""
SrvCount.TextColor3        = T.TextDim
SrvCount.TextSize          = 9
SrvCount.Font              = Enum.Font.Gotham
SrvCount.ZIndex            = 13
SrvCount.Parent            = SrvSubHdr

local SrvScroll = Instance.new("ScrollingFrame")
SrvScroll.Size                = UDim2.new(1,0,1,-34)
SrvScroll.Position            = UDim2.new(0,0,0,34)
SrvScroll.BackgroundTransparency = 1
SrvScroll.BorderSizePixel     = 0
SrvScroll.ScrollBarThickness  = 3
SrvScroll.ScrollBarImageColor3= T.Purple
SrvScroll.CanvasSize          = UDim2.new(0,0,0,0)
SrvScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
SrvScroll.ZIndex              = 12
SrvScroll.Parent              = PgServers

local SrvLayout = Instance.new("UIListLayout", SrvScroll)
SrvLayout.Padding             = UDim.new(0,3)
SrvLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

local SrvPad = Instance.new("UIPadding", SrvScroll)
SrvPad.PaddingLeft   = UDim.new(0,6)
SrvPad.PaddingRight  = UDim.new(0,6)
SrvPad.PaddingTop    = UDim.new(0,3)
SrvPad.PaddingBottom = UDim.new(0,3)

local SrvLoadLbl = Instance.new("TextLabel")
SrvLoadLbl.Size              = UDim2.new(1,0,0,50)
SrvLoadLbl.BackgroundTransparency = 1
SrvLoadLbl.Text              = "Fetching servers..."
SrvLoadLbl.TextColor3        = T.TextDim
SrvLoadLbl.TextSize          = 11
SrvLoadLbl.Font              = Enum.Font.Gotham
SrvLoadLbl.ZIndex            = 13
SrvLoadLbl.Visible           = false
SrvLoadLbl.Parent            = SrvScroll

-- â”€â”€ PAGE 3: FAVORITES â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local PgFavs = mkPage("Favorites")

local FavTopLbl = Instance.new("TextLabel")
FavTopLbl.Size              = UDim2.new(1,-20,0,28)
FavTopLbl.Position          = UDim2.new(0,10,0,2)
FavTopLbl.BackgroundTransparency = 1
FavTopLbl.Text              = "Favorite Servers"
FavTopLbl.TextColor3        = T.Text
FavTopLbl.TextSize          = 12
FavTopLbl.Font              = Enum.Font.GothamBold
FavTopLbl.TextXAlignment    = Enum.TextXAlignment.Left
FavTopLbl.ZIndex            = 13
FavTopLbl.Parent            = PgFavs

-- Save current server button
local SaveBtn = Instance.new("TextButton")
SaveBtn.Size              = UDim2.new(1,-12,0,28)
SaveBtn.Position          = UDim2.new(0,6,0,30)
SaveBtn.BackgroundColor3  = T.BtnBg
SaveBtn.Text              = "+ Save Current Server"
SaveBtn.TextColor3        = Color3.fromRGB(255,255,255)
SaveBtn.TextSize          = 10
SaveBtn.Font              = Enum.Font.GothamBold
SaveBtn.BorderSizePixel   = 0
SaveBtn.ZIndex            = 13
SaveBtn.Parent            = PgFavs
corner(SaveBtn, 7)
stroke(SaveBtn, T.BtnBorder, 1.5)

local FavScroll = Instance.new("ScrollingFrame")
FavScroll.Size                = UDim2.new(1,0,1,-62)
FavScroll.Position            = UDim2.new(0,0,0,62)
FavScroll.BackgroundTransparency = 1
FavScroll.BorderSizePixel     = 0
FavScroll.ScrollBarThickness  = 3
FavScroll.ScrollBarImageColor3= T.Purple
FavScroll.CanvasSize          = UDim2.new(0,0,0,0)
FavScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
FavScroll.ZIndex              = 12
FavScroll.Parent              = PgFavs

local FavLayout = Instance.new("UIListLayout", FavScroll)
FavLayout.Padding             = UDim.new(0,3)
FavLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

local FavPad = Instance.new("UIPadding", FavScroll)
FavPad.PaddingLeft   = UDim.new(0,6)
FavPad.PaddingRight  = UDim.new(0,6)
FavPad.PaddingTop    = UDim.new(0,3)
FavPad.PaddingBottom = UDim.new(0,3)

local NoFavLbl = Instance.new("TextLabel")
NoFavLbl.Size              = UDim2.new(1,0,0,56)
NoFavLbl.BackgroundTransparency = 1
NoFavLbl.Text              = "No favorites yet.\nJoin a server and tap â˜… to save it!"
NoFavLbl.TextColor3        = T.TextDim
NoFavLbl.TextSize          = 10
NoFavLbl.Font              = Enum.Font.Gotham
NoFavLbl.TextWrapped       = true
NoFavLbl.ZIndex            = 13
NoFavLbl.Parent            = FavScroll

-- â”€â”€ PAGE 4: FRESH SERVER â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local PgFresh = mkPage("Fresh")

local FrTitle = Instance.new("TextLabel")
FrTitle.Size              = UDim2.new(1,-20,0,26)
FrTitle.Position          = UDim2.new(0,10,0,4)
FrTitle.BackgroundTransparency = 1
FrTitle.Text              = "Fresh Server Finder"
FrTitle.TextColor3        = T.Text
FrTitle.TextSize          = 12
FrTitle.Font              = Enum.Font.GothamBold
FrTitle.TextXAlignment    = Enum.TextXAlignment.Left
FrTitle.ZIndex            = 13
FrTitle.Parent            = PgFresh

local FrDesc = Instance.new("TextLabel")
FrDesc.Size              = UDim2.new(1,-20,0,36)
FrDesc.Position          = UDim2.new(0,10,0,32)
FrDesc.BackgroundTransparency = 1
FrDesc.Text              = "Auto-hops until it finds a server where you are the only player. Visited servers are temporarily blocked."
FrDesc.TextColor3        = T.TextDim
FrDesc.TextSize          = 9
FrDesc.Font              = Enum.Font.Gotham
FrDesc.TextWrapped       = true
FrDesc.TextXAlignment    = Enum.TextXAlignment.Left
FrDesc.ZIndex            = 13
FrDesc.Parent            = PgFresh

-- Status box
local FrBox = Instance.new("Frame")
FrBox.Size              = UDim2.new(1,-16,0,68)
FrBox.Position          = UDim2.new(0,8,0,74)
FrBox.BackgroundColor3  = Color3.fromRGB(7,5,22)
FrBox.BorderSizePixel   = 0
FrBox.ZIndex            = 13
FrBox.Parent            = PgFresh
corner(FrBox, 8)
stroke(FrBox, T.Border, 1, 0.55)

local FrStatus = Instance.new("TextLabel")
FrStatus.Size              = UDim2.new(1,-16,1,0)
FrStatus.Position          = UDim2.new(0,8,0,0)
FrStatus.BackgroundTransparency = 1
FrStatus.Text              = "Status: Idle\nChecked: 0 servers\nBlocked: 0 servers"
FrStatus.TextColor3        = T.Text
FrStatus.TextSize          = 10
FrStatus.Font              = Enum.Font.Gotham
FrStatus.TextXAlignment    = Enum.TextXAlignment.Left
FrStatus.TextYAlignment    = Enum.TextYAlignment.Center
FrStatus.ZIndex            = 14
FrStatus.Parent            = FrBox

-- Progress bar
local FrBarBg = Instance.new("Frame")
FrBarBg.Size              = UDim2.new(1,-16,0,5)
FrBarBg.Position          = UDim2.new(0,8,0,150)
FrBarBg.BackgroundColor3  = Color3.fromRGB(13,11,36)
FrBarBg.BorderSizePixel   = 0
FrBarBg.ZIndex            = 13
FrBarBg.Parent            = PgFresh
corner(FrBarBg, 3)

local FrBarFill = Instance.new("Frame")
FrBarFill.Size            = UDim2.new(0,0,1,0)
FrBarFill.BackgroundColor3= T.Blue
FrBarFill.BorderSizePixel = 0
FrBarFill.ZIndex          = 14
FrBarFill.Parent          = FrBarBg
corner(FrBarFill, 3)

local FrFillGrad = Instance.new("UIGradient")
FrFillGrad.Color  = ColorSequence.new(T.Blue, T.Purple)
FrFillGrad.Parent = FrBarFill

-- Start button
local FrStartBtn = Instance.new("TextButton")
FrStartBtn.Size              = UDim2.new(1,-16,0,34)
FrStartBtn.Position          = UDim2.new(0,8,0,162)
FrStartBtn.BackgroundColor3  = T.BtnBg
FrStartBtn.Text              = "Start Finding"
FrStartBtn.TextColor3        = Color3.fromRGB(255,255,255)
FrStartBtn.TextSize          = 12
FrStartBtn.Font              = Enum.Font.GothamBold
FrStartBtn.BorderSizePixel   = 0
FrStartBtn.ZIndex            = 13
FrStartBtn.Parent            = PgFresh
corner(FrStartBtn, 8)
stroke(FrStartBtn, T.BtnBorder, 1.5)

-- Stop button
local FrStopBtn = Instance.new("TextButton")
FrStopBtn.Size              = UDim2.new(1,-16,0,28)
FrStopBtn.Position          = UDim2.new(0,8,0,202)
FrStopBtn.BackgroundColor3  = Color3.fromRGB(58,10,10)
FrStopBtn.Text              = "Stop"
FrStopBtn.TextColor3        = Color3.fromRGB(255,90,90)
FrStopBtn.TextSize          = 11
FrStopBtn.Font              = Enum.Font.GothamBold
FrStopBtn.BorderSizePixel   = 0
FrStopBtn.ZIndex            = 13
FrStopBtn.Visible           = false
FrStopBtn.Parent            = PgFresh
corner(FrStopBtn, 7)
stroke(FrStopBtn, Color3.fromRGB(155,35,35), 1.5)

-- Clear blocked
local FrClearBtn = Instance.new("TextButton")
FrClearBtn.Size              = UDim2.new(1,-16,0,24)
FrClearBtn.Position          = UDim2.new(0,8,0,238)
FrClearBtn.BackgroundColor3  = Color3.fromRGB(11,9,28)
FrClearBtn.Text              = "Clear Blocked Servers"
FrClearBtn.TextColor3        = T.TextDim
FrClearBtn.TextSize          = 9
FrClearBtn.Font              = Enum.Font.Gotham
FrClearBtn.BorderSizePixel   = 0
FrClearBtn.ZIndex            = 13
FrClearBtn.Parent            = PgFresh
corner(FrClearBtn, 6)
stroke(FrClearBtn, T.BorderP, 1, 0.6)

-- â”€â”€ COUNTRYBALL DRAWING â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local function makeCountryball(parent, flagColors, sz, zi)
    -- Circular clipping container
    local circle = Instance.new("Frame")
    circle.Size              = UDim2.new(0,sz,0,sz)
    circle.BackgroundColor3  = hexColor(flagColors[1])
    circle.BorderSizePixel   = 0
    circle.ZIndex            = zi
    circle.ClipsDescendants  = true  -- clips bands to circle shape
    circle.Parent            = parent

    local cc = Instance.new("UICorner", circle)
    cc.CornerRadius = UDim.new(1, 0)  -- full circle

    local n = #flagColors
    for i = 2, n do
        local band = Instance.new("Frame")
        local bandH = 1 / n
        band.Size             = UDim2.new(1,0,bandH + 0.03,0)
        band.Position         = UDim2.new(0,0,(i-1)*bandH - 0.015,0)
        band.BackgroundColor3 = hexColor(flagColors[i])
        band.BorderSizePixel  = 0
        band.ZIndex           = zi + 1
        band.Parent           = circle
    end

    stroke(circle, Color3.fromRGB(55,55,88), 1)
    return circle
end

-- â”€â”€ POPULATE COUNTRY BUTTONS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local openServerPage  -- forward declare
local refreshFavorites -- forward declare

for _, c in ipairs(Countries) do
    local btn = Instance.new("TextButton")
    btn.Size              = UDim2.new(1,0,0,38)
    btn.BackgroundColor3  = T.BGSec
    btn.BorderSizePixel   = 0
    btn.Text              = ""
    btn.ZIndex            = 13
    btn.Parent            = RegScroll
    corner(btn, 7)
    local btnS = stroke(btn, T.BtnBorder, 1, 0.72)

    -- Flag ball
    local ballWrap = Instance.new("Frame")
    ballWrap.Size              = UDim2.new(0,28,0,28)
    ballWrap.Position          = UDim2.new(0,6,.5,-14)
    ballWrap.BackgroundTransparency = 1
    ballWrap.ZIndex            = 14
    ballWrap.BorderSizePixel   = 0
    ballWrap.Parent            = btn

    makeCountryball(ballWrap, c.flag, 28, 14)

    -- Country code text on ball
    local codeL = Instance.new("TextLabel")
    codeL.Size              = UDim2.new(1,0,1,0)
    codeL.BackgroundTransparency = 1
    codeL.Text              = c.code
    codeL.TextColor3        = Color3.fromRGB(255,255,255)
    codeL.TextSize          = 6
    codeL.Font              = Enum.Font.GothamBold
    codeL.ZIndex            = 16
    codeL.TextStrokeTransparency = 0.25
    codeL.TextStrokeColor3  = Color3.fromRGB(0,0,0)
    codeL.Parent            = ballWrap

    -- Country name
    local nameL = Instance.new("TextLabel")
    nameL.Size              = UDim2.new(1,-105,1,0)
    nameL.Position          = UDim2.new(0,40,0,0)
    nameL.BackgroundTransparency = 1
    nameL.Text              = c.name
    nameL.TextColor3        = T.Text
    nameL.TextSize          = 11
    nameL.Font              = Enum.Font.Gotham
    nameL.TextXAlignment    = Enum.TextXAlignment.Left
    nameL.TextTruncate      = Enum.TextTruncate.AtEnd
    nameL.ZIndex            = 14
    nameL.Parent            = btn

    -- Region badge
    local badge = Instance.new("Frame")
    badge.Size              = UDim2.new(0,0,0,15)
    badge.AnchorPoint       = Vector2.new(1,.5)
    badge.Position          = UDim2.new(1,-5,.5,0)
    badge.BackgroundColor3  = Color3.fromRGB(9,7,26)
    badge.BorderSizePixel   = 0
    badge.AutomaticSize     = Enum.AutomaticSize.X
    badge.ZIndex            = 14
    badge.Parent            = btn
    corner(badge, 4)

    local bPad = Instance.new("UIPadding", badge)
    bPad.PaddingLeft  = UDim.new(0,4)
    bPad.PaddingRight = UDim.new(0,4)

    local bLbl = Instance.new("TextLabel")
    bLbl.Size              = UDim2.new(0,0,1,0)
    bLbl.AutomaticSize     = Enum.AutomaticSize.X
    bLbl.BackgroundTransparency = 1
    bLbl.Text              = c.region
    bLbl.TextColor3        = T.TextDim
    bLbl.TextSize          = 7
    bLbl.Font              = Enum.Font.Gotham
    bLbl.ZIndex            = 15
    bLbl.Parent            = badge

    btn.MouseEnter:Connect(function()
        tw(btn,  {BackgroundColor3 = Color3.fromRGB(13,10,38)}, .14)
        tw(btnS, {Transparency = 0.2}, .14)
    end)
    btn.MouseLeave:Connect(function()
        tw(btn,  {BackgroundColor3 = T.BGSec}, .14)
        tw(btnS, {Transparency = 0.72}, .14)
    end)

    local cap = c
    btn.MouseButton1Click:Connect(function()
        CurrentCountry = cap
        openServerPage(cap)
    end)
end

-- â”€â”€ SERVER CARD â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local function addServerCard(srv, idx)
    local card = Instance.new("TextButton")
    card.Size              = UDim2.new(1,0,0,52)
    card.BackgroundColor3  = T.BGSec
    card.BorderSizePixel   = 0
    card.Text              = ""
    card.ZIndex            = 13
    card.Parent            = SrvScroll
    corner(card, 7)
    local cS = stroke(card, T.BtnBorder, 1, 0.68)

    -- Index number
    local idxL = Instance.new("TextLabel")
    idxL.Size              = UDim2.new(0,22,1,0)
    idxL.Position          = UDim2.new(0,4,0,0)
    idxL.BackgroundTransparency = 1
    idxL.Text              = "#"..idx
    idxL.TextColor3        = T.TextDim
    idxL.TextSize          = 8
    idxL.Font              = Enum.Font.Gotham
    idxL.ZIndex            = 14
    idxL.Parent            = card

    local ratio = srv.playing / math.max(srv.maxPlayers, 1)
    local barCol = ratio > .8 and T.Danger or (ratio > .4 and T.Warning or T.Success)

    -- Player count text
    local playLbl = Instance.new("TextLabel")
    playLbl.Size              = UDim2.new(0,115,0,15)
    playLbl.Position          = UDim2.new(0,28,0,7)
    playLbl.BackgroundTransparency = 1
    playLbl.Text              = srv.playing.." / "..srv.maxPlayers.." players"
    playLbl.TextColor3        = barCol
    playLbl.TextSize          = 10
    playLbl.Font              = Enum.Font.GothamBold
    playLbl.TextXAlignment    = Enum.TextXAlignment.Left
    playLbl.ZIndex            = 14
    playLbl.Parent            = card

    -- Capacity bar background
    local bBg = Instance.new("Frame")
    bBg.Size              = UDim2.new(0,115,0,4)
    bBg.Position          = UDim2.new(0,28,0,24)
    bBg.BackgroundColor3  = Color3.fromRGB(17,14,42)
    bBg.BorderSizePixel   = 0
    bBg.ZIndex            = 14
    bBg.Parent            = card
    corner(bBg, 99)

    local bFill = Instance.new("Frame")
    bFill.Size            = UDim2.new(math.max(ratio,.02),0,1,0)
    bFill.BackgroundColor3= barCol
    bFill.BorderSizePixel = 0
    bFill.ZIndex          = 15
    bFill.Parent          = bBg
    corner(bFill, 99)

    -- Ping text
    local pingLbl = Instance.new("TextLabel")
    pingLbl.Size              = UDim2.new(0,90,0,13)
    pingLbl.Position          = UDim2.new(0,28,0,31)
    pingLbl.BackgroundTransparency = 1
    pingLbl.Text              = "~"..(srv.ping or "?").."ms"
    pingLbl.TextColor3        = T.TextDim
    pingLbl.TextSize          = 8
    pingLbl.Font              = Enum.Font.Gotham
    pingLbl.TextXAlignment    = Enum.TextXAlignment.Left
    pingLbl.ZIndex            = 14
    pingLbl.Parent            = card

    -- Save/favourite star
    local starBtn = Instance.new("TextButton")
    starBtn.Size              = UDim2.new(0,22,0,22)
    starBtn.Position          = UDim2.new(1,-116,.5,-11)
    starBtn.BackgroundColor3  = Color3.fromRGB(9,7,26)
    starBtn.Text              = "â˜…"
    starBtn.TextSize          = 13
    starBtn.Font              = Enum.Font.GothamBold
    starBtn.BorderSizePixel   = 0
    starBtn.ZIndex            = 15
    starBtn.Parent            = card
    corner(starBtn, 5)

    local saved = false
    for _, f in ipairs(Favorites) do
        if f.id == srv.id then saved = true; break end
    end
    starBtn.TextColor3 = saved and T.Gold or T.TextDim

    -- Join button
    local joinBtn = Instance.new("TextButton")
    joinBtn.Size              = UDim2.new(0,46,0,26)
    joinBtn.Position          = UDim2.new(1,-56,.5,-13)
    joinBtn.BackgroundColor3  = T.BtnBg
    joinBtn.Text              = "Join"
    joinBtn.TextColor3        = Color3.fromRGB(255,255,255)
    joinBtn.TextSize          = 10
    joinBtn.Font              = Enum.Font.GothamBold
    joinBtn.BorderSizePixel   = 0
    joinBtn.ZIndex            = 15
    joinBtn.Parent            = card
    corner(joinBtn, 6)
    stroke(joinBtn, T.BtnBorder, 1.5)

    card.MouseEnter:Connect(function()
        tw(card, {BackgroundColor3 = Color3.fromRGB(13,10,38)}, .14)
        tw(cS,   {Transparency = 0.2}, .14)
    end)
    card.MouseLeave:Connect(function()
        tw(card, {BackgroundColor3 = T.BGSec}, .14)
        tw(cS,   {Transparency = 0.68}, .14)
    end)

    local s = srv
    joinBtn.MouseButton1Click:Connect(function()
        joinBtn.Text = "..."
        doJoin(s.id)
        task.delay(3, function() if joinBtn.Parent then joinBtn.Text = "Join" end end)
    end)

    starBtn.MouseButton1Click:Connect(function()
        local found = nil
        for i, f in ipairs(Favorites) do
            if f.id == s.id then found = i; break end
        end
        if found then
            table.remove(Favorites, found)
            starBtn.TextColor3 = T.TextDim
        else
            table.insert(Favorites, {
                id        = s.id,
                name      = "Server "..(#Favorites + 1),
                playing   = s.playing,
                maxPlayers= s.maxPlayers,
                country   = CurrentCountry and CurrentCountry.name or "Unknown",
            })
            starBtn.TextColor3 = T.Gold
        end
        refreshFavorites()
    end)
end

-- â”€â”€ OPEN SERVER PAGE â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
openServerPage = function(country)
    PgRegions.Visible = false
    PgServers.Visible = true
    SrvTitle.Text     = country.name.." Servers"
    SrvCount.Text     = "Loading..."

    -- Clear old cards
    for _, ch in ipairs(SrvScroll:GetChildren()) do
        if ch ~= SrvLayout and ch ~= SrvPad and ch ~= SrvLoadLbl then
            ch:Destroy()
        end
    end

    SrvLoadLbl.Visible = true
    SrvLoadLbl.Text    = "Fetching servers..."

    task.spawn(function()
        local srvs, _ = fetchServers()
        SrvLoadLbl.Visible = false

        if #srvs == 0 then
            SrvLoadLbl.Visible = true
            SrvLoadLbl.Text    = "No servers found."
            SrvCount.Text      = "0 servers"
            return
        end

        -- Sort by least-full first
        table.sort(srvs, function(a, b) return a.playing < b.playing end)
        SrvCount.Text = #srvs.." servers"

        for i, s in ipairs(srvs) do
            addServerCard(s, i)
        end
    end)
end

-- â”€â”€ FAVORITES REFRESH â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
refreshFavorites = function()
    for _, ch in ipairs(FavScroll:GetChildren()) do
        if ch ~= FavLayout and ch ~= FavPad and ch ~= NoFavLbl then
            ch:Destroy()
        end
    end

    NoFavLbl.Visible = (#Favorites == 0)

    for i, fav in ipairs(Favorites) do
        local card = Instance.new("Frame")
        card.Size              = UDim2.new(1,0,0,52)
        card.BackgroundColor3  = T.BGSec
        card.BorderSizePixel   = 0
        card.ZIndex            = 13
        card.Parent            = FavScroll
        corner(card, 7)
        stroke(card, T.Gold, 1, 0.72)

        local starL = Instance.new("TextLabel")
        starL.Size              = UDim2.new(0,18,1,0)
        starL.Position          = UDim2.new(0,8,0,0)
        starL.BackgroundTransparency = 1
        starL.Text              = "â˜…"
        starL.TextColor3        = T.Gold
        starL.TextSize          = 15
        starL.Font              = Enum.Font.GothamBold
        starL.ZIndex            = 14
        starL.Parent            = card

        local nameL = Instance.new("TextLabel")
        nameL.Size              = UDim2.new(1,-135,0,17)
        nameL.Position          = UDim2.new(0,30,0,7)
        nameL.BackgroundTransparency = 1
        nameL.Text              = fav.name
        nameL.TextColor3        = T.Text
        nameL.TextSize          = 11
        nameL.Font              = Enum.Font.GothamBold
        nameL.TextXAlignment    = Enum.TextXAlignment.Left
        nameL.TextTruncate      = Enum.TextTruncate.AtEnd
        nameL.ZIndex            = 14
        nameL.Parent            = card

        local subL = Instance.new("TextLabel")
        subL.Size              = UDim2.new(1,-135,0,13)
        subL.Position          = UDim2.new(0,30,0,27)
        subL.BackgroundTransparency = 1
        subL.Text              = fav.playing.."/"..fav.maxPlayers.." Â· "..fav.country
        subL.TextColor3        = T.TextDim
        subL.TextSize          = 8
        subL.Font              = Enum.Font.Gotham
        subL.TextXAlignment    = Enum.TextXAlignment.Left
        subL.ZIndex            = 14
        subL.Parent            = card

        -- Join
        local jBtn = Instance.new("TextButton")
        jBtn.Size              = UDim2.new(0,42,0,23)
        jBtn.Position          = UDim2.new(1,-50,.5,-11)
        jBtn.BackgroundColor3  = T.BtnBg
        jBtn.Text              = "Join"
        jBtn.TextColor3        = Color3.fromRGB(255,255,255)
        jBtn.TextSize          = 9
        jBtn.Font              = Enum.Font.GothamBold
        jBtn.BorderSizePixel   = 0
        jBtn.ZIndex            = 15
        jBtn.Parent            = card
        corner(jBtn, 5)
        stroke(jBtn, T.BtnBorder, 1.5)

        -- Delete
        local dBtn = Instance.new("TextButton")
        dBtn.Size              = UDim2.new(0,22,0,22)
        dBtn.Position          = UDim2.new(1,-97,.5,-11)
        dBtn.BackgroundColor3  = Color3.fromRGB(52,8,8)
        dBtn.Text              = "âœ•"
        dBtn.TextColor3        = Color3.fromRGB(255,80,80)
        dBtn.TextSize          = 10
        dBtn.Font              = Enum.Font.GothamBold
        dBtn.BorderSizePixel   = 0
        dBtn.ZIndex            = 15
        dBtn.Parent            = card
        corner(dBtn, 5)
        stroke(dBtn, Color3.fromRGB(150,30,30), 1)

        -- Rename
        local rBtn = Instance.new("TextButton")
        rBtn.Size              = UDim2.new(0,52,0,13)
        rBtn.Position          = UDim2.new(0,30,1,-16)
        rBtn.BackgroundTransparency = 1
        rBtn.Text              = "âœŽ Rename"
        rBtn.TextColor3        = T.TextDim
        rBtn.TextSize          = 8
        rBtn.Font              = Enum.Font.Gotham
        rBtn.TextXAlignment    = Enum.TextXAlignment.Left
        rBtn.BorderSizePixel   = 0
        rBtn.ZIndex            = 15
        rBtn.Parent            = card

        local f, fi = fav, i

        jBtn.MouseButton1Click:Connect(function()
            doJoin(f.id)
        end)

        dBtn.MouseButton1Click:Connect(function()
            table.remove(Favorites, fi)
            refreshFavorites()
        end)

        rBtn.MouseButton1Click:Connect(function()
            nameL.Visible = false
            local inp = Instance.new("TextBox")
            inp.Size              = UDim2.new(1,-135,0,17)
            inp.Position          = UDim2.new(0,30,0,7)
            inp.BackgroundColor3  = Color3.fromRGB(11,9,32)
            inp.Text              = f.name
            inp.TextColor3        = T.Text
            inp.TextSize          = 11
            inp.Font              = Enum.Font.Gotham
            inp.BorderSizePixel   = 0
            inp.PlaceholderText   = "Enter name..."
            inp.PlaceholderColor3 = T.TextDim
            inp.ZIndex            = 16
            inp.Parent            = card
            corner(inp, 4)
            stroke(inp, T.Border, 1)
            inp:CaptureFocus()

            inp.FocusLost:Connect(function()
                if inp.Text ~= "" then
                    Favorites[fi].name = inp.Text
                end
                inp:Destroy()
                refreshFavorites()
            end)
        end)
    end
end

-- â”€â”€ FRESH SERVER LOGIC â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local function updateFreshUI(status)
    FrStatus.Text = ("Status: %s\nChecked: %d servers\nBlocked: %d servers"):format(
        status, ServersChecked, countBlocked()
    )
end

FrStartBtn.MouseButton1Click:Connect(function()
    if IsFreshHopping then return end
    IsFreshHopping  = true
    ServersChecked  = 0
    FrStartBtn.Text = "Searching..."
    tw(FrStartBtn, {BackgroundColor3 = Color3.fromRGB(10,38,10)}, .2)
    FrStopBtn.Visible = true

    FreshThread = task.spawn(function()
        while IsFreshHopping do
            updateFreshUI("Fetching server list...")

            local srvs, _ = fetchServers()
            if not IsFreshHopping then break end

            -- Filter blocked
            local avail = {}
            for _, s in ipairs(srvs) do
                if not BlockedServers[s.id] then
                    table.insert(avail, s)
                end
            end

            if #avail == 0 then
                updateFreshUI("All blocked â€” clearing list...")
                BlockedServers = {}
                task.wait(1)
                continue
            end

            -- Sort by fewest players first
            table.sort(avail, function(a, b) return a.playing < b.playing end)

            local found = false
            for _, s in ipairs(avail) do
                if not IsFreshHopping then break end

                ServersChecked += 1
                local prog = math.min(ServersChecked / 100, 1)
                tw(FrBarFill, {Size = UDim2.new(prog, 0, 1, 0)}, .1)

                if s.playing == 0 then
                    -- Fresh server found!
                    updateFreshUI("Fresh server found!")
                    found = true
                    IsFreshHopping    = false
                    FrStartBtn.Text   = "Start Finding"
                    tw(FrStartBtn, {BackgroundColor3 = T.BtnBg}, .2)
                    FrStopBtn.Visible = false

                    task.delay(0.6, function()
                        doJoin(s.id)
                    end)
                    break
                else
                    BlockedServers[s.id] = true
                    updateFreshUI("Skipping ("..s.playing.." players)...")
                    task.wait(0.35)
                end
            end

            if not found and IsFreshHopping then
                updateFreshUI("Rescanning...")
                task.wait(2)
            end
        end
    end)
end)

FrStopBtn.MouseButton1Click:Connect(function()
    IsFreshHopping    = false
    if FreshThread then task.cancel(FreshThread) end
    FrStartBtn.Text   = "Start Finding"
    tw(FrStartBtn, {BackgroundColor3 = T.BtnBg}, .2)
    FrStopBtn.Visible = false
    updateFreshUI("Stopped")
end)

FrClearBtn.MouseButton1Click:Connect(function()
    BlockedServers = {}
    updateFreshUI("Cleared")
end)

-- â”€â”€ BACK & HOME BUTTONS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
BackBtn.MouseButton1Click:Connect(function()
    PgServers.Visible = false
    PgRegions.Visible = true
    CurrentCountry    = nil
end)

HomeBtn.MouseButton1Click:Connect(function()
    if HomeServerId and HomeServerId ~= "" then
        HomeBtn.Text = "..."
        doJoin(HomeServerId)
        task.delay(4, function() if HomeBtn.Parent then HomeBtn.Text = "Home" end end)
    end
end)

SaveBtn.MouseButton1Click:Connect(function()
    local jid = game.JobId
    if not jid or jid == "" then
        SaveBtn.Text = "Not in a server!"
        task.delay(2, function() if SaveBtn.Parent then SaveBtn.Text = "+ Save Current Server" end end)
        return
    end
    for _, f in ipairs(Favorites) do
        if f.id == jid then
            SaveBtn.Text = "Already saved!"
            task.delay(2, function() if SaveBtn.Parent then SaveBtn.Text = "+ Save Current Server" end end)
            return
        end
    end
    table.insert(Favorites, {
        id        = jid,
        name      = "Server "..(#Favorites + 1),
        playing   = #Players:GetPlayers(),
        maxPlayers= Players.MaxPlayers,
        country   = "Current",
    })
    refreshFavorites()
    SaveBtn.Text = "Saved! â˜…"
    task.delay(2, function() if SaveBtn.Parent then SaveBtn.Text = "+ Save Current Server" end end)
end)

-- â”€â”€ TAB SWITCHING â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local function setTab(id)
    ActiveTab = id

    -- Reset label colours
    TBRegLbl.TextColor3 = T.TextDim
    TBFavLbl.TextColor3 = T.TextDim
    TBFrLbl.TextColor3  = T.TextDim

    -- Reset icon colours (globe children)
    local function recolorIcon(ico, col)
        for _, ch in ipairs(ico:GetChildren()) do
            local s = ch:FindFirstChildOfClass("UIStroke")
            if s then s.Color = col end
            if ch:IsA("Frame") then ch.BackgroundColor3 = col end
        end
    end

    recolorIcon(TBRegIco, T.TextDim)
    recolorIcon(TBFavIco, T.TextDim)
    recolorIcon(TBFrIco,  T.TextDim)

    -- Hide all pages
    PgRegions.Visible = false
    PgServers.Visible = false
    PgFavs.Visible    = false
    PgFresh.Visible   = false

    if id == "regions" then
        PgRegions.Visible = true
        tw(TabSlider, {Position = UDim2.new(0,0,1,-2)},   .2)
        TBRegLbl.TextColor3 = T.Blue
        recolorIcon(TBRegIco, T.Blue)

    elseif id == "favorites" then
        PgFavs.Visible    = true
        tw(TabSlider, {Position = UDim2.new(0,95,1,-2)},  .2)
        TBFavLbl.TextColor3 = T.Gold
        recolorIcon(TBFavIco, T.Gold)
        refreshFavorites()

    elseif id == "fresh" then
        PgFresh.Visible   = true
        tw(TabSlider, {Position = UDim2.new(0,190,1,-2)}, .2)
        TBFrLbl.TextColor3  = T.PurpleL
        recolorIcon(TBFrIco, T.PurpleL)
    end
end

TBRegions.MouseButton1Click:Connect(function()
    if PgServers.Visible then
        PgServers.Visible = false
        CurrentCountry    = nil
    end
    setTab("regions")
end)

TBFavs.MouseButton1Click:Connect(function() setTab("favorites") end)
TBFresh.MouseButton1Click:Connect(function() setTab("fresh")     end)

-- â”€â”€ MINIMISE TO BUBBLE â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
MinBtn.MouseButton1Click:Connect(function()
    local ap = Win.AbsolutePosition
    local as = Win.AbsoluteSize
    Bubble.Position = UDim2.new(0, ap.X + as.X/2 - 26, 0, ap.Y + as.Y/2 - 26)

    tw(Win, {Size = UDim2.new(0,0,0,0)}, .2, Enum.EasingStyle.Back, Enum.EasingDirection.In)
    task.delay(.22, function()
        Win.Visible    = false
        Bubble.Visible = true
    end)
end)

-- â”€â”€ STARTUP â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
setTab("regions")
refreshFavorites()

Win.Size = UDim2.new(0,0,0,0)
task.delay(.1, function()
    Win.Visible = true
    tw(Win, {Size = UDim2.new(0,285,0,385)}, .32, Enum.EasingStyle.Back)
end)

print("[GeoHop v1.0] Loaded â€” by Kii  |  PlaceId: "..PlaceId)
