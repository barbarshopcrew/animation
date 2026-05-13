-- Gui to Lua
-- Version: 3.2
-- Made by echelon
-- Dc echelonw
-- Instances:

local echgui = {
	echgui = Instance.new("ScreenGui"),
	echframe = Instance.new("Frame"),
	UIPadding = Instance.new("UIPadding"),
	UICorner = Instance.new("UICorner"),
	ImageLabel = Instance.new("ImageLabel"),
	ImageLabel_2 = Instance.new("ImageLabel"),
	UIToolsGradient = Instance.new("UIGradient"),
	tabsframe = Instance.new("Frame"),
	UICorner_2 = Instance.new("UICorner"),
	UIPadding_2 = Instance.new("UIPadding"),
	UIToolsGradient_2 = Instance.new("UIGradient"),
	ImageLabel_3 = Instance.new("ImageLabel"),
	Animationsbutton = Instance.new("ImageButton"),
	UIGradient = Instance.new("UIGradient"),
	Emotebutton = Instance.new("ImageButton"),
	UIGradient_2 = Instance.new("UIGradient"),
	Settingsbutton = Instance.new("ImageButton"),
	UIGradient_3 = Instance.new("UIGradient"),
	MinimazeButton = Instance.new("ImageButton"),
	UIGradient_4 = Instance.new("UIGradient"),
	TextLabel = Instance.new("TextLabel"),
	UIGradient_5 = Instance.new("UIGradient"),
	ImageLabel_4 = Instance.new("ImageLabel"),
	ImageLabel_5 = Instance.new("ImageLabel"),
	TextLabel_2 = Instance.new("TextLabel"),
	UIGradient_6 = Instance.new("UIGradient"),
	dragbutton = Instance.new("ImageButton"),
	UIGradient_7 = Instance.new("UIGradient"),
	ImageLabel_6 = Instance.new("ImageLabel"),
	CloseButton = Instance.new("ImageButton"),
	UIGradient_8 = Instance.new("UIGradient"),
	SpecButton = Instance.new("ImageButton"),
	UIGradient_9 = Instance.new("UIGradient"),
	Tbutton = Instance.new("ImageButton"),
	UIGradient_10 = Instance.new("UIGradient"),
	tab2 = Instance.new("ScrollingFrame"),
	emoteframe = Instance.new("Frame"),
	UICorner_3 = Instance.new("UICorner"),
	UIPadding_3 = Instance.new("UIPadding"),
	UIToolsGradient_3 = Instance.new("UIGradient"),
	emotename = Instance.new("TextLabel"),
	UITextSizeConstraint = Instance.new("UITextSizeConstraint"),
	UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint"),
	UIGradient_11 = Instance.new("UIGradient"),
	playbutton = Instance.new("ImageButton"),
	UIGradient_12 = Instance.new("UIGradient"),
	ImageLabel_7 = Instance.new("ImageLabel"),
	tab1 = Instance.new("ScrollingFrame"),
	Animationsframe = Instance.new("Frame"),
	UICorner_4 = Instance.new("UICorner"),
	UIPadding_4 = Instance.new("UIPadding"),
	Animationname = Instance.new("TextLabel"),
	UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint"),
	UIGradient_13 = Instance.new("UIGradient"),
	ApplyButton = Instance.new("ImageButton"),
	UIGradient_14 = Instance.new("UIGradient"),
	FavoriteButton = Instance.new("ImageButton"),
	UIGradient_15 = Instance.new("UIGradient"),
	animationresmi = Instance.new("ImageLabel"),
	UICorner_5 = Instance.new("UICorner"),
	UIPadding_5 = Instance.new("UIPadding"),
	UIToolsGradient_4 = Instance.new("UIGradient"),
	UIToolsGradient_5 = Instance.new("UIGradient"),
	ImageLabel_8 = Instance.new("ImageLabel"),
	tab3 = Instance.new("ScrollingFrame"),
	settingsframe = Instance.new("Frame"),
	control = Instance.new("TextLabel"),
	UIGradient_16 = Instance.new("UIGradient"),
	echelontext = Instance.new("TextLabel"),
	UIGradient_17 = Instance.new("UIGradient"),
	stopemotebutton = Instance.new("TextButton"),
	UICorner_6 = Instance.new("UICorner"),
	UIPadding_6 = Instance.new("UIPadding"),
	UIGradient_18 = Instance.new("UIGradient"),
	resetanimation = Instance.new("TextButton"),
	UICorner_7 = Instance.new("UICorner"),
	UIPadding_7 = Instance.new("UIPadding"),
	UIGradient_19 = Instance.new("UIGradient"),
	text = Instance.new("TextLabel"),
	UIGradient_20 = Instance.new("UIGradient"),
	ImageLabel_9 = Instance.new("ImageLabel"),
	UIGradient_21 = Instance.new("UIGradient"),
	z = Instance.new("TextLabel"),
	UIGradient_22 = Instance.new("UIGradient"),
	name = Instance.new("TextLabel"),
	UIGradient_23 = Instance.new("UIGradient"),
	gamename = Instance.new("TextLabel"),
	UIGradient_24 = Instance.new("UIGradient"),
	users = Instance.new("TextLabel"),
	UIGradient_25 = Instance.new("UIGradient"),
	time = Instance.new("TextLabel"),
	UIGradient_26 = Instance.new("UIGradient"),
	ImageLabel_10 = Instance.new("ImageLabel"),
	UIGradient_27 = Instance.new("UIGradient"),
	ImageLabel_11 = Instance.new("ImageLabel"),
	UIGradient_28 = Instance.new("UIGradient"),
	ImageLabel_12 = Instance.new("ImageLabel"),
	tab4 = Instance.new("ScrollingFrame"),
	tab4frame = Instance.new("Frame"),
	Idle = Instance.new("TextLabel"),
	UIGradient_29 = Instance.new("UIGradient"),
	Walk = Instance.new("TextLabel"),
	UIGradient_30 = Instance.new("UIGradient"),
	Run = Instance.new("TextLabel"),
	UIGradient_31 = Instance.new("UIGradient"),
	Jump = Instance.new("TextLabel"),
	UIGradient_32 = Instance.new("UIGradient"),
	Swim = Instance.new("TextLabel"),
	UIGradient_33 = Instance.new("UIGradient"),
	IdleDropDown = Instance.new("Frame"),
	UICorner_8 = Instance.new("UICorner"),
	UIToolsGradient_6 = Instance.new("UIGradient"),
	UIPadding_8 = Instance.new("UIPadding"),
	MainButton = Instance.new("ImageButton"),
	UIGradient_34 = Instance.new("UIGradient"),
	ListFrame = Instance.new("ScrollingFrame"),
	Option = Instance.new("TextButton"),
	UICorner_9 = Instance.new("UICorner"),
	UIPadding_9 = Instance.new("UIPadding"),
	UIGradient_35 = Instance.new("UIGradient"),
	UICorner_10 = Instance.new("UICorner"),
	UIPadding_10 = Instance.new("UIPadding"),
	UIToolsGradient_7 = Instance.new("UIGradient"),
	SelectedText = Instance.new("TextLabel"),
	UIGradient_36 = Instance.new("UIGradient"),
	Fall = Instance.new("TextLabel"),
	UIGradient_37 = Instance.new("UIGradient"),
	WalkDropDown = Instance.new("Frame"),
	UICorner_11 = Instance.new("UICorner"),
	UIToolsGradient_8 = Instance.new("UIGradient"),
	UIPadding_11 = Instance.new("UIPadding"),
	MainButton_2 = Instance.new("ImageButton"),
	UIGradient_38 = Instance.new("UIGradient"),
	ListFrame_2 = Instance.new("ScrollingFrame"),
	Option_2 = Instance.new("TextButton"),
	UICorner_12 = Instance.new("UICorner"),
	UIPadding_12 = Instance.new("UIPadding"),
	UIGradient_39 = Instance.new("UIGradient"),
	UICorner_13 = Instance.new("UICorner"),
	UIPadding_13 = Instance.new("UIPadding"),
	UIToolsGradient_9 = Instance.new("UIGradient"),
	SelectedText_2 = Instance.new("TextLabel"),
	UIGradient_40 = Instance.new("UIGradient"),
	RunDropDown = Instance.new("Frame"),
	UICorner_14 = Instance.new("UICorner"),
	UIToolsGradient_10 = Instance.new("UIGradient"),
	UIPadding_14 = Instance.new("UIPadding"),
	MainButton_3 = Instance.new("ImageButton"),
	UIGradient_41 = Instance.new("UIGradient"),
	ListFrame_3 = Instance.new("ScrollingFrame"),
	Option_3 = Instance.new("TextButton"),
	UICorner_15 = Instance.new("UICorner"),
	UIPadding_15 = Instance.new("UIPadding"),
	UIGradient_42 = Instance.new("UIGradient"),
	UICorner_16 = Instance.new("UICorner"),
	UIPadding_16 = Instance.new("UIPadding"),
	UIToolsGradient_11 = Instance.new("UIGradient"),
	SelectedText_3 = Instance.new("TextLabel"),
	UIGradient_43 = Instance.new("UIGradient"),
	JumpDropDown = Instance.new("Frame"),
	UICorner_17 = Instance.new("UICorner"),
	UIToolsGradient_12 = Instance.new("UIGradient"),
	UIPadding_17 = Instance.new("UIPadding"),
	MainButton_4 = Instance.new("ImageButton"),
	UIGradient_44 = Instance.new("UIGradient"),
	ListFrame_4 = Instance.new("ScrollingFrame"),
	Option_4 = Instance.new("TextButton"),
	UICorner_18 = Instance.new("UICorner"),
	UIPadding_18 = Instance.new("UIPadding"),
	UIGradient_45 = Instance.new("UIGradient"),
	UICorner_19 = Instance.new("UICorner"),
	UIPadding_19 = Instance.new("UIPadding"),
	UIToolsGradient_13 = Instance.new("UIGradient"),
	SelectedText_4 = Instance.new("TextLabel"),
	UIGradient_46 = Instance.new("UIGradient"),
	FallDropDown = Instance.new("Frame"),
	UICorner_20 = Instance.new("UICorner"),
	UIToolsGradient_14 = Instance.new("UIGradient"),
	UIPadding_20 = Instance.new("UIPadding"),
	MainButton_5 = Instance.new("ImageButton"),
	UIGradient_47 = Instance.new("UIGradient"),
	ListFrame_5 = Instance.new("ScrollingFrame"),
	Option_5 = Instance.new("TextButton"),
	UICorner_21 = Instance.new("UICorner"),
	UIPadding_21 = Instance.new("UIPadding"),
	UIGradient_48 = Instance.new("UIGradient"),
	UICorner_22 = Instance.new("UICorner"),
	UIPadding_22 = Instance.new("UIPadding"),
	UIToolsGradient_15 = Instance.new("UIGradient"),
	SelectedText_5 = Instance.new("TextLabel"),
	UIGradient_49 = Instance.new("UIGradient"),
	SwimDropDown = Instance.new("Frame"),
	UICorner_23 = Instance.new("UICorner"),
	UIToolsGradient_16 = Instance.new("UIGradient"),
	UIPadding_23 = Instance.new("UIPadding"),
	MainButton_6 = Instance.new("ImageButton"),
	UIGradient_50 = Instance.new("UIGradient"),
	ListFrame_6 = Instance.new("ScrollingFrame"),
	Option_6 = Instance.new("TextButton"),
	UICorner_24 = Instance.new("UICorner"),
	UIPadding_24 = Instance.new("UIPadding"),
	UIGradient_51 = Instance.new("UIGradient"),
	UICorner_25 = Instance.new("UICorner"),
	UIPadding_25 = Instance.new("UIPadding"),
	UIToolsGradient_17 = Instance.new("UIGradient"),
	SelectedText_6 = Instance.new("TextLabel"),
	UIGradient_52 = Instance.new("UIGradient"),
	ImageLabel_13 = Instance.new("ImageLabel"),
	ImageLabel_14 = Instance.new("ImageLabel"),
	ImageLabel_15 = Instance.new("ImageLabel"),
	draggableframe = Instance.new("Frame"),
	UIToolsGradient_18 = Instance.new("UIGradient"),
	UIPadding_26 = Instance.new("UIPadding"),
	dragbutton_2 = Instance.new("ImageButton"),
	UIGradient_53 = Instance.new("UIGradient"),
	UICorner_26 = Instance.new("UICorner"),
	openclose = Instance.new("ImageButton"),
	UIGradient_54 = Instance.new("UIGradient"),
	ImageLabel_16 = Instance.new("ImageLabel"),
	ImageLabel_17 = Instance.new("ImageLabel"),
}

--Properties:

echgui.echgui.Name = "echgui"
echgui.echgui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
echgui.echgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

echgui.echframe.Name = "echframe"

-- ╔══════════════════════════════════════════════════════════════╗
-- ║  AnimationsHub  ·  Echelon GUI  ·  Dark Redesign v2.5       ║
-- ║  UI Style: Fluent / Minimal Dark / Elegant Gaming Panel      ║
-- ║  Credit: @in666ar                                            ║
-- ╚══════════════════════════════════════════════════════════════╝

-- ════════════════════════════════════════
-- COLOUR TOKENS
-- BG_DEEP   = RGB(9,9,15)
-- BG_MAIN   = RGB(13,13,21)
-- BG_CARD   = RGB(20,20,33)
-- BG_BTN    = RGB(26,26,42)
-- ACCENT    = RGB(99,102,241)   indigo-500
-- ACCENT2   = RGB(139,92,246)   violet-500
-- TEXT_HI   = RGB(228,228,255)
-- TEXT_SUB  = RGB(120,120,170)
-- BORDER    = RGB(38,38,65)
-- GREEN_ON  = RGB(34,197,94)
-- ════════════════════════════════════════

-- ── ScreenGui ──────────────────────────────────────────────────
echgui.echgui.Name = "echgui"
echgui.echgui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
echgui.echgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
echgui.echgui.ResetOnSpawn = false

-- ── Main Frame  (360 × 445, mobile-friendly) ───────────────────
echgui.echframe.Name = "echframe"
echgui.echframe.Parent = echgui.echgui
echgui.echframe.AnchorPoint = Vector2.new(0.5, 0.5)
echgui.echframe.BackgroundColor3 = Color3.fromRGB(13, 13, 21)
echgui.echframe.BackgroundTransparency = 0
echgui.echframe.BorderSizePixel = 0
echgui.echframe.Position = UDim2.new(0.5, 0, 0.5, 0)
echgui.echframe.Size = UDim2.new(0, 360, 0, 445)
echgui.echframe.ClipsDescendants = true

echgui.UIPadding.Parent = echgui.echframe

echgui.UICorner.CornerRadius = UDim.new(0, 16)
echgui.UICorner.Parent = echgui.echframe

-- subtle diagonal bg gradient
echgui.UIToolsGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(18, 18, 30)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(8, 8, 14))
}
echgui.UIToolsGradient.Rotation = 135
echgui.UIToolsGradient.Name = "UIToolsGradient"
echgui.UIToolsGradient.Parent = echgui.echframe

-- fine border stroke
do
	local s = Instance.new("UIStroke")
	s.Color = Color3.fromRGB(42, 42, 70)
	s.Thickness = 1
	s.Parent = echgui.echframe
end

-- faint noise texture overlay
echgui.ImageLabel.Parent = echgui.echframe
echgui.ImageLabel.BackgroundTransparency = 1
echgui.ImageLabel.BorderSizePixel = 0
echgui.ImageLabel.Position = UDim2.new(0,0,0,0)
echgui.ImageLabel.Size = UDim2.new(1,0,1,0)
echgui.ImageLabel.Image = "rbxassetid://114705627121229"
echgui.ImageLabel.ImageColor3 = Color3.fromRGB(80,100,255)
echgui.ImageLabel.ImageTransparency = 0.97
echgui.ImageLabel.ZIndex = 0

-- faint glow accent blob (top-right)
echgui.ImageLabel_2.Parent = echgui.echframe
echgui.ImageLabel_2.BackgroundTransparency = 1
echgui.ImageLabel_2.BorderSizePixel = 0
echgui.ImageLabel_2.Position = UDim2.new(0.55, 0, -0.15, 0)
echgui.ImageLabel_2.Size = UDim2.new(0, 220, 0, 220)
echgui.ImageLabel_2.Image = "rbxassetid://72876478870333"
echgui.ImageLabel_2.ImageColor3 = Color3.fromRGB(99, 102, 241)
echgui.ImageLabel_2.ImageTransparency = 0.88
echgui.ImageLabel_2.ZIndex = 0

-- ── Tab Bar  (52 px, full width, top of frame) ─────────────────
echgui.tabsframe.Name = "tabsframe"
echgui.tabsframe.Parent = echgui.echframe
echgui.tabsframe.BackgroundColor3 = Color3.fromRGB(17, 17, 28)
echgui.tabsframe.BackgroundTransparency = 0
echgui.tabsframe.BorderSizePixel = 0
echgui.tabsframe.Position = UDim2.new(0, 0, 0, 0)
echgui.tabsframe.Size = UDim2.new(1, 0, 0, 52)
echgui.tabsframe.ClipsDescendants = false
echgui.tabsframe.ZIndex = 5

echgui.UICorner_2.CornerRadius = UDim.new(0, 16)
echgui.UICorner_2.Parent = echgui.tabsframe

echgui.UIPadding_2.PaddingLeft = UDim.new(0, 4)
echgui.UIPadding_2.PaddingRight = UDim.new(0, 4)
echgui.UIPadding_2.Parent = echgui.tabsframe

echgui.UIToolsGradient_2.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(22, 22, 36)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(13, 13, 22))
}
echgui.UIToolsGradient_2.Rotation = 180
echgui.UIToolsGradient_2.Name = "UIToolsGradient"
echgui.UIToolsGradient_2.Parent = echgui.tabsframe

-- bottom separator line on tab bar
echgui.ImageLabel_3.Parent = echgui.tabsframe
echgui.ImageLabel_3.BackgroundColor3 = Color3.fromRGB(42, 42, 70)
echgui.ImageLabel_3.BackgroundTransparency = 0
echgui.ImageLabel_3.BorderSizePixel = 0
echgui.ImageLabel_3.Position = UDim2.new(0, 14, 1, -1)
echgui.ImageLabel_3.Size = UDim2.new(1, -28, 0, 1)
echgui.ImageLabel_3.Image = ""
echgui.ImageLabel_3.ZIndex = 6

-- ── Drag handle (≡ icon, left side) ────────────────────────────
echgui.dragbutton.Name = "dragbutton"
echgui.dragbutton.Parent = echgui.tabsframe
echgui.dragbutton.BackgroundTransparency = 1
echgui.dragbutton.BorderSizePixel = 0
echgui.dragbutton.Position = UDim2.new(0, 8, 0, 11)
echgui.dragbutton.Size = UDim2.new(0, 30, 0, 30)
echgui.dragbutton.Image = "rbxassetid://16884179507"
echgui.dragbutton.ImageRectOffset = Vector2.new(678, 100)
echgui.dragbutton.ImageRectSize = Vector2.new(48, 48)
echgui.dragbutton.ImageColor3 = Color3.fromRGB(100, 100, 155)
echgui.dragbutton.ZIndex = 6

echgui.UIGradient_7.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_7.Parent = echgui.dragbutton

-- ── "Echelon" brand label ───────────────────────────────────────
echgui.TextLabel.Parent = echgui.tabsframe
echgui.TextLabel.BackgroundTransparency = 1
echgui.TextLabel.BorderSizePixel = 0
echgui.TextLabel.Position = UDim2.new(0, 44, 0, 7)
echgui.TextLabel.Size = UDim2.new(0, 80, 0, 20)
echgui.TextLabel.Font = Enum.Font.GothamBold
echgui.TextLabel.Text = "Echelon"
echgui.TextLabel.TextColor3 = Color3.fromRGB(228, 228, 255)
echgui.TextLabel.TextSize = 15
echgui.TextLabel.TextXAlignment = Enum.TextXAlignment.Left
echgui.TextLabel.ZIndex = 6

echgui.UIGradient_5.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(99, 102, 241)),
	ColorSequenceKeypoint.new(0.55, Color3.fromRGB(139, 92, 246)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(185, 130, 255))
}
echgui.UIGradient_5.Rotation = 90
echgui.UIGradient_5.Parent = echgui.TextLabel

-- ── Version sub-label ───────────────────────────────────────────
echgui.TextLabel_2.Parent = echgui.tabsframe
echgui.TextLabel_2.BackgroundTransparency = 1
echgui.TextLabel_2.BorderSizePixel = 0
echgui.TextLabel_2.Position = UDim2.new(0, 44, 0, 29)
echgui.TextLabel_2.Size = UDim2.new(0, 80, 0, 14)
echgui.TextLabel_2.Font = Enum.Font.Gotham
echgui.TextLabel_2.Text = "@in666ar"
echgui.TextLabel_2.TextColor3 = Color3.fromRGB(70, 70, 110)
echgui.TextLabel_2.TextSize = 10
echgui.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
echgui.TextLabel_2.ZIndex = 6

echgui.UIGradient_6.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_6.Parent = echgui.TextLabel_2

-- decorative hidden image labels on tabsframe (kept for logic compat)
echgui.ImageLabel_4.Parent = echgui.tabsframe
echgui.ImageLabel_4.BackgroundTransparency = 1
echgui.ImageLabel_4.ImageTransparency = 1
echgui.ImageLabel_4.BorderSizePixel = 0
echgui.ImageLabel_4.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_4.Size = UDim2.new(0,1,0,1)
echgui.ImageLabel_4.ZIndex = 1

echgui.ImageLabel_5.Parent = echgui.tabsframe
echgui.ImageLabel_5.BackgroundTransparency = 1
echgui.ImageLabel_5.ImageTransparency = 1
echgui.ImageLabel_5.BorderSizePixel = 0
echgui.ImageLabel_5.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_5.Size = UDim2.new(0,1,0,1)
echgui.ImageLabel_5.ZIndex = 1

-- ── Tab buttons (center cluster, 132–252 px range) ──────────────
-- Animations
echgui.Animationsbutton.Name = "Animationsbutton"
echgui.Animationsbutton.Parent = echgui.tabsframe
echgui.Animationsbutton.BackgroundTransparency = 1
echgui.Animationsbutton.BorderSizePixel = 0
echgui.Animationsbutton.Position = UDim2.new(0, 132, 0, 11)
echgui.Animationsbutton.Size = UDim2.new(0, 30, 0, 30)
echgui.Animationsbutton.Image = "rbxassetid://16884179038"
echgui.Animationsbutton.ImageRectOffset = Vector2.new(440, 908)
echgui.Animationsbutton.ImageRectSize = Vector2.new(108, 108)
echgui.Animationsbutton.ImageColor3 = Color3.fromRGB(99, 102, 241)
echgui.Animationsbutton.ZIndex = 6

echgui.UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient.Parent = echgui.Animationsbutton

-- Emote
echgui.Emotebutton.Name = "Emotebutton"
echgui.Emotebutton.Parent = echgui.tabsframe
echgui.Emotebutton.BackgroundTransparency = 1
echgui.Emotebutton.BorderSizePixel = 0
echgui.Emotebutton.Position = UDim2.new(0, 172, 0, 11)
echgui.Emotebutton.Size = UDim2.new(0, 30, 0, 30)
echgui.Emotebutton.Image = "rbxassetid://16884179279"
echgui.Emotebutton.ImageRectOffset = Vector2.new(858, 366)
echgui.Emotebutton.ImageRectSize = Vector2.new(54, 54)
echgui.Emotebutton.ImageColor3 = Color3.fromRGB(100, 100, 155)
echgui.Emotebutton.ZIndex = 6

echgui.UIGradient_2.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_2.Parent = echgui.Emotebutton

-- Spec / Mix
echgui.SpecButton.Name = "SpecButton"
echgui.SpecButton.Parent = echgui.tabsframe
echgui.SpecButton.BackgroundTransparency = 1
echgui.SpecButton.BorderSizePixel = 0
echgui.SpecButton.Position = UDim2.new(0, 212, 0, 11)
echgui.SpecButton.Size = UDim2.new(0, 30, 0, 30)
echgui.SpecButton.Image = "rbxassetid://16167593004"
echgui.SpecButton.ImageRectOffset = Vector2.new(798, 660)
echgui.SpecButton.ImageRectSize = Vector2.new(108, 108)
echgui.SpecButton.ImageColor3 = Color3.fromRGB(100, 100, 155)
echgui.SpecButton.ZIndex = 6

echgui.UIGradient_9.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_9.Parent = echgui.SpecButton

-- Settings
echgui.Settingsbutton.Name = "Settingsbutton"
echgui.Settingsbutton.Parent = echgui.tabsframe
echgui.Settingsbutton.BackgroundTransparency = 1
echgui.Settingsbutton.BorderSizePixel = 0
echgui.Settingsbutton.Position = UDim2.new(0, 252, 0, 11)
echgui.Settingsbutton.Size = UDim2.new(0, 30, 0, 30)
echgui.Settingsbutton.Image = "rbxassetid://16884179038"
echgui.Settingsbutton.ImageRectOffset = Vector2.new(908, 330)
echgui.Settingsbutton.ImageRectSize = Vector2.new(108, 108)
echgui.Settingsbutton.ImageColor3 = Color3.fromRGB(100, 100, 155)
echgui.Settingsbutton.ZIndex = 6

echgui.UIGradient_3.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_3.Parent = echgui.Settingsbutton

-- Minimize
echgui.MinimazeButton.Name = "MinimazeButton"
echgui.MinimazeButton.Parent = echgui.tabsframe
echgui.MinimazeButton.BackgroundTransparency = 1
echgui.MinimazeButton.BorderSizePixel = 0
echgui.MinimazeButton.Position = UDim2.new(0, 300, 0, 15)
echgui.MinimazeButton.Size = UDim2.new(0, 22, 0, 22)
echgui.MinimazeButton.Image = "rbxassetid://16884179507"
echgui.MinimazeButton.ImageRectOffset = Vector2.new(578, 0)
echgui.MinimazeButton.ImageRectSize = Vector2.new(48, 48)
echgui.MinimazeButton.ImageColor3 = Color3.fromRGB(90, 90, 140)
echgui.MinimazeButton.ZIndex = 6

echgui.UIGradient_4.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_4.Parent = echgui.MinimazeButton

-- Close
echgui.CloseButton.Name = "CloseButton"
echgui.CloseButton.Parent = echgui.tabsframe
echgui.CloseButton.BackgroundTransparency = 1
echgui.CloseButton.BorderSizePixel = 0
echgui.CloseButton.Position = UDim2.new(0, 330, 0, 15)
echgui.CloseButton.Size = UDim2.new(0, 22, 0, 22)
echgui.CloseButton.Image = "rbxassetid://16167593004"
echgui.CloseButton.ImageRectOffset = Vector2.new(440, 578)
echgui.CloseButton.ImageRectSize = Vector2.new(108, 108)
echgui.CloseButton.ImageColor3 = Color3.fromRGB(200, 75, 75)
echgui.CloseButton.ZIndex = 6

echgui.UIGradient_8.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_8.Parent = echgui.CloseButton

-- Tbutton (legacy, hidden)
echgui.Tbutton.Name = "Tbutton"
echgui.Tbutton.Parent = echgui.tabsframe
echgui.Tbutton.BackgroundTransparency = 1
echgui.Tbutton.ImageTransparency = 1
echgui.Tbutton.BorderSizePixel = 0
echgui.Tbutton.Position = UDim2.new(0,0,5,0)
echgui.Tbutton.Size = UDim2.new(0,1,0,1)
echgui.Tbutton.ZIndex = 1

echgui.UIGradient_10.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_10.Parent = echgui.Tbutton

-- hidden image label in tabsframe (compat)
echgui.ImageLabel_6.Parent = echgui.tabsframe
echgui.ImageLabel_6.BackgroundTransparency = 1
echgui.ImageLabel_6.ImageTransparency = 1
echgui.ImageLabel_6.BorderSizePixel = 0
echgui.ImageLabel_6.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_6.Size = UDim2.new(0,1,0,1)
echgui.ImageLabel_6.ZIndex = 1

-- ════════════════════════════════════════════════════════════════
-- TAB 2 — Emotes
-- ════════════════════════════════════════════════════════════════
echgui.tab2.Name = "tab2"
echgui.tab2.Parent = echgui.echframe
echgui.tab2.Active = true
echgui.tab2.BackgroundTransparency = 1
echgui.tab2.BorderSizePixel = 0
echgui.tab2.Position = UDim2.new(0, 0, 0, 52)
echgui.tab2.Size = UDim2.new(0, 360, 0, 393)
echgui.tab2.Visible = false
echgui.tab2.ScrollBarThickness = 3
echgui.tab2.ScrollBarImageColor3 = Color3.fromRGB(99, 102, 241)
echgui.tab2.ScrollingDirection = Enum.ScrollingDirection.Y
echgui.tab2.CanvasSize = UDim2.new(0,0,0,0)
echgui.tab2.AutomaticCanvasSize = Enum.AutomaticSize.Y

-- Emote card template (95 × 112)
echgui.emoteframe.Name = "emoteframe"
echgui.emoteframe.Parent = echgui.tab2
echgui.emoteframe.BackgroundColor3 = Color3.fromRGB(20, 20, 33)
echgui.emoteframe.BackgroundTransparency = 0
echgui.emoteframe.BorderSizePixel = 0
echgui.emoteframe.Position = UDim2.new(0, 6, 0, 6)
echgui.emoteframe.Size = UDim2.new(0, 95, 0, 112)
echgui.emoteframe.ClipsDescendants = true
echgui.emoteframe.Visible = true

echgui.UICorner_3.CornerRadius = UDim.new(0, 10)
echgui.UICorner_3.Parent = echgui.emoteframe

echgui.UIPadding_3.PaddingTop = UDim.new(0, 3)
echgui.UIPadding_3.PaddingLeft = UDim.new(0, 3)
echgui.UIPadding_3.PaddingRight = UDim.new(0, 3)
echgui.UIPadding_3.PaddingBottom = UDim.new(0, 3)
echgui.UIPadding_3.Parent = echgui.emoteframe

-- UIStroke on card (addInteractions reads this)
echgui.UIToolsGradient_3.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(26, 26, 42)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(14, 14, 24))
}
echgui.UIToolsGradient_3.Rotation = 180
echgui.UIToolsGradient_3.Name = "UIToolsGradient"
echgui.UIToolsGradient_3.Parent = echgui.emoteframe

do
	local s = Instance.new("UIStroke")
	s.Name = "UIStroke"
	s.Color = Color3.fromRGB(40, 40, 68)
	s.Thickness = 1
	s.Parent = echgui.emoteframe
end

-- Emote name
echgui.emotename.Name = "emotename"
echgui.emotename.Parent = echgui.emoteframe
echgui.emotename.BackgroundTransparency = 1
echgui.emotename.BorderSizePixel = 0
echgui.emotename.Position = UDim2.new(0, 2, 0, 4)
echgui.emotename.Size = UDim2.new(1, -4, 0, 22)
echgui.emotename.Font = Enum.Font.GothamBold
echgui.emotename.Text = "Name"
echgui.emotename.TextColor3 = Color3.fromRGB(210, 210, 255)
echgui.emotename.TextScaled = true
echgui.emotename.TextSize = 12
echgui.emotename.TextWrapped = true
echgui.emotename.TextXAlignment = Enum.TextXAlignment.Center

echgui.UITextSizeConstraint.MaxTextSize = 12
echgui.UITextSizeConstraint.Parent = echgui.emotename

echgui.UIAspectRatioConstraint.AspectRatio = 3.5
echgui.UIAspectRatioConstraint.Parent = echgui.emotename

echgui.UIGradient_11.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_11.Parent = echgui.emotename

-- Play button (triangle icon, centred)
echgui.playbutton.Name = "playbutton"
echgui.playbutton.Parent = echgui.emoteframe
echgui.playbutton.BackgroundTransparency = 1
echgui.playbutton.BorderSizePixel = 0
echgui.playbutton.Position = UDim2.new(0.5, -20, 0.5, -2)
echgui.playbutton.Size = UDim2.new(0, 40, 0, 40)
echgui.playbutton.Image = "rbxassetid://16884179507"
echgui.playbutton.ImageRectOffset = Vector2.new(578, 400)
echgui.playbutton.ImageRectSize = Vector2.new(48, 48)
echgui.playbutton.ImageColor3 = Color3.fromRGB(99, 102, 241)

echgui.UIGradient_12.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_12.Parent = echgui.playbutton

echgui.ImageLabel_7.Parent = echgui.emoteframe
echgui.ImageLabel_7.BackgroundTransparency = 1
echgui.ImageLabel_7.ImageTransparency = 1
echgui.ImageLabel_7.BorderSizePixel = 0
echgui.ImageLabel_7.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_7.Size = UDim2.new(0,1,0,1)

-- ════════════════════════════════════════════════════════════════
-- TAB 1 — Animations
-- ════════════════════════════════════════════════════════════════
echgui.tab1.Name = "tab1"
echgui.tab1.Parent = echgui.echframe
echgui.tab1.Active = true
echgui.tab1.BackgroundTransparency = 1
echgui.tab1.BorderSizePixel = 0
echgui.tab1.Position = UDim2.new(0, 0, 0, 52)
echgui.tab1.Size = UDim2.new(0, 360, 0, 393)
echgui.tab1.Visible = true
echgui.tab1.ScrollBarThickness = 3
echgui.tab1.ScrollBarImageColor3 = Color3.fromRGB(99, 102, 241)
echgui.tab1.ScrollingDirection = Enum.ScrollingDirection.Y
echgui.tab1.CanvasSize = UDim2.new(0,0,0,0)
echgui.tab1.AutomaticCanvasSize = Enum.AutomaticSize.Y

-- Animation card template (160 × 185)
echgui.Animationsframe.Name = "Animationsframe"
echgui.Animationsframe.Parent = echgui.tab1
echgui.Animationsframe.BackgroundColor3 = Color3.fromRGB(20, 20, 33)
echgui.Animationsframe.BackgroundTransparency = 0
echgui.Animationsframe.BorderSizePixel = 0
echgui.Animationsframe.Position = UDim2.new(0, 8, 0, 6)
echgui.Animationsframe.Size = UDim2.new(0, 160, 0, 185)
echgui.Animationsframe.ClipsDescendants = true
echgui.Animationsframe.Visible = true

echgui.UICorner_4.CornerRadius = UDim.new(0, 12)
echgui.UICorner_4.Parent = echgui.Animationsframe

echgui.UIPadding_4.PaddingTop = UDim.new(0, 4)
echgui.UIPadding_4.PaddingLeft = UDim.new(0, 4)
echgui.UIPadding_4.PaddingRight = UDim.new(0, 4)
echgui.UIPadding_4.PaddingBottom = UDim.new(0, 4)
echgui.UIPadding_4.Parent = echgui.Animationsframe

-- UIStroke on card (addInteractions reads this)
do
	local s = Instance.new("UIStroke")
	s.Name = "UIStroke"
	s.Color = Color3.fromRGB(40, 40, 68)
	s.Thickness = 1
	s.Parent = echgui.Animationsframe
end

echgui.UIToolsGradient_5.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(26, 26, 44)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(14, 14, 24))
}
echgui.UIToolsGradient_5.Rotation = 180
echgui.UIToolsGradient_5.Name = "UIToolsGradient"
echgui.UIToolsGradient_5.Parent = echgui.Animationsframe

-- Animation name label
echgui.Animationname.Name = "Animationname"
echgui.Animationname.Parent = echgui.Animationsframe
echgui.Animationname.BackgroundTransparency = 1
echgui.Animationname.BorderSizePixel = 0
echgui.Animationname.Position = UDim2.new(0, 0, 0, 116)
echgui.Animationname.Size = UDim2.new(1, 0, 0, 20)
echgui.Animationname.Font = Enum.Font.GothamBold
echgui.Animationname.Text = "Name"
echgui.Animationname.TextColor3 = Color3.fromRGB(218, 218, 255)
echgui.Animationname.TextScaled = false
echgui.Animationname.TextSize = 12
echgui.Animationname.TextTruncate = Enum.TextTruncate.AtEnd
echgui.Animationname.TextXAlignment = Enum.TextXAlignment.Center
echgui.Animationname.TextWrapped = false

echgui.UITextSizeConstraint_2.MaxTextSize = 13
echgui.UITextSizeConstraint_2.Parent = echgui.Animationname

echgui.UIGradient_13.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_13.Parent = echgui.Animationname

-- Apply button
echgui.ApplyButton.Name = "ApplyButton"
echgui.ApplyButton.Parent = echgui.Animationsframe
echgui.ApplyButton.BackgroundColor3 = Color3.fromRGB(26, 26, 44)
echgui.ApplyButton.BackgroundTransparency = 0
echgui.ApplyButton.BorderSizePixel = 0
echgui.ApplyButton.Position = UDim2.new(0, 4, 0, 140)
echgui.ApplyButton.Size = UDim2.new(0, 68, 0, 30)
echgui.ApplyButton.Image = "rbxassetid://16167594319"
echgui.ApplyButton.ImageRectOffset = Vector2.new(898, 866)
echgui.ApplyButton.ImageRectSize = Vector2.new(108, 108)
echgui.ApplyButton.ImageColor3 = Color3.fromRGB(180, 180, 255)

do
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, 7)
	c.Parent = echgui.ApplyButton
end

echgui.UIGradient_14.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_14.Parent = echgui.ApplyButton

-- Favorite button
echgui.FavoriteButton.Name = "FavoriteButton"
echgui.FavoriteButton.Parent = echgui.Animationsframe
echgui.FavoriteButton.BackgroundColor3 = Color3.fromRGB(26, 26, 44)
echgui.FavoriteButton.BackgroundTransparency = 0
echgui.FavoriteButton.BorderSizePixel = 0
echgui.FavoriteButton.Position = UDim2.new(0, 78, 0, 140)
echgui.FavoriteButton.Size = UDim2.new(0, 68, 0, 30)
echgui.FavoriteButton.Image = "rbxassetid://16167594452"
echgui.FavoriteButton.ImageRectOffset = Vector2.new(870, 724)
echgui.FavoriteButton.ImageRectSize = Vector2.new(108, 108)
echgui.FavoriteButton.ImageColor3 = Color3.fromRGB(140, 140, 200)

do
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, 7)
	c.Parent = echgui.FavoriteButton
end

echgui.UIGradient_15.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_15.Parent = echgui.FavoriteButton

-- Thumbnail image
echgui.animationresmi.Name = "animationresmi"
echgui.animationresmi.Parent = echgui.Animationsframe
echgui.animationresmi.BackgroundColor3 = Color3.fromRGB(12, 12, 20)
echgui.animationresmi.BackgroundTransparency = 0
echgui.animationresmi.BorderSizePixel = 0
echgui.animationresmi.Position = UDim2.new(0, 0, 0, 0)
echgui.animationresmi.Size = UDim2.new(1, 0, 0, 112)
echgui.animationresmi.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
echgui.animationresmi.ScaleType = Enum.ScaleType.Crop

echgui.UICorner_5.CornerRadius = UDim.new(0, 10)
echgui.UICorner_5.Parent = echgui.animationresmi

echgui.UIPadding_5.Parent = echgui.animationresmi

echgui.UIToolsGradient_4.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIToolsGradient_4.Name = "UIToolsGradient"
echgui.UIToolsGradient_4.Parent = echgui.animationresmi

echgui.ImageLabel_8.Parent = echgui.Animationsframe
echgui.ImageLabel_8.BackgroundTransparency = 1
echgui.ImageLabel_8.ImageTransparency = 1
echgui.ImageLabel_8.BorderSizePixel = 0
echgui.ImageLabel_8.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_8.Size = UDim2.new(0,1,0,1)

-- ════════════════════════════════════════════════════════════════
-- TAB 3 — Settings
-- ════════════════════════════════════════════════════════════════
echgui.tab3.Name = "tab3"
echgui.tab3.Parent = echgui.echframe
echgui.tab3.Active = true
echgui.tab3.BackgroundTransparency = 1
echgui.tab3.BorderSizePixel = 0
echgui.tab3.Position = UDim2.new(0, 0, 0, 52)
echgui.tab3.Size = UDim2.new(0, 360, 0, 393)
echgui.tab3.Visible = false
echgui.tab3.ScrollBarThickness = 3
echgui.tab3.ScrollBarImageColor3 = Color3.fromRGB(99, 102, 241)
echgui.tab3.ScrollingDirection = Enum.ScrollingDirection.Y

echgui.settingsframe.Name = "settingsframe"
echgui.settingsframe.Parent = echgui.tab3
echgui.settingsframe.BackgroundTransparency = 1
echgui.settingsframe.BorderSizePixel = 0
echgui.settingsframe.Position = UDim2.new(0, 0, 0, 0)
echgui.settingsframe.Size = UDim2.new(0, 360, 0, 460)

-- "Settings" section heading
echgui.control.Name = "control"
echgui.control.Parent = echgui.settingsframe
echgui.control.BackgroundTransparency = 1
echgui.control.BorderSizePixel = 0
echgui.control.Position = UDim2.new(0, 0, 0, 10)
echgui.control.Size = UDim2.new(1, 0, 0, 26)
echgui.control.Font = Enum.Font.GothamBold
echgui.control.Text = "⚙  Settings"
echgui.control.TextColor3 = Color3.fromRGB(190, 190, 255)
echgui.control.TextSize = 13
echgui.control.TextXAlignment = Enum.TextXAlignment.Center

echgui.UIGradient_16.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}
echgui.UIGradient_16.Parent = echgui.control

-- Info cards ──────────────────────────────────────────────────
local function makeInfoCard(lbl, x, y, w)
	lbl.BackgroundColor3 = Color3.fromRGB(20, 20, 33)
	lbl.BackgroundTransparency = 0
	lbl.BorderSizePixel = 0
	lbl.Position = UDim2.new(0, x, 0, y)
	lbl.Size = UDim2.new(0, w, 0, 44)
	lbl.Font = Enum.Font.Gotham
	lbl.TextColor3 = Color3.fromRGB(185, 185, 235)
	lbl.TextSize = 12
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	lbl.TextYAlignment = Enum.TextYAlignment.Center
	lbl.TextTruncate = Enum.TextTruncate.AtEnd
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, 9)
	c.Parent = lbl
	local p = Instance.new("UIPadding")
	p.PaddingLeft = UDim.new(0, 10)
	p.Parent = lbl
end

-- name card
echgui.name.Name = "name"
echgui.name.Parent = echgui.settingsframe
echgui.name.Text = "N: —"
makeInfoCard(echgui.name, 10, 46, 162)
echgui.UIGradient_23.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_23.Parent = echgui.name

-- gamename card
echgui.gamename.Name = "gamename"
echgui.gamename.Parent = echgui.settingsframe
echgui.gamename.Text = "G: —"
makeInfoCard(echgui.gamename, 184, 46, 166)
echgui.UIGradient_24.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_24.Parent = echgui.gamename

-- users card
echgui.users.Name = "users"
echgui.users.Parent = echgui.settingsframe
echgui.users.Text = "Players: —"
makeInfoCard(echgui.users, 10, 100, 162)
echgui.UIGradient_25.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_25.Parent = echgui.users

-- time card
echgui.time.Name = "time"
echgui.time.Parent = echgui.settingsframe
echgui.time.Text = "Time: —"
makeInfoCard(echgui.time, 184, 100, 166)
echgui.UIGradient_26.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_26.Parent = echgui.time

-- Key icon
echgui.ImageLabel_9.Name = "ImageLabel_9"
echgui.ImageLabel_9.Parent = echgui.settingsframe
echgui.ImageLabel_9.BackgroundTransparency = 1
echgui.ImageLabel_9.BorderSizePixel = 0
echgui.ImageLabel_9.Position = UDim2.new(0, 10, 0, 158)
echgui.ImageLabel_9.Size = UDim2.new(0, 24, 0, 24)
echgui.ImageLabel_9.Image = "rbxassetid://13539003142"
echgui.ImageLabel_9.ImageColor3 = Color3.fromRGB(99, 102, 241)
echgui.UIGradient_21.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_21.Parent = echgui.ImageLabel_9

-- "Gui Key:" label
echgui.text.Name = "text"
echgui.text.Parent = echgui.settingsframe
echgui.text.BackgroundTransparency = 1
echgui.text.BorderSizePixel = 0
echgui.text.Position = UDim2.new(0, 40, 0, 160)
echgui.text.Size = UDim2.new(0, 100, 0, 20)
echgui.text.Font = Enum.Font.Gotham
echgui.text.Text = "Gui Key:"
echgui.text.TextColor3 = Color3.fromRGB(110, 110, 165)
echgui.text.TextSize = 12
echgui.text.TextXAlignment = Enum.TextXAlignment.Left
echgui.UIGradient_20.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_20.Parent = echgui.text

-- "Z" hotkey badge (rainbow animated by MSGSIO)
echgui.z.Name = "z"
echgui.z.Parent = echgui.settingsframe
echgui.z.BackgroundColor3 = Color3.fromRGB(24, 24, 40)
echgui.z.BackgroundTransparency = 0
echgui.z.BorderSizePixel = 0
echgui.z.Position = UDim2.new(0, 150, 0, 155)
echgui.z.Size = UDim2.new(0, 44, 0, 28)
echgui.z.Font = Enum.Font.GothamBold
echgui.z.Text = "Z"
echgui.z.TextColor3 = Color3.fromRGB(99, 102, 241)
echgui.z.TextSize = 15
echgui.z.TextXAlignment = Enum.TextXAlignment.Center
do
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, 7)
	c.Parent = echgui.z
	local s = Instance.new("UIStroke")
	s.Color = Color3.fromRGB(55, 55, 100)
	s.Thickness = 1
	s.Parent = echgui.z
end
echgui.UIGradient_22.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_22.Parent = echgui.z

-- hidden compat labels
echgui.ImageLabel_10.Parent = echgui.settingsframe
echgui.ImageLabel_10.BackgroundTransparency = 1
echgui.ImageLabel_10.ImageTransparency = 1
echgui.ImageLabel_10.BorderSizePixel = 0
echgui.ImageLabel_10.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_10.Size = UDim2.new(0,1,0,1)
echgui.UIGradient_27.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_27.Parent = echgui.ImageLabel_10

echgui.ImageLabel_11.Parent = echgui.settingsframe
echgui.ImageLabel_11.BackgroundTransparency = 1
echgui.ImageLabel_11.ImageTransparency = 1
echgui.ImageLabel_11.BorderSizePixel = 0
echgui.ImageLabel_11.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_11.Size = UDim2.new(0,1,0,1)
echgui.UIGradient_28.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_28.Parent = echgui.ImageLabel_11

echgui.ImageLabel_12.Parent = echgui.settingsframe
echgui.ImageLabel_12.BackgroundTransparency = 1
echgui.ImageLabel_12.ImageTransparency = 1
echgui.ImageLabel_12.BorderSizePixel = 0
echgui.ImageLabel_12.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_12.Size = UDim2.new(0,1,0,1)

-- Stop Emote button
echgui.stopemotebutton.Name = "stopemotebutton"
echgui.stopemotebutton.Parent = echgui.settingsframe
echgui.stopemotebutton.BackgroundColor3 = Color3.fromRGB(22, 22, 38)
echgui.stopemotebutton.BackgroundTransparency = 0
echgui.stopemotebutton.BorderSizePixel = 0
echgui.stopemotebutton.Position = UDim2.new(0, 10, 0, 200)
echgui.stopemotebutton.Size = UDim2.new(0, 162, 0, 44)
echgui.stopemotebutton.Font = Enum.Font.GothamBold
echgui.stopemotebutton.Text = "⏹  Stop Emote"
echgui.stopemotebutton.TextColor3 = Color3.fromRGB(210, 80, 80)
echgui.stopemotebutton.TextSize = 13

echgui.UICorner_6.CornerRadius = UDim.new(0, 10)
echgui.UICorner_6.Parent = echgui.stopemotebutton
echgui.UIPadding_6.Parent = echgui.stopemotebutton
echgui.UIGradient_18.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_18.Parent = echgui.stopemotebutton

do
	local s = Instance.new("UIStroke")
	s.Color = Color3.fromRGB(80, 30, 30)
	s.Thickness = 1
	s.Parent = echgui.stopemotebutton
end

-- Reset Animation button
echgui.resetanimation.Name = "resetanimation"
echgui.resetanimation.Parent = echgui.settingsframe
echgui.resetanimation.BackgroundColor3 = Color3.fromRGB(22, 22, 38)
echgui.resetanimation.BackgroundTransparency = 0
echgui.resetanimation.BorderSizePixel = 0
echgui.resetanimation.Position = UDim2.new(0, 184, 0, 200)
echgui.resetanimation.Size = UDim2.new(0, 166, 0, 44)
echgui.resetanimation.Font = Enum.Font.GothamBold
echgui.resetanimation.Text = "↺  Reset Anim"
echgui.resetanimation.TextColor3 = Color3.fromRGB(99, 102, 241)
echgui.resetanimation.TextSize = 13
echgui.resetanimation.TextWrapped = false

echgui.UICorner_7.CornerRadius = UDim.new(0, 10)
echgui.UICorner_7.Parent = echgui.resetanimation
echgui.UIPadding_7.Parent = echgui.resetanimation
echgui.UIGradient_19.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_19.Parent = echgui.resetanimation

do
	local s = Instance.new("UIStroke")
	s.Color = Color3.fromRGB(40, 40, 80)
	s.Thickness = 1
	s.Parent = echgui.resetanimation
end

-- About text
echgui.echelontext.Name = "echelontext"
echgui.echelontext.Parent = echgui.settingsframe
echgui.echelontext.BackgroundTransparency = 1
echgui.echelontext.BorderSizePixel = 0
echgui.echelontext.Position = UDim2.new(0, 10, 0, 258)
echgui.echelontext.Size = UDim2.new(0, 340, 0, 75)
echgui.echelontext.Font = Enum.Font.Gotham
echgui.echelontext.Text = "Hi, I'm Echelon. This is the first version of the script, more to come. Please let me know if you find any bugs."
echgui.echelontext.TextColor3 = Color3.fromRGB(80, 80, 120)
echgui.echelontext.TextScaled = false
echgui.echelontext.TextSize = 11
echgui.echelontext.TextWrapped = true
echgui.echelontext.TextXAlignment = Enum.TextXAlignment.Center
echgui.UIGradient_17.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_17.Parent = echgui.echelontext

-- Credit label
do
	local cr = Instance.new("TextLabel")
	cr.Name = "CreditLabel"
	cr.Parent = echgui.settingsframe
	cr.BackgroundTransparency = 1
	cr.BorderSizePixel = 0
	cr.Position = UDim2.new(0, 0, 0, 346)
	cr.Size = UDim2.new(1, 0, 0, 18)
	cr.Font = Enum.Font.GothamBold
	cr.Text = "UI redesign by @in666ar"
	cr.TextColor3 = Color3.fromRGB(50, 50, 90)
	cr.TextSize = 10
	cr.TextXAlignment = Enum.TextXAlignment.Center
end

-- ════════════════════════════════════════════════════════════════
-- TAB 4 — Mix / Spec  (6 dropdowns in 2-column grid)
-- ════════════════════════════════════════════════════════════════
echgui.tab4.Name = "tab4"
echgui.tab4.Parent = echgui.echframe
echgui.tab4.Active = true
echgui.tab4.BackgroundTransparency = 1
echgui.tab4.BorderSizePixel = 0
echgui.tab4.Position = UDim2.new(0, 0, 0, 52)
echgui.tab4.Size = UDim2.new(0, 360, 0, 393)
echgui.tab4.Visible = false
echgui.tab4.ScrollBarThickness = 3
echgui.tab4.ScrollBarImageColor3 = Color3.fromRGB(99, 102, 241)
echgui.tab4.ScrollingDirection = Enum.ScrollingDirection.Y
echgui.tab4.CanvasSize = UDim2.new(0,0,0,0)
echgui.tab4.AutomaticCanvasSize = Enum.AutomaticSize.Y

echgui.tab4frame.Name = "tab4frame"
echgui.tab4frame.Parent = echgui.tab4
echgui.tab4frame.BackgroundTransparency = 1
echgui.tab4frame.BorderSizePixel = 0
echgui.tab4frame.Position = UDim2.new(0,0,0,0)
echgui.tab4frame.Size = UDim2.new(0, 360, 0, 870)

-- ── Row labels ──────────────────────────────────────────────────
local function makeRowLabel(lbl, grad, text, x, y)
	lbl.Parent = echgui.tab4frame
	lbl.BackgroundTransparency = 1
	lbl.BorderSizePixel = 0
	lbl.Position = UDim2.new(0, x, 0, y)
	lbl.Size = UDim2.new(0, 162, 0, 16)
	lbl.Font = Enum.Font.GothamBold
	lbl.Text = text
	lbl.TextColor3 = Color3.fromRGB(120, 120, 180)
	lbl.TextSize = 11
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	grad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
	grad.Parent = lbl
end

makeRowLabel(echgui.Idle,  echgui.UIGradient_29, "▾  Idle",   10,  8)
makeRowLabel(echgui.Walk,  echgui.UIGradient_30, "▾  Walk",  188,  8)
makeRowLabel(echgui.Run,   echgui.UIGradient_31, "▾  Run",    10, 298)
makeRowLabel(echgui.Jump,  echgui.UIGradient_32, "▾  Jump",  188, 298)
makeRowLabel(echgui.Fall,  echgui.UIGradient_37, "▾  Fall",   10, 588)
makeRowLabel(echgui.Swim,  echgui.UIGradient_33, "▾  Swim",  188, 588)

-- ── Dropdown builder ────────────────────────────────────────────
local function buildDD(
	dropFrame, uiCorner, gradBg, uiPad,
	mainBtn, gradBtn,
	listFrame, optTmpl, optCorner, optPad, gradOpt,
	listCorner, listPad, listGrad,
	selText, gradSel,
	px, py
)
	dropFrame.Parent = echgui.tab4frame
	dropFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 30)
	dropFrame.BackgroundTransparency = 0
	dropFrame.BorderSizePixel = 0
	dropFrame.Position = UDim2.new(0, px, 0, py)
	dropFrame.Size = UDim2.new(0, 162, 0, 260)
	dropFrame.ClipsDescendants = false

	uiCorner.CornerRadius = UDim.new(0, 10)
	uiCorner.Parent = dropFrame

	do
		local s = Instance.new("UIStroke")
		s.Color = Color3.fromRGB(38, 38, 65)
		s.Thickness = 1
		s.Parent = dropFrame
	end

	gradBg.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 24, 38)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(12, 12, 20))
	}
	gradBg.Rotation = 180
	gradBg.Name = "UIToolsGradient"
	gradBg.Parent = dropFrame

	uiPad.Parent = dropFrame

	mainBtn.Name = "MainButton"
	mainBtn.Parent = dropFrame
	mainBtn.BackgroundTransparency = 1
	mainBtn.BorderSizePixel = 0
	mainBtn.Position = UDim2.new(0, 4, 0, 6)
	mainBtn.Size = UDim2.new(0, 30, 0, 30)
	mainBtn.Image = "http://www.roblox.com/asset/?id=6031090997"
	mainBtn.ImageColor3 = Color3.fromRGB(99, 102, 241)
	gradBtn.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
	gradBtn.Parent = mainBtn

	selText.Name = "SelectedText"
	selText.Parent = dropFrame
	selText.BackgroundTransparency = 1
	selText.BorderSizePixel = 0
	selText.Position = UDim2.new(0, 40, 0, 9)
	selText.Size = UDim2.new(0, 116, 0, 24)
	selText.Font = Enum.Font.Gotham
	selText.Text = "None"
	selText.TextColor3 = Color3.fromRGB(110, 110, 165)
	selText.TextSize = 12
	selText.TextXAlignment = Enum.TextXAlignment.Left
	selText.TextTruncate = Enum.TextTruncate.AtEnd
	gradSel.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
	gradSel.Parent = selText

	listFrame.Name = "ListFrame"
	listFrame.Parent = dropFrame
	listFrame.Active = true
	listFrame.BackgroundColor3 = Color3.fromRGB(14, 14, 24)
	listFrame.BorderSizePixel = 0
	listFrame.Position = UDim2.new(0, 0, 0, 44)
	listFrame.Size = UDim2.new(1, 0, 0, 0)
	listFrame.Visible = false
	listFrame.ScrollBarThickness = 3
	listFrame.ScrollBarImageColor3 = Color3.fromRGB(99, 102, 241)

	listCorner.CornerRadius = UDim.new(0, 8)
	listCorner.Parent = listFrame
	listPad.PaddingLeft = UDim.new(0, 4)
	listPad.PaddingRight = UDim.new(0, 4)
	listPad.PaddingTop = UDim.new(0, 4)
	listPad.Parent = listFrame
	listGrad.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 34)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 18))
	}
	listGrad.Rotation = 180
	listGrad.Name = "UIToolsGradient"
	listGrad.Parent = listFrame

	optTmpl.Name = "Option"
	optTmpl.Parent = listFrame
	optTmpl.BackgroundColor3 = Color3.fromRGB(26, 26, 44)
	optTmpl.BackgroundTransparency = 0
	optTmpl.BorderSizePixel = 0
	optTmpl.Position = UDim2.new(0, 0, 0, 0)
	optTmpl.Size = UDim2.new(1, 0, 0, 34)
	optTmpl.Font = Enum.Font.Gotham
	optTmpl.Text = "Animation"
	optTmpl.TextColor3 = Color3.fromRGB(190, 190, 240)
	optTmpl.TextSize = 12
	optTmpl.TextXAlignment = Enum.TextXAlignment.Left

	optCorner.CornerRadius = UDim.new(0, 6)
	optCorner.Parent = optTmpl
	optPad.PaddingLeft = UDim.new(0, 8)
	optPad.Parent = optTmpl
	gradOpt.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
	gradOpt.Parent = optTmpl
end

-- Idle (left, row1)
buildDD(
	echgui.IdleDropDown, echgui.UICorner_8, echgui.UIToolsGradient_6, echgui.UIPadding_8,
	echgui.MainButton, echgui.UIGradient_34,
	echgui.ListFrame, echgui.Option, echgui.UICorner_9, echgui.UIPadding_9, echgui.UIGradient_35,
	echgui.UICorner_10, echgui.UIPadding_10, echgui.UIToolsGradient_7,
	echgui.SelectedText, echgui.UIGradient_36,
	10, 28
)

-- Walk (right, row1)
buildDD(
	echgui.WalkDropDown, echgui.UICorner_11, echgui.UIToolsGradient_8, echgui.UIPadding_11,
	echgui.MainButton_2, echgui.UIGradient_38,
	echgui.ListFrame_2, echgui.Option_2, echgui.UICorner_12, echgui.UIPadding_12, echgui.UIGradient_39,
	echgui.UICorner_13, echgui.UIPadding_13, echgui.UIToolsGradient_9,
	echgui.SelectedText_2, echgui.UIGradient_40,
	188, 28
)

-- Run (left, row2)
buildDD(
	echgui.RunDropDown, echgui.UICorner_14, echgui.UIToolsGradient_10, echgui.UIPadding_14,
	echgui.MainButton_3, echgui.UIGradient_41,
	echgui.ListFrame_3, echgui.Option_3, echgui.UICorner_15, echgui.UIPadding_15, echgui.UIGradient_42,
	echgui.UICorner_16, echgui.UIPadding_16, echgui.UIToolsGradient_11,
	echgui.SelectedText_3, echgui.UIGradient_43,
	10, 318
)

-- Jump (right, row2)
buildDD(
	echgui.JumpDropDown, echgui.UICorner_17, echgui.UIToolsGradient_12, echgui.UIPadding_17,
	echgui.MainButton_4, echgui.UIGradient_44,
	echgui.ListFrame_4, echgui.Option_4, echgui.UICorner_18, echgui.UIPadding_18, echgui.UIGradient_45,
	echgui.UICorner_19, echgui.UIPadding_19, echgui.UIToolsGradient_13,
	echgui.SelectedText_4, echgui.UIGradient_46,
	188, 318
)

-- Fall (left, row3)
buildDD(
	echgui.FallDropDown, echgui.UICorner_20, echgui.UIToolsGradient_14, echgui.UIPadding_20,
	echgui.MainButton_5, echgui.UIGradient_47,
	echgui.ListFrame_5, echgui.Option_5, echgui.UICorner_21, echgui.UIPadding_21, echgui.UIGradient_48,
	echgui.UICorner_22, echgui.UIPadding_22, echgui.UIToolsGradient_15,
	echgui.SelectedText_5, echgui.UIGradient_49,
	10, 608
)

-- Swim (right, row3)
buildDD(
	echgui.SwimDropDown, echgui.UICorner_23, echgui.UIToolsGradient_16, echgui.UIPadding_23,
	echgui.MainButton_6, echgui.UIGradient_50,
	echgui.ListFrame_6, echgui.Option_6, echgui.UICorner_24, echgui.UIPadding_24, echgui.UIGradient_51,
	echgui.UICorner_25, echgui.UIPadding_25, echgui.UIToolsGradient_17,
	echgui.SelectedText_6, echgui.UIGradient_52,
	188, 608
)

-- hidden compat image labels on tab4frame
echgui.ImageLabel_13.Parent = echgui.tab4frame
echgui.ImageLabel_13.BackgroundTransparency = 1
echgui.ImageLabel_13.ImageTransparency = 1
echgui.ImageLabel_13.BorderSizePixel = 0
echgui.ImageLabel_13.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_13.Size = UDim2.new(0,1,0,1)

echgui.ImageLabel_14.Parent = echgui.tab4frame
echgui.ImageLabel_14.BackgroundTransparency = 1
echgui.ImageLabel_14.ImageTransparency = 1
echgui.ImageLabel_14.BorderSizePixel = 0
echgui.ImageLabel_14.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_14.Size = UDim2.new(0,1,0,1)

echgui.ImageLabel_15.Parent = echgui.tab4
echgui.ImageLabel_15.BackgroundTransparency = 1
echgui.ImageLabel_15.ImageTransparency = 1
echgui.ImageLabel_15.BorderSizePixel = 0
echgui.ImageLabel_15.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_15.Size = UDim2.new(0,1,0,1)

-- ════════════════════════════════════════════════════════════════
-- DRAGGABLE MINI PILL  (shown when main window is closed)
-- ════════════════════════════════════════════════════════════════
echgui.draggableframe.Name = "draggableframe"
echgui.draggableframe.Parent = echgui.echgui
echgui.draggableframe.AnchorPoint = Vector2.new(0.5, 0)
echgui.draggableframe.BackgroundColor3 = Color3.fromRGB(13, 13, 22)
echgui.draggableframe.BackgroundTransparency = 0.08
echgui.draggableframe.BorderSizePixel = 0
echgui.draggableframe.Position = UDim2.new(0.5, 0, 0, 26)
echgui.draggableframe.Size = UDim2.new(0, 160, 0, 42)

echgui.UIToolsGradient_18.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 34)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 18))
}
echgui.UIToolsGradient_18.Rotation = 90
echgui.UIToolsGradient_18.Name = "UIToolsGradient"
echgui.UIToolsGradient_18.Parent = echgui.draggableframe

echgui.UIPadding_26.Parent = echgui.draggableframe

-- drag handle (left of pill)
echgui.dragbutton_2.Name = "dragbutton"
echgui.dragbutton_2.Parent = echgui.draggableframe
echgui.dragbutton_2.BackgroundTransparency = 1
echgui.dragbutton_2.BorderSizePixel = 0
echgui.dragbutton_2.Position = UDim2.new(0, 6, 0.5, -14)
echgui.dragbutton_2.Size = UDim2.new(0, 28, 0, 28)
echgui.dragbutton_2.Image = "rbxassetid://16884179507"
echgui.dragbutton_2.ImageRectOffset = Vector2.new(678, 100)
echgui.dragbutton_2.ImageRectSize = Vector2.new(48, 48)
echgui.dragbutton_2.ImageColor3 = Color3.fromRGB(99, 102, 241)
echgui.UIGradient_53.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_53.Parent = echgui.dragbutton_2

-- pill shape + rainbow stroke (YVXRNC animates this)
echgui.UICorner_26.CornerRadius = UDim.new(1, 0)
echgui.UICorner_26.Parent = echgui.draggableframe

do
	local s = Instance.new("UIStroke")
	s.Name = "UIStroke"
	s.Color = Color3.fromRGB(99, 102, 241)
	s.Thickness = 2
	s.Parent = echgui.draggableframe
end

-- Open/close toggle (right of pill)
echgui.openclose.Name = "openclose"
echgui.openclose.Parent = echgui.draggableframe
echgui.openclose.BackgroundTransparency = 1
echgui.openclose.BorderSizePixel = 0
echgui.openclose.Position = UDim2.new(1, -34, 0.5, -14)
echgui.openclose.Size = UDim2.new(0, 28, 0, 28)
echgui.openclose.Image = "rbxassetid://16884179507"
echgui.openclose.ImageRectOffset = Vector2.new(678, 50)
echgui.openclose.ImageRectSize = Vector2.new(48, 48)
echgui.openclose.ImageColor3 = Color3.fromRGB(139, 92, 246)
echgui.UIGradient_54.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}
echgui.UIGradient_54.Parent = echgui.openclose

-- credit label centred on pill
do
	local cr = Instance.new("TextLabel")
	cr.Name = "CreditPill"
	cr.Parent = echgui.draggableframe
	cr.BackgroundTransparency = 1
	cr.BorderSizePixel = 0
	cr.Position = UDim2.new(0, 38, 0, 0)
	cr.Size = UDim2.new(0, 84, 1, 0)
	cr.Font = Enum.Font.GothamBold
	cr.Text = "@in666ar"
	cr.TextColor3 = Color3.fromRGB(65, 65, 105)
	cr.TextSize = 11
	cr.TextXAlignment = Enum.TextXAlignment.Center
end

-- hidden compat image labels on pill
echgui.ImageLabel_16.Parent = echgui.draggableframe
echgui.ImageLabel_16.BackgroundTransparency = 1
echgui.ImageLabel_16.ImageTransparency = 1
echgui.ImageLabel_16.BorderSizePixel = 0
echgui.ImageLabel_16.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_16.Size = UDim2.new(0,1,0,1)

echgui.ImageLabel_17.Parent = echgui.draggableframe
echgui.ImageLabel_17.BackgroundTransparency = 1
echgui.ImageLabel_17.ImageTransparency = 1
echgui.ImageLabel_17.BorderSizePixel = 0
echgui.ImageLabel_17.Position = UDim2.new(0,0,5,0)
echgui.ImageLabel_17.Size = UDim2.new(0,1,0,1)

-- ════════════════════════════════════════════════════════════════
-- Active-tab highlight helper  (visual only, logic via VSOV)
-- ════════════════════════════════════════════════════════════════
local function setTabActive(btn)
	local all = {echgui.Animationsbutton,echgui.Emotebutton,echgui.SpecButton,echgui.Settingsbutton}
	for _,b in ipairs(all) do b.ImageColor3 = Color3.fromRGB(90,90,145) end
	btn.ImageColor3 = Color3.fromRGB(99,102,241)
end
echgui.Animationsbutton.MouseButton1Click:Connect(function() setTabActive(echgui.Animationsbutton) end)
echgui.Emotebutton.MouseButton1Click:Connect(function()      setTabActive(echgui.Emotebutton) end)
echgui.SpecButton.MouseButton1Click:Connect(function()       setTabActive(echgui.SpecButton) end)
echgui.Settingsbutton.MouseButton1Click:Connect(function()   setTabActive(echgui.Settingsbutton) end)
setTabActive(echgui.Animationsbutton)

-- ════════════════════════════════════════════════════════════════
-- TOAST NOTIFICATION SYSTEM  (non-intrusive, bottom of screen)
-- ════════════════════════════════════════════════════════════════
do
	local TS = game:GetService("TweenService")

	local toast = Instance.new("Frame")
	toast.Name = "ToastNotif"
	toast.AnchorPoint = Vector2.new(0.5, 1)
	toast.BackgroundColor3 = Color3.fromRGB(20, 20, 36)
	toast.BackgroundTransparency = 0.08
	toast.BorderSizePixel = 0
	toast.Position = UDim2.new(0.5, 0, 1, 80)
	toast.Size = UDim2.new(0, 240, 0, 36)
	toast.ZIndex = 30
	toast.Parent = echgui.echgui

	local tc = Instance.new("UICorner")
	tc.CornerRadius = UDim.new(0, 10)
	tc.Parent = toast

	local ts2 = Instance.new("UIStroke")
	ts2.Color = Color3.fromRGB(50, 50, 90)
	ts2.Thickness = 1
	ts2.Parent = toast

	local toastLbl = Instance.new("TextLabel")
	toastLbl.Parent = toast
	toastLbl.BackgroundTransparency = 1
	toastLbl.Size = UDim2.new(1,-12,1,0)
	toastLbl.Position = UDim2.new(0,6,0,0)
	toastLbl.Font = Enum.Font.GothamBold
	toastLbl.Text = ""
	toastLbl.TextColor3 = Color3.fromRGB(200,200,255)
	toastLbl.TextSize = 12
	toastLbl.TextXAlignment = Enum.TextXAlignment.Center
	toastLbl.ZIndex = 31

	local busy = false
	_G.EchelonNotify = function(msg, col)
		if busy then return end
		busy = true
		toastLbl.Text = msg
		toastLbl.TextColor3 = col or Color3.fromRGB(200,200,255)
		local inTw = TS:Create(toast,TweenInfo.new(0.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{Position=UDim2.new(0.5,0,1,-20)})
		local outTw = TS:Create(toast,TweenInfo.new(0.3,Enum.EasingStyle.Quart,Enum.EasingDirection.In),{Position=UDim2.new(0.5,0,1,80)})
		inTw:Play()
		task.delay(2.2,function()
			outTw:Play()
			outTw.Completed:Connect(function() busy=false end)
		end)
	end

	task.delay(1.6, function()
		if _G.EchelonNotify then
			_G.EchelonNotify("✦ Echelon v2.5 loaded!", Color3.fromRGB(139,92,246))
		end
	end)
end

-- Scripts:
-- Scripts:

local function ZPDA_fake_script() -- echgui.echgui.drgabble 
	local script = Instance.new('LocalScript', echgui.echgui)

	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	
	-- Sürükləmə funksiyasını yaradırıq
	local function makeDraggable(dragButton, mainFrame)
		local dragging = false
		local dragStart, startPos
	
		dragButton.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = mainFrame.Position
	
				-- Barmağı/Siçanı buraxanda dayansın
				local connection
				connection = UserInputService.InputEnded:Connect(function(inputEnd)
					if inputEnd.UserInputType == Enum.UserInputType.MouseButton1 or inputEnd.UserInputType == Enum.UserInputType.Touch then
						dragging = false
						connection:Disconnect()
					end
				end)
			end
		end)
	
		UserInputService.InputChanged:Connect(function(input)
			if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local delta = input.Position - dragStart
				local newPos = UDim2.new(
					startPos.X.Scale, 
					startPos.X.Offset + delta.X, 
					startPos.Y.Scale, 
					startPos.Y.Offset + delta.Y
				)
	
				TweenService:Create(mainFrame, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = newPos}):Play()
			end
		end)
	end
	
	
	
	local screenGui = script.Parent -- Əgər skript ScreenGui-dədirsə
	
	
	local frame1 = screenGui:WaitForChild("draggableframe")
	local button1 = frame1:WaitForChild("dragbutton")
	makeDraggable(button1, frame1)
	
	
	local frame2 = screenGui:WaitForChild("echframe") 
	local button2 = frame2:WaitForChild("tabsframe"):WaitForChild("dragbutton")
	makeDraggable(button2, frame2)
end
coroutine.wrap(ZPDA_fake_script)()
local function INYZLDB_fake_script() -- echgui.echframe.animationsscript 
	local script = Instance.new('LocalScript', echgui.echframe)

	
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local ContentProvider = game:GetService("ContentProvider")
	local lp = Players.LocalPlayer
	
	local screenGui = script.Parent
	local scrollingFrame = screenGui:FindFirstChild("tab1", true)
	local template = screenGui:FindFirstChild("Animationsframe", true)
	local activeFrame = nil
	local selectedBundle = nil
	
	
	local hoverSound = Instance.new("Sound")
	hoverSound.Name = "HoverSound"
	hoverSound.SoundId = "rbxassetid://6895079853"
	hoverSound.Volume = 0.5
	hoverSound.Parent = screenGui
	ContentProvider:PreloadAsync({hoverSound})
	

	local bundleIds = {
		-- Əsas Animasiyonlar
		['Stylish'] = 83,
		['Zombie'] = 97,
		['Robot'] = 82,
		['Toy'] = 85,
		['Cartoony'] = 84,
		['Superhero'] = 81,
		['Mage'] = 91,
		['Levitation'] = 79,
		['Vampire'] = 96,
		['Elder'] = 37,
		['Werewolf'] = 95,
		['Knight'] = 90,
		['Bold'] = 331856,
		['Astronaut'] = 36,
		['Bubbly'] = 39,
		['Pirate'] = 85,
		['Rthro'] = 417,
		['Ninja'] = 89,
		['Oldschool'] = 667,
	
		-- Brend Animasiyonları
		['Adidas Sports'] = 427999,
		['Adidas Community'] = 896,
		['Princess'] = 41,
		['Confident'] = 94,
		['Popstar'] = 212,
		['Patrol'] = 207,
		['Sneaky'] = 171,
		['Cowboy'] = 152,
		['Ghost'] = 79,  -- Levitation bundle
		['Ghost 2'] = 79,  -- Levitation bundle
	
		-- Rthro Xarakterləri
		['Mr. Toilet'] = 483,
		['Udzal'] = 473,
		['Oinan Thickhoof'] = 474,
		['Borock'] = 471,
		['Blocky Mech'] = 483,
		['Stylized Female'] = 507,
	
		-- Yeni Animasiyonlar
		['NFL'] = 932296,
		['CatwalkGram'] = 1601900,
		['NoBoundariesAnimation'] = 455003,
		['AuraAnimationPack'] = 1189398,
		['UnboxedAnimations'] = 4164795,
		['WickedPopular'] = 1189398,
		['WickedDancingThroughLife'] = 1295795,
		['Mocap'] = 40,
		['R15'] = 1,  -- Default R15
	
		-- Anime Xarakterləri (əgər bundle varsa)
		['Gojo'] = 1,  -- Placeholder
		['Geto'] = 1,  -- Placeholder
	}
	
	-- 4. RBXTHUMB THUMBNAIL ƏLDƏ ETMƏ FUNKSIYASI
	local function getBundleThumbnail(bundleId)
		if not bundleId or bundleId == 0 then
			return "rbxasset://textures/ui/GuiImagePlaceholder.png"
		end
	
		-- rbxthumb:// formatı istifadə et
		-- BundleThumbnail type + bundle ID + ölçü
		local thumbnailUrl = string.format(
			"rbxthumb://type=BundleThumbnail&id=%d&w=420&h=420",
			bundleId
		)
	
		return thumbnailUrl
	end
	
	-- 5. ANIMASYON VERİLERİ
	local animationData = {
		Stylish = {
			Idle = 616136790,
			Idle2 = 616138447,
			Idle3 = 886888594,
			Walk = 616146177,
			Run = 616140816,
			Jump = 616139451,
			Climb = 616133594,
			Fall = 616134815,
			Swim = 616143378,
			SwimIdle = 616144772,
			Weight = 9,
			Weight2 = 1
		},
		Zombie = {
			Idle = 616158929,
			Idle2 = 616160636,
			Idle3 = 885545458,
			Walk = 616168032,
			Run = 616163682,
			Jump = 616161997,
			Climb = 616156119,
			Fall = 616157476,
			Swim = 616165109,
			SwimIdle = 616166655,
			Weight = 9,
			Weight2 = 1
		},
		Robot = {
			Idle = 616088211,
			Idle2 = 616089559,
			Idle3 = 885531463,
			Walk = 616095330,
			Run = 616091570,
			Jump = 616090535,
			Climb = 616086039,
			Fall = 616087089,
			Swim = 616092998,
			SwimIdle = 616094091,
			Weight = 9,
			Weight2 = 1
		},
		Toy = {
			Idle = 782841498,
			Idle2 = 782845736,
			Idle3 = 980952228,
			Walk = 782843345,
			Run = 782842708,
			Jump = 782847020,
			Climb = 782843869,
			Fall = 782846423,
			Swim = 782844582,
			SwimIdle = 782845186,
			Weight = 9,
			Weight2 = 1
		},
		Cartoony = {
			Idle = 742637544,
			Idle2 = 742638445,
			Idle3 = 885477856,
			Walk = 742640026,
			Run = 742638842,
			Jump = 742637942,
			Climb = 742636889,
			Fall = 742637151,
			Swim = 742639220,
			SwimIdle = 742639812,
			Weight = 9,
			Weight2 = 1
		},
		Superhero = {
			Idle = 616111295,
			Idle2 = 616113536,
			Idle3 = 885535855,
			Walk = 616122287,
			Run = 616117076,
			Jump = 616115533,
			Climb = 616104706,
			Fall = 616108001,
			Swim = 616119360,
			SwimIdle = 616120861,
			Weight = 9,
			Weight2 = 1
		},
		Mage = {
			Idle = 707742142,
			Idle2 = 707855907,
			Idle3 = 885508740,
			Walk = 707897309,
			Run = 707861613,
			Jump = 707853694,
			Climb = 707826056,
			Fall = 707829716,
			Swim = 707876443,
			SwimIdle = 707894699,
			Weight = 9,
			Weight2 = 1
		},
		Levitation = {
			Idle = 616006778,
			Idle2 = 616008087,
			Idle3 = 886862142,
			Walk = 616013216,
			Run = 616010382,
			Jump = 616008936,
			Climb = 616003713,
			Fall = 616005863,
			Swim = 616011509,
			SwimIdle = 616012453,
			Weight = 9,
			Weight2 = 1
		},
		Vampire = {
			Idle = 1083445855,
			Idle2 = 1083450166,
			Idle3 = 1088037547,
			Walk = 1083473930,
			Run = 1083462077,
			Jump = 1083455352,
			Climb = 1083439238,
			Fall = 1083443587,
			Swim = 1083464683,
			SwimIdle = 1083467779,
			Weight = 9,
			Weight2 = 1
		},
		Elder = {
			Idle = 845397899,
			Idle2 = 845400520,
			Idle3 = 901160519,
			Walk = 845403856,
			Run = 845386501,
			Jump = 845398858,
			Climb = 845392038,
			Fall = 845396048,
			Swim = 845401742,
			SwimIdle = 845403127,
			Weight = 9,
			Weight2 = 1
		},
		Werewolf = {
			Idle = 1083195517,
			Idle2 = 1083214717,
			Idle3 = 1099492820,
			Walk = 1083178339,
			Run = 1083216690,
			Jump = 1083218792,
			Climb = 1083182000,
			Fall = 1083189019,
			Swim = 1083222527,
			SwimIdle = 1083225406,
			Weight = 9,
			Weight2 = 1
		},
		Knight = {
			Idle = 657595757,
			Idle2 = 657568135,
			Idle3 = 885499184,
			Walk = 657552124,
			Run = 657564596,
			Jump = 658409194,
			Climb = 658360781,
			Fall = 657600338,
			Swim = 657560551,
			SwimIdle = 657557095,
			Weight = 9,
			Weight2 = 1
		},
		Bold = {
			Idle = 16738333868,
			Idle2 = 16738334710,
			Idle3 = 16738335517,
			Walk = 16738340646,
			Run = 16738337225,
			Jump = 16738336650,
			Climb = 16738332169,
			Fall = 16738333171,
			Swim = 16738339158,
			SwimIdle = 16738339817,
			Weight = 9,
			Weight2 = 1
		},
		Astronaut = {
			Idle = 891621366,
			Idle2 = 891633237,
			Idle3 = 1047759695,
			Walk = 891667138,
			Run = 891636393,
			Jump = 891627522,
			Climb = 891609353,
			Fall = 891617961,
			Swim = 891639666,
			SwimIdle = 891663592,
			Weight = 9,
			Weight2 = 1
		},
		Bubbly = {
			Idle = 910004836,
			Idle2 = 910009958,
			Idle3 = 1018536639,
			Walk = 910034870,
			Run = 910025107,
			Jump = 910016857,
			Climb = 909997997,
			Fall = 910001910,
			Swim = 910028158,
			SwimIdle = 910030921,
			Weight = 9,
			Weight2 = 1
		},
		Pirate = {
			Idle = 750781874,
			Idle2 = 750782770,
			Idle3 = 885515365,
			Walk = 750785693,
			Run = 750783738,
			Jump = 750782230,
			Climb = 750779899,
			Fall = 750780242,
			Swim = 750784579,
			SwimIdle = 750785176,
			Weight = 9,
			Weight2 = 1
		},
		Rthro = {
			Idle = 2510196951,
			Idle2 = 2510197257,
			Idle3 = 3711062489,
			Walk = 2510202577,
			Run = 2510198475,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162,
			Weight = 9,
			Weight2 = 1
		},
		Ninja = {
			Idle = 656117400,
			Idle2 = 656118341,
			Idle3 = 886742569,
			Walk = 656121766,
			Run = 656118852,
			Jump = 656117878,
			Climb = 656114359,
			Fall = 656115606,
			Swim = 656119721,
			SwimIdle = 656121397,
			Weight = 9,
			Weight2 = 1
		},
		Oldschool = {
			Idle = 5319828216,
			Idle2 = 5319831086,
			Idle3 = 5392107832,
			Walk = 5319847204,
			Run = 5319844329,
			Jump = 5319841935,
			Climb = 5319816685,
			Fall = 5319839762,
			Swim = 5319850266,
			SwimIdle = 5319852613,
			Weight = 9,
			Weight2 = 1
		},
		['Adidas Sports'] = {
			Idle = 18537376492,
			Idle2 = 18537371272,
			Idle3 = 18537374150,
			Walk = 18537392113,
			Run = 18537384940,
			Jump = 18537380791,
			Climb = 18537363391,
			Fall = 18537367238,
			Swim = 18537389531,
			SwimIdle = 18537387180,
			Weight = 9,
			Weight2 = 1
		},
		Princess = {
			Idle = 941003647,
			Idle2 = 941013098,
			Idle3 = 1159195712,
			Walk = 941028902,
			Run = 941015281,
			Jump = 941008832,
			Climb = 940996062,
			Fall = 941000007,
			Swim = 941018893,
			SwimIdle = 941025398,
			Weight = 9,
			Weight2 = 1
		},
		Confident = {
			Idle = 1069977950,
			Idle2 = 1069987858,
			Idle3 = 1116160740,
			Walk = 1070017263,
			Run = 1070001516,
			Jump = 1069984524,
			Climb = 1069946257,
			Fall = 1069973677,
			Swim = 1070009914,
			SwimIdle = 1070012133,
			Weight = 9,
			Weight2 = 1
		},
		Popstar = {
			Idle = 1212900985,
			Idle2 = 1150842221,
			Idle3 = 1239733474,
			Walk = 1212980338,
			Run = 1212980348,
			Jump = 1212954642,
			Climb = 1213044953,
			Fall = 1212900995,
			Swim = 1212852603,
			SwimIdle = 1212998578,
			Weight = 9,
			Weight2 = 1
		},
		Patrol = {
			Idle = 1149612882,
			Idle2 = 1150842221,
			Idle3 = 1159573567,
			Walk = 1151231493,
			Run = 1150967949,
			Jump = 1150944216,
			Climb = 1148811837,
			Fall = 1148863382,
			Swim = 1151204998,
			SwimIdle = 1151221899,
			Weight = 9,
			Weight2 = 1
		},
		Sneaky = {
			Idle = 1132473842,
			Idle2 = 1132477671,
			Idle3 = "None",
			Walk = 1132510133,
			Run = 1132494274,
			Jump = 1132489853,
			Climb = 1132461372,
			Fall = 1132469004,
			Swim = 1132500520,
			SwimIdle = 1132506407,
			Weight = 9,
			Weight2 = 1
		},
		Cowboy = {
			Idle = 1014390418,
			Idle2 = 1014398616,
			Idle3 = 1159487651,
			Walk = 1014421541,
			Run = 1014401683,
			Jump = 1014394726,
			Climb = 1014380606,
			Fall = 1014384571,
			Swim = 1014406523,
			SwimIdle = 1014411816,
			Weight = 9,
			Weight2 = 1
		},
		Ghost = {
			Idle = 616006778,
			Idle2 = 616008087,
			Idle3 = 616008087,
			Walk = 616013216,
			Run = 616013216,
			Jump = 616008936,
			Climb = 0,
			Fall = 616005863,
			Swim = 616011509,
			SwimIdle = 616012453,
			Weight = 9,
			Weight2 = 1
		},
		['Ghost 2'] = {
			Idle = 1151221899,
			Idle2 = 1151221899,
			Idle3 = "None",
			Walk = 1151221899,
			Run = 1151221899,
			Jump = 1151221899,
			Climb = 0,
			Fall = 1151221899,
			Swim = 16738339158,
			SwimIdle = 1151221899,
			Weight = 9,
			Weight2 = 1
		},
		['Mr. Toilet'] = {
			Idle = 4417977954,
			Idle2 = 4417978624,
			Idle3 = 4441285342,
			Walk = 2510202577,
			Run = 4417979645,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162,
			Weight = 9,
			Weight2 = 1
		},
		Udzal = {
			Idle = 3303162274,
			Idle2 = 3303162549,
			Idle3 = 3710161342,
			Walk = 3303162967,
			Run = 3236836670,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162,
			Weight = 9,
			Weight2 = 1
		},
		['Oinan Thickhoof'] = {
			Idle = 657595757,
			Idle2 = 657568135,
			Idle3 = 885499184,
			Walk = 2510202577,
			Run = 3236836670,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162,
			Weight = 9,
			Weight2 = 1
		},
		Borock = {
			Idle = 3293641938,
			Idle2 = 3293642554,
			Idle3 = 3710131919,
			Walk = 2510202577,
			Run = 3236836670,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162,
			Weight = 9,
			Weight2 = 1
		},
		['Blocky Mech'] = {
			Idle = 4417977954,
			Idle2 = 4417978624,
			Idle3 = 4441285342,
			Walk = 2510202577,
			Run = 4417979645,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162,
			Weight = 9,
			Weight2 = 1
		},
		['Stylized Female'] = {
			Idle = 4708191566,
			Idle2 = 4708192150,
			Idle3 = 121221,
			Walk = 4708193840,
			Run = 4708192705,
			Jump = 4708188025,
			Climb = 4708184253,
			Fall = 4708186162,
			Swim = 4708189360,
			SwimIdle = 4708190607,
			Weight = 9,
			Weight2 = 1
		},
		R15 = {
			Idle = 4211217646,
			Idle2 = 4211218409,
			Idle3 = "None",
			Walk = 4211223236,
			Run = 4211220381,
			Jump = 4211219390,
			Climb = 4211214992,
			Fall = 4211216152,
			Swim = 4211221314,
			SwimIdle = 4374694239,
			Weight = 9,
			Weight2 = 1
		},
		NFL = {
			Idle = 92080889861410,
			Idle2 = 74451233229259,
			Walk = 110358958299415,
			Run = 117333533048078,
			Jump = 119846112151352,
			Fall = 129773241321032,
			Climb = 134630013742019,
			Swim = 132697394189921,
			SwimIdle = 79090109939093,
			Weight = 9,
			Weight2 = 1
		},
		Gojo = {
			Walk = 95643163365384
		},
		Geto = {
			Walk = 85811471336028
		},
		['Adidas Community'] = {
			Idle = 122257458498464,
			Idle2 = 102357151005774,
			Walk = 122150855457006,
			Run = 82598234841035,
			Jump = 656117878,
			Fall = 98600215928904,
			Climb = 88763136693023,
			Swim = 133308483266208,
			SwimIdle = 109346520324160,
			Weight = 9,
			Weight2 = 1
		},
		CatwalkGram = {
			Idle = 133806214992291,
			Idle2 = 94970088341563,
			Walk = 109168724482748,
			Run = 81024476153754,
			Jump = 116936326516985,
			Fall = 92294537340807,
			Climb = 119377220967554,
			Swim = 134591743181628,
			SwimIdle = 98854111361360,
			Weight = 9,
			Weight2 = 1
		},
		NoBoundariesAnimation = {
			Idle = 18747067405,
			Idle2 = 507766666,
			Walk = 18747074203,
			Run = 18747070484,
			Jump = 507765000,
			Fall = 18747062535,
			Climb = 18747060903,
			Swim = 134591743181628,
			SwimIdle = 98854111361360,
			Weight = 9,
			Weight2 = 1
		},
		AuraAnimationPack = {
			Idle = 114191137265065,
			Idle2 = 110211186840347,
			Walk = 83842218823011,
			Run = 118320322718866,
			Jump = 109996626521204,
			Fall = 95603166884636,
			Climb = 97824616490448,
			Weight = 9,
			Weight2 = 1
		},
		UnboxedAnimations = {
			Idle = 138183121662404,
			Idle2 = 98281136301627,
			Walk = 90478085024465,
			Run = 134824450619865,
			Jump = 121454505477205,
			Fall = 94788218468396,
			Climb = 121145883950231,
			Weight = 9,
			Weight2 = 1
		},
		WickedPopular = {
			Idle = 118832222982049,
			Idle2 = 76049494037641,
			Walk = 92072849924640,
			Run = 72301599441680,
			Jump = 104325245285198,
			Fall = 121152442762481,
			Climb = 131326830509784,
			SwimIdle = 113199415118199,
			Swim = 99384245425157,
			Weight = 9,
			Weight2 = 1
		},
		WickedDancingThroughLife = {
			Idle = 92849173543269,
			Idle2 = 132238900951109,
			Walk = 73718308412641,
			Run = 135515454877967,
			Jump = 78508480717326,
			Fall = 78147885297412,
			Climb = 129447497744818,
			Weight = 9,
			Weight2 = 1
		},
		Mocap = {
			Idle = 913367814,
			Idle2 = 913373430,
			Idle3 = "None",
			Walk = 913402848,
			Run = 913376220,
			Jump = 913370268,
			Climb = 913362637,
			Fall = 913365531,
			Swim = 913384386,
			SwimIdle = 913389285,
			Weight = 9,
			Weight2 = 1
		}
	}
	
	-- 6. KOMPLE ANİMASYON TEMİZLEME
	local function clearAllAnimations()
		local char = lp.Character
		if not char then return end
	
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not hum then return end
	
		for _, track in pairs(hum:GetPlayingAnimationTracks()) do
			track:Stop(0)
			track:Destroy()
		end
	
		local animator = hum:FindFirstChildOfClass("Animator")
		if animator then
			for _, track in pairs(animator:GetPlayingAnimationTracks()) do
				track:Stop(0)
				track:Destroy()
			end
		end
	
		task.wait(0.1)
	end
	
	-- 7. FE ANIMASYON UYGULAMA
	local function applyFEBundle(bundleName)
		local char = lp.Character
		if not char then return end
	
		clearAllAnimations()
	
		local animate = char:FindFirstChild("Animate")
		if not animate then return end
	
		local data = animationData[bundleName]
		if not data then return end
	
		selectedBundle = bundleName
	
		animate.Disabled = true
		task.wait(0.1)
	
		local function updateAnimation(folderName, animName, animId)
			local folder = animate:FindFirstChild(folderName)
			if not folder then return end
	
			local anim = folder:FindFirstChild(animName)
			if anim and anim:IsA("Animation") then
				anim.AnimationId = "rbxassetid://" .. tostring(animId)
			end
		end
	
		updateAnimation("idle", "Animation1", data.Idle)
		updateAnimation("idle", "Animation2", data.Idle2)
	
		local idleFolder = animate:FindFirstChild("idle")
		if idleFolder then
			local weight1 = idleFolder:FindFirstChild("Animation1Weight")
			local weight2 = idleFolder:FindFirstChild("Animation2Weight")
			if weight1 then weight1.Value = 9 end
			if weight2 then weight2.Value = 1 end
		end
	
		updateAnimation("walk", "WalkAnim", data.Walk)
		updateAnimation("run", "RunAnim", data.Run)
		updateAnimation("jump", "JumpAnim", data.Jump)
		updateAnimation("climb", "ClimbAnim", data.Climb)
		updateAnimation("fall", "FallAnim", data.Fall)
		updateAnimation("swim", "Swim", data.Swim)
		updateAnimation("swimidle", "SwimIdle", data.SwimIdle)
	
		task.wait(0.1)
		animate.Disabled = false
	
		local hum = char:FindFirstChildOfClass("Humanoid")
		if hum then
			hum:ChangeState(Enum.HumanoidStateType.Landed)
			task.wait(0.05)
			hum:ChangeState(Enum.HumanoidStateType.Running)
			task.wait(0.05)
			hum:ChangeState(Enum.HumanoidStateType.Landed)
		end
	
		task.wait(0.2)
		clearAllAnimations()
	end
	
	-- 8. KARAKTER RESET TAKİBİ
	lp.CharacterAdded:Connect(function(char)
		if selectedBundle then
			local hum = char:WaitForChild("Humanoid", 10)
			local animate = char:WaitForChild("Animate", 10)
	
			if hum and animate then
				task.wait(1)
				applyFEBundle(selectedBundle)
			end
		end
	end)
	
	-- 9. ETKİLEŞİMLİ EFEKTLER
	local function addInteractions(card)
		local stroke = card:FindFirstChildOfClass("UIStroke")
		local originalSize = card.Size
		local hoverSize = UDim2.new(originalSize.X.Scale, originalSize.X.Offset + 5, 
			originalSize.Y.Scale, originalSize.Y.Offset + 5)
	
		local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		card.MouseEnter:Connect(function()
			if hoverSound.IsLoaded then 
				hoverSound:Play() 
			end
	
			TweenService:Create(card, tweenInfo, {Size = hoverSize}):Play()
	
			if stroke then
				TweenService:Create(stroke, tweenInfo, {
					Color = Color3.fromRGB(255, 255, 255), 
					Thickness = 2.5
				}):Play()
			end
		end)
	
		card.MouseLeave:Connect(function()
			TweenService:Create(card, tweenInfo, {Size = originalSize}):Play()
	
			if stroke then
				TweenService:Create(stroke, tweenInfo, {
					Color = Color3.fromRGB(50, 50, 50), 
					Thickness = 1
				}):Play()
			end
		end)
	end
	
	-- 10. KURULUM (RBXTHUMB SİSTEMİ)
	local function setup()
		if not template or not scrollingFrame then 
			warn("❌ Template və ya ScrollingFrame tapılmadı!")
			return 
		end
	
		template.Visible = false
		scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
	
		local grid = scrollingFrame:FindFirstChildOfClass("UIGridLayout")
		if not grid then
			grid = Instance.new("UIGridLayout")
			grid.Parent = scrollingFrame
		end
	
		grid.SortOrder = Enum.SortOrder.LayoutOrder
		grid.HorizontalAlignment = Enum.HorizontalAlignment.Center
		grid.VerticalAlignment = Enum.VerticalAlignment.Top
		grid.CellPadding = UDim2.new(0, 10, 0, 10)
		grid.CellSize = UDim2.new(0, 160, 0, 190)
	
		print(" Loading animation bundles with rbxthumb...")
	
		for name, data in pairs(animationData) do
			local card = template:Clone()
			card.Name = name
			card.Visible = true
			card.LayoutOrder = 1
	
			-- İSİM
			local nameLabel = card:FindFirstChild("Animationname", true)
			if nameLabel then 
				nameLabel.Text = name 
			end
	
			-- ŞƏKİL (RBXTHUMB SİSTEMİ - DƏRHAL YÜKLƏNƏR)
			local imageLabel = card:FindFirstChild("animationresmi", true)
			if imageLabel and imageLabel:IsA("ImageLabel") then
				local bundleId = bundleIds[name]
	
				if bundleId and bundleId > 0 then
					-- rbxthumb:// istifadə et
					local thumbnailUrl = getBundleThumbnail(bundleId)
					imageLabel.Image = thumbnailUrl
					print("✅ Loaded thumbnail for:", name, "| Bundle ID:", bundleId)
				else
					-- Bundle ID yoxdursa placeholder
					imageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
					warn("⚠️ Bundle ID not found for:", name)
				end
			end
	
			addInteractions(card)
	
			-- APPLY BUTTON
			local applyBtn = card:FindFirstChild("ApplyButton", true)
			if applyBtn then
				applyBtn.MouseButton1Click:Connect(function()
					if activeFrame then
						local oldBtn = activeFrame:FindFirstChild("ApplyButton", true)
						if oldBtn then 
							oldBtn.ImageColor3 = Color3.fromRGB(255, 255, 255) 
						end
					end
	
					applyFEBundle(name)
	
					applyBtn.ImageColor3 = Color3.fromRGB(0, 255, 100)
					activeFrame = card
				end)
			end
	
			-- FAVORITE BUTTON
			local favBtn = card:FindFirstChild("FavoriteButton", true)
			if favBtn then
				favBtn.MouseButton1Click:Connect(function()
					if card.LayoutOrder == 0 then
						card.LayoutOrder = 1
						favBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
					else
						card.LayoutOrder = 0
						favBtn.ImageColor3 = Color3.fromRGB(255, 215, 0)
					end
				end)
			end
	
			card.Parent = scrollingFrame
		end
	
		print(" All animation bundles loaded with thumbnails!")
	end
	
	-- BAŞLAT
	setup()
end
coroutine.wrap(INYZLDB_fake_script)()
local function VSOV_fake_script() -- echgui.echframe.tabsystem 
	local script = Instance.new('LocalScript', echgui.echframe)

	-- SERVICES
	local TweenService = game:GetService("TweenService")
	local gui = script.Parent -- echframe
	
	-- REFERENCES
	local tabsFrame = gui:WaitForChild("tabsframe")
	local tabs = {
		[tabsFrame:WaitForChild("Animationsbutton")] = gui:WaitForChild("tab1"),
		[tabsFrame:WaitForChild("Emotebutton")] = gui:WaitForChild("tab2"),
		[tabsFrame:WaitForChild("Settingsbutton")] = gui:WaitForChild("tab3"),
		[tabsFrame:WaitForChild("SpecButton")] = gui:WaitForChild("tab4")
	}
	
	-- Animasiya tənzimləmələri
	local ANIM_TIME = 0.25
	local SLIDE_OFFSET = UDim2.new(0, 0, 0, 10) -- 10 piksel aşağıdan gəlmə effekti
	
	-- FUNKSİYA: Səlis Tab Keçidi
	local function switchTab(targetTab)
		local tweenInfo = TweenInfo.new(ANIM_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	
		for _, tab in pairs(tabs) do
			if tab.Visible and tab ~= targetTab then
				-- Hazırda açıq olanı sadəcə gizlət
				tab.Visible = false
			end
		end
	
		-- Yeni tabı hazırla
		local originalPos = targetTab.Position
		targetTab.Position = originalPos + SLIDE_OFFSET -- Bir az aşağıdan başlat
		targetTab.Visible = true
	
		-- Yuxarıya doğru sürüşmə animasiyası
		TweenService:Create(targetTab, tweenInfo, {Position = originalPos}):Play()
	end
	
	-- EVENTS
	for button, target in pairs(tabs) do
		button.MouseButton1Click:Connect(function()
			if not target.Visible then
				switchTab(target)
			end
		end)
	end
	
	-- INITIALIZE
	for _, tab in pairs(tabs) do tab.Visible = false end
	tabs[tabsFrame.Animationsbutton].Visible = true
end
coroutine.wrap(VSOV_fake_script)()
local function NEUXWCV_fake_script() -- echgui.echframe.emotescript 
	local script = Instance.new('LocalScript', echgui.echframe)

	
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local ContentProvider = game:GetService("ContentProvider")
	local lp = Players.LocalPlayer
	
	-- 1. REFERANSLAR
	local screenGui = script.Parent
	local tab2 = screenGui:FindFirstChild("tab2", true)
	local emoteTemplate = screenGui:FindFirstChild("emoteframe", true)
	
	-- GUI'nin Ölünce Kapanmasını Engelle
	if screenGui:IsA("ScreenGui") then
		screenGui.ResetOnSpawn = false
	end
	
	local activeEmoteFrame = nil
	local currentEmoteTrack = nil
	local movementConnections = {}
	
	-- 2. SES AYARI
	local hoverSound = Instance.new("Sound")
	hoverSound.Name = "HoverSound"
	hoverSound.SoundId = "rbxassetid://6895079853"
	hoverSound.Volume = 0.5
	hoverSound.Parent = screenGui
	ContentProvider:PreloadAsync({hoverSound})
	
	-- 3. EMOTE VERİLERİ
	local emoteData = {
		['Fashion'] = 3333331310,
		['Needy Shake'] = 139395178419877,
		['Sleeping'] = 84112287597268,
		['Stretch'] = 119377401608190,
		['Popular'] = 93062298566806,
		['Sturdy'] = 132104757386824,
		['Daydreaming'] = 102342919277367,
		['Caterpillar'] = 91114883954161,
		['MM2 Sit'] = 95825103583419,
		['Dance'] = 507770239,
		['Wave'] = 507770677,
		['Point'] = 507770453,
		['Cheer'] = 507770677,
		['Laugh'] = 507770818,
		['Stadium'] = 506281097,
		['Applaud'] = 5915693819,
		['Salute'] = 3360686498,
		['Tilt'] = 3360692915,
		['Shrug'] = 3334538554,
		['Hero Landing'] = 5104344710,
		['Zombie Walk'] = 4265725525,
		['Rainbow Vomit'] = 7710948619,
		['Penguin Walk'] = 3360740733,
		['Dolphin Dance'] = 3695333486,
		['Heisman Pose'] = 3333499508,
		['Kicks'] = 429681631,
		['Twirl'] = 5915697755,
		['T-Pose'] = 3695322025,
		['Floss Dance'] = 5917570207,
		['Levitate'] = 313762630
	}
	
	-- 4. GERÇEKÇİ HAREKET KONTROLÜ
	local function stopEmote()
		if currentEmoteTrack then
			currentEmoteTrack:Stop(0.3)
			currentEmoteTrack = nil
		end
	
		
		if activeEmoteFrame then
			local playBtn = activeEmoteFrame:FindFirstChild("playbutton", true)
			if playBtn then
				playBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
			end
			activeEmoteFrame = nil
		end
	end
	
	local function disconnectMovement()
		for _, connection in pairs(movementConnections) do
			if connection then
				connection:Disconnect()
			end
		end
		movementConnections = {}
	end
	
	local function connectMovement(char)
		disconnectMovement() -- Eski bağlantıları temizle
	
		local hum = char:WaitForChild("Humanoid", 10)
		if not hum then return end
	
		local rootPart = char:WaitForChild("HumanoidRootPart", 10)
		if not rootPart then return end
	
	
		local lastPosition = rootPart.Position
		local moveCheckConnection
	
		moveCheckConnection = game:GetService("RunService").Heartbeat:Connect(function()
			if not char or not char.Parent then
				moveCheckConnection:Disconnect()
				return
			end
	
			local currentPosition = rootPart.Position
			local distance = (currentPosition - lastPosition).Magnitude
	
			-- Eğer karakter hareket ediyorsa (0.1 studs'dan fazla)
			if distance > 0.1 then
				stopEmote()
			end
	
			lastPosition = currentPosition
		end)
	
		table.insert(movementConnections, moveCheckConnection)
	
	
		local jumpConnection = hum.StateChanged:Connect(function(_, newState)
			if newState == Enum.HumanoidStateType.Jumping or 
				newState == Enum.HumanoidStateType.Freefall or
				newState == Enum.HumanoidStateType.Swimming or
				newState == Enum.HumanoidStateType.Climbing then
				stopEmote()
			end
		end)
	
		table.insert(movementConnections, jumpConnection)
	
		-- Running event (ek güvenlik)
		local runConnection = hum.Running:Connect(function(speed)
			if speed > 0.5 then
				stopEmote()
			end
		end)
	
		table.insert(movementConnections, runConnection)
	end
	
	-- 5. EMOTE OYNATICI
	local function playFEEmote(emoteName, id)
		local char = lp.Character
		if not char then return end
	
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not hum then return end
	
		-- Aynı emote'a tekrar basıldıysa durdur
		if currentEmoteTrack and activeEmoteFrame and activeEmoteFrame.Name == emoteName then
			stopEmote()
			return
		end
	
		stopEmote() -- Varsa eskisini durdur
	
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://" .. tostring(id)
	
		currentEmoteTrack = hum:LoadAnimation(anim)
		currentEmoteTrack.Looped = true
		currentEmoteTrack.Priority = Enum.AnimationPriority.Action -- Öncelik ver
		currentEmoteTrack:Play()
	
		-- Emote bittiğinde frame'i sıfırla
		currentEmoteTrack.Stopped:Connect(function()
			if activeEmoteFrame then
				local playBtn = activeEmoteFrame:FindFirstChild("playbutton", true)
				if playBtn then
					playBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
				end
			end
			currentEmoteTrack = nil
			activeEmoteFrame = nil
		end)
	end
	
	-- 6. ETKİLEŞİMLİ EFEKTLER
	local function addInteractions(card)
		local stroke = card:FindFirstChildOfClass("UIStroke")
		local originalSize = card.Size
		local hoverSize = UDim2.new(originalSize.X.Scale, originalSize.X.Offset + 5, 
			originalSize.Y.Scale, originalSize.Y.Offset + 5)
	
		local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		card.MouseEnter:Connect(function()
			if hoverSound.IsLoaded then 
				hoverSound:Play() 
			end
	
			TweenService:Create(card, tweenInfo, {Size = hoverSize}):Play()
	
			if stroke then
				TweenService:Create(stroke, tweenInfo, {
					Color = Color3.fromRGB(255, 255, 255), 
					Thickness = 2.5
				}):Play()
			end
		end)
	
		card.MouseLeave:Connect(function()
			TweenService:Create(card, tweenInfo, {Size = originalSize}):Play()
	
			if stroke then
				TweenService:Create(stroke, tweenInfo, {
					Color = Color3.fromRGB(50, 50, 50), 
					Thickness = 1
				}):Play()
			end
		end)
	end
	
	-- 7. PLAYBUTTON 
	local function findPlayButton(frame)
		local btn = frame:FindFirstChild("playbutton", true)
		if btn then return btn end
	
		for _, child in ipairs(frame:GetDescendants()) do
			if child:IsA("ImageButton") or child:IsA("TextButton") then
				local name = string.lower(child.Name)
				if name:find("play") then
					return child
				end
			end
		end
	
		return nil
	end
	
	-- 8. İSİM LABEL AYARI
	local function setupNameLabel(label, text)
		if not label then return end
	
		label.Text = text
		label.TextScaled = true
		label.TextWrapped = true
		label.TextXAlignment = Enum.TextXAlignment.Center
		label.TextYAlignment = Enum.TextYAlignment.Center
	
		-- ClipsDescendants ile taşmayı önle
		if label.Parent then
			label.Parent.ClipsDescendants = true
		end
	
		-- Uzun isimleri kısalt
		if #text > 12 then
			label.Text = string.sub(text, 1, 10) .. ".."
		end
	end
	
	-- 9. SETUP (Dizilim ve Döngü)
	local function init()
		if not tab2 or not emoteTemplate then 
			warn("Tab2 veya EmoteTemplate bulunamadı!")
			return 
		end
	
		emoteTemplate.Visible = false
	
		-- Grid Layout
		local grid = tab2:FindFirstChildOfClass("UIGridLayout")
		if not grid then
			grid = Instance.new("UIGridLayout")
			grid.Parent = tab2
		end
	
		grid.CellSize = UDim2.new(0, 95, 0, 115)
		grid.CellPadding = UDim2.new(0, 8, 0, 8)
		grid.HorizontalAlignment = Enum.HorizontalAlignment.Center
		grid.SortOrder = Enum.SortOrder.Name
	
		-- Frame'in taşmasını önle
		tab2.ClipsDescendants = true
	
		-- Her emote için kart oluştur
		for name, id in pairs(emoteData) do
			local card = emoteTemplate:Clone()
			card.Name = name
			card.Visible = true
			card.ClipsDescendants = true -- Kartın içeriği taşmasın
	
			-- İsim label'ı ayarla
			local nameLabel = card:FindFirstChild("emotename", true)
			setupNameLabel(nameLabel, name)
	
			addInteractions(card)
	
			-- PlayButton'u bul
			local playBtn = findPlayButton(card)
	
			if playBtn then
				playBtn.MouseButton1Click:Connect(function()
					-- Önceki aktif frame'i sıfırla
					if activeEmoteFrame and activeEmoteFrame ~= card then
						local oldBtn = findPlayButton(activeEmoteFrame)
						if oldBtn then
							oldBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
						end
					end
	
					-- Emote'u oynat
					playFEEmote(name, id)
	
					-- Bu kartı aktif yap
					if currentEmoteTrack then
						playBtn.ImageColor3 = Color3.fromRGB(0, 255, 100)
						activeEmoteFrame = card
					else
						playBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
						activeEmoteFrame = nil
					end
				end)
			end
	
			card.Parent = tab2
		end
	end
	
	-- 10. KARAKTER BAĞLANTILARI
	lp.CharacterAdded:Connect(function(char)
		task.wait(0.5) -- Karakterin tam yüklenmesini bekle
		connectMovement(char)
		stopEmote()
	end)
	
	if lp.Character then 
		connectMovement(lp.Character) 
	end
	
	init()
end
coroutine.wrap(NEUXWCV_fake_script)()
local function AXVWBVO_fake_script() -- echgui.echframe.settingscript 
	local script = Instance.new('LocalScript', echgui.echframe)


	local Players = game:GetService("Players")
	local lp = Players.LocalPlayer
	
	-- REFERANSLAR
	local screenGui = script.Parent.Parent -- settingsframe-in parent-i
	local stopEmoteButton = script.Parent:FindFirstChild("stopemotebutton", true)
	local resetAnimButton = script.Parent:FindFirstChild("resetanimation", true)
	
	-- ANİMASYON SKRİPTİ İLƏ ƏLAQƏLİ FUNKSIYA
	local animationsScript = screenGui:FindFirstChild("animationsscript", true)
	local selectedBundle = nil -- animationsscript-dən gələcək
	
	-- 1. BÜTÜN ANİMASYONLARI TƏMİZLƏ (EMOTE STOP)
	local function stopAllEmotes()
		local char = lp.Character
		if not char then return end
	
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not hum then return end
	
		-- Bütün işləyən animation track-ləri dayandır
		for _, track in pairs(hum:GetPlayingAnimationTracks()) do
			track:Stop(0)
			track:Destroy()
		end
	
		-- Animator-dakı track-ləri də yoxla
		local animator = hum:FindFirstChildOfClass("Animator")
		if animator then
			for _, track in pairs(animator:GetPlayingAnimationTracks()) do
				track:Stop(0)
				track:Destroy()
			end
		end
	
		-- Humanoid state-i resetlə
		hum:ChangeState(Enum.HumanoidStateType.Landed)
		task.wait(0.05)
		hum:ChangeState(Enum.HumanoidStateType.Running)
	
		print("[Echelon] Bütün emotlar dayandırıldı")
	end
	
	-- 2. ORİJİNAL ANİMASYONLARA QAYIT
	local function resetToOriginal()
		local char = lp.Character
		if not char then return end
	
		local hum = char:FindFirstChildOfClass("Humanoid")
		local animate = char:FindFirstChild("Animate")
	
		if not animate or not hum then return end
	
		-- Əvvəlcə bütün track-ləri təmizlə
		stopAllEmotes()
	
		-- Animate script-i disable et
		animate.Enabled = false
		task.wait(0.1)
	
		-- Default R15 animasiyalarını yüklə
		local function resetAnimation(folderName, animName, defaultId)
			local folder = animate:FindFirstChild(folderName)
			if not folder then return end
	
			local anim = folder:FindFirstChild(animName)
			if anim and anim:IsA("Animation") then
				anim.AnimationId = "rbxassetid://" .. tostring(defaultId)
			end
		end
	
		-- R15 Default Animation ID-ləri
		resetAnimation("idle", "Animation1", 507766666)
		resetAnimation("idle", "Animation2", 507766951)
	
		local idleFolder = animate:FindFirstChild("idle")
		if idleFolder then
			local weight1 = idleFolder:FindFirstChild("Animation1Weight")
			local weight2 = idleFolder:FindFirstChild("Animation2Weight")
			if weight1 then weight1.Value = 9 end
			if weight2 then weight2.Value = 1 end
		end
	
		resetAnimation("walk", "WalkAnim", 507777826)
		resetAnimation("run", "RunAnim", 507767714)
		resetAnimation("jump", "JumpAnim", 507765000)
		resetAnimation("climb", "ClimbAnim", 507765644)
		resetAnimation("fall", "FallAnim", 507767968)
		resetAnimation("swim", "Swim", 507784897)
		resetAnimation("swimidle", "SwimIdle", 507785072)
	
		-- Animate-i yenidən aktiv et
		task.wait(0.1)
		animate.Enabled = true
	
		-- Humanoid state refresh
		hum:ChangeState(Enum.HumanoidStateType.Landed)
		task.wait(0.05)
		hum:ChangeState(Enum.HumanoidStateType.Running)
		task.wait(0.05)
		hum:ChangeState(Enum.HumanoidStateType.Landed)
	
		-- animationsscript-dəki selectedBundle-ı sıfırla
		if animationsScript then
			local success = pcall(function()
				animationsScript.selectedBundle = nil
			end)
		end
	
		print("[Echelon] Original animasiyalara qayıdıldı")
	end
	
	-- 3. BUTTON BAĞLANTILAR
	if stopEmoteButton then
		stopEmoteButton.MouseButton1Click:Connect(function()
			stopAllEmotes()
	
			-- Vizual feedback
			local originalColor = stopEmoteButton.BackgroundColor3
			stopEmoteButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			task.wait(0.2)
			stopEmoteButton.BackgroundColor3 = originalColor
		end)
	end
	
	if resetAnimButton then
		resetAnimButton.MouseButton1Click:Connect(function()
			resetToOriginal()
	
			-- Vizual feedback
			local originalColor = resetAnimButton.BackgroundColor3
			resetAnimButton.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
			task.wait(0.2)
			resetAnimButton.BackgroundColor3 = originalColor
	
			-- Active frame-i sıfırla (tab1-dəki seçilmiş kart)
			local tab1 = screenGui:FindFirstChild("tab1", true)
			if tab1 then
				for _, card in pairs(tab1:GetChildren()) do
					if card:IsA("Frame") then
						local applyBtn = card:FindFirstChild("ApplyButton", true)
						if applyBtn then
							applyBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
						end
					end
				end
			end
		end)
	end
	
	-- 4. KARAKTER RESET TAKİBİ
	lp.CharacterAdded:Connect(function(char)
		-- Yeni karakter spawn olanda original animasiyalara qayıt
		local hum = char:WaitForChild("Humanoid", 10)
		if hum then
			task.wait(0.5)
			resetToOriginal()
		end
	end)
	
	print("[Echelon] Control Panel Script yükləndi ✓")
end
coroutine.wrap(AXVWBVO_fake_script)()
local function MRIEUW_fake_script() -- echgui.echframe.effetcs 
	local script = Instance.new('LocalScript', echgui.echframe)

	-- SERVICES
	local TweenService = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local gui = script.Parent -- echframe
	local screenGui = gui.Parent -- ScreenGui
	
	-- REFERENCES (Adları yoxla: "tabsframe" yoxsa "TabsFrame"?)
	local tabsFrame = gui:WaitForChild("tabsframe", 5)
	if not tabsFrame then warn("HƏTƏ: tabsframe tapılmadı!") return end
	
	local closeButton = tabsFrame:WaitForChild("CloseButton", 5)
	local minimizeButton = tabsFrame:WaitForChild("MinimazeButton", 5)
	

	local draggableFrame = screenGui:WaitForChild("draggableframe", 5)
	local openCloseBtn = draggableFrame:WaitForChild("openclose", 5)
	
	local blurEffect
	local snowContainer
	local snowSpawnerThread
	local isRunning = false
	
	-- Reduced settings for better performance
	local MAX_SNOWFLAKES = 15 -- Reduced from 30
	local SPAWN_DELAY = 0.2 -- Increased from 0.1-0.2
	local BLUR_SIZE = 12 -- Reduced from 20
	
	-- Snowflake pool for reuse (optimization)
	local snowflakePool = {}
	local activeSnowflakes = {}
	
	-- Function to create blur effect
	local function createBlur()
		if not blurEffect then
			blurEffect = Instance.new("BlurEffect")
			blurEffect.Size = BLUR_SIZE
			blurEffect.Parent = game.Lighting
		end
	end
	
	-- Function to remove blur effect
	local function removeBlur()
		if blurEffect then
			blurEffect:Destroy()
			blurEffect = nil
		end
	end
	
	-- Function to create snow container
	local function createSnowContainer()
		if not snowContainer then
			snowContainer = Instance.new("Frame")
			snowContainer.Name = "SnowContainer"
			snowContainer.Size = UDim2.new(1, 0, 1, 0)
			snowContainer.Position = UDim2.new(0, 0, 0, 0)
			snowContainer.BackgroundTransparency = 1
			snowContainer.ZIndex = 999
			snowContainer.Parent = screenGui
		end
	end
	
	-- Function to get or create snowflake (object pooling)
	local function getSnowflake()
		local snowflake
		if #snowflakePool > 0 then
			snowflake = table.remove(snowflakePool)
			snowflake.Visible = true
		else
			snowflake = Instance.new("Frame")
			snowflake.BorderSizePixel = 0
			snowflake.ZIndex = 999
	
			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(1, 0)
			corner.Parent = snowflake
		end
		return snowflake
	end
	
	-- Function to return snowflake to pool
	local function returnSnowflake(snowflake)
		snowflake.Visible = false
		snowflake.Parent = nil
		activeSnowflakes[snowflake] = nil
	
		if #snowflakePool < 30 then
			table.insert(snowflakePool, snowflake)
		else
			snowflake:Destroy()
		end
	end
	
	-- Function to create a single snowflake (optimized)
	local function createSnowflake()
		if not snowContainer or not snowContainer.Parent then return end
	
		-- Limit active snowflakes efficiently
		local count = 0
		for _ in pairs(activeSnowflakes) do
			count = count + 1
		end
		if count >= MAX_SNOWFLAKES then return end
	
		local snowflake = getSnowflake()
		local size = math.random(5, 8)
		snowflake.Size = UDim2.new(0, size, 0, size)
		snowflake.Position = UDim2.new(math.random(0, 100) / 100, 0, -0.1, 0)
		snowflake.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		snowflake.BackgroundTransparency = math.random(40, 75) / 100
		snowflake.Parent = snowContainer
	
		activeSnowflakes[snowflake] = true
	
		-- Animate snowflake falling
		local fallDuration = math.random(50, 80) / 10
		local endX = math.random(-10, 10) / 100
	
		local tween = TweenService:Create(snowflake, TweenInfo.new(
			fallDuration,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut
			), {
				Position = UDim2.new(snowflake.Position.X.Scale + endX, 0, 1.1, 0)
			})
	
		tween:Play()
		tween.Completed:Connect(function()
			returnSnowflake(snowflake)
		end)
	end
	
	-- Function to start snow effect
	local function startSnowEffect()
		if isRunning then return end
		isRunning = true
	
		createBlur()
		createSnowContainer()
	
		snowSpawnerThread = task.spawn(function()
			while isRunning and snowContainer and snowContainer.Parent do
				createSnowflake()
				task.wait(SPAWN_DELAY)
			end
		end)
	end

	local function stopSnowEffect()
		isRunning = false
	
		if snowSpawnerThread then
			task.cancel(snowSpawnerThread)
			snowSpawnerThread = nil
		end
	
		
		removeBlur()
	
		-- Clear all active snowflakes
		for snowflake in pairs(activeSnowflakes) do
			snowflake:Destroy()
		end
		activeSnowflakes = {}
	
		-- Clear container
		if snowContainer then
			snowContainer:Destroy()
			snowContainer = nil
		end
	
		for _, snowflake in ipairs(snowflakePool) do
			snowflake:Destroy()
		end
		snowflakePool = {}
	end
	

	local function monitorSnowEffect()
		if gui.Visible then
			task.wait(0.2)
			startSnowEffect()
		end
	
	
		gui:GetPropertyChangedSignal("Visible"):Connect(function()
			if gui.Visible then
				task.wait(0.2)
				startSnowEffect()
			else
				stopSnowEffect()
			end
		end)
	end
	
	
	
	local function toggleGui()
		if gui.Visible == true then
			gui.Visible = false
			draggableFrame.Visible = true
		else
			gui.Visible = true
			draggableFrame.Visible = false
		end
	end
	
	
	minimizeButton.MouseButton1Click:Connect(toggleGui)
	openCloseBtn.MouseButton1Click:Connect(toggleGui)
	
	
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == Enum.KeyCode.Z then
			toggleGui()
		end
	end)
	
	
	local hoverTweens = {}
	
	local function setupHover(btn)
		if not btn then return end
	
		local originalSize = btn.Size
	
		btn.MouseEnter:Connect(function()
			-- Cancel existing tween if any
			if hoverTweens[btn] then
				hoverTweens[btn]:Cancel()
			end
	
			hoverTweens[btn] = TweenService:Create(btn, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset + 4, originalSize.Y.Scale, originalSize.Y.Offset + 4)
			})
			hoverTweens[btn]:Play()
		end)
	
		btn.MouseLeave:Connect(function()
			-- Cancel existing tween if any
			if hoverTweens[btn] then
				hoverTweens[btn]:Cancel()
			end
	
			hoverTweens[btn] = TweenService:Create(btn, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = originalSize
			})
			hoverTweens[btn]:Play()
		end)
	end
	
	
	if closeButton then setupHover(closeButton) end
	if minimizeButton then setupHover(minimizeButton) end
	if openCloseBtn then setupHover(openCloseBtn) end
	
	-- Tab buttons
	local animationsButton = tabsFrame:FindFirstChild("Animationsbutton")
	local emoteButton = tabsFrame:FindFirstChild("Emotebutton")
	local settingsButton = tabsFrame:FindFirstChild("Settingsbutton")
	local specButton = tabsFrame:FindFirstChild("SpecButton")
	
	if animationsButton then setupHover(animationsButton) end
	if emoteButton then setupHover(emoteButton) end
	if settingsButton then setupHover(settingsButton) end
	if specButton then setupHover(specButton) end
	
	
	closeButton.MouseButton1Click:Connect(function()
		stopSnowEffect()
	
		local fadeOut = TweenService:Create(gui, TweenInfo.new(0.3), {BackgroundTransparency = 1})
		fadeOut:Play()
		if draggableFrame then
			TweenService:Create(draggableFrame, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
		end
		fadeOut.Completed:Connect(function()
			if draggableFrame then draggableFrame:Destroy() end
			gui:Destroy()
		end)
	end)
	
	
	gui.Visible = true
	draggableFrame.Visible = false
end
coroutine.wrap(MRIEUW_fake_script)()
local function BDBR_fake_script() -- echgui.settingsframe.LocalScript 
	local script = Instance.new('LocalScript', echgui.settingsframe)

	local frame = script.Parent
	local runService = game:GetService("RunService")
	local players = game:GetService("Players")
	local market = game:GetService("MarketplaceService")
	
	
	local nameLabel = frame:WaitForChild("name")
	local gameNameLabel = frame:WaitForChild("gamename")
	local usersLabel = frame:WaitForChild("users")
	local timeLabel = frame:WaitForChild("time")
	local zLabel = frame:WaitForChild("z")
	
	
	nameLabel.Text = "N: " .. players.LocalPlayer.Name
	

	local success, info = pcall(function()
		return market:GetProductInfo(game.PlaceId)
	end)
	if success then
		gameNameLabel.Text = "G: " .. info.Name
	else
		gameNameLabel.Text = "Game: Unknown"
	end
	
	
	runService.RenderStepped:Connect(function()
		
		timeLabel.Text = "Time: " .. os.date("%X")
	
		
		usersLabel.Text = "Players: " .. #players:GetPlayers()
	
		
		local hue = (tick() * 2) % 1
		zLabel.TextColor3 = Color3.fromHSV(hue, 0.8, 1)
	end)
end
coroutine.wrap(BDBR_fake_script)()
local function MSGSIO_fake_script() -- echgui.z.LocalScript 
	local script = Instance.new('LocalScript', echgui.z)

	local textLabel = script.Parent
	local runService = game:GetService("RunService")
	
	local speed = 2 
	
	runService.RenderStepped:Connect(function()
		local hue = (tick() * speed) % 1
		-- HSV (Renk, Doygunluk, Parlaklık) kullanarak RGB'ye çeviriyoruz
		textLabel.TextColor3 = Color3.fromHSV(hue, 0.8, 1)
	end)
end
coroutine.wrap(MSGSIO_fake_script)()
local function MGMINP_fake_script() -- echgui.tab4frame.LocalScript 
	local script = Instance.new('LocalScript', echgui.tab4frame)

	
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local ContentProvider = game:GetService("ContentProvider")
	local lp = Players.LocalPlayer
	

	local screenGui = script.Parent
	local idleDropDown = screenGui:FindFirstChild("IdleDropDown", true)
	local walkDropDown = screenGui:FindFirstChild("WalkDropDown", true)
	local runDropDown = screenGui:FindFirstChild("RunDropDown", true)
	local jumpDropDown = screenGui:FindFirstChild("JumpDropDown", true)
	local fallDropDown = screenGui:FindFirstChild("FallDropDown", true)
	local swimDropDown = screenGui:FindFirstChild("SwimDropDown", true)
	

	local hoverSound = Instance.new("Sound")
	hoverSound.Name = "HoverSound"
	hoverSound.SoundId = "rbxassetid://6895079853"
	hoverSound.Volume = 0.5
	hoverSound.Parent = screenGui
	ContentProvider:PreloadAsync({hoverSound})
	
	
	local selectedAnimations = {
		Idle = nil,
		Walk = nil,
		Run = nil,
		Jump = nil,
		Fall = nil,
		Climb = nil,
		Swim = nil,
		SwimIdle = nil
	}
	
	-- ANİMASYON VERİLERİ (KOMPLE - 50+ ANİMASYON)
	local animationData = {
		Stylish = {
			Idle = 616136790,
			Idle2 = 616138447,
			Idle3 = 886888594,
			Walk = 616146177,
			Run = 616140816,
			Jump = 616139451,
			Climb = 616133594,
			Fall = 616134815,
			Swim = 616143378,
			SwimIdle = 616144772
		},
		Zombie = {
			Idle = 616158929,
			Idle2 = 616160636,
			Idle3 = 885545458,
			Walk = 616168032,
			Run = 616163682,
			Jump = 616161997,
			Climb = 616156119,
			Fall = 616157476,
			Swim = 616165109,
			SwimIdle = 616166655
		},
		Robot = {
			Idle = 616088211,
			Idle2 = 616089559,
			Idle3 = 885531463,
			Walk = 616095330,
			Run = 616091570,
			Jump = 616090535,
			Climb = 616086039,
			Fall = 616087089,
			Swim = 616092998,
			SwimIdle = 616094091
		},
		Toy = {
			Idle = 782841498,
			Idle2 = 782845736,
			Idle3 = 980952228,
			Walk = 782843345,
			Run = 782842708,
			Jump = 782847020,
			Climb = 782843869,
			Fall = 782846423,
			Swim = 782844582,
			SwimIdle = 782845186
		},
		Cartoony = {
			Idle = 742637544,
			Idle2 = 742638445,
			Idle3 = 885477856,
			Walk = 742640026,
			Run = 742638842,
			Jump = 742637942,
			Climb = 742636889,
			Fall = 742637151,
			Swim = 742639220,
			SwimIdle = 742639812
		},
		Superhero = {
			Idle = 616111295,
			Idle2 = 616113536,
			Idle3 = 885535855,
			Walk = 616122287,
			Run = 616117076,
			Jump = 616115533,
			Climb = 616104706,
			Fall = 616108001,
			Swim = 616119360,
			SwimIdle = 616120861
		},
		Mage = {
			Idle = 707742142,
			Idle2 = 707855907,
			Idle3 = 885508740,
			Walk = 707897309,
			Run = 707861613,
			Jump = 707853694,
			Climb = 707826056,
			Fall = 707829716,
			Swim = 707876443,
			SwimIdle = 707894699
		},
		Levitation = {
			Idle = 616006778,
			Idle2 = 616008087,
			Idle3 = 886862142,
			Walk = 616013216,
			Run = 616010382,
			Jump = 616008936,
			Climb = 616003713,
			Fall = 616005863,
			Swim = 616011509,
			SwimIdle = 616012453
		},
		Vampire = {
			Idle = 1083445855,
			Idle2 = 1083450166,
			Idle3 = 1088037547,
			Walk = 1083473930,
			Run = 1083462077,
			Jump = 1083455352,
			Climb = 1083439238,
			Fall = 1083443587,
			Swim = 1083464683,
			SwimIdle = 1083467779
		},
		Elder = {
			Idle = 845397899,
			Idle2 = 845400520,
			Idle3 = 901160519,
			Walk = 845403856,
			Run = 845386501,
			Jump = 845398858,
			Climb = 845392038,
			Fall = 845396048,
			Swim = 845401742,
			SwimIdle = 845403127
		},
		Werewolf = {
			Idle = 1083195517,
			Idle2 = 1083214717,
			Idle3 = 1099492820,
			Walk = 1083178339,
			Run = 1083216690,
			Jump = 1083218792,
			Climb = 1083182000,
			Fall = 1083189019,
			Swim = 1083222527,
			SwimIdle = 1083225406
		},
		Knight = {
			Idle = 657595757,
			Idle2 = 657568135,
			Idle3 = 885499184,
			Walk = 657552124,
			Run = 657564596,
			Jump = 658409194,
			Climb = 658360781,
			Fall = 657600338,
			Swim = 657560551,
			SwimIdle = 657557095
		},
		Bold = {
			Idle = 16738333868,
			Idle2 = 16738334710,
			Idle3 = 16738335517,
			Walk = 16738340646,
			Run = 16738337225,
			Jump = 16738336650,
			Climb = 16738332169,
			Fall = 16738333171,
			Swim = 16738339158,
			SwimIdle = 16738339817
		},
		Astronaut = {
			Idle = 891621366,
			Idle2 = 891633237,
			Idle3 = 1047759695,
			Walk = 891667138,
			Run = 891636393,
			Jump = 891627522,
			Climb = 891609353,
			Fall = 891617961,
			Swim = 891639666,
			SwimIdle = 891663592
		},
		Bubbly = {
			Idle = 910004836,
			Idle2 = 910009958,
			Idle3 = 1018536639,
			Walk = 910034870,
			Run = 910025107,
			Jump = 910016857,
			Climb = 909997997,
			Fall = 910001910,
			Swim = 910028158,
			SwimIdle = 910030921
		},
		Pirate = {
			Idle = 750781874,
			Idle2 = 750782770,
			Idle3 = 885515365,
			Walk = 750785693,
			Run = 750783738,
			Jump = 750782230,
			Climb = 750779899,
			Fall = 750780242,
			Swim = 750784579,
			SwimIdle = 750785176
		},
		Rthro = {
			Idle = 2510196951,
			Idle2 = 2510197257,
			Idle3 = 3711062489,
			Walk = 2510202577,
			Run = 2510198475,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162
		},
		Ninja = {
			Idle = 656117400,
			Idle2 = 656118341,
			Idle3 = 886742569,
			Walk = 656121766,
			Run = 656118852,
			Jump = 656117878,
			Climb = 656114359,
			Fall = 656115606,
			Swim = 656119721,
			SwimIdle = 656121397
		},
		Oldschool = {
			Idle = 5319828216,
			Idle2 = 5319831086,
			Idle3 = 5392107832,
			Walk = 5319847204,
			Run = 5319844329,
			Jump = 5319841935,
			Climb = 5319816685,
			Fall = 5319839762,
			Swim = 5319850266,
			SwimIdle = 5319852613
		},
		['Adidas Sports'] = {
			Idle = 18537376492,
			Idle2 = 18537371272,
			Idle3 = 18537374150,
			Walk = 18537392113,
			Run = 18537384940,
			Jump = 18537380791,
			Climb = 18537363391,
			Fall = 18537367238,
			Swim = 18537389531,
			SwimIdle = 18537387180
		},
		Princess = {
			Idle = 941003647,
			Idle2 = 941013098,
			Idle3 = 1159195712,
			Walk = 941028902,
			Run = 941015281,
			Jump = 941008832,
			Climb = 940996062,
			Fall = 941000007,
			Swim = 941018893,
			SwimIdle = 941025398
		},
		Confident = {
			Idle = 1069977950,
			Idle2 = 1069987858,
			Idle3 = 1116160740,
			Walk = 1070017263,
			Run = 1070001516,
			Jump = 1069984524,
			Climb = 1069946257,
			Fall = 1069973677,
			Swim = 1070009914,
			SwimIdle = 1070012133
		},
		Popstar = {
			Idle = 1212900985,
			Idle2 = 1150842221,
			Idle3 = 1239733474,
			Walk = 1212980338,
			Run = 1212980348,
			Jump = 1212954642,
			Climb = 1213044953,
			Fall = 1212900995,
			Swim = 1212852603,
			SwimIdle = 1212998578
		},
		Patrol = {
			Idle = 1149612882,
			Idle2 = 1150842221,
			Idle3 = 1159573567,
			Walk = 1151231493,
			Run = 1150967949,
			Jump = 1150944216,
			Climb = 1148811837,
			Fall = 1148863382,
			Swim = 1151204998,
			SwimIdle = 1151221899
		},
		Sneaky = {
			Idle = 1132473842,
			Idle2 = 1132477671,
			Walk = 1132510133,
			Run = 1132494274,
			Jump = 1132489853,
			Climb = 1132461372,
			Fall = 1132469004,
			Swim = 1132500520,
			SwimIdle = 1132506407
		},
		Cowboy = {
			Idle = 1014390418,
			Idle2 = 1014398616,
			Idle3 = 1159487651,
			Walk = 1014421541,
			Run = 1014401683,
			Jump = 1014394726,
			Climb = 1014380606,
			Fall = 1014384571,
			Swim = 1014406523,
			SwimIdle = 1014411816
		},
		Ghost = {
			Idle = 616006778,
			Idle2 = 616008087,
			Idle3 = 616008087,
			Walk = 616013216,
			Run = 616013216,
			Jump = 616008936,
			Climb = 0,
			Fall = 616005863,
			Swim = 616011509,
			SwimIdle = 616012453
		},
		['Ghost 2'] = {
			Idle = 1151221899,
			Idle2 = 1151221899,
			Walk = 1151221899,
			Run = 1151221899,
			Jump = 1151221899,
			Climb = 0,
			Fall = 1151221899,
			Swim = 16738339158,
			SwimIdle = 1151221899
		},
		['Mr. Toilet'] = {
			Idle = 4417977954,
			Idle2 = 4417978624,
			Idle3 = 4441285342,
			Walk = 2510202577,
			Run = 4417979645,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162
		},
		Udzal = {
			Idle = 3303162274,
			Idle2 = 3303162549,
			Idle3 = 3710161342,
			Walk = 3303162967,
			Run = 3236836670,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162
		},
		['Oinan Thickhoof'] = {
			Idle = 657595757,
			Idle2 = 657568135,
			Idle3 = 885499184,
			Walk = 2510202577,
			Run = 3236836670,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162
		},
		Borock = {
			Idle = 3293641938,
			Idle2 = 3293642554,
			Idle3 = 3710131919,
			Walk = 2510202577,
			Run = 3236836670,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162
		},
		['Blocky Mech'] = {
			Idle = 4417977954,
			Idle2 = 4417978624,
			Idle3 = 4441285342,
			Walk = 2510202577,
			Run = 4417979645,
			Jump = 2510197830,
			Climb = 2510192778,
			Fall = 2510195892,
			Swim = 2510199791,
			SwimIdle = 2510201162
		},
		['Stylized Female'] = {
			Idle = 4708191566,
			Idle2 = 4708192150,
			Idle3 = 121221,
			Walk = 4708193840,
			Run = 4708192705,
			Jump = 4708188025,
			Climb = 4708184253,
			Fall = 4708186162,
			Swim = 4708189360,
			SwimIdle = 4708190607
		},
		R15 = {
			Idle = 4211217646,
			Idle2 = 4211218409,
			Walk = 4211223236,
			Run = 4211220381,
			Jump = 4211219390,
			Climb = 4211214992,
			Fall = 4211216152,
			Swim = 4211221314,
			SwimIdle = 4374694239
		},
		NFL = {
			Idle = 92080889861410,
			Idle2 = 74451233229259,
			Walk = 110358958299415,
			Run = 117333533048078,
			Jump = 119846112151352,
			Fall = 129773241321032,
			Climb = 134630013742019,
			Swim = 132697394189921,
			SwimIdle = 79090109939093
		},
		Gojo = {
			Walk = 95643163365384
		},
		Geto = {
			Walk = 85811471336028
		},
		['Adidas Community'] = {
			Idle = 122257458498464,
			Idle2 = 102357151005774,
			Walk = 122150855457006,
			Run = 82598234841035,
			Jump = 656117878,
			Fall = 98600215928904,
			Climb = 88763136693023,
			Swim = 133308483266208,
			SwimIdle = 109346520324160
		},
		CatwalkGram = {
			Idle = 133806214992291,
			Idle2 = 94970088341563,
			Walk = 109168724482748,
			Run = 81024476153754,
			Jump = 116936326516985,
			Fall = 92294537340807,
			Climb = 119377220967554,
			Swim = 134591743181628,
			SwimIdle = 98854111361360
		},
		NoBoundariesAnimation = {
			Idle = 18747067405,
			Idle2 = 507766666,
			Walk = 18747074203,
			Run = 18747070484,
			Jump = 507765000,
			Fall = 18747062535,
			Climb = 18747060903,
			Swim = 134591743181628,
			SwimIdle = 98854111361360
		},
		AuraAnimationPack = {
			Idle = 114191137265065,
			Idle2 = 110211186840347,
			Walk = 83842218823011,
			Run = 118320322718866,
			Jump = 109996626521204,
			Fall = 95603166884636,
			Climb = 97824616490448
		},
		UnboxedAnimations = {
			Idle = 138183121662404,
			Idle2 = 98281136301627,
			Walk = 90478085024465,
			Run = 134824450619865,
			Jump = 121454505477205,
			Fall = 94788218468396,
			Climb = 121145883950231
		},
		WickedPopular = {
			Idle = 118832222982049,
			Idle2 = 76049494037641,
			Walk = 92072849924640,
			Run = 72301599441680,
			Jump = 104325245285198,
			Fall = 121152442762481,
			Climb = 131326830509784,
			SwimIdle = 113199415118199,
			Swim = 99384245425157
		},
		WickedDancingThroughLife = {
			Idle = 92849173543269,
			Idle2 = 132238900951109,
			Walk = 73718308412641,
			Run = 135515454877967,
			Jump = 78508480717326,
			Fall = 78147885297412,
			Climb = 129447497744818
		},
		Mocap = {
			Idle = 913367814,
			Idle2 = 913373430,
			Walk = 913402848,
			Run = 913376220,
			Jump = 913370268,
			Climb = 913362637,
			Fall = 913365531,
			Swim = 913384386,
			SwimIdle = 913389285
		}
	}
	
	-- DROPDOWN AYARLARI (HƏR DROPDOWN NƏ GÖSTƏRMƏLİ)
	local dropdownTypes = {
		Idle = {
			"Stylish", "Zombie", "Robot", "Toy", "Cartoony", "Superhero", "Mage", "Levitation", 
			"Vampire", "Elder", "Werewolf", "Knight", "Bold", "Astronaut", "Bubbly", "Pirate", 
			"Rthro", "Ninja", "Oldschool", "Adidas Sports", "Princess", "Confident", "Popstar", 
			"Patrol", "Sneaky", "Cowboy", "Ghost", "Ghost 2", "Mr. Toilet", "Udzal", 
			"Oinan Thickhoof", "Borock", "Blocky Mech", "Stylized Female", "R15", "NFL", 
			"Adidas Community", "CatwalkGram", "NoBoundariesAnimation", "AuraAnimationPack", 
			"UnboxedAnimations", "WickedPopular", "WickedDancingThroughLife", "Mocap"
		},
		Walk = {
			"Stylish", "Zombie", "Robot", "Toy", "Cartoony", "Superhero", "Mage", "Levitation", 
			"Vampire", "Elder", "Werewolf", "Knight", "Bold", "Astronaut", "Bubbly", "Pirate", 
			"Rthro", "Ninja", "Oldschool", "Adidas Sports", "Princess", "Confident", "Popstar", 
			"Patrol", "Sneaky", "Cowboy", "Ghost", "Ghost 2", "Mr. Toilet", "Udzal", 
			"Oinan Thickhoof", "Borock", "Blocky Mech", "Stylized Female", "R15", "NFL", 
			"Gojo", "Geto", "Adidas Community", "CatwalkGram", "NoBoundariesAnimation", 
			"AuraAnimationPack", "UnboxedAnimations", "WickedPopular", "WickedDancingThroughLife", "Mocap"
		},
		Run = {
			"Stylish", "Zombie", "Robot", "Toy", "Cartoony", "Superhero", "Mage", "Levitation", 
			"Vampire", "Elder", "Werewolf", "Knight", "Bold", "Astronaut", "Bubbly", "Pirate", 
			"Rthro", "Ninja", "Oldschool", "Adidas Sports", "Princess", "Confident", "Popstar", 
			"Patrol", "Sneaky", "Cowboy", "Ghost", "Ghost 2", "Mr. Toilet", "Udzal", 
			"Oinan Thickhoof", "Borock", "Blocky Mech", "Stylized Female", "R15", "NFL", 
			"Adidas Community", "CatwalkGram", "NoBoundariesAnimation", "AuraAnimationPack", 
			"UnboxedAnimations", "WickedPopular", "WickedDancingThroughLife", "Mocap"
		},
		Jump = {
			"Stylish", "Zombie", "Robot", "Toy", "Cartoony", "Superhero", "Mage", "Levitation", 
			"Vampire", "Elder", "Werewolf", "Knight", "Bold", "Astronaut", "Bubbly", "Pirate", 
			"Rthro", "Ninja", "Oldschool", "Adidas Sports", "Princess", "Confident", "Popstar", 
			"Patrol", "Sneaky", "Cowboy", "Ghost", "Ghost 2", "Mr. Toilet", "Udzal", 
			"Oinan Thickhoof", "Borock", "Blocky Mech", "Stylized Female", "R15", "NFL", 
			"Adidas Community", "CatwalkGram", "NoBoundariesAnimation", "AuraAnimationPack", 
			"UnboxedAnimations", "WickedPopular", "WickedDancingThroughLife", "Mocap"
		},
		Fall = {
			"Stylish", "Zombie", "Robot", "Toy", "Cartoony", "Superhero", "Mage", "Levitation", 
			"Vampire", "Elder", "Werewolf", "Knight", "Bold", "Astronaut", "Bubbly", "Pirate", 
			"Rthro", "Ninja", "Oldschool", "Adidas Sports", "Princess", "Confident", "Popstar", 
			"Patrol", "Sneaky", "Cowboy", "Ghost", "Ghost 2", "Mr. Toilet", "Udzal", 
			"Oinan Thickhoof", "Borock", "Blocky Mech", "Stylized Female", "R15", "NFL", 
			"Adidas Community", "CatwalkGram", "NoBoundariesAnimation", "AuraAnimationPack", 
			"UnboxedAnimations", "WickedPopular", "WickedDancingThroughLife", "Mocap"
		},
		Swim = {
			"Stylish", "Zombie", "Robot", "Toy", "Cartoony", "Superhero", "Mage", "Levitation", 
			"Vampire", "Elder", "Werewolf", "Knight", "Bold", "Astronaut", "Bubbly", "Pirate", 
			"Rthro", "Ninja", "Oldschool", "Adidas Sports", "Princess", "Confident", "Popstar", 
			"Patrol", "Sneaky", "Cowboy", "Ghost", "Ghost 2", "Mr. Toilet", "Udzal", 
			"Oinan Thickhoof", "Borock", "Blocky Mech", "Stylized Female", "R15", "NFL", 
			"Adidas Community", "CatwalkGram", "NoBoundariesAnimation", "WickedPopular", "Mocap"
		}
	}
	
	
	local OPEN_ICON = "rbxassetid://6031090991"
	local CLOSE_ICON = "rbxassetid://6031090997"
	
	
	local function clearAllAnimations()
		local char = lp.Character
		if not char then return end
	
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not hum then return end
	
		for _, track in pairs(hum:GetPlayingAnimationTracks()) do
			track:Stop(0)
			track:Destroy()
		end
	
		task.wait(0.1)
	end
	
	
	local function applyMixedBundle()
		local char = lp.Character
		if not char then return end
	
		clearAllAnimations()
	
		local animate = char:FindFirstChild("Animate")
		if not animate then return end
	
		animate.Disabled = true
		task.wait(0.1)
	
		local function updateAnimation(folderName, animName, animId)
			if not animId or animId == 0 then return end
	
			local folder = animate:FindFirstChild(folderName)
			if not folder then return end
	
			local anim = folder:FindFirstChild(animName)
			if anim and anim:IsA("Animation") then
				anim.AnimationId = "rbxassetid://" .. tostring(animId)
			end
		end
	
		-- İDLE 
		if selectedAnimations.Idle then
			local data = animationData[selectedAnimations.Idle]
			if data then
				if data.Idle then
					updateAnimation("idle", "Animation1", data.Idle)
				end
				if data.Idle2 then
					updateAnimation("idle", "Animation2", data.Idle2)
				end
			end
		end
	
		-- WALK
		if selectedAnimations.Walk then
			local data = animationData[selectedAnimations.Walk]
			if data and data.Walk then
				updateAnimation("walk", "WalkAnim", data.Walk)
			end
		end
	
		-- RUN
		if selectedAnimations.Run then
			local data = animationData[selectedAnimations.Run]
			if data and data.Run then
				updateAnimation("run", "RunAnim", data.Run)
			end
		end
	
		-- JUMP
		if selectedAnimations.Jump then
			local data = animationData[selectedAnimations.Jump]
			if data and data.Jump then
				updateAnimation("jump", "JumpAnim", data.Jump)
			end
		end
	
		-- FALL
		if selectedAnimations.Fall then
			local data = animationData[selectedAnimations.Fall]
			if data and data.Fall then
				updateAnimation("fall", "FallAnim", data.Fall)
			end
		end
	
		-- CLIMB 
		if selectedAnimations.Idle then
			local data = animationData[selectedAnimations.Idle]
			if data and data.Climb then
				updateAnimation("climb", "ClimbAnim", data.Climb)
			end
		end
	
		-- SWIM
		if selectedAnimations.Swim then
			local data = animationData[selectedAnimations.Swim]
			if data and data.Swim then
				updateAnimation("swim", "Swim", data.Swim)
				updateAnimation("swimidle", "SwimIdle", data.SwimIdle)
			end
		end
	
		task.wait(0.1)
		animate.Disabled = false
	
		local hum = char:FindFirstChildOfClass("Humanoid")
		if hum then
			hum:ChangeState(Enum.HumanoidStateType.Landed)
			task.wait(0.05)
			hum:ChangeState(Enum.HumanoidStateType.Running)
		end
	
		task.wait(0.2)
		clearAllAnimations()
	end
	
	
	local function setupDropdown(dropdown, animType)
		if not dropdown then 
			warn("❌ Dropdown tapılmadı:", animType)
			return 
		end
	
		local mainButton = dropdown:FindFirstChild("MainButton")
		local selectedText = dropdown:FindFirstChild("SelectedText")
		local listFrame = dropdown:FindFirstChild("ListFrame")
		local template = listFrame and listFrame:FindFirstChild("Option")
	
		if not mainButton or not selectedText or not listFrame or not template then
			warn("❌ Dropdown komponentləri tapılmadı:", animType)
			return
		end
	
		local opened = false
		local options = dropdownTypes[animType] or {}
	
		
		template.Visible = false
	
		-- Başlanğıç
		listFrame.Visible = false
		listFrame.Size = UDim2.new(1, 0, 0, 0)
		mainButton.Image = CLOSE_ICON
		selectedText.Text = "None"
	
		 
		local listLayout = listFrame:FindFirstChildOfClass("UIListLayout")
		if not listLayout then
			listLayout = Instance.new("UIListLayout")
			listLayout.Parent = listFrame
			listLayout.SortOrder = Enum.SortOrder.LayoutOrder
			listLayout.Padding = UDim.new(0, 3)
			listLayout.FillDirection = Enum.FillDirection.Vertical
			listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			listLayout.VerticalAlignment = Enum.VerticalAlignment.Top
		end
	
		
		listFrame.ScrollingEnabled = true
		listFrame.ScrollBarThickness = 4
		listFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		listFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		listFrame.ScrollingDirection = Enum.ScrollingDirection.Y
	
		
		local function openMenu()
			if hoverSound.IsLoaded then 
				hoverSound:Play() 
			end
	
			opened = true
			mainButton.Image = OPEN_ICON
			listFrame.Visible = true
	
			
			task.wait(0.05) -- Layout yenilənməsi üçün
			local contentHeight = listLayout.AbsoluteContentSize.Y
			local maxHeight = 200 -- Maksimum hündürlük
			local finalHeight = math.min(contentHeight, maxHeight)
	
			local size = UDim2.new(1, 0, 0, finalHeight)
			TweenService:Create(listFrame, TweenInfo.new(0.25), {Size = size}):Play()
		end
	
		local function closeMenu()
			opened = false
			mainButton.Image = CLOSE_ICON
	
			local tween = TweenService:Create(listFrame, TweenInfo.new(0.25), {Size = UDim2.new(1, 0, 0, 0)})
			tween:Play()
			tween.Completed:Wait()
			listFrame.Visible = false
		end
	
		
		mainButton.MouseButton1Click:Connect(function()
			if opened then
				closeMenu()
			else
				openMenu()
			end
		end)
	
		
		for i, name in ipairs(options) do
			local btn = template:Clone()
			btn.Visible = true
			btn.Text = name
			btn.Name = "Option_" .. name
			btn.LayoutOrder = i
			btn.Parent = listFrame
	
			btn.MouseButton1Click:Connect(function()
				selectedText.Text = name
				selectedAnimations[animType] = name
				closeMenu()
	
				-- Dərhal tətbiq et
				applyMixedBundle()
	
				print("✅ " .. animType .. " → " .. name)
			end)
		end
	
		print("✅ " .. animType .. " dropdown hazır | Seçimlər:", #options)
	end
	
	
	lp.CharacterAdded:Connect(function(char)
		local hum = char:WaitForChild("Humanoid", 10)
		local animate = char:WaitForChild("Animate", 10)
	
		if hum and animate then
			task.wait(1)
			applyMixedBundle()
		end
	end)
	
	
	task.wait(1)
	
	setupDropdown(idleDropDown, "Idle")
	setupDropdown(walkDropDown, "Walk")
	setupDropdown(runDropDown, "Run")
	setupDropdown(jumpDropDown, "Jump")
	setupDropdown(fallDropDown, "Fall")
	setupDropdown(swimDropDown, "Swim")
	
	print("Qarışıq Bundle Sistemi Hazır")
	print("İstifadə: Hər dropdown-dan ayrı-ayrı animasiya seç")
	print(" Alt-alta düzgün sıralanan düymələr ilə")
end
coroutine.wrap(MGMINP_fake_script)()
local function YVXRNC_fake_script() -- echgui.draggableframe.LocalScript 
	local script = Instance.new('LocalScript', echgui.draggableframe)

	local frame = script.Parent
	local stroke = frame:FindFirstChild("UIStroke")
	local RunService = game:GetService("RunService")
	
	local hue = 0
	
	RunService.RenderStepped:Connect(function(dt)
		hue += dt * 0.4
		if hue > 1 then
			hue = 0
		end
	
		if stroke then
        stroke.Color = Color3.fromHSV(hue, 1, 1)
    end
end)
	
end
coroutine.wrap(YVXRNC_fake_script)()
