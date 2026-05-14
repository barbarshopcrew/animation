-- ================================================================
--   animationV2  |  by in666ar
--   Elegant Dark Animation GUI  |  Mobile & PC Support
-- ================================================================

-- SERVICES
local Players          = game:GetService("Players")
local TweenService     = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService       = game:GetService("RunService")
local ContentProvider  = game:GetService("ContentProvider")
local MarketplaceService = game:GetService("MarketplaceService")
local lp = Players.LocalPlayer

-- ── PERSISTENT STATE (survives map/respawn) ──────────────────────
_G.AV2 = _G.AV2 or {
    Favorites      = {},
    AutoExecute    = false,
    SelectedBundle = nil,
}
local STATE = _G.AV2

-- Remove old GUI if re-executing
if lp.PlayerGui:FindFirstChild("animationV2") then
    lp.PlayerGui.animationV2:Destroy()
end

-- ── COLOUR PALETTE ───────────────────────────────────────────────
local C = {
    BG       = Color3.fromRGB(9,  9,  15),
    PANEL    = Color3.fromRGB(14, 14, 23),
    CARD     = Color3.fromRGB(19, 19, 32),
    BTN      = Color3.fromRGB(24, 24, 40),
    ACCENT   = Color3.fromRGB(99, 102, 241),
    ACCENT2  = Color3.fromRGB(139, 92, 246),
    TXT_HI   = Color3.fromRGB(220, 220, 245),
    TXT_SUB  = Color3.fromRGB(100, 100, 148),
    BORDER   = Color3.fromRGB(35, 35, 60),
    GREEN    = Color3.fromRGB(34, 197, 94),
    RED      = Color3.fromRGB(215, 65, 65),
    GOLD     = Color3.fromRGB(212, 175, 55),
    WHITE    = Color3.fromRGB(255, 255, 255),
}

-- ── UTILITY HELPERS ──────────────────────────────────────────────
local function uiCorner(parent, r)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, r or 8)
    c.Parent = parent
    return c
end

local function uiStroke(parent, col, thick)
    local s = Instance.new("UIStroke")
    s.Color = col or C.BORDER
    s.Thickness = thick or 1
    s.Parent = parent
    return s
end

local function uiPad(parent, top, bot, left, right)
    local p = Instance.new("UIPadding")
    p.PaddingTop    = UDim.new(0, top  or 0)
    p.PaddingBottom = UDim.new(0, bot  or 0)
    p.PaddingLeft   = UDim.new(0, left or 0)
    p.PaddingRight  = UDim.new(0, right or 0)
    p.Parent = parent
    return p
end

local function uiGrad(parent, c0, c1, rot)
    local g = Instance.new("UIGradient")
    g.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, c0),
        ColorSequenceKeypoint.new(1, c1),
    }
    g.Rotation = rot or 180
    g.Parent = parent
    return g
end

local function uiList(parent, pad, dir)
    local l = Instance.new("UIListLayout")
    l.Padding = UDim.new(0, pad or 6)
    l.FillDirection = dir or Enum.FillDirection.Vertical
    l.HorizontalAlignment = Enum.HorizontalAlignment.Center
    l.SortOrder = Enum.SortOrder.LayoutOrder
    l.Parent = parent
    return l
end

local function uiGrid(parent, cellSz, cellPad)
    local g = Instance.new("UIGridLayout")
    g.CellSize    = cellSz  or UDim2.new(0,148,0,185)
    g.CellPadding = cellPad or UDim2.new(0,8,0,8)
    g.HorizontalAlignment = Enum.HorizontalAlignment.Center
    g.SortOrder = Enum.SortOrder.LayoutOrder
    g.Parent = parent
    return g
end

local function makeLabel(parent, text, size, font, color, xalign)
    local l = Instance.new("TextLabel")
    l.BackgroundTransparency = 1
    l.BorderSizePixel = 0
    l.Text = text or ""
    l.TextSize = size or 13
    l.Font = font or Enum.Font.Gotham
    l.TextColor3 = color or C.TXT_HI
    l.TextXAlignment = xalign or Enum.TextXAlignment.Center
    l.TextWrapped = true
    l.Parent = parent
    return l
end

local function makeBtn(parent, text, textSize)
    local b = Instance.new("TextButton")
    b.BackgroundColor3 = C.BTN
    b.BorderSizePixel = 0
    b.AutoButtonColor = false
    b.Text = text or ""
    b.TextSize = textSize or 13
    b.Font = Enum.Font.GothamBold
    b.TextColor3 = C.TXT_HI
    b.Parent = parent
    return b
end

local function tw(obj, t, props, style, dir)
    return TweenService:Create(obj,
        TweenInfo.new(t,
            style or Enum.EasingStyle.Quart,
            dir   or Enum.EasingDirection.Out),
        props)
end

local function makeDraggable(dragBtn, frame)
    local dragging, ds, sp = false, nil, nil
    dragBtn.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1
        or i.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            ds = i.Position
            sp = frame.Position
            local c
            c = UserInputService.InputEnded:Connect(function(i2)
                if i2.UserInputType == Enum.UserInputType.MouseButton1
                or i2.UserInputType == Enum.UserInputType.Touch then
                    dragging = false
                    c:Disconnect()
                end
            end)
        end
    end)
    UserInputService.InputChanged:Connect(function(i)
        if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement
        or i.UserInputType == Enum.UserInputType.Touch) then
            local d = i.Position - ds
            tw(frame, 0.07, {Position = UDim2.new(
                sp.X.Scale, sp.X.Offset + d.X,
                sp.Y.Scale, sp.Y.Offset + d.Y
            )}, Enum.EasingStyle.Quad):Play()
        end
    end)
end

-- ================================================================
--   SCREEN GUI
-- ================================================================
local gui = Instance.new("ScreenGui")
gui.Name           = "animationV2"
gui.ResetOnSpawn   = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent         = lp.PlayerGui

-- ================================================================
--   PILL BUTTON  (always visible, circle — tap to toggle panel)
-- ================================================================
local pill = Instance.new("Frame")
pill.Name            = "Pill"
pill.Size            = UDim2.new(0,48,0,48)
pill.Position        = UDim2.new(0,18,0.5,-24)
pill.BackgroundColor3 = C.ACCENT
pill.BorderSizePixel = 0
pill.ZIndex          = 20
pill.Parent          = gui
uiCorner(pill, 24)
uiStroke(pill, C.ACCENT2, 2)
uiGrad(pill, C.ACCENT, C.ACCENT2, 135)

local pillIcon = makeLabel(pill, "A", 20, Enum.Font.GothamBold, C.WHITE)
pillIcon.Size     = UDim2.new(1,0,1,0)
pillIcon.ZIndex   = 21

local pillBtn = Instance.new("ImageButton")
pillBtn.Size               = UDim2.new(1,0,1,0)
pillBtn.BackgroundTransparency = 1
pillBtn.Image              = ""
pillBtn.ZIndex             = 22
pillBtn.Parent             = pill
makeDraggable(pillBtn, pill)

-- ================================================================
--   MAIN PANEL  (hidden — slides in from pill)
-- ================================================================
local PW, PH = 340, 470

local panel = Instance.new("Frame")
panel.Name            = "Panel"
panel.Size            = UDim2.new(0,PW,0,PH)
panel.Position        = UDim2.new(0,74,0.5,-PH/2)
panel.BackgroundColor3 = C.BG
panel.BorderSizePixel = 0
panel.ClipsDescendants = true
panel.Visible         = false
panel.ZIndex          = 10
panel.Parent          = gui
uiCorner(panel, 16)
uiStroke(panel, C.BORDER, 1)
uiGrad(panel, Color3.fromRGB(16,16,26), Color3.fromRGB(8,8,14), 135)

-- top accent line
local topLine = Instance.new("Frame")
topLine.Size            = UDim2.new(1,0,0,2)
topLine.BackgroundColor3 = C.ACCENT
topLine.BorderSizePixel = 0
topLine.ZIndex          = 11
topLine.Parent          = panel
uiCorner(topLine, 2)
uiGrad(topLine, C.ACCENT, C.ACCENT2, 90)

-- random accent variants shown each open
local accentPool = {
    {C.ACCENT, C.ACCENT2},
    {Color3.fromRGB(80,130,255), Color3.fromRGB(99,102,241)},
    {Color3.fromRGB(100,60,220), Color3.fromRGB(160,80,255)},
    {Color3.fromRGB(60,180,200), Color3.fromRGB(80,120,255)},
}

-- ── HEADER ───────────────────────────────────────────────────────
local header = Instance.new("Frame")
header.Name            = "Header"
header.Size            = UDim2.new(1,0,0,52)
header.Position        = UDim2.new(0,0,0,2)
header.BackgroundColor3 = Color3.fromRGB(12,12,20)
header.BorderSizePixel = 0
header.ZIndex          = 11
header.Parent          = panel
uiCorner(header, 14)
uiGrad(header, Color3.fromRGB(18,18,30), Color3.fromRGB(10,10,18), 180)

-- drag region on header
local headerDrag = Instance.new("ImageButton")
headerDrag.Size               = UDim2.new(1,-80,1,0)
headerDrag.BackgroundTransparency = 1
headerDrag.Image              = ""
headerDrag.ZIndex             = 15
headerDrag.Parent             = header
makeDraggable(headerDrag, panel)

-- owner title
local ownerLbl = makeLabel(header, "in666ar", 17, Enum.Font.GothamBold, C.TXT_HI)
ownerLbl.Size           = UDim2.new(0,130,0,22)
ownerLbl.Position       = UDim2.new(0,14,0,8)
ownerLbl.TextXAlignment = Enum.TextXAlignment.Left
ownerLbl.ZIndex         = 16
do
    local g = Instance.new("UIGradient")
    g.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.00, C.ACCENT),
        ColorSequenceKeypoint.new(0.50, C.ACCENT2),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(185,130,255)),
    }
    g.Rotation = 90
    g.Parent = ownerLbl
end

local subLbl = makeLabel(header, "Animation v2", 10, Enum.Font.Gotham, C.TXT_SUB)
subLbl.Size           = UDim2.new(0,130,0,14)
subLbl.Position       = UDim2.new(0,14,0,32)
subLbl.TextXAlignment = Enum.TextXAlignment.Left
subLbl.ZIndex         = 16

-- close button
local closeBtn = makeBtn(header, "x", 13)
closeBtn.Size            = UDim2.new(0,30,0,30)
closeBtn.Position        = UDim2.new(1,-40,0.5,-15)
closeBtn.BackgroundColor3 = Color3.fromRGB(38,14,14)
closeBtn.TextColor3      = C.RED
closeBtn.ZIndex          = 16
uiCorner(closeBtn, 8)
uiStroke(closeBtn, Color3.fromRGB(60,20,20), 1)

-- ── TAB BAR ──────────────────────────────────────────────────────
local tabBar = Instance.new("Frame")
tabBar.Name            = "TabBar"
tabBar.Size            = UDim2.new(1,-16,0,34)
tabBar.Position        = UDim2.new(0,8,0,58)
tabBar.BackgroundColor3 = C.PANEL
tabBar.BorderSizePixel = 0
tabBar.ZIndex          = 11
tabBar.Parent          = panel
uiCorner(tabBar, 10)
uiStroke(tabBar, C.BORDER, 1)

local tabBarList = Instance.new("UIListLayout")
tabBarList.FillDirection       = Enum.FillDirection.Horizontal
tabBarList.HorizontalAlignment = Enum.HorizontalAlignment.Center
tabBarList.VerticalAlignment   = Enum.VerticalAlignment.Center
tabBarList.Padding             = UDim.new(0,3)
tabBarList.Parent              = tabBar

-- ── CONTENT AREA ─────────────────────────────────────────────────
local contentArea = Instance.new("Frame")
contentArea.Name            = "Content"
contentArea.Size            = UDim2.new(1,-8,1,-100)
contentArea.Position        = UDim2.new(0,4,0,96)
contentArea.BackgroundTransparency = 1
contentArea.BorderSizePixel = 0
contentArea.ClipsDescendants = true
contentArea.ZIndex          = 10
contentArea.Parent          = panel

-- Create tab pages (ScrollingFrame)
local tabPages = {}
local function makePage(name)
    local p = Instance.new("ScrollingFrame")
    p.Name                = name.."Page"
    p.Size                = UDim2.new(1,0,1,0)
    p.BackgroundTransparency = 1
    p.BorderSizePixel     = 0
    p.ScrollBarThickness  = 3
    p.ScrollBarImageColor3 = C.ACCENT
    p.ScrollingDirection  = Enum.ScrollingDirection.Y
    p.CanvasSize          = UDim2.new(0,0,0,0)
    p.AutomaticCanvasSize = Enum.AutomaticSize.Y
    p.Visible             = false
    p.ZIndex              = 10
    p.Parent              = contentArea
    tabPages[name]        = p
    return p
end

local animPage    = makePage("Animasi")
local emotePage   = makePage("Emote")
local mixPage     = makePage("Mix")
local favPage     = makePage("Favorit")
local settingPage = makePage("Setting")

-- ── TAB SWITCHING ─────────────────────────────────────────────────
local TABS = {"Animasi","Emote","Mix","Favorit","Setting"}
local tabBtns = {}
local currentTab = nil

local function switchTab(name)
    if currentTab == name then return end
    currentTab = name
    for n, page in pairs(tabPages) do
        page.Visible = (n == name)
    end
    for n, btn in pairs(tabBtns) do
        if n == name then
            tw(btn, 0.2, {BackgroundColor3=C.ACCENT, TextColor3=C.WHITE}):Play()
        else
            tw(btn, 0.2, {BackgroundColor3=Color3.fromRGB(18,18,30), TextColor3=C.TXT_SUB}):Play()
        end
    end
    -- Refresh favorites when that tab opened
    if name == "Favorit" then
        -- handled by event below
    end
end

for _, name in ipairs(TABS) do
    local btn = makeBtn(tabBar, name, 10)
    btn.Size            = UDim2.new(0,58,0,26)
    btn.BackgroundColor3 = Color3.fromRGB(18,18,30)
    btn.TextColor3      = C.TXT_SUB
    btn.Font            = Enum.Font.GothamBold
    btn.ZIndex          = 12
    uiCorner(btn, 7)
    tabBtns[name] = btn
    btn.MouseButton1Click:Connect(function() switchTab(name) end)
end

-- ── OPEN / CLOSE ANIMATION ────────────────────────────────────────
local panelOpen = false

local function openPanel()
    if panelOpen then return end
    panelOpen = true
    pillIcon.Text = "x"

    -- Pick random accent
    local acc = accentPool[math.random(1,#accentPool)]
    uiGrad(topLine, acc[1], acc[2], 90)

    -- Anchor panel next to pill
    panel.Size     = UDim2.new(0,PW,0,0)
    panel.Position = UDim2.new(
        pill.Position.X.Scale,
        pill.Position.X.Offset + 56,
        0.5, -PH/2
    )
    panel.Visible = true

    tw(panel, 0.38, {
        Size     = UDim2.new(0,PW,0,PH),
        Position = UDim2.new(
            pill.Position.X.Scale,
            pill.Position.X.Offset + 56,
            0.5, -PH/2
        )
    }, Enum.EasingStyle.Back, Enum.EasingDirection.Out):Play()

    switchTab("Animasi")
end

local function closePanel()
    if not panelOpen then return end
    panelOpen = false
    pillIcon.Text = "A"

    local t = tw(panel, 0.24, {Size=UDim2.new(0,PW,0,0)},
        Enum.EasingStyle.Quart, Enum.EasingDirection.In)
    t:Play()
    t.Completed:Connect(function() panel.Visible = false end)
end

closeBtn.MouseButton1Click:Connect(closePanel)
pillBtn.MouseButton1Click:Connect(function()
    if panelOpen then closePanel() else openPanel() end
end)

UserInputService.InputBegan:Connect(function(inp, gp)
    if gp then return end
    if inp.KeyCode == Enum.KeyCode.Z then
        if panelOpen then closePanel() else openPanel() end
    end
end)

-- ================================================================
--   TOAST NOTIFICATION
-- ================================================================
local toast = Instance.new("Frame")
toast.Name            = "Toast"
toast.AnchorPoint     = Vector2.new(0.5,1)
toast.Size            = UDim2.new(0,270,0,38)
toast.Position        = UDim2.new(0.5,0,1,60)
toast.BackgroundColor3 = C.PANEL
toast.BorderSizePixel = 0
toast.ZIndex          = 50
toast.Parent          = gui
uiCorner(toast, 10)
uiStroke(toast, C.BORDER, 1)

local toastLbl = makeLabel(toast, "", 12, Enum.Font.GothamBold, C.TXT_HI)
toastLbl.Size     = UDim2.new(1,-16,1,0)
toastLbl.Position = UDim2.new(0,8,0,0)
toastLbl.ZIndex   = 51

local toastBusy = false
local function notify(msg, col)
    if toastBusy then return end
    toastBusy = true
    toastLbl.Text       = msg
    toastLbl.TextColor3 = col or C.TXT_HI
    local inT  = tw(toast, 0.3, {Position=UDim2.new(0.5,0,1,-22)})
    local outT = tw(toast, 0.3, {Position=UDim2.new(0.5,0,1,60)},
        Enum.EasingStyle.Quart, Enum.EasingDirection.In)
    inT:Play()
    task.delay(2.6, function()
        outT:Play()
        outT.Completed:Connect(function() toastBusy = false end)
    end)
end

-- ================================================================
--   ANIMATION DATA  (all original + AdidasAura new)
-- ================================================================
local animationData = {
    Stylish    = {Idle=616136790,Idle2=616138447,Walk=616146177,Run=616140816,Jump=616139451,Climb=616133594,Fall=616134815,Swim=616143378,SwimIdle=616144772},
    Zombie     = {Idle=616158929,Idle2=616160636,Walk=616168032,Run=616163682,Jump=616161997,Climb=616156119,Fall=616157476,Swim=616165109,SwimIdle=616166655},
    Robot      = {Idle=616088211,Idle2=616089559,Walk=616095330,Run=616091570,Jump=616090535,Climb=616086039,Fall=616087089,Swim=616092998,SwimIdle=616094091},
    Toy        = {Idle=782841498,Idle2=782845736,Walk=782843345,Run=782842708,Jump=782847020,Climb=782843869,Fall=782846423,Swim=782844582,SwimIdle=782845186},
    Cartoony   = {Idle=742637544,Idle2=742638445,Walk=742640026,Run=742638842,Jump=742637942,Climb=742636889,Fall=742637151,Swim=742639220,SwimIdle=742639812},
    Superhero  = {Idle=616111295,Idle2=616113536,Walk=616122287,Run=616117076,Jump=616115533,Climb=616104706,Fall=616108001,Swim=616119360,SwimIdle=616120861},
    Mage       = {Idle=707742142,Idle2=707855907,Walk=707897309,Run=707861613,Jump=707853694,Climb=707826056,Fall=707829716,Swim=707876443,SwimIdle=707894699},
    Levitation = {Idle=616006778,Idle2=616008087,Walk=616013216,Run=616010382,Jump=616008936,Climb=616003713,Fall=616005863,Swim=616011509,SwimIdle=616012453},
    Vampire    = {Idle=1083445855,Idle2=1083450166,Walk=1083473930,Run=1083462077,Jump=1083455352,Climb=1083439238,Fall=1083443587,Swim=1083464683,SwimIdle=1083467779},
    Elder      = {Idle=845397899,Idle2=845400520,Walk=845403856,Run=845386501,Jump=845398858,Climb=845392038,Fall=845396048,Swim=845401742,SwimIdle=845403127},
    Werewolf   = {Idle=1083195517,Idle2=1083214717,Walk=1083178339,Run=1083216690,Jump=1083218792,Climb=1083182000,Fall=1083189019,Swim=1083222527,SwimIdle=1083225406},
    Knight     = {Idle=657595757,Idle2=657568135,Walk=657552124,Run=657564596,Jump=658409194,Climb=658360781,Fall=657600338,Swim=657560551,SwimIdle=657557095},
    Bold       = {Idle=16738333868,Idle2=16738334710,Walk=16738340646,Run=16738337225,Jump=16738336650,Climb=16738332169,Fall=16738333171,Swim=16738339158,SwimIdle=16738339817},
    Astronaut  = {Idle=891621366,Idle2=891633237,Walk=891667138,Run=891636393,Jump=891627522,Climb=891609353,Fall=891617961,Swim=891639666,SwimIdle=891663592},
    Bubbly     = {Idle=910004836,Idle2=910009958,Walk=910034870,Run=910025107,Jump=910016857,Climb=909997997,Fall=910001910,Swim=910028158,SwimIdle=910030921},
    Pirate     = {Idle=750781874,Idle2=750782770,Walk=750785693,Run=750783738,Jump=750782230,Climb=750779899,Fall=750780242,Swim=750784579,SwimIdle=750785176},
    Rthro      = {Idle=2510196951,Idle2=2510197257,Walk=2510202577,Run=2510198475,Jump=2510197830,Climb=2510192778,Fall=2510195892,Swim=2510199791,SwimIdle=2510201162},
    Ninja      = {Idle=656117400,Idle2=656118341,Walk=656121766,Run=656118852,Jump=656117878,Climb=656114359,Fall=656115606,Swim=656119721,SwimIdle=656121397},
    Oldschool  = {Idle=5319828216,Idle2=5319831086,Walk=5319847204,Run=5319844329,Jump=5319841935,Climb=5319816685,Fall=5319839762,Swim=5319850266,SwimIdle=5319852613},
    Princess   = {Idle=941003647,Idle2=941013098,Walk=941028902,Run=941015281,Jump=941008832,Climb=940996062,Fall=941000007,Swim=941018893,SwimIdle=941025398},
    Confident  = {Idle=1069977950,Idle2=1069987858,Walk=1070017263,Run=1070001516,Jump=1069984524,Climb=1069946257,Fall=1069973677,Swim=1070009914,SwimIdle=1070012133},
    Popstar    = {Idle=1212900985,Idle2=1150842221,Walk=1212980338,Run=1212980348,Jump=1212954642,Climb=1213044953,Fall=1212900995,Swim=1212852603,SwimIdle=1212998578},
    Patrol     = {Idle=1149612882,Idle2=1150842221,Walk=1151231493,Run=1150967949,Jump=1150944216,Climb=1148811837,Fall=1148863382,Swim=1151204998,SwimIdle=1151221899},
    Sneaky     = {Idle=1132473842,Idle2=1132477671,Walk=1132510133,Run=1132494274,Jump=1132489853,Climb=1132461372,Fall=1132469004,Swim=1132500520,SwimIdle=1132506407},
    Cowboy     = {Idle=1014390418,Idle2=1014398616,Walk=1014421541,Run=1014401683,Jump=1014394726,Climb=1014380606,Fall=1014384571,Swim=1014406523,SwimIdle=1014411816},
    Ghost      = {Idle=616006778,Idle2=616008087,Walk=616013216,Run=616013216,Jump=616008936,Climb=0,Fall=616005863,Swim=616011509,SwimIdle=616012453},
    ['Ghost 2']= {Idle=1151221899,Idle2=1151221899,Walk=1151221899,Run=1151221899,Jump=1151221899,Climb=0,Fall=1151221899,Swim=16738339158,SwimIdle=1151221899},
    ['Mr. Toilet']  = {Idle=4417977954,Idle2=4417978624,Walk=2510202577,Run=4417979645,Jump=2510197830,Climb=2510192778,Fall=2510195892,Swim=2510199791,SwimIdle=2510201162},
    Udzal           = {Idle=3303162274,Idle2=3303162549,Walk=3303162967,Run=3236836670,Jump=2510197830,Climb=2510192778,Fall=2510195892,Swim=2510199791,SwimIdle=2510201162},
    ['Oinan Thickhoof'] = {Idle=657595757,Idle2=657568135,Walk=2510202577,Run=3236836670,Jump=2510197830,Climb=2510192778,Fall=2510195892,Swim=2510199791,SwimIdle=2510201162},
    Borock          = {Idle=3293641938,Idle2=3293642554,Walk=2510202577,Run=3236836670,Jump=2510197830,Climb=2510192778,Fall=2510195892,Swim=2510199791,SwimIdle=2510201162},
    ['Blocky Mech'] = {Idle=4417977954,Idle2=4417978624,Walk=2510202577,Run=4417979645,Jump=2510197830,Climb=2510192778,Fall=2510195892,Swim=2510199791,SwimIdle=2510201162},
    ['Stylized Female'] = {Idle=4708191566,Idle2=4708192150,Walk=4708193840,Run=4708192705,Jump=4708188025,Climb=4708184253,Fall=4708186162,Swim=4708189360,SwimIdle=4708190607},
    R15             = {Idle=4211217646,Idle2=4211218409,Walk=4211223236,Run=4211220381,Jump=4211219390,Climb=4211214992,Fall=4211216152,Swim=4211221314,SwimIdle=4374694239},
    NFL             = {Idle=92080889861410,Idle2=74451233229259,Walk=110358958299415,Run=117333533048078,Jump=119846112151352,Fall=129773241321032,Climb=134630013742019,Swim=132697394189921,SwimIdle=79090109939093},
    Gojo            = {Idle=507766666,Idle2=507766951,Walk=95643163365384,Run=507767714,Jump=507765000,Climb=507765644,Fall=507767968,Swim=507784897,SwimIdle=507785072},
    Geto            = {Idle=507766666,Idle2=507766951,Walk=85811471336028,Run=507767714,Jump=507765000,Climb=507765644,Fall=507767968,Swim=507784897,SwimIdle=507785072},
    ['Adidas Sports']    = {Idle=18537376492,Idle2=18537371272,Walk=18537392113,Run=18537384940,Jump=18537380791,Climb=18537363391,Fall=18537367238,Swim=18537389531,SwimIdle=18537387180},
    ['Adidas Community'] = {Idle=122257458498464,Idle2=102357151005774,Walk=122150855457006,Run=82598234841035,Jump=656117878,Fall=98600215928904,Climb=88763136693023,Swim=133308483266208,SwimIdle=109346520324160},
    CatwalkGram          = {Idle=133806214992291,Idle2=94970088341563,Walk=109168724482748,Run=81024476153754,Jump=116936326516985,Fall=92294537340807,Climb=119377220967554,Swim=134591743181628,SwimIdle=98854111361360},
    NoBoundariesAnimation= {Idle=18747067405,Idle2=507766666,Walk=18747074203,Run=18747070484,Jump=507765000,Fall=18747062535,Climb=18747060903,Swim=134591743181628,SwimIdle=98854111361360},
    AuraAnimationPack    = {Idle=114191137265065,Idle2=110211186840347,Walk=83842218823011,Run=118320322718866,Jump=109996626521204,Fall=95603166884636,Climb=97824616490448,Swim=83842218823011,SwimIdle=83842218823011},
    UnboxedAnimations    = {Idle=138183121662404,Idle2=98281136301627,Walk=90478085024465,Run=134824450619865,Jump=121454505477205,Fall=94788218468396,Climb=121145883950231,Swim=90478085024465,SwimIdle=90478085024465},
    WickedPopular        = {Idle=118832222982049,Idle2=76049494037641,Walk=92072849924640,Run=72301599441680,Jump=104325245285198,Fall=121152442762481,Climb=131326830509784,Swim=99384245425157,SwimIdle=113199415118199},
    WickedDancingThroughLife = {Idle=92849173543269,Idle2=132238900951109,Walk=73718308412641,Run=135515454877967,Jump=78508480717326,Fall=78147885297412,Climb=129447497744818,Swim=73718308412641,SwimIdle=73718308412641},
    Mocap                = {Idle=913367814,Idle2=913373430,Walk=913402848,Run=913376220,Jump=913370268,Climb=913362637,Fall=913365531,Swim=913384386,SwimIdle=913389285},

    -- ★ NEW  ─  AdidasAura Animation Pack ★
    AdidasAura = {
        Idle    = 73137983344853,
        Idle2   = 73137983344853,
        Walk    = 75183215343859,
        Run     = 123973978164540,
        Jump    = 129527230938281,
        Fall    = 99457463463495,
        Climb   = 140398319728398,
        Swim    = 119007025452432,
        SwimIdle= 119007025452432,
    },
}

-- Bundle thumbnail IDs
local bundleIds = {
    Stylish=83,Zombie=97,Robot=82,Toy=85,Cartoony=84,Superhero=81,Mage=91,
    Levitation=79,Vampire=96,Elder=37,Werewolf=95,Knight=90,Bold=331856,
    Astronaut=36,Bubbly=39,Pirate=85,Rthro=417,Ninja=89,Oldschool=667,
    Princess=41,Confident=94,Popstar=212,Patrol=207,Sneaky=171,Cowboy=152,
    R15=1,Mocap=40,NFL=932296,CatwalkGram=1601900,
    AuraAnimationPack=1189398,NoBoundariesAnimation=455003,
    UnboxedAnimations=4164795,WickedPopular=1189398,
    WickedDancingThroughLife=1295795,
    ['Adidas Sports']=427999,['Adidas Community']=896,
    AdidasAura=896,
}

-- Emote data
local emoteData = {
    ['Fashion']       = 3333331310,
    ['Needy Shake']   = 139395178419877,
    ['Sleeping']      = 84112287597268,
    ['Stretch']       = 119377401608190,
    ['Popular']       = 93062298566806,
    ['Sturdy']        = 132104757386824,
    ['Daydreaming']   = 102342919277367,
    ['Caterpillar']   = 91114883954161,
    ['MM2 Sit']       = 95825103583419,
    ['Dance']         = 507770239,
    ['Wave']          = 507770677,
    ['Point']         = 507770453,
    ['Laugh']         = 507770818,
    ['Stadium']       = 506281097,
    ['Applaud']       = 5915693819,
    ['Salute']        = 3360686498,
    ['Tilt']          = 3360692915,
    ['Shrug']         = 3334538554,
    ['Hero Landing']  = 5104344710,
    ['Zombie Walk']   = 4265725525,
    ['Penguin Walk']  = 3360740733,
    ['Dolphin Dance'] = 3695333486,
    ['Heisman Pose']  = 3333499508,
    ['Kicks']         = 429681631,
    ['Twirl']         = 5915697755,
    ['T-Pose']        = 3695322025,
    ['Floss Dance']   = 5917570207,
    ['Levitate']      = 313762630,
}

-- ================================================================
--   CORE ANIMATION FUNCTIONS
-- ================================================================
local function clearAllAnimations()
    local char = lp.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    for _, track in pairs(hum:GetPlayingAnimationTracks()) do
        track:Stop(0); track:Destroy()
    end
    local animator = hum:FindFirstChildOfClass("Animator")
    if animator then
        for _, track in pairs(animator:GetPlayingAnimationTracks()) do
            track:Stop(0); track:Destroy()
        end
    end
    task.wait(0.06)
end

local function applyFEBundle(bundleName)
    local char = lp.Character
    if not char then return end
    clearAllAnimations()
    local animate = char:FindFirstChild("Animate")
    if not animate then return end
    local data = animationData[bundleName]
    if not data then return end

    STATE.SelectedBundle = bundleName
    animate.Disabled = true
    task.wait(0.08)

    local function upd(folder, animName, id)
        if not id or id == 0 then return end
        local f = animate:FindFirstChild(folder)
        if not f then return end
        local a = f:FindFirstChild(animName)
        if a and a:IsA("Animation") then
            a.AnimationId = "rbxassetid://" .. tostring(id)
        end
    end

    upd("idle",    "Animation1", data.Idle)
    upd("idle",    "Animation2", data.Idle2 or data.Idle)
    local idleF = animate:FindFirstChild("idle")
    if idleF then
        local w1 = idleF:FindFirstChild("Animation1Weight")
        local w2 = idleF:FindFirstChild("Animation2Weight")
        if w1 then w1.Value = 9 end
        if w2 then w2.Value = 1 end
    end
    upd("walk",    "WalkAnim",  data.Walk)
    upd("run",     "RunAnim",   data.Run)
    upd("jump",    "JumpAnim",  data.Jump)
    upd("climb",   "ClimbAnim", data.Climb)
    upd("fall",    "FallAnim",  data.Fall)
    upd("swim",    "Swim",      data.Swim)
    upd("swimidle","SwimIdle",  data.SwimIdle)

    task.wait(0.08)
    animate.Disabled = false

    local hum = char:FindFirstChildOfClass("Humanoid")
    if hum then
        hum:ChangeState(Enum.HumanoidStateType.Landed)
        task.wait(0.04)
        hum:ChangeState(Enum.HumanoidStateType.Running)
        task.wait(0.04)
        hum:ChangeState(Enum.HumanoidStateType.Landed)
    end
    task.wait(0.15)
    clearAllAnimations()
end

-- Emote system
local currentEmoteTrack = nil
local activeEmoteCard   = nil
local movConns          = {}

local function stopEmote()
    if currentEmoteTrack then
        currentEmoteTrack:Stop(0.3)
        currentEmoteTrack = nil
    end
    if activeEmoteCard then
        local btn = activeEmoteCard:FindFirstChild("PlayBtn")
        if btn then btn.TextColor3 = C.TXT_SUB end
        activeEmoteCard = nil
    end
end

local function disconnectMovement()
    for _, c in pairs(movConns) do pcall(function() c:Disconnect() end) end
    movConns = {}
end

local function connectMovement(char)
    disconnectMovement()
    local hum  = char:WaitForChild("Humanoid",10)
    if not hum then return end
    local root = char:WaitForChild("HumanoidRootPart",10)
    if not root then return end

    local lastPos = root.Position
    local c1 = RunService.Heartbeat:Connect(function()
        if not char or not char.Parent then return end
        if (root.Position - lastPos).Magnitude > 0.1 then stopEmote() end
        lastPos = root.Position
    end)
    local c2 = hum.StateChanged:Connect(function(_,s)
        if s==Enum.HumanoidStateType.Jumping or s==Enum.HumanoidStateType.Freefall then
            stopEmote()
        end
    end)
    local c3 = hum.Running:Connect(function(sp) if sp>0.5 then stopEmote() end end)
    table.insert(movConns,c1)
    table.insert(movConns,c2)
    table.insert(movConns,c3)
end

local function playFEEmote(emoteName, id, card)
    local char = lp.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    if currentEmoteTrack and activeEmoteCard==card then stopEmote(); return end
    stopEmote()
    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://"..tostring(id)
    currentEmoteTrack = hum:LoadAnimation(anim)
    currentEmoteTrack.Looped    = true
    currentEmoteTrack.Priority  = Enum.AnimationPriority.Action
    currentEmoteTrack:Play()
    activeEmoteCard = card
    currentEmoteTrack.Stopped:Connect(function()
        if activeEmoteCard==card then
            local btn = card:FindFirstChild("PlayBtn")
            if btn then btn.TextColor3=C.TXT_SUB end
            currentEmoteTrack = nil
            activeEmoteCard   = nil
        end
    end)
end

-- ================================================================
--   BUILD ANIMATION CARD
-- ================================================================
local function makeAnimCard(parent, name)
    local card = Instance.new("Frame")
    card.Name            = name
    card.Size            = UDim2.new(0,148,0,185)
    card.BackgroundColor3 = C.CARD
    card.BorderSizePixel = 0
    card.ClipsDescendants = true
    card.Parent          = parent
    uiCorner(card, 10)
    local hs = uiStroke(card, C.BORDER, 1)
    uiGrad(card, Color3.fromRGB(22,22,36), Color3.fromRGB(12,12,20), 180)

    -- Hover
    card.MouseEnter:Connect(function()
        tw(hs,   0.18, {Color=C.ACCENT, Thickness=1.5}):Play()
        tw(card, 0.18, {BackgroundColor3=Color3.fromRGB(24,24,42)}):Play()
    end)
    card.MouseLeave:Connect(function()
        tw(hs,   0.18, {Color=C.BORDER, Thickness=1}):Play()
        tw(card, 0.18, {BackgroundColor3=C.CARD}):Play()
    end)

    -- Thumbnail
    local thumb = Instance.new("ImageLabel")
    thumb.Size            = UDim2.new(1,0,0,108)
    thumb.BackgroundColor3 = Color3.fromRGB(10,10,18)
    thumb.BorderSizePixel = 0
    thumb.ScaleType       = Enum.ScaleType.Crop
    thumb.Parent          = card
    uiCorner(thumb, 8)

    local bid = bundleIds[name]
    if bid and bid > 0 then
        thumb.Image = string.format(
            "rbxthumb://type=BundleThumbnail&id=%d&w=420&h=420", bid)
    else
        -- text placeholder
        local pl = makeLabel(thumb, name:sub(1,2):upper(), 30,
            Enum.Font.GothamBold, C.TXT_SUB)
        pl.Size = UDim2.new(1,0,1,0)
        thumb.Image = ""
    end

    -- "NEW" badge for AdidasAura
    if name == "AdidasAura" then
        local badge = Instance.new("Frame")
        badge.Size            = UDim2.new(0,36,0,18)
        badge.Position        = UDim2.new(1,-40,0,6)
        badge.BackgroundColor3 = C.ACCENT
        badge.BorderSizePixel = 0
        badge.ZIndex          = 5
        badge.Parent          = thumb
        uiCorner(badge, 5)
        local blbl = makeLabel(badge, "NEW", 9, Enum.Font.GothamBold, C.WHITE)
        blbl.Size   = UDim2.new(1,0,1,0)
        blbl.ZIndex = 6
    end

    -- Name label
    local nameLbl = makeLabel(card,
        #name>15 and name:sub(1,14)..".." or name,
        11, Enum.Font.GothamBold, C.TXT_HI)
    nameLbl.Size           = UDim2.new(1,-8,0,20)
    nameLbl.Position       = UDim2.new(0,4,0,112)
    nameLbl.TextXAlignment = Enum.TextXAlignment.Left

    -- Apply button
    local applyBtn = makeBtn(card, "Pakai", 11)
    applyBtn.Name            = "ApplyBtn"
    applyBtn.Size            = UDim2.new(0,66,0,28)
    applyBtn.Position        = UDim2.new(0,4,0,137)
    applyBtn.BackgroundColor3 = C.BTN
    applyBtn.TextColor3      = C.ACCENT
    uiCorner(applyBtn, 7)
    uiStroke(applyBtn, C.BORDER, 1)

    -- Favorite button
    local favBtn = makeBtn(card, STATE.Favorites[name] and "Unfav" or "Fav", 11)
    favBtn.Name            = "FavBtn"
    favBtn.Size            = UDim2.new(0,66,0,28)
    favBtn.Position        = UDim2.new(0,76,0,137)
    favBtn.BackgroundColor3 = C.BTN
    favBtn.TextColor3      = STATE.Favorites[name] and C.GOLD or C.TXT_SUB
    uiCorner(favBtn, 7)
    uiStroke(favBtn, C.BORDER, 1)

    applyBtn.MouseButton1Click:Connect(function()
        applyFEBundle(name)
        tw(applyBtn, 0.15, {BackgroundColor3=Color3.fromRGB(14,34,14)}):Play()
        applyBtn.TextColor3 = C.GREEN
        notify("Aktif: "..name, C.GREEN)
        task.delay(2, function()
            if applyBtn and applyBtn.Parent then
                tw(applyBtn, 0.15, {BackgroundColor3=C.BTN}):Play()
                applyBtn.TextColor3 = C.ACCENT
            end
        end)
    end)

    favBtn.MouseButton1Click:Connect(function()
        if STATE.Favorites[name] then
            STATE.Favorites[name] = nil
            favBtn.TextColor3 = C.TXT_SUB
            favBtn.Text       = "Fav"
            notify("Dihapus dari Favorit", C.TXT_SUB)
        else
            STATE.Favorites[name] = true
            favBtn.TextColor3 = C.GOLD
            favBtn.Text       = "Unfav"
            notify("Ditambah ke Favorit  ★", C.GOLD)
        end
    end)

    return card
end

-- ================================================================
--   EMOTE CARD
-- ================================================================
local function makeEmoteCard(parent, name, id)
    local card = Instance.new("Frame")
    card.Name            = name
    card.Size            = UDim2.new(0,148,0,72)
    card.BackgroundColor3 = C.CARD
    card.BorderSizePixel = 0
    card.ClipsDescendants = true
    card.Parent          = parent
    uiCorner(card, 10)
    local hs = uiStroke(card, C.BORDER, 1)
    uiGrad(card, Color3.fromRGB(22,22,36), Color3.fromRGB(12,12,20), 180)

    card.MouseEnter:Connect(function()
        tw(hs,   0.15, {Color=C.ACCENT, Thickness=1.5}):Play()
        tw(card, 0.15, {BackgroundColor3=Color3.fromRGB(24,24,42)}):Play()
    end)
    card.MouseLeave:Connect(function()
        tw(hs,   0.15, {Color=C.BORDER, Thickness=1}):Play()
        tw(card, 0.15, {BackgroundColor3=C.CARD}):Play()
    end)

    local nameLbl = makeLabel(card,
        #name>13 and name:sub(1,12)..".." or name,
        11, Enum.Font.GothamBold, C.TXT_HI)
    nameLbl.Size           = UDim2.new(1,-8,0,20)
    nameLbl.Position       = UDim2.new(0,4,0,6)
    nameLbl.TextXAlignment = Enum.TextXAlignment.Left

    local playBtn = makeBtn(card, "PLAY", 11)
    playBtn.Name            = "PlayBtn"
    playBtn.Size            = UDim2.new(1,-8,0,28)
    playBtn.Position        = UDim2.new(0,4,0,30)
    playBtn.BackgroundColor3 = C.BTN
    playBtn.TextColor3      = C.TXT_SUB
    uiCorner(playBtn, 7)
    uiStroke(playBtn, C.BORDER, 1)

    playBtn.MouseButton1Click:Connect(function()
        playFEEmote(name, id, card)
        task.wait(0.1)
        if currentEmoteTrack then
            tw(playBtn, 0.15, {BackgroundColor3=Color3.fromRGB(10,30,14)}):Play()
            playBtn.TextColor3 = C.GREEN
            notify("Emote: "..name, C.GREEN)
        else
            tw(playBtn, 0.15, {BackgroundColor3=C.BTN}):Play()
            playBtn.TextColor3 = C.TXT_SUB
        end
    end)

    return card
end

-- ================================================================
--   POPULATE TABS
-- ================================================================

-- ── Tab: Animasi ─────────────────────────────────────────────────
do
    uiPad(animPage, 6, 6, 6, 6)
    uiGrid(animPage, UDim2.new(0,148,0,185), UDim2.new(0,8,0,8))
    -- Sort: AdidasAura first, then rest alphabetically
    local names = {}
    for n,_ in pairs(animationData) do table.insert(names, n) end
    table.sort(names, function(a,b)
        if a=="AdidasAura" then return true end
        if b=="AdidasAura" then return false end
        return a<b
    end)
    for _, name in ipairs(names) do
        makeAnimCard(animPage, name)
    end
end

-- ── Tab: Emote ───────────────────────────────────────────────────
do
    uiPad(emotePage, 6, 6, 6, 6)
    uiGrid(emotePage, UDim2.new(0,148,0,72), UDim2.new(0,8,0,8))
    for name, id in pairs(emoteData) do
        makeEmoteCard(emotePage, name, id)
    end
end

-- ── Tab: Mix ─────────────────────────────────────────────────────
do
    uiPad(mixPage, 8, 8, 8, 8)
    uiList(mixPage, 8)

    local selectedMix = {Idle=nil,Walk=nil,Run=nil,Jump=nil,Fall=nil,Swim=nil}
    local stateKeys   = {"Idle","Walk","Run","Jump","Fall","Swim"}

    local allAnimNames = {}
    for n,_ in pairs(animationData) do table.insert(allAnimNames, n) end
    table.sort(allAnimNames)

    -- Mix header
    local mixHeader = makeLabel(mixPage, "Campur Animasi Per Gerakan",
        13, Enum.Font.GothamBold, C.TXT_HI)
    mixHeader.Size     = UDim2.new(1,0,0,24)
    mixHeader.LayoutOrder = 0

    for i, stateKey in ipairs(stateKeys) do
        local row = Instance.new("Frame")
        row.Name             = stateKey.."Row"
        row.Size             = UDim2.new(1,0,0,60)
        row.BackgroundColor3 = C.CARD
        row.BorderSizePixel  = 0
        row.LayoutOrder      = i
        row.Parent           = mixPage
        uiCorner(row, 10)
        uiStroke(row, C.BORDER, 1)
        uiPad(row, 8, 8, 10, 10)

        local stateLbl = makeLabel(row, stateKey, 11, Enum.Font.GothamBold, C.ACCENT)
        stateLbl.Size           = UDim2.new(0,40,0,20)
        stateLbl.TextXAlignment = Enum.TextXAlignment.Left

        local selLbl = makeLabel(row, "Belum dipilih", 11, Enum.Font.Gotham, C.TXT_SUB)
        selLbl.Size           = UDim2.new(1,-120,0,20)
        selLbl.Position       = UDim2.new(0,46,0,0)
        selLbl.TextXAlignment = Enum.TextXAlignment.Left
        selLbl.TextTruncate   = Enum.TextTruncate.AtEnd

        local pickBtn = makeBtn(row, "Pilih", 10)
        pickBtn.Size            = UDim2.new(0,52,0,24)
        pickBtn.Position        = UDim2.new(1,-52,0,-2)
        pickBtn.BackgroundColor3 = C.BTN
        pickBtn.TextColor3      = C.ACCENT
        uiCorner(pickBtn, 7)
        uiStroke(pickBtn, C.BORDER, 1)

        local applyStateBtn = makeBtn(row, "Terapkan", 10)
        applyStateBtn.Size            = UDim2.new(1,0,0,22)
        applyStateBtn.Position        = UDim2.new(0,0,0,30)
        applyStateBtn.BackgroundColor3 = Color3.fromRGB(18,18,38)
        applyStateBtn.TextColor3      = C.ACCENT
        uiCorner(applyStateBtn, 7)
        uiStroke(applyStateBtn, C.BORDER, 1)

        -- Dropdown overlay
        local dropFrame = Instance.new("Frame")
        dropFrame.Name             = stateKey.."Drop"
        dropFrame.Size             = UDim2.new(0,PW-16,0,0)
        dropFrame.Position         = UDim2.new(0,0,0,0)
        dropFrame.BackgroundColor3 = Color3.fromRGB(12,12,22)
        dropFrame.BorderSizePixel  = 0
        dropFrame.Visible          = false
        dropFrame.ClipsDescendants = true
        dropFrame.ZIndex           = 30
        dropFrame.Parent           = mixPage
        uiCorner(dropFrame, 9)
        uiStroke(dropFrame, C.ACCENT, 1)

        local dropScroll = Instance.new("ScrollingFrame")
        dropScroll.Size                = UDim2.new(1,0,1,0)
        dropScroll.BackgroundTransparency = 1
        dropScroll.BorderSizePixel     = 0
        dropScroll.ScrollBarThickness  = 3
        dropScroll.ScrollBarImageColor3 = C.ACCENT
        dropScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
        dropScroll.CanvasSize          = UDim2.new(0,0,0,0)
        dropScroll.Parent              = dropFrame
        uiPad(dropScroll, 4, 4, 4, 4)
        uiList(dropScroll, 3)

        for _, aname in ipairs(allAnimNames) do
            local data = animationData[aname]
            if data and (data[stateKey] or data.Idle) then
                local opt = makeBtn(dropScroll, aname, 11)
                opt.Size             = UDim2.new(1,-8,0,30)
                opt.BackgroundColor3 = C.BTN
                opt.TextColor3       = C.TXT_HI
                opt.TextXAlignment   = Enum.TextXAlignment.Left
                uiPad(opt, 0, 0, 8, 8)
                uiCorner(opt, 6)

                opt.MouseButton1Click:Connect(function()
                    selectedMix[stateKey] = aname
                    selLbl.Text       = aname
                    selLbl.TextColor3 = C.ACCENT
                    local t = tw(dropFrame, 0.2, {Size=UDim2.new(0,PW-16,0,0)},
                        Enum.EasingStyle.Quart, Enum.EasingDirection.In)
                    t:Play()
                    t.Completed:Connect(function() dropFrame.Visible=false end)
                end)
            end
        end

        local dropOpen = false
        pickBtn.MouseButton1Click:Connect(function()
            dropOpen = not dropOpen
            if dropOpen then
                local rowAbsY = row.AbsolutePosition.Y - mixPage.AbsolutePosition.Y + mixPage.CanvasPosition.Y
                dropFrame.Position = UDim2.new(0,0,0, rowAbsY + row.AbsoluteSize.Y + 4)
                dropFrame.Size     = UDim2.new(0,PW-16,0,0)
                dropFrame.Visible  = true
                tw(dropFrame, 0.25, {Size=UDim2.new(0,PW-16,0,190)}):Play()
            else
                local t = tw(dropFrame, 0.2, {Size=UDim2.new(0,PW-16,0,0)},
                    Enum.EasingStyle.Quart, Enum.EasingDirection.In)
                t:Play()
                t.Completed:Connect(function() dropFrame.Visible=false end)
            end
        end)

        applyStateBtn.MouseButton1Click:Connect(function()
            local char = lp.Character
            if not char then return end
            local sel = selectedMix[stateKey]
            if not sel then notify("Pilih animasi dulu!", C.RED); return end
            local data = animationData[sel]
            if not data then return end

            clearAllAnimations()
            local animate = char:FindFirstChild("Animate")
            if not animate then return end
            animate.Disabled = true; task.wait(0.08)

            local folMap  = {Idle="idle",Walk="walk",Run="run",Jump="jump",Fall="fall",Swim="swim"}
            local animMap = {Idle="Animation1",Walk="WalkAnim",Run="RunAnim",
                             Jump="JumpAnim",Fall="FallAnim",Swim="Swim"}

            local f = animate:FindFirstChild(folMap[stateKey])
            local animId = data[stateKey] or data.Idle
            if f and animId and animId ~= 0 then
                local a = f:FindFirstChild(animMap[stateKey])
                if a and a:IsA("Animation") then
                    a.AnimationId = "rbxassetid://"..tostring(animId)
                end
            end
            task.wait(0.08)
            animate.Disabled = false
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then
                hum:ChangeState(Enum.HumanoidStateType.Landed)
                task.wait(0.04)
                hum:ChangeState(Enum.HumanoidStateType.Running)
            end
            task.wait(0.15)
            clearAllAnimations()
            notify(stateKey.." → "..sel, C.GREEN)
        end)
    end
end

-- ── Tab: Favorit ──────────────────────────────────────────────────
local favContainer
do
    uiPad(favPage, 6, 6, 6, 6)
    favContainer = Instance.new("Frame")
    favContainer.Name            = "FavContainer"
    favContainer.Size            = UDim2.new(1,0,0,0)
    favContainer.AutomaticSize   = Enum.AutomaticSize.Y
    favContainer.BackgroundTransparency = 1
    favContainer.BorderSizePixel = 0
    favContainer.Parent          = favPage
    uiGrid(favContainer, UDim2.new(0,148,0,185), UDim2.new(0,8,0,8))
end

local function refreshFavTab()
    for _, ch in pairs(favContainer:GetChildren()) do
        if ch:IsA("Frame") then ch:Destroy() end
    end
    local count = 0
    for name, _ in pairs(STATE.Favorites) do
        makeAnimCard(favContainer, name)
        count += 1
    end
    if count == 0 then
        local emp = makeLabel(favContainer,
            "Belum ada favorit.\nTekan 'Fav' di tab Animasi.", 12,
            Enum.Font.Gotham, C.TXT_SUB)
        emp.Size = UDim2.new(1,-16,0,60)
    end
end
tabBtns["Favorit"].MouseButton1Click:Connect(refreshFavTab)

-- ── Tab: Setting ──────────────────────────────────────────────────
do
    uiPad(settingPage, 10, 10, 10, 10)
    uiList(settingPage, 10)

    -- Section heading
    local sh = makeLabel(settingPage, "Pengaturan", 14, Enum.Font.GothamBold, C.TXT_HI)
    sh.Size = UDim2.new(1,0,0,22)
    sh.LayoutOrder = 0

    -- Info rows helper
    local function infoCard(icon, label, valueText, order)
        local row = Instance.new("Frame")
        row.Size             = UDim2.new(1,0,0,44)
        row.BackgroundColor3 = C.CARD
        row.BorderSizePixel  = 0
        row.LayoutOrder      = order
        row.Parent           = settingPage
        uiCorner(row, 9)
        uiStroke(row, C.BORDER, 1)
        uiPad(row, 0, 0, 10, 10)

        local ico = makeLabel(row, icon, 14, Enum.Font.GothamBold, C.ACCENT)
        ico.Size           = UDim2.new(0,28,1,0)
        ico.TextXAlignment = Enum.TextXAlignment.Center

        local lbl = makeLabel(row, label, 11, Enum.Font.Gotham, C.TXT_SUB)
        lbl.Size           = UDim2.new(0,76,1,0)
        lbl.Position       = UDim2.new(0,34,0,0)
        lbl.TextXAlignment = Enum.TextXAlignment.Left

        local val = makeLabel(row, valueText, 11, Enum.Font.GothamBold, C.TXT_HI)
        val.Name           = label.."Val"
        val.Size           = UDim2.new(1,-120,1,0)
        val.Position       = UDim2.new(0,114,0,0)
        val.TextXAlignment = Enum.TextXAlignment.Left
        val.TextTruncate   = Enum.TextTruncate.AtEnd
        return val
    end

    local nameVal    = infoCard("N", "Nama",    lp.Name,                          1)
    local gameVal    = infoCard("G", "Game",    "Memuat...",                       2)
    local playerVal  = infoCard("P", "Pemain",  tostring(#Players:GetPlayers()),   3)
    local timeVal    = infoCard("T", "Waktu",   os.date("%H:%M:%S"),               4)

    -- game name fetch
    task.spawn(function()
        local ok, info = pcall(function()
            return MarketplaceService:GetProductInfo(game.PlaceId)
        end)
        gameVal.Text = (ok and info and info.Name) or "—"
    end)

    -- Live update
    RunService.Heartbeat:Connect(function()
        timeVal.Text   = os.date("%H:%M:%S")
        playerVal.Text = tostring(#Players:GetPlayers())
    end)

    -- Key badge row
    local keyRow = Instance.new("Frame")
    keyRow.Size             = UDim2.new(1,0,0,44)
    keyRow.BackgroundColor3 = C.CARD
    keyRow.BorderSizePixel  = 0
    keyRow.LayoutOrder      = 5
    keyRow.Parent           = settingPage
    uiCorner(keyRow, 9)
    uiStroke(keyRow, C.BORDER, 1)
    uiPad(keyRow, 0, 0, 10, 10)

    local keyLbl = makeLabel(keyRow, "Tombol buka / tutup GUI :", 11, Enum.Font.Gotham, C.TXT_SUB)
    keyLbl.Size           = UDim2.new(1,-60,1,0)
    keyLbl.TextXAlignment = Enum.TextXAlignment.Left

    local zBg = Instance.new("Frame")
    zBg.Size            = UDim2.new(0,34,0,26)
    zBg.Position        = UDim2.new(1,-44,0.5,-13)
    zBg.BackgroundColor3 = Color3.fromRGB(20,20,40)
    zBg.BorderSizePixel = 0
    zBg.Parent          = keyRow
    uiCorner(zBg, 7)
    uiStroke(zBg, C.ACCENT, 1)

    local zLbl = makeLabel(zBg, "Z", 15, Enum.Font.GothamBold, C.ACCENT)
    zLbl.Size = UDim2.new(1,0,1,0)

    -- ── Auto-Execute Toggle ──────────────────────────────────────
    local autoRow = Instance.new("Frame")
    autoRow.Size             = UDim2.new(1,0,0,60)
    autoRow.BackgroundColor3 = C.CARD
    autoRow.BorderSizePixel  = 0
    autoRow.LayoutOrder      = 6
    autoRow.Parent           = settingPage
    uiCorner(autoRow, 10)
    uiStroke(autoRow, C.BORDER, 1)
    uiPad(autoRow, 10, 10, 12, 12)

    local autoT = makeLabel(autoRow, "Auto-Execute Animasi", 12, Enum.Font.GothamBold, C.TXT_HI)
    autoT.Size           = UDim2.new(1,-60,0,18)
    autoT.TextXAlignment = Enum.TextXAlignment.Left

    local autoS = makeLabel(autoRow, "Animasi aktif otomatis saat pindah map",
        10, Enum.Font.Gotham, C.TXT_SUB)
    autoS.Size           = UDim2.new(1,-60,0,14)
    autoS.Position       = UDim2.new(0,0,0,20)
    autoS.TextXAlignment = Enum.TextXAlignment.Left

    local track = Instance.new("Frame")
    track.Size            = UDim2.new(0,44,0,24)
    track.Position        = UDim2.new(1,-44,0.5,-12)
    track.BackgroundColor3 = C.BTN
    track.BorderSizePixel = 0
    track.Parent          = autoRow
    uiCorner(track, 12)
    uiStroke(track, C.BORDER, 1)

    local thumb = Instance.new("Frame")
    thumb.Size            = UDim2.new(0,18,0,18)
    thumb.Position        = UDim2.new(0,3,0.5,-9)
    thumb.BackgroundColor3 = C.TXT_SUB
    thumb.BorderSizePixel = 0
    thumb.Parent          = track
    uiCorner(thumb, 9)

    local togBtn = Instance.new("ImageButton")
    togBtn.Size               = UDim2.new(1,0,1,0)
    togBtn.BackgroundTransparency = 1
    togBtn.Image              = ""
    togBtn.Parent             = track

    local function updateToggle()
        if STATE.AutoExecute then
            tw(track, 0.2, {BackgroundColor3=C.GREEN}):Play()
            tw(thumb, 0.2, {Position=UDim2.new(0,23,0.5,-9), BackgroundColor3=C.WHITE}):Play()
        else
            tw(track, 0.2, {BackgroundColor3=C.BTN}):Play()
            tw(thumb, 0.2, {Position=UDim2.new(0,3,0.5,-9),  BackgroundColor3=C.TXT_SUB}):Play()
        end
    end
    updateToggle()

    togBtn.MouseButton1Click:Connect(function()
        STATE.AutoExecute = not STATE.AutoExecute
        updateToggle()
        notify(STATE.AutoExecute and "Auto-Execute: ON" or "Auto-Execute: OFF",
            STATE.AutoExecute and C.GREEN or C.TXT_SUB)
    end)

    -- ── Stop / Reset buttons ─────────────────────────────────────
    local btnRow = Instance.new("Frame")
    btnRow.Size             = UDim2.new(1,0,0,44)
    btnRow.BackgroundTransparency = 1
    btnRow.BorderSizePixel  = 0
    btnRow.LayoutOrder      = 7
    btnRow.Parent           = settingPage

    local bll = Instance.new("UIListLayout")
    bll.FillDirection       = Enum.FillDirection.Horizontal
    bll.Padding             = UDim.new(0,8)
    bll.VerticalAlignment   = Enum.VerticalAlignment.Center
    bll.HorizontalAlignment = Enum.HorizontalAlignment.Center
    bll.Parent              = btnRow

    local stopEBtn = makeBtn(btnRow, "Stop Emote", 12)
    stopEBtn.Size            = UDim2.new(0.46,0,0,40)
    stopEBtn.BackgroundColor3 = Color3.fromRGB(38,12,12)
    stopEBtn.TextColor3      = C.RED
    uiCorner(stopEBtn, 9)
    uiStroke(stopEBtn, Color3.fromRGB(60,18,18), 1)

    local resetBtn = makeBtn(btnRow, "Reset Animasi", 12)
    resetBtn.Size            = UDim2.new(0.46,0,0,40)
    resetBtn.BackgroundColor3 = Color3.fromRGB(14,14,38)
    resetBtn.TextColor3      = C.ACCENT
    uiCorner(resetBtn, 9)
    uiStroke(resetBtn, C.BORDER, 1)

    stopEBtn.MouseButton1Click:Connect(function()
        stopEmote()
        tw(stopEBtn, 0.12, {BackgroundColor3=Color3.fromRGB(70,18,18)}):Play()
        task.delay(0.2, function()
            tw(stopEBtn, 0.12, {BackgroundColor3=Color3.fromRGB(38,12,12)}):Play()
        end)
        notify("Emote dihentikan.", C.RED)
    end)

    resetBtn.MouseButton1Click:Connect(function()
        local char = lp.Character
        if not char then return end
        local hum     = char:FindFirstChildOfClass("Humanoid")
        local animate = char:FindFirstChild("Animate")
        if not hum or not animate then return end

        stopEmote()
        clearAllAnimations()
        STATE.SelectedBundle = nil
        animate.Disabled = true; task.wait(0.08)

        local defaults = {
            {"idle","Animation1",507766666},{"idle","Animation2",507766951},
            {"walk","WalkAnim",507777826},{"run","RunAnim",507767714},
            {"jump","JumpAnim",507765000},{"climb","ClimbAnim",507765644},
            {"fall","FallAnim",507767968},{"swim","Swim",507784897},
            {"swimidle","SwimIdle",507785072},
        }
        for _, d in ipairs(defaults) do
            local f = animate:FindFirstChild(d[1])
            if f then
                local a = f:FindFirstChild(d[2])
                if a and a:IsA("Animation") then
                    a.AnimationId = "rbxassetid://"..d[3]
                end
            end
        end
        animate.Disabled = false; task.wait(0.08)
        hum:ChangeState(Enum.HumanoidStateType.Landed)
        task.wait(0.04)
        hum:ChangeState(Enum.HumanoidStateType.Running)
        task.wait(0.04)
        hum:ChangeState(Enum.HumanoidStateType.Landed)
        clearAllAnimations()
        notify("Animasi direset ke default.", C.ACCENT)
    end)

    -- ── Instagram / Info card ────────────────────────────────────
    local infoCard2 = Instance.new("Frame")
    infoCard2.Size             = UDim2.new(1,0,0,112)
    infoCard2.BackgroundColor3 = Color3.fromRGB(14,10,26)
    infoCard2.BorderSizePixel  = 0
    infoCard2.LayoutOrder      = 8
    infoCard2.Parent           = settingPage
    uiCorner(infoCard2, 12)
    uiStroke(infoCard2, Color3.fromRGB(55,38,95), 1)
    uiGrad(infoCard2, Color3.fromRGB(18,12,34), Color3.fromRGB(8,8,16), 160)
    uiPad(infoCard2, 12, 12, 14, 14)

    local infoText = makeLabel(infoCard2,
        "Follow Instagram saya  @iumbr4\n\n" ..
        "Selamat menikmati!\n\n" ..
        "Ada bug atau mau tambah fitur?\n" ..
        "DM lewat Instagram.",
        11, Enum.Font.Gotham, C.TXT_SUB)
    infoText.Size       = UDim2.new(1,0,1,0)
    infoText.TextWrapped = true
    infoText.LineHeight  = 1.5

    -- Credit label
    local creditLbl = makeLabel(settingPage,
        "animationV2  |  by in666ar", 10,
        Enum.Font.GothamBold, Color3.fromRGB(45,45,80))
    creditLbl.Size        = UDim2.new(1,0,0,18)
    creditLbl.LayoutOrder = 9
end

-- ================================================================
--   CHARACTER / RESPAWN HANDLER
-- ================================================================
lp.CharacterAdded:Connect(function(char)
    task.wait(1.4)
    connectMovement(char)
    stopEmote()

    if STATE.AutoExecute and STATE.SelectedBundle then
        task.wait(0.4)
        notify("Auto-Execute: "..STATE.SelectedBundle, C.ACCENT)
        applyFEBundle(STATE.SelectedBundle)
    end
end)

if lp.Character then
    connectMovement(lp.Character)
end

-- ================================================================
--   LAUNCH
-- ================================================================
switchTab("Animasi")

task.delay(1.2, function()
    notify("animationV2  |  by in666ar", C.ACCENT)
end)
