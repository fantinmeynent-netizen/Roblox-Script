-- Loadstring: loadstring(game:HttpGet("https://pastebin.com/raw/VxTep7jR"))()
-- Note: Players who joined after the audio started playing will not hear it; this also applies to players who rejoined before or while the audio is playing. And of course if you play the audio again while they're in the server they will hear it, no one is immune :P
-- For settings that need you to input an instance (Sound Group, Parent), just type the full valid path to that instance in Lua into the input box

local hideAndSeekExtremeAudioPlayerGUI = Instance.new("ScreenGui")
hideAndSeekExtremeAudioPlayerGUI.Name = tostring(math.random())
hideAndSeekExtremeAudioPlayerGUI.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
hideAndSeekExtremeAudioPlayerGUI.DisplayOrder = -1e+09
hideAndSeekExtremeAudioPlayerGUI.ResetOnSpawn = false
hideAndSeekExtremeAudioPlayerGUI.IgnoreGuiInset = true
hideAndSeekExtremeAudioPlayerGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
hideAndSeekExtremeAudioPlayerGUI.ClipToDeviceSafeArea = false

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.ClipsDescendants = true
mainFrame.AnchorPoint = Vector2.new(0.5, 0)
mainFrame.BackgroundColor3 = Color3.new(0.098, 0.098, 0.098)
mainFrame.Position = UDim2.new(0.5, 0, 0.299, 0)
mainFrame.Active = true
mainFrame.BorderColor3 = Color3.new()
mainFrame.BorderSizePixel = 0
mainFrame.Size = UDim2.new(0, 500, 0, 250)
mainFrame.Parent = hideAndSeekExtremeAudioPlayerGUI

local uIListLayout = Instance.new("UIListLayout")
uIListLayout.Name = "UIListLayout"
uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout.Parent = mainFrame

local topFrame = Instance.new("Frame")
topFrame.Name = "TopFrame"
topFrame.BackgroundColor3 = Color3.new(0.176, 0.176, 0.176)
topFrame.BorderColor3 = Color3.new()
topFrame.BorderSizePixel = 0
topFrame.Size = UDim2.new(1, 0, 0, 25)
topFrame.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.FontFace = Font.new(
	"rbxasset://fonts/families/Ubuntu.json",
	Enum.FontWeight.Bold,
	Enum.FontStyle.Normal
)
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.Text = "Hide and Seek Extreme - Audio Player"
titleLabel.BackgroundColor3 = Color3.new(1, 1, 1)
titleLabel.BorderSizePixel = 0
titleLabel.BackgroundTransparency = 1
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.BorderColor3 = Color3.new()
titleLabel.RichText = true
titleLabel.TextSize = 12
titleLabel.Size = UDim2.new(0, 200, 1, 0)
titleLabel.Parent = topFrame

local uIFlexItem = Instance.new("UIFlexItem")
uIFlexItem.Name = "UIFlexItem"
uIFlexItem.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem.Parent = titleLabel

local minimizeButton = Instance.new("TextButton")
minimizeButton.Name = "MinimizeButton"
minimizeButton.LayoutOrder = 2
minimizeButton.TextWrapped = true
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.BorderColor3 = Color3.new()
minimizeButton.Text = "-"
minimizeButton.BackgroundColor3 = Color3.new(0.176, 0.176, 0.176)
minimizeButton.BorderSizePixel = 0
minimizeButton.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json")
minimizeButton.TextSize = 20
minimizeButton.Size = UDim2.new(0, 35, 1, 0)
minimizeButton.Parent = topFrame

local uIPadding = Instance.new("UIPadding")
uIPadding.Name = "UIPadding"
uIPadding.PaddingLeft = UDim.new(0, 10)
uIPadding.Parent = topFrame

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.LayoutOrder = 3
closeButton.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json")
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.BorderColor3 = Color3.new()
closeButton.Text = "×"
closeButton.BackgroundColor3 = Color3.new(1, 0.196, 0.196)
closeButton.BackgroundTransparency = 1
closeButton.BorderSizePixel = 0
closeButton.TextWrapped = true
closeButton.TextSize = 20
closeButton.Size = UDim2.new(0, 35, 1, 0)
closeButton.Parent = topFrame

local uIListLayout_2 = Instance.new("UIListLayout")
uIListLayout_2.Name = "UIListLayout"
uIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_2.Parent = topFrame

local bodyFrame = Instance.new("Frame")
bodyFrame.Name = "BodyFrame"
bodyFrame.ClipsDescendants = true
bodyFrame.LayoutOrder = 1
bodyFrame.BackgroundTransparency = 1
bodyFrame.BackgroundColor3 = Color3.new(1, 1, 1)
bodyFrame.BorderColor3 = Color3.new()
bodyFrame.BorderSizePixel = 0
bodyFrame.Size = UDim2.new(1, 0, 0, 100)
bodyFrame.Parent = mainFrame

local propertiesFrame = Instance.new("ScrollingFrame")
propertiesFrame.Name = "PropertiesFrame"
propertiesFrame.ScrollBarImageColor3 = Color3.new(0.255, 0.255, 0.255)
propertiesFrame.CanvasSize = UDim2.new()
propertiesFrame.Active = true
propertiesFrame.ScrollBarThickness = 5
propertiesFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
propertiesFrame.BorderColor3 = Color3.new()
propertiesFrame.ElasticBehavior = Enum.ElasticBehavior.Never
propertiesFrame.BackgroundTransparency = 1
propertiesFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
propertiesFrame.ScrollingDirection = Enum.ScrollingDirection.Y
propertiesFrame.Size = UDim2.new(1, 0, 0, 100)
propertiesFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
propertiesFrame.BorderSizePixel = 0
propertiesFrame.BackgroundColor3 = Color3.new(1, 1, 1)
propertiesFrame.Parent = bodyFrame

local propertyFrame = Instance.new("Frame")
propertyFrame.Name = "PropertyFrame"
propertyFrame.LayoutOrder = 11
propertyFrame.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame.BorderColor3 = Color3.new()
propertyFrame.BorderSizePixel = 0
propertyFrame.Size = UDim2.new(1, 0, 0, 25)
propertyFrame.Parent = propertiesFrame

local uIPadding_2 = Instance.new("UIPadding")
uIPadding_2.Name = "UIPadding"
uIPadding_2.PaddingTop = UDim.new(0, 3)
uIPadding_2.PaddingBottom = UDim.new(0, 3)
uIPadding_2.PaddingRight = UDim.new(0, 3)
uIPadding_2.PaddingLeft = UDim.new(0, 10)
uIPadding_2.Parent = propertyFrame

local loopRegionInputBox = Instance.new("TextBox")
loopRegionInputBox.Name = "LoopRegionInputBox"
loopRegionInputBox.LayoutOrder = 1
loopRegionInputBox.CursorPosition = -1
loopRegionInputBox.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
loopRegionInputBox.TextColor3 = Color3.new(1, 1, 1)
loopRegionInputBox.Text = ""
loopRegionInputBox.ShowNativeInput = false
loopRegionInputBox.BorderColor3 = Color3.new()
loopRegionInputBox.TextTruncate = Enum.TextTruncate.AtEnd
loopRegionInputBox.TextXAlignment = Enum.TextXAlignment.Left
loopRegionInputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
loopRegionInputBox.PlaceholderColor3 = Color3.new(0.698, 0.698, 0.698)
loopRegionInputBox.TextSize = 14
loopRegionInputBox.ClearTextOnFocus = false
loopRegionInputBox.BorderSizePixel = 0
loopRegionInputBox.Size = UDim2.new(0, 200, 1, 0)
loopRegionInputBox.Parent = propertyFrame

local uIPadding_3 = Instance.new("UIPadding")
uIPadding_3.Name = "UIPadding"
uIPadding_3.PaddingRight = UDim.new(0, 4)
uIPadding_3.PaddingLeft = UDim.new(0, 4)
uIPadding_3.Parent = loopRegionInputBox

local uIListLayout_3 = Instance.new("UIListLayout")
uIListLayout_3.Name = "UIListLayout"
uIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_3.Parent = propertyFrame

local nameLabel = Instance.new("TextLabel")
nameLabel.Name = "NameLabel"
nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.Text = "Loop Region"
nameLabel.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel.BackgroundTransparency = 1
nameLabel.TextXAlignment = Enum.TextXAlignment.Left
nameLabel.BorderSizePixel = 0
nameLabel.BorderColor3 = Color3.new()
nameLabel.TextSize = 14
nameLabel.Size = UDim2.new(0, 200, 1, 0)
nameLabel.Parent = propertyFrame

local uIFlexItem_2 = Instance.new("UIFlexItem")
uIFlexItem_2.Name = "UIFlexItem"
uIFlexItem_2.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_2.Parent = nameLabel

local propertyFrame_2 = Instance.new("Frame")
propertyFrame_2.Name = "PropertyFrame"
propertyFrame_2.LayoutOrder = 6
propertyFrame_2.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_2.BorderColor3 = Color3.new()
propertyFrame_2.BorderSizePixel = 0
propertyFrame_2.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_2.Parent = propertiesFrame

local uIPadding_4 = Instance.new("UIPadding")
uIPadding_4.Name = "UIPadding"
uIPadding_4.PaddingTop = UDim.new(0, 3)
uIPadding_4.PaddingBottom = UDim.new(0, 3)
uIPadding_4.PaddingRight = UDim.new(0, 3)
uIPadding_4.PaddingLeft = UDim.new(0, 10)
uIPadding_4.Parent = propertyFrame_2

local uIListLayout_4 = Instance.new("UIListLayout")
uIListLayout_4.Name = "UIListLayout"
uIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_4.Parent = propertyFrame_2

local nameLabel_2 = Instance.new("TextLabel")
nameLabel_2.Name = "NameLabel"
nameLabel_2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_2.TextColor3 = Color3.new(1, 1, 1)
nameLabel_2.Text = "Roll Off Mode"
nameLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_2.BackgroundTransparency = 1
nameLabel_2.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_2.BorderSizePixel = 0
nameLabel_2.BorderColor3 = Color3.new()
nameLabel_2.TextSize = 14
nameLabel_2.Size = UDim2.new(0, 200, 1, 0)
nameLabel_2.Parent = propertyFrame_2

local uIFlexItem_3 = Instance.new("UIFlexItem")
uIFlexItem_3.Name = "UIFlexItem"
uIFlexItem_3.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_3.Parent = nameLabel_2

local rollOffModeEnumerationButton = Instance.new("TextButton")
rollOffModeEnumerationButton.Name = "RollOffModeEnumerationButton"
rollOffModeEnumerationButton.LayoutOrder = 1
rollOffModeEnumerationButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
rollOffModeEnumerationButton.TextColor3 = Color3.new(1, 1, 1)
rollOffModeEnumerationButton.BorderColor3 = Color3.new()
rollOffModeEnumerationButton.Text = ""
rollOffModeEnumerationButton.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
rollOffModeEnumerationButton.BorderSizePixel = 0
rollOffModeEnumerationButton.TextXAlignment = Enum.TextXAlignment.Left
rollOffModeEnumerationButton.TextTruncate = Enum.TextTruncate.AtEnd
rollOffModeEnumerationButton.TextSize = 14
rollOffModeEnumerationButton.Size = UDim2.new(0, 100, 1, 0)
rollOffModeEnumerationButton.Parent = propertyFrame_2

local uIPadding_5 = Instance.new("UIPadding")
uIPadding_5.Name = "UIPadding"
uIPadding_5.PaddingRight = UDim.new(0, 4)
uIPadding_5.PaddingLeft = UDim.new(0, 4)
uIPadding_5.Parent = rollOffModeEnumerationButton

local lineFrame = Instance.new("Frame")
lineFrame.Name = "LineFrame"
lineFrame.LayoutOrder = 17
lineFrame.BackgroundColor3 = Color3.new(0.392, 0.392, 0.392)
lineFrame.BorderColor3 = Color3.new()
lineFrame.BorderSizePixel = 0
lineFrame.Size = UDim2.new(1, 0, 0, 2)
lineFrame.Parent = propertiesFrame

local propertyFrame_3 = Instance.new("Frame")
propertyFrame_3.Name = "PropertyFrame"
propertyFrame_3.LayoutOrder = 22
propertyFrame_3.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_3.BorderColor3 = Color3.new()
propertyFrame_3.BorderSizePixel = 0
propertyFrame_3.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_3.Parent = propertiesFrame

local playingCheckboxButton = Instance.new("ImageButton")
playingCheckboxButton.Name = "PlayingCheckboxButton"
playingCheckboxButton.LayoutOrder = 1
playingCheckboxButton.ImageTransparency = 1
playingCheckboxButton.BorderColor3 = Color3.new(0.392, 0.392, 0.392)
playingCheckboxButton.AnchorPoint = Vector2.new(1, 0)
playingCheckboxButton.Image = "rbxasset://textures/AnimationEditor/icon_checkmark.png"
playingCheckboxButton.Position = UDim2.new(1, -5, 0, 5)
playingCheckboxButton.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
playingCheckboxButton.Size = UDim2.new(0, 15, 1, 0)
playingCheckboxButton.Parent = propertyFrame_3

local uIListLayout_5 = Instance.new("UIListLayout")
uIListLayout_5.Name = "UIListLayout"
uIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_5.Parent = propertyFrame_3

local uIPadding_6 = Instance.new("UIPadding")
uIPadding_6.Name = "UIPadding"
uIPadding_6.PaddingTop = UDim.new(0, 5)
uIPadding_6.PaddingBottom = UDim.new(0, 5)
uIPadding_6.PaddingRight = UDim.new(0, 5)
uIPadding_6.PaddingLeft = UDim.new(0, 10)
uIPadding_6.Parent = propertyFrame_3

local nameLabel_3 = Instance.new("TextLabel")
nameLabel_3.Name = "NameLabel"
nameLabel_3.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_3.TextColor3 = Color3.new(1, 1, 1)
nameLabel_3.Text = "Playing"
nameLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_3.BackgroundTransparency = 1
nameLabel_3.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_3.BorderSizePixel = 0
nameLabel_3.BorderColor3 = Color3.new()
nameLabel_3.TextSize = 14
nameLabel_3.Size = UDim2.new(0, 200, 1, 0)
nameLabel_3.Parent = propertyFrame_3

local uIFlexItem_4 = Instance.new("UIFlexItem")
uIFlexItem_4.Name = "UIFlexItem"
uIFlexItem_4.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_4.Parent = nameLabel_3

local propertyFrame_4 = Instance.new("Frame")
propertyFrame_4.Name = "PropertyFrame"
propertyFrame_4.LayoutOrder = 7
propertyFrame_4.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_4.BorderColor3 = Color3.new()
propertyFrame_4.BorderSizePixel = 0
propertyFrame_4.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_4.Parent = propertiesFrame

local rollOffMinDistanceInputBox = Instance.new("TextBox")
rollOffMinDistanceInputBox.Name = "RollOffMinDistanceInputBox"
rollOffMinDistanceInputBox.LayoutOrder = 1
rollOffMinDistanceInputBox.CursorPosition = -1
rollOffMinDistanceInputBox.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
rollOffMinDistanceInputBox.TextColor3 = Color3.new(1, 1, 1)
rollOffMinDistanceInputBox.Text = ""
rollOffMinDistanceInputBox.ShowNativeInput = false
rollOffMinDistanceInputBox.BorderColor3 = Color3.new()
rollOffMinDistanceInputBox.TextTruncate = Enum.TextTruncate.AtEnd
rollOffMinDistanceInputBox.TextXAlignment = Enum.TextXAlignment.Left
rollOffMinDistanceInputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
rollOffMinDistanceInputBox.PlaceholderColor3 = Color3.new(0.698, 0.698, 0.698)
rollOffMinDistanceInputBox.TextSize = 14
rollOffMinDistanceInputBox.ClearTextOnFocus = false
rollOffMinDistanceInputBox.BorderSizePixel = 0
rollOffMinDistanceInputBox.Size = UDim2.new(0, 200, 1, 0)
rollOffMinDistanceInputBox.Parent = propertyFrame_4

local uIPadding_7 = Instance.new("UIPadding")
uIPadding_7.Name = "UIPadding"
uIPadding_7.PaddingRight = UDim.new(0, 4)
uIPadding_7.PaddingLeft = UDim.new(0, 4)
uIPadding_7.Parent = rollOffMinDistanceInputBox

local uIListLayout_6 = Instance.new("UIListLayout")
uIListLayout_6.Name = "UIListLayout"
uIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_6.Parent = propertyFrame_4

local nameLabel_4 = Instance.new("TextLabel")
nameLabel_4.Name = "NameLabel"
nameLabel_4.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_4.TextColor3 = Color3.new(1, 1, 1)
nameLabel_4.Text = "Roll Off Minimum Distance"
nameLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_4.BackgroundTransparency = 1
nameLabel_4.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_4.BorderSizePixel = 0
nameLabel_4.BorderColor3 = Color3.new()
nameLabel_4.TextSize = 14
nameLabel_4.Size = UDim2.new(0, 200, 1, 0)
nameLabel_4.Parent = propertyFrame_4

local uIFlexItem_5 = Instance.new("UIFlexItem")
uIFlexItem_5.Name = "UIFlexItem"
uIFlexItem_5.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_5.Parent = nameLabel_4

local uIPadding_8 = Instance.new("UIPadding")
uIPadding_8.Name = "UIPadding"
uIPadding_8.PaddingTop = UDim.new(0, 3)
uIPadding_8.PaddingBottom = UDim.new(0, 3)
uIPadding_8.PaddingRight = UDim.new(0, 3)
uIPadding_8.PaddingLeft = UDim.new(0, 10)
uIPadding_8.Parent = propertyFrame_4

local propertyFrame_5 = Instance.new("Frame")
propertyFrame_5.Name = "PropertyFrame"
propertyFrame_5.LayoutOrder = 21
propertyFrame_5.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_5.BorderColor3 = Color3.new()
propertyFrame_5.BorderSizePixel = 0
propertyFrame_5.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_5.Parent = propertiesFrame

local uIPadding_9 = Instance.new("UIPadding")
uIPadding_9.Name = "UIPadding"
uIPadding_9.PaddingTop = UDim.new(0, 5)
uIPadding_9.PaddingBottom = UDim.new(0, 5)
uIPadding_9.PaddingRight = UDim.new(0, 5)
uIPadding_9.PaddingLeft = UDim.new(0, 10)
uIPadding_9.Parent = propertyFrame_5

local nameLabel_5 = Instance.new("TextLabel")
nameLabel_5.Name = "NameLabel"
nameLabel_5.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_5.TextColor3 = Color3.new(1, 1, 1)
nameLabel_5.Text = "Play On Remove"
nameLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_5.BackgroundTransparency = 1
nameLabel_5.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_5.BorderSizePixel = 0
nameLabel_5.BorderColor3 = Color3.new()
nameLabel_5.TextSize = 14
nameLabel_5.Size = UDim2.new(0, 200, 1, 0)
nameLabel_5.Parent = propertyFrame_5

local uIFlexItem_6 = Instance.new("UIFlexItem")
uIFlexItem_6.Name = "UIFlexItem"
uIFlexItem_6.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_6.Parent = nameLabel_5

local uIListLayout_7 = Instance.new("UIListLayout")
uIListLayout_7.Name = "UIListLayout"
uIListLayout_7.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_7.Parent = propertyFrame_5

local playOnRemoveCheckboxButton = Instance.new("ImageButton")
playOnRemoveCheckboxButton.Name = "PlayOnRemoveCheckboxButton"
playOnRemoveCheckboxButton.LayoutOrder = 1
playOnRemoveCheckboxButton.ImageTransparency = 1
playOnRemoveCheckboxButton.BorderColor3 = Color3.new(0.392, 0.392, 0.392)
playOnRemoveCheckboxButton.AnchorPoint = Vector2.new(1, 0)
playOnRemoveCheckboxButton.Image = "rbxasset://textures/AnimationEditor/icon_checkmark.png"
playOnRemoveCheckboxButton.Position = UDim2.new(1, -5, 0, 5)
playOnRemoveCheckboxButton.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
playOnRemoveCheckboxButton.Size = UDim2.new(0, 15, 1, 0)
playOnRemoveCheckboxButton.Parent = propertyFrame_5

local propertyFrame_6 = Instance.new("Frame")
propertyFrame_6.Name = "PropertyFrame"
propertyFrame_6.LayoutOrder = 18
propertyFrame_6.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_6.BorderColor3 = Color3.new()
propertyFrame_6.BorderSizePixel = 0
propertyFrame_6.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_6.Parent = propertiesFrame

local uIPadding_10 = Instance.new("UIPadding")
uIPadding_10.Name = "UIPadding"
uIPadding_10.PaddingTop = UDim.new(0, 5)
uIPadding_10.PaddingBottom = UDim.new(0, 5)
uIPadding_10.PaddingRight = UDim.new(0, 5)
uIPadding_10.PaddingLeft = UDim.new(0, 10)
uIPadding_10.Parent = propertyFrame_6

local uIListLayout_8 = Instance.new("UIListLayout")
uIListLayout_8.Name = "UIListLayout"
uIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_8.Parent = propertyFrame_6

local clientReplicationCheckboxButton = Instance.new("ImageButton")
clientReplicationCheckboxButton.Name = "ClientReplicationCheckboxButton"
clientReplicationCheckboxButton.LayoutOrder = 1
clientReplicationCheckboxButton.ImageTransparency = 1
clientReplicationCheckboxButton.AnchorPoint = Vector2.new(1, 0)
clientReplicationCheckboxButton.Image = "rbxasset://textures/AnimationEditor/icon_checkmark.png"
clientReplicationCheckboxButton.Position = UDim2.new(1, -5, 0, 5)
clientReplicationCheckboxButton.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
clientReplicationCheckboxButton.BorderColor3 = Color3.new(0.392, 0.392, 0.392)
clientReplicationCheckboxButton.Size = UDim2.new(0, 15, 1, 0)
clientReplicationCheckboxButton.Parent = propertyFrame_6

local nameLabel_6 = Instance.new("TextLabel")
nameLabel_6.Name = "NameLabel"
nameLabel_6.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_6.TextColor3 = Color3.new(1, 1, 1)
nameLabel_6.Text = "Client Replication"
nameLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_6.BackgroundTransparency = 1
nameLabel_6.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_6.BorderSizePixel = 0
nameLabel_6.BorderColor3 = Color3.new()
nameLabel_6.TextSize = 14
nameLabel_6.Size = UDim2.new(0, 200, 1, 0)
nameLabel_6.Parent = propertyFrame_6

local uIFlexItem_7 = Instance.new("UIFlexItem")
uIFlexItem_7.Name = "UIFlexItem"
uIFlexItem_7.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_7.Parent = nameLabel_6

local propertyFrame_7 = Instance.new("Frame")
propertyFrame_7.Name = "PropertyFrame"
propertyFrame_7.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_7.BorderColor3 = Color3.new()
propertyFrame_7.BorderSizePixel = 0
propertyFrame_7.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_7.Parent = propertiesFrame

local uIPadding_11 = Instance.new("UIPadding")
uIPadding_11.Name = "UIPadding"
uIPadding_11.PaddingTop = UDim.new(0, 3)
uIPadding_11.PaddingBottom = UDim.new(0, 3)
uIPadding_11.PaddingRight = UDim.new(0, 3)
uIPadding_11.PaddingLeft = UDim.new(0, 10)
uIPadding_11.Parent = propertyFrame_7

local nameLabel_7 = Instance.new("TextLabel")
nameLabel_7.Name = "NameLabel"
nameLabel_7.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_7.TextColor3 = Color3.new(1, 1, 1)
nameLabel_7.Text = "Sound ID"
nameLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_7.BackgroundTransparency = 1
nameLabel_7.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_7.BorderSizePixel = 0
nameLabel_7.BorderColor3 = Color3.new()
nameLabel_7.TextSize = 14
nameLabel_7.Size = UDim2.new(0, 200, 1, 0)
nameLabel_7.Parent = propertyFrame_7

local uIFlexItem_8 = Instance.new("UIFlexItem")
uIFlexItem_8.Name = "UIFlexItem"
uIFlexItem_8.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_8.Parent = nameLabel_7

local soundIdInputBox = Instance.new("TextBox")
soundIdInputBox.Name = "SoundIdInputBox"
soundIdInputBox.LayoutOrder = 1
soundIdInputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
soundIdInputBox.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
soundIdInputBox.TextColor3 = Color3.new(1, 1, 1)
soundIdInputBox.Text = ""
soundIdInputBox.PlaceholderColor3 = Color3.new(0.698, 0.698, 0.698)
soundIdInputBox.BorderColor3 = Color3.new()
soundIdInputBox.TextSize = 14
soundIdInputBox.TextXAlignment = Enum.TextXAlignment.Left
soundIdInputBox.CursorPosition = -1
soundIdInputBox.TextTruncate = Enum.TextTruncate.AtEnd
soundIdInputBox.ShowNativeInput = false
soundIdInputBox.ClearTextOnFocus = false
soundIdInputBox.BorderSizePixel = 0
soundIdInputBox.Size = UDim2.new(0, 200, 1, 0)
soundIdInputBox.Parent = propertyFrame_7

local uIPadding_12 = Instance.new("UIPadding")
uIPadding_12.Name = "UIPadding"
uIPadding_12.PaddingRight = UDim.new(0, 4)
uIPadding_12.PaddingLeft = UDim.new(0, 4)
uIPadding_12.Parent = soundIdInputBox

local uIListLayout_9 = Instance.new("UIListLayout")
uIListLayout_9.Name = "UIListLayout"
uIListLayout_9.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_9.Parent = propertyFrame_7

local lineFrame_2 = Instance.new("Frame")
lineFrame_2.Name = "LineFrame"
lineFrame_2.LayoutOrder = 9
lineFrame_2.BackgroundColor3 = Color3.new(0.392, 0.392, 0.392)
lineFrame_2.BorderColor3 = Color3.new()
lineFrame_2.BorderSizePixel = 0
lineFrame_2.Size = UDim2.new(1, 0, 0, 2)
lineFrame_2.Parent = propertiesFrame

local uIPadding_13 = Instance.new("UIPadding")
uIPadding_13.Name = "UIPadding"
uIPadding_13.PaddingRight = UDim.new(0, 10)
uIPadding_13.Parent = propertiesFrame

local propertyFrame_8 = Instance.new("Frame")
propertyFrame_8.Name = "PropertyFrame"
propertyFrame_8.LayoutOrder = 4
propertyFrame_8.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_8.BorderColor3 = Color3.new()
propertyFrame_8.BorderSizePixel = 0
propertyFrame_8.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_8.Parent = propertiesFrame

local soundGroupInputBox = Instance.new("TextBox")
soundGroupInputBox.Name = "SoundGroupInputBox"
soundGroupInputBox.LayoutOrder = 1
soundGroupInputBox.CursorPosition = -1
soundGroupInputBox.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
soundGroupInputBox.TextColor3 = Color3.new(1, 1, 1)
soundGroupInputBox.Text = ""
soundGroupInputBox.ShowNativeInput = false
soundGroupInputBox.BorderColor3 = Color3.new()
soundGroupInputBox.TextTruncate = Enum.TextTruncate.AtEnd
soundGroupInputBox.TextXAlignment = Enum.TextXAlignment.Left
soundGroupInputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
soundGroupInputBox.PlaceholderColor3 = Color3.new(0.698, 0.698, 0.698)
soundGroupInputBox.TextSize = 14
soundGroupInputBox.ClearTextOnFocus = false
soundGroupInputBox.BorderSizePixel = 0
soundGroupInputBox.Size = UDim2.new(0, 200, 1, 0)
soundGroupInputBox.Parent = propertyFrame_8

local uIPadding_14 = Instance.new("UIPadding")
uIPadding_14.Name = "UIPadding"
uIPadding_14.PaddingRight = UDim.new(0, 4)
uIPadding_14.PaddingLeft = UDim.new(0, 4)
uIPadding_14.Parent = soundGroupInputBox

local nameLabel_8 = Instance.new("TextLabel")
nameLabel_8.Name = "NameLabel"
nameLabel_8.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_8.TextColor3 = Color3.new(1, 1, 1)
nameLabel_8.Text = "Sound Group"
nameLabel_8.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_8.BackgroundTransparency = 1
nameLabel_8.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_8.BorderSizePixel = 0
nameLabel_8.BorderColor3 = Color3.new()
nameLabel_8.TextSize = 14
nameLabel_8.Size = UDim2.new(0, 200, 1, 0)
nameLabel_8.Parent = propertyFrame_8

local uIFlexItem_9 = Instance.new("UIFlexItem")
uIFlexItem_9.Name = "UIFlexItem"
uIFlexItem_9.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_9.Parent = nameLabel_8

local uIListLayout_10 = Instance.new("UIListLayout")
uIListLayout_10.Name = "UIListLayout"
uIListLayout_10.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_10.Parent = propertyFrame_8

local uIPadding_15 = Instance.new("UIPadding")
uIPadding_15.Name = "UIPadding"
uIPadding_15.PaddingTop = UDim.new(0, 3)
uIPadding_15.PaddingBottom = UDim.new(0, 3)
uIPadding_15.PaddingRight = UDim.new(0, 3)
uIPadding_15.PaddingLeft = UDim.new(0, 10)
uIPadding_15.Parent = propertyFrame_8

local propertyFrame_9 = Instance.new("Frame")
propertyFrame_9.Name = "PropertyFrame"
propertyFrame_9.LayoutOrder = 14
propertyFrame_9.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_9.BorderColor3 = Color3.new()
propertyFrame_9.BorderSizePixel = 0
propertyFrame_9.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_9.Parent = propertiesFrame

local uIListLayout_11 = Instance.new("UIListLayout")
uIListLayout_11.Name = "UIListLayout"
uIListLayout_11.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_11.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_11.Parent = propertyFrame_9

local nameLabel_9 = Instance.new("TextLabel")
nameLabel_9.Name = "NameLabel"
nameLabel_9.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_9.TextColor3 = Color3.new(1, 1, 1)
nameLabel_9.Text = "Archivable"
nameLabel_9.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_9.BackgroundTransparency = 1
nameLabel_9.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_9.BorderSizePixel = 0
nameLabel_9.BorderColor3 = Color3.new()
nameLabel_9.TextSize = 14
nameLabel_9.Size = UDim2.new(0, 200, 1, 0)
nameLabel_9.Parent = propertyFrame_9

local uIFlexItem_10 = Instance.new("UIFlexItem")
uIFlexItem_10.Name = "UIFlexItem"
uIFlexItem_10.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_10.Parent = nameLabel_9

local uIPadding_16 = Instance.new("UIPadding")
uIPadding_16.Name = "UIPadding"
uIPadding_16.PaddingTop = UDim.new(0, 5)
uIPadding_16.PaddingBottom = UDim.new(0, 5)
uIPadding_16.PaddingRight = UDim.new(0, 5)
uIPadding_16.PaddingLeft = UDim.new(0, 10)
uIPadding_16.Parent = propertyFrame_9

local archivableCheckboxButton = Instance.new("ImageButton")
archivableCheckboxButton.Name = "ArchivableCheckboxButton"
archivableCheckboxButton.LayoutOrder = 1
archivableCheckboxButton.ImageTransparency = 1
archivableCheckboxButton.BorderColor3 = Color3.new(0.392, 0.392, 0.392)
archivableCheckboxButton.AnchorPoint = Vector2.new(1, 0)
archivableCheckboxButton.Image = "rbxasset://textures/AnimationEditor/icon_checkmark.png"
archivableCheckboxButton.Position = UDim2.new(1, -5, 0, 5)
archivableCheckboxButton.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
archivableCheckboxButton.Size = UDim2.new(0, 15, 1, 0)
archivableCheckboxButton.Parent = propertyFrame_9

local propertyFrame_10 = Instance.new("Frame")
propertyFrame_10.Name = "PropertyFrame"
propertyFrame_10.LayoutOrder = 20
propertyFrame_10.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_10.BorderColor3 = Color3.new()
propertyFrame_10.BorderSizePixel = 0
propertyFrame_10.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_10.Parent = propertiesFrame

local timePositionInputBox = Instance.new("TextBox")
timePositionInputBox.Name = "TimePositionInputBox"
timePositionInputBox.LayoutOrder = 1
timePositionInputBox.CursorPosition = -1
timePositionInputBox.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
timePositionInputBox.TextColor3 = Color3.new(1, 1, 1)
timePositionInputBox.Text = ""
timePositionInputBox.ShowNativeInput = false
timePositionInputBox.BorderColor3 = Color3.new()
timePositionInputBox.TextTruncate = Enum.TextTruncate.AtEnd
timePositionInputBox.TextXAlignment = Enum.TextXAlignment.Left
timePositionInputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
timePositionInputBox.PlaceholderColor3 = Color3.new(0.698, 0.698, 0.698)
timePositionInputBox.TextSize = 14
timePositionInputBox.ClearTextOnFocus = false
timePositionInputBox.BorderSizePixel = 0
timePositionInputBox.Size = UDim2.new(0, 200, 1, 0)
timePositionInputBox.Parent = propertyFrame_10

local uIPadding_17 = Instance.new("UIPadding")
uIPadding_17.Name = "UIPadding"
uIPadding_17.PaddingRight = UDim.new(0, 4)
uIPadding_17.PaddingLeft = UDim.new(0, 4)
uIPadding_17.Parent = timePositionInputBox

local nameLabel_10 = Instance.new("TextLabel")
nameLabel_10.Name = "NameLabel"
nameLabel_10.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_10.TextColor3 = Color3.new(1, 1, 1)
nameLabel_10.Text = "Time Position"
nameLabel_10.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_10.BackgroundTransparency = 1
nameLabel_10.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_10.BorderSizePixel = 0
nameLabel_10.BorderColor3 = Color3.new()
nameLabel_10.TextSize = 14
nameLabel_10.Size = UDim2.new(0, 200, 1, 0)
nameLabel_10.Parent = propertyFrame_10

local uIFlexItem_11 = Instance.new("UIFlexItem")
uIFlexItem_11.Name = "UIFlexItem"
uIFlexItem_11.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_11.Parent = nameLabel_10

local uIPadding_18 = Instance.new("UIPadding")
uIPadding_18.Name = "UIPadding"
uIPadding_18.PaddingTop = UDim.new(0, 3)
uIPadding_18.PaddingBottom = UDim.new(0, 3)
uIPadding_18.PaddingRight = UDim.new(0, 3)
uIPadding_18.PaddingLeft = UDim.new(0, 10)
uIPadding_18.Parent = propertyFrame_10

local uIListLayout_12 = Instance.new("UIListLayout")
uIListLayout_12.Name = "UIListLayout"
uIListLayout_12.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_12.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_12.Parent = propertyFrame_10

local propertyFrame_11 = Instance.new("Frame")
propertyFrame_11.Name = "PropertyFrame"
propertyFrame_11.LayoutOrder = 16
propertyFrame_11.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_11.BorderColor3 = Color3.new()
propertyFrame_11.BorderSizePixel = 0
propertyFrame_11.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_11.Parent = propertiesFrame

local uIListLayout_13 = Instance.new("UIListLayout")
uIListLayout_13.Name = "UIListLayout"
uIListLayout_13.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_13.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_13.Parent = propertyFrame_11

local nameLabel_11 = Instance.new("TextLabel")
nameLabel_11.Name = "NameLabel"
nameLabel_11.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_11.TextColor3 = Color3.new(1, 1, 1)
nameLabel_11.Text = "Parent"
nameLabel_11.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_11.BackgroundTransparency = 1
nameLabel_11.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_11.BorderSizePixel = 0
nameLabel_11.BorderColor3 = Color3.new()
nameLabel_11.TextSize = 14
nameLabel_11.Size = UDim2.new(0, 200, 1, 0)
nameLabel_11.Parent = propertyFrame_11

local uIFlexItem_12 = Instance.new("UIFlexItem")
uIFlexItem_12.Name = "UIFlexItem"
uIFlexItem_12.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_12.Parent = nameLabel_11

local uIPadding_19 = Instance.new("UIPadding")
uIPadding_19.Name = "UIPadding"
uIPadding_19.PaddingTop = UDim.new(0, 3)
uIPadding_19.PaddingBottom = UDim.new(0, 3)
uIPadding_19.PaddingRight = UDim.new(0, 3)
uIPadding_19.PaddingLeft = UDim.new(0, 10)
uIPadding_19.Parent = propertyFrame_11

local parentInputBox = Instance.new("TextBox")
parentInputBox.Name = "ParentInputBox"
parentInputBox.LayoutOrder = 1
parentInputBox.CursorPosition = -1
parentInputBox.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
parentInputBox.TextColor3 = Color3.new(1, 1, 1)
parentInputBox.Text = ""
parentInputBox.ShowNativeInput = false
parentInputBox.BorderColor3 = Color3.new()
parentInputBox.TextTruncate = Enum.TextTruncate.AtEnd
parentInputBox.TextXAlignment = Enum.TextXAlignment.Left
parentInputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
parentInputBox.PlaceholderColor3 = Color3.new(0.698, 0.698, 0.698)
parentInputBox.TextSize = 14
parentInputBox.ClearTextOnFocus = false
parentInputBox.BorderSizePixel = 0
parentInputBox.Size = UDim2.new(0, 200, 1, 0)
parentInputBox.Parent = propertyFrame_11

local uIPadding_20 = Instance.new("UIPadding")
uIPadding_20.Name = "UIPadding"
uIPadding_20.PaddingRight = UDim.new(0, 4)
uIPadding_20.PaddingLeft = UDim.new(0, 4)
uIPadding_20.Parent = parentInputBox

local uIFlexItem_13 = Instance.new("UIFlexItem")
uIFlexItem_13.Name = "UIFlexItem"
uIFlexItem_13.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_13.Parent = propertiesFrame

local lineFrame_3 = Instance.new("Frame")
lineFrame_3.Name = "LineFrame"
lineFrame_3.LayoutOrder = 13
lineFrame_3.BackgroundColor3 = Color3.new(0.392, 0.392, 0.392)
lineFrame_3.BorderColor3 = Color3.new()
lineFrame_3.BorderSizePixel = 0
lineFrame_3.Size = UDim2.new(1, 0, 0, 2)
lineFrame_3.Parent = propertiesFrame

local lineFrame_4 = Instance.new("Frame")
lineFrame_4.Name = "LineFrame"
lineFrame_4.LayoutOrder = 5
lineFrame_4.BackgroundColor3 = Color3.new(0.392, 0.392, 0.392)
lineFrame_4.BorderColor3 = Color3.new()
lineFrame_4.BorderSizePixel = 0
lineFrame_4.Size = UDim2.new(1, 0, 0, 2)
lineFrame_4.Parent = propertiesFrame

local propertyFrame_12 = Instance.new("Frame")
propertyFrame_12.Name = "PropertyFrame"
propertyFrame_12.LayoutOrder = 15
propertyFrame_12.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_12.BorderColor3 = Color3.new()
propertyFrame_12.BorderSizePixel = 0
propertyFrame_12.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_12.Parent = propertiesFrame

local uIPadding_21 = Instance.new("UIPadding")
uIPadding_21.Name = "UIPadding"
uIPadding_21.PaddingTop = UDim.new(0, 3)
uIPadding_21.PaddingBottom = UDim.new(0, 3)
uIPadding_21.PaddingRight = UDim.new(0, 3)
uIPadding_21.PaddingLeft = UDim.new(0, 10)
uIPadding_21.Parent = propertyFrame_12

local uIListLayout_14 = Instance.new("UIListLayout")
uIListLayout_14.Name = "UIListLayout"
uIListLayout_14.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_14.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_14.Parent = propertyFrame_12

local nameLabel_12 = Instance.new("TextLabel")
nameLabel_12.Name = "NameLabel"
nameLabel_12.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_12.TextColor3 = Color3.new(1, 1, 1)
nameLabel_12.Text = "Name"
nameLabel_12.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_12.BackgroundTransparency = 1
nameLabel_12.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_12.BorderSizePixel = 0
nameLabel_12.BorderColor3 = Color3.new()
nameLabel_12.TextSize = 14
nameLabel_12.Size = UDim2.new(0, 200, 1, 0)
nameLabel_12.Parent = propertyFrame_12

local uIFlexItem_14 = Instance.new("UIFlexItem")
uIFlexItem_14.Name = "UIFlexItem"
uIFlexItem_14.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_14.Parent = nameLabel_12

local nameInputBox = Instance.new("TextBox")
nameInputBox.Name = "NameInputBox"
nameInputBox.LayoutOrder = 1
nameInputBox.CursorPosition = -1
nameInputBox.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
nameInputBox.TextColor3 = Color3.new(1, 1, 1)
nameInputBox.Text = ""
nameInputBox.ShowNativeInput = false
nameInputBox.BorderColor3 = Color3.new()
nameInputBox.TextTruncate = Enum.TextTruncate.AtEnd
nameInputBox.TextXAlignment = Enum.TextXAlignment.Left
nameInputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameInputBox.PlaceholderColor3 = Color3.new(0.698, 0.698, 0.698)
nameInputBox.TextSize = 14
nameInputBox.ClearTextOnFocus = false
nameInputBox.BorderSizePixel = 0
nameInputBox.Size = UDim2.new(0, 200, 1, 0)
nameInputBox.Parent = propertyFrame_12

local uIPadding_22 = Instance.new("UIPadding")
uIPadding_22.Name = "UIPadding"
uIPadding_22.PaddingRight = UDim.new(0, 4)
uIPadding_22.PaddingLeft = UDim.new(0, 4)
uIPadding_22.Parent = nameInputBox

local propertyFrame_13 = Instance.new("Frame")
propertyFrame_13.Name = "PropertyFrame"
propertyFrame_13.LayoutOrder = 1
propertyFrame_13.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_13.BorderColor3 = Color3.new()
propertyFrame_13.BorderSizePixel = 0
propertyFrame_13.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_13.Parent = propertiesFrame

local nameLabel_13 = Instance.new("TextLabel")
nameLabel_13.Name = "NameLabel"
nameLabel_13.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_13.TextColor3 = Color3.new(1, 1, 1)
nameLabel_13.Text = "Volume"
nameLabel_13.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_13.BackgroundTransparency = 1
nameLabel_13.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_13.BorderSizePixel = 0
nameLabel_13.BorderColor3 = Color3.new()
nameLabel_13.TextSize = 14
nameLabel_13.Size = UDim2.new(0, 200, 1, 0)
nameLabel_13.Parent = propertyFrame_13

local uIFlexItem_15 = Instance.new("UIFlexItem")
uIFlexItem_15.Name = "UIFlexItem"
uIFlexItem_15.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_15.Parent = nameLabel_13

local uIPadding_23 = Instance.new("UIPadding")
uIPadding_23.Name = "UIPadding"
uIPadding_23.PaddingTop = UDim.new(0, 3)
uIPadding_23.PaddingBottom = UDim.new(0, 3)
uIPadding_23.PaddingRight = UDim.new(0, 3)
uIPadding_23.PaddingLeft = UDim.new(0, 10)
uIPadding_23.Parent = propertyFrame_13

local uIListLayout_15 = Instance.new("UIListLayout")
uIListLayout_15.Name = "UIListLayout"
uIListLayout_15.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_15.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_15.Parent = propertyFrame_13

local volumeInputBox = Instance.new("TextBox")
volumeInputBox.Name = "VolumeInputBox"
volumeInputBox.LayoutOrder = 1
volumeInputBox.CursorPosition = -1
volumeInputBox.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
volumeInputBox.TextColor3 = Color3.new(1, 1, 1)
volumeInputBox.Text = ""
volumeInputBox.ShowNativeInput = false
volumeInputBox.BorderColor3 = Color3.new()
volumeInputBox.TextTruncate = Enum.TextTruncate.AtEnd
volumeInputBox.TextXAlignment = Enum.TextXAlignment.Left
volumeInputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
volumeInputBox.PlaceholderColor3 = Color3.new(0.698, 0.698, 0.698)
volumeInputBox.TextSize = 14
volumeInputBox.ClearTextOnFocus = false
volumeInputBox.BorderSizePixel = 0
volumeInputBox.Size = UDim2.new(0, 50, 1, 0)
volumeInputBox.Parent = propertyFrame_13

local uIPadding_24 = Instance.new("UIPadding")
uIPadding_24.Name = "UIPadding"
uIPadding_24.PaddingRight = UDim.new(0, 4)
uIPadding_24.PaddingLeft = UDim.new(0, 4)
uIPadding_24.Parent = volumeInputBox

local uIListLayout_16 = Instance.new("UIListLayout")
uIListLayout_16.Name = "UIListLayout"
uIListLayout_16.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_16.Padding = UDim.new(0, 5)
uIListLayout_16.Parent = propertiesFrame

local propertyFrame_14 = Instance.new("Frame")
propertyFrame_14.Name = "PropertyFrame"
propertyFrame_14.LayoutOrder = 3
propertyFrame_14.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_14.BorderColor3 = Color3.new()
propertyFrame_14.BorderSizePixel = 0
propertyFrame_14.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_14.Parent = propertiesFrame

local playbackSpeedInputBox = Instance.new("TextBox")
playbackSpeedInputBox.Name = "PlaybackSpeedInputBox"
playbackSpeedInputBox.LayoutOrder = 1
playbackSpeedInputBox.CursorPosition = -1
playbackSpeedInputBox.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
playbackSpeedInputBox.TextColor3 = Color3.new(1, 1, 1)
playbackSpeedInputBox.Text = ""
playbackSpeedInputBox.ShowNativeInput = false
playbackSpeedInputBox.BorderColor3 = Color3.new()
playbackSpeedInputBox.TextTruncate = Enum.TextTruncate.AtEnd
playbackSpeedInputBox.TextXAlignment = Enum.TextXAlignment.Left
playbackSpeedInputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
playbackSpeedInputBox.PlaceholderColor3 = Color3.new(0.698, 0.698, 0.698)
playbackSpeedInputBox.TextSize = 14
playbackSpeedInputBox.ClearTextOnFocus = false
playbackSpeedInputBox.BorderSizePixel = 0
playbackSpeedInputBox.Size = UDim2.new(0, 50, 1, 0)
playbackSpeedInputBox.Parent = propertyFrame_14

local uIPadding_25 = Instance.new("UIPadding")
uIPadding_25.Name = "UIPadding"
uIPadding_25.PaddingRight = UDim.new(0, 4)
uIPadding_25.PaddingLeft = UDim.new(0, 4)
uIPadding_25.Parent = playbackSpeedInputBox

local uIListLayout_17 = Instance.new("UIListLayout")
uIListLayout_17.Name = "UIListLayout"
uIListLayout_17.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_17.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_17.Parent = propertyFrame_14

local nameLabel_14 = Instance.new("TextLabel")
nameLabel_14.Name = "NameLabel"
nameLabel_14.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_14.TextColor3 = Color3.new(1, 1, 1)
nameLabel_14.Text = "Playback Speed"
nameLabel_14.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_14.BackgroundTransparency = 1
nameLabel_14.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_14.BorderSizePixel = 0
nameLabel_14.BorderColor3 = Color3.new()
nameLabel_14.TextSize = 14
nameLabel_14.Size = UDim2.new(0, 200, 1, 0)
nameLabel_14.Parent = propertyFrame_14

local uIFlexItem_16 = Instance.new("UIFlexItem")
uIFlexItem_16.Name = "UIFlexItem"
uIFlexItem_16.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_16.Parent = nameLabel_14

local uIPadding_26 = Instance.new("UIPadding")
uIPadding_26.Name = "UIPadding"
uIPadding_26.PaddingTop = UDim.new(0, 3)
uIPadding_26.PaddingBottom = UDim.new(0, 3)
uIPadding_26.PaddingRight = UDim.new(0, 3)
uIPadding_26.PaddingLeft = UDim.new(0, 10)
uIPadding_26.Parent = propertyFrame_14

local propertyFrame_15 = Instance.new("Frame")
propertyFrame_15.Name = "PropertyFrame"
propertyFrame_15.LayoutOrder = 12
propertyFrame_15.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_15.BorderColor3 = Color3.new()
propertyFrame_15.BorderSizePixel = 0
propertyFrame_15.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_15.Parent = propertiesFrame

local playbackRegionInputBox = Instance.new("TextBox")
playbackRegionInputBox.Name = "PlaybackRegionInputBox"
playbackRegionInputBox.LayoutOrder = 1
playbackRegionInputBox.CursorPosition = -1
playbackRegionInputBox.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
playbackRegionInputBox.TextColor3 = Color3.new(1, 1, 1)
playbackRegionInputBox.Text = ""
playbackRegionInputBox.ShowNativeInput = false
playbackRegionInputBox.BorderColor3 = Color3.new()
playbackRegionInputBox.TextTruncate = Enum.TextTruncate.AtEnd
playbackRegionInputBox.TextXAlignment = Enum.TextXAlignment.Left
playbackRegionInputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
playbackRegionInputBox.PlaceholderColor3 = Color3.new(0.698, 0.698, 0.698)
playbackRegionInputBox.TextSize = 14
playbackRegionInputBox.ClearTextOnFocus = false
playbackRegionInputBox.BorderSizePixel = 0
playbackRegionInputBox.Size = UDim2.new(0, 200, 1, 0)
playbackRegionInputBox.Parent = propertyFrame_15

local uIPadding_27 = Instance.new("UIPadding")
uIPadding_27.Name = "UIPadding"
uIPadding_27.PaddingRight = UDim.new(0, 4)
uIPadding_27.PaddingLeft = UDim.new(0, 4)
uIPadding_27.Parent = playbackRegionInputBox

local nameLabel_15 = Instance.new("TextLabel")
nameLabel_15.Name = "NameLabel"
nameLabel_15.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_15.TextColor3 = Color3.new(1, 1, 1)
nameLabel_15.Text = "Playback Region"
nameLabel_15.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_15.BackgroundTransparency = 1
nameLabel_15.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_15.BorderSizePixel = 0
nameLabel_15.BorderColor3 = Color3.new()
nameLabel_15.TextSize = 14
nameLabel_15.Size = UDim2.new(0, 200, 1, 0)
nameLabel_15.Parent = propertyFrame_15

local uIFlexItem_17 = Instance.new("UIFlexItem")
uIFlexItem_17.Name = "UIFlexItem"
uIFlexItem_17.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_17.Parent = nameLabel_15

local uIListLayout_18 = Instance.new("UIListLayout")
uIListLayout_18.Name = "UIListLayout"
uIListLayout_18.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_18.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_18.Parent = propertyFrame_15

local uIPadding_28 = Instance.new("UIPadding")
uIPadding_28.Name = "UIPadding"
uIPadding_28.PaddingTop = UDim.new(0, 3)
uIPadding_28.PaddingBottom = UDim.new(0, 3)
uIPadding_28.PaddingRight = UDim.new(0, 3)
uIPadding_28.PaddingLeft = UDim.new(0, 10)
uIPadding_28.Parent = propertyFrame_15

local propertyFrame_16 = Instance.new("Frame")
propertyFrame_16.Name = "PropertyFrame"
propertyFrame_16.LayoutOrder = 8
propertyFrame_16.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_16.BorderColor3 = Color3.new()
propertyFrame_16.BorderSizePixel = 0
propertyFrame_16.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_16.Parent = propertiesFrame

local rollOffMaxDistanceInputBox = Instance.new("TextBox")
rollOffMaxDistanceInputBox.Name = "RollOffMaxDistanceInputBox"
rollOffMaxDistanceInputBox.LayoutOrder = 1
rollOffMaxDistanceInputBox.CursorPosition = -1
rollOffMaxDistanceInputBox.BackgroundColor3 = Color3.new(0.235, 0.235, 0.235)
rollOffMaxDistanceInputBox.TextColor3 = Color3.new(1, 1, 1)
rollOffMaxDistanceInputBox.Text = ""
rollOffMaxDistanceInputBox.ShowNativeInput = false
rollOffMaxDistanceInputBox.BorderColor3 = Color3.new()
rollOffMaxDistanceInputBox.TextTruncate = Enum.TextTruncate.AtEnd
rollOffMaxDistanceInputBox.TextXAlignment = Enum.TextXAlignment.Left
rollOffMaxDistanceInputBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
rollOffMaxDistanceInputBox.PlaceholderColor3 = Color3.new(0.698, 0.698, 0.698)
rollOffMaxDistanceInputBox.TextSize = 14
rollOffMaxDistanceInputBox.ClearTextOnFocus = false
rollOffMaxDistanceInputBox.BorderSizePixel = 0
rollOffMaxDistanceInputBox.Size = UDim2.new(0, 200, 1, 0)
rollOffMaxDistanceInputBox.Parent = propertyFrame_16

local uIPadding_29 = Instance.new("UIPadding")
uIPadding_29.Name = "UIPadding"
uIPadding_29.PaddingRight = UDim.new(0, 4)
uIPadding_29.PaddingLeft = UDim.new(0, 4)
uIPadding_29.Parent = rollOffMaxDistanceInputBox

local nameLabel_16 = Instance.new("TextLabel")
nameLabel_16.Name = "NameLabel"
nameLabel_16.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_16.TextColor3 = Color3.new(1, 1, 1)
nameLabel_16.Text = "Roll Off Maximum Distance"
nameLabel_16.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_16.BackgroundTransparency = 1
nameLabel_16.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_16.BorderSizePixel = 0
nameLabel_16.BorderColor3 = Color3.new()
nameLabel_16.TextSize = 14
nameLabel_16.Size = UDim2.new(0, 200, 1, 0)
nameLabel_16.Parent = propertyFrame_16

local uIFlexItem_18 = Instance.new("UIFlexItem")
uIFlexItem_18.Name = "UIFlexItem"
uIFlexItem_18.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_18.Parent = nameLabel_16

local uIPadding_30 = Instance.new("UIPadding")
uIPadding_30.Name = "UIPadding"
uIPadding_30.PaddingTop = UDim.new(0, 3)
uIPadding_30.PaddingBottom = UDim.new(0, 3)
uIPadding_30.PaddingRight = UDim.new(0, 3)
uIPadding_30.PaddingLeft = UDim.new(0, 10)
uIPadding_30.Parent = propertyFrame_16

local uIListLayout_19 = Instance.new("UIListLayout")
uIListLayout_19.Name = "UIListLayout"
uIListLayout_19.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_19.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_19.Parent = propertyFrame_16

local lineFrame_5 = Instance.new("Frame")
lineFrame_5.Name = "LineFrame"
lineFrame_5.LayoutOrder = 19
lineFrame_5.BackgroundColor3 = Color3.new(0.392, 0.392, 0.392)
lineFrame_5.BorderColor3 = Color3.new()
lineFrame_5.BorderSizePixel = 0
lineFrame_5.Size = UDim2.new(1, 0, 0, 2)
lineFrame_5.Parent = propertiesFrame

local propertyFrame_17 = Instance.new("Frame")
propertyFrame_17.Name = "PropertyFrame"
propertyFrame_17.LayoutOrder = 10
propertyFrame_17.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_17.BorderColor3 = Color3.new()
propertyFrame_17.BorderSizePixel = 0
propertyFrame_17.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_17.Parent = propertiesFrame

local playbackRegionsEnabledCheckboxButton = Instance.new("ImageButton")
playbackRegionsEnabledCheckboxButton.Name = "PlaybackRegionsEnabledCheckboxButton"
playbackRegionsEnabledCheckboxButton.LayoutOrder = 1
playbackRegionsEnabledCheckboxButton.ImageTransparency = 1
playbackRegionsEnabledCheckboxButton.BorderColor3 = Color3.new(0.392, 0.392, 0.392)
playbackRegionsEnabledCheckboxButton.AnchorPoint = Vector2.new(1, 0)
playbackRegionsEnabledCheckboxButton.Image = "rbxasset://textures/AnimationEditor/icon_checkmark.png"
playbackRegionsEnabledCheckboxButton.Position = UDim2.new(1, -5, 0, 5)
playbackRegionsEnabledCheckboxButton.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
playbackRegionsEnabledCheckboxButton.Size = UDim2.new(0, 15, 1, 0)
playbackRegionsEnabledCheckboxButton.Parent = propertyFrame_17

local uIPadding_31 = Instance.new("UIPadding")
uIPadding_31.Name = "UIPadding"
uIPadding_31.PaddingTop = UDim.new(0, 5)
uIPadding_31.PaddingBottom = UDim.new(0, 5)
uIPadding_31.PaddingRight = UDim.new(0, 5)
uIPadding_31.PaddingLeft = UDim.new(0, 10)
uIPadding_31.Parent = propertyFrame_17

local nameLabel_17 = Instance.new("TextLabel")
nameLabel_17.Name = "NameLabel"
nameLabel_17.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_17.TextColor3 = Color3.new(1, 1, 1)
nameLabel_17.Text = "Playback Regions Enabled"
nameLabel_17.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_17.BackgroundTransparency = 1
nameLabel_17.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_17.BorderSizePixel = 0
nameLabel_17.BorderColor3 = Color3.new()
nameLabel_17.TextSize = 14
nameLabel_17.Size = UDim2.new(0, 200, 1, 0)
nameLabel_17.Parent = propertyFrame_17

local uIFlexItem_19 = Instance.new("UIFlexItem")
uIFlexItem_19.Name = "UIFlexItem"
uIFlexItem_19.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_19.Parent = nameLabel_17

local uIListLayout_20 = Instance.new("UIListLayout")
uIListLayout_20.Name = "UIListLayout"
uIListLayout_20.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_20.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_20.Parent = propertyFrame_17

local propertyFrame_18 = Instance.new("Frame")
propertyFrame_18.Name = "PropertyFrame"
propertyFrame_18.LayoutOrder = 2
propertyFrame_18.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
propertyFrame_18.BorderColor3 = Color3.new()
propertyFrame_18.BorderSizePixel = 0
propertyFrame_18.Size = UDim2.new(1, 0, 0, 25)
propertyFrame_18.Parent = propertiesFrame

local uIPadding_32 = Instance.new("UIPadding")
uIPadding_32.Name = "UIPadding"
uIPadding_32.PaddingTop = UDim.new(0, 5)
uIPadding_32.PaddingBottom = UDim.new(0, 5)
uIPadding_32.PaddingRight = UDim.new(0, 5)
uIPadding_32.PaddingLeft = UDim.new(0, 10)
uIPadding_32.Parent = propertyFrame_18

local uIListLayout_21 = Instance.new("UIListLayout")
uIListLayout_21.Name = "UIListLayout"
uIListLayout_21.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_21.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_21.Parent = propertyFrame_18

local nameLabel_18 = Instance.new("TextLabel")
nameLabel_18.Name = "NameLabel"
nameLabel_18.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
nameLabel_18.TextColor3 = Color3.new(1, 1, 1)
nameLabel_18.Text = "Looped"
nameLabel_18.BackgroundColor3 = Color3.new(1, 1, 1)
nameLabel_18.BackgroundTransparency = 1
nameLabel_18.TextXAlignment = Enum.TextXAlignment.Left
nameLabel_18.BorderSizePixel = 0
nameLabel_18.BorderColor3 = Color3.new()
nameLabel_18.TextSize = 14
nameLabel_18.Size = UDim2.new(0, 200, 1, 0)
nameLabel_18.Parent = propertyFrame_18

local uIFlexItem_20 = Instance.new("UIFlexItem")
uIFlexItem_20.Name = "UIFlexItem"
uIFlexItem_20.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_20.Parent = nameLabel_18

local loopedCheckboxButton = Instance.new("ImageButton")
loopedCheckboxButton.Name = "LoopedCheckboxButton"
loopedCheckboxButton.LayoutOrder = 1
loopedCheckboxButton.ImageTransparency = 1
loopedCheckboxButton.BorderColor3 = Color3.new(0.392, 0.392, 0.392)
loopedCheckboxButton.AnchorPoint = Vector2.new(1, 0)
loopedCheckboxButton.Image = "rbxasset://textures/AnimationEditor/icon_checkmark.png"
loopedCheckboxButton.Position = UDim2.new(1, -5, 0, 5)
loopedCheckboxButton.BackgroundColor3 = Color3.new(0.137, 0.137, 0.137)
loopedCheckboxButton.Size = UDim2.new(0, 15, 1, 0)
loopedCheckboxButton.Parent = propertyFrame_18

local uIPadding_33 = Instance.new("UIPadding")
uIPadding_33.Name = "UIPadding"
uIPadding_33.PaddingTop = UDim.new(0, 5)
uIPadding_33.PaddingBottom = UDim.new(0, 5)
uIPadding_33.PaddingRight = UDim.new(0, 5)
uIPadding_33.PaddingLeft = UDim.new(0, 5)
uIPadding_33.Parent = bodyFrame

local uIFlexItem_21 = Instance.new("UIFlexItem")
uIFlexItem_21.Name = "UIFlexItem"
uIFlexItem_21.FlexMode = Enum.UIFlexMode.Fill
uIFlexItem_21.Parent = bodyFrame

local uIListLayout_22 = Instance.new("UIListLayout")
uIListLayout_22.Name = "UIListLayout"
uIListLayout_22.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_22.Padding = UDim.new(0, 5)
uIListLayout_22.Parent = bodyFrame

local playButton = Instance.new("TextButton")
playButton.Name = "PlayButton"
playButton.LayoutOrder = 1
playButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
playButton.TextColor3 = Color3.new()
playButton.BorderColor3 = Color3.new()
playButton.Text = ""
playButton.BackgroundColor3 = Color3.new(0.255, 0.255, 0.255)
playButton.BorderSizePixel = 0
playButton.TextTransparency = 1
playButton.TextSize = 14
playButton.Size = UDim2.new(1, 0, 0, 30)
playButton.Parent = bodyFrame

local textLabel = Instance.new("TextLabel")
textLabel.Name = "TextLabel"
textLabel.LayoutOrder = 1
textLabel.FontFace = Font.new(
	"rbxasset://fonts/families/SourceSansPro.json",
	Enum.FontWeight.Bold,
	Enum.FontStyle.Normal
)
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.BorderColor3 = Color3.new()
textLabel.Text = "Play"
textLabel.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel.BackgroundTransparency = 1
textLabel.BorderSizePixel = 0
textLabel.TextSize = 16
textLabel.AutomaticSize = Enum.AutomaticSize.X
textLabel.Size = UDim2.new(0, 0, 1, 0)
textLabel.Parent = playButton

local iconLabel = Instance.new("ImageLabel")
iconLabel.Name = "IconLabel"
iconLabel.Image = "rbxasset://textures/AnimationEditor/button_control_play.png"
iconLabel.BackgroundTransparency = 1
iconLabel.BackgroundColor3 = Color3.new(1, 1, 1)
iconLabel.BorderColor3 = Color3.new()
iconLabel.BorderSizePixel = 0
iconLabel.Size = UDim2.new(0, 30, 0, 30)
iconLabel.Parent = playButton

local uIListLayout_23 = Instance.new("UIListLayout")
uIListLayout_23.Name = "UIListLayout"
uIListLayout_23.VerticalAlignment = Enum.VerticalAlignment.Center
uIListLayout_23.FillDirection = Enum.FillDirection.Horizontal
uIListLayout_23.HorizontalAlignment = Enum.HorizontalAlignment.Center
uIListLayout_23.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout_23.Parent = playButton

local uIDragDetector = Instance.new("UIDragDetector")
uIDragDetector.Name = "UIDragDetector"
uIDragDetector.BoundingBehavior = Enum.UIDragDetectorBoundingBehavior.HitPoint
uIDragDetector.ResponseStyle = Enum.UIDragDetectorResponseStyle.Scale
uIDragDetector.DragSpace = Enum.UIDragDetectorDragSpace.Reference
uIDragDetector.Parent = mainFrame

local uIScale = Instance.new("UIScale")
uIScale.Name = "UIScale"
uIScale.Parent = mainFrame

local openButton = Instance.new("TextButton")
openButton.Name = "OpenButton"
openButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
openButton.TextColor3 = Color3.new()
openButton.BorderColor3 = Color3.new()
openButton.Text = "📻"
openButton.BackgroundColor3 = Color3.new(1, 1, 1)
openButton.AnchorPoint = Vector2.new(1, 0.5)
openButton.BorderSizePixel = 0
openButton.BackgroundTransparency = 1
openButton.Position = UDim2.new(1, -5, 0.75, 0)
openButton.ZIndex = -1e+09
openButton.TextSize = 40
openButton.Size = UDim2.new(0, 37, 0, 40)
openButton.Parent = hideAndSeekExtremeAudioPlayerGUI

local uIScale_2 = Instance.new("UIScale")
uIScale_2.Name = "UIScale"
uIScale_2.Parent = openButton

local TweenService = game:GetService("TweenService")
local baseTweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
local minimized = false
local minimizeTween

minimizeButton.Activated:Connect(function()
	minimized = not minimized
	if minimizeTween then
		minimizeTween:Cancel()
	end
	local newSize
	if minimized then
		newSize = UDim2.fromOffset(500, 25)
		minimizeButton.Text = "+"
	else
		newSize = UDim2.fromOffset(500, 250)
		minimizeButton.Text = "-"
	end
	minimizeTween = TweenService:Create(mainFrame, baseTweenInfo, {Size = newSize})
	minimizeTween:Play()
end)

closeButton.Activated:Connect(function()
	mainFrame.Visible = false
end)

closeButton.MouseEnter:Connect(function()
	closeButton.BackgroundTransparency = 0
end)

closeButton.MouseLeave:Connect(function()
	closeButton.BackgroundTransparency = 1
end)

local HttpService = game:GetService("HttpService")
local dataFilePath = "HideAndSeekExtremeAudioPlayer.json"
local rawData = {
	SoundId = 142376088,
	Volume = "0.5",
	Looped = false,
	PlaybackSpeed = "1",
	SoundGroup = "nil",

	RollOffMode = 0,
	RollOffMinDistance = "10",
	RollOffMaxDistance = "10000",

	PlaybackRegionsEnabled = false,
	LoopRegion = "0, 60000",
	PlaybackRegion = "0, 60000",

	Archivable = true,
	Name = "Sound",
	Parent = "workspace",

	ClientReplication = true,

	TimePosition = "inf",
	PlayOnRemove = true,
	Playing = true
}

pcall(function()
	local savedRawData = HttpService:JSONDecode(readfile(dataFilePath))
	for index, value in pairs(rawData) do
		local savedValue = savedRawData[index]
		rawData[index] = if savedValue == nil then value else savedValue
	end
end)

function setRawData(name, value)
	rawData[name] = value
	pcall(function()
		writefile(dataFilePath, HttpService:JSONEncode(rawData))
	end)
end

function setCheckboxVisualState(checkboxInstance, state)
	if state then
		checkboxInstance.BackgroundColor3 = Color3.fromRGB(43, 177, 255)
		checkboxInstance.ImageTransparency = 0
	else
		checkboxInstance.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		checkboxInstance.ImageTransparency = 1
	end
end

function stringToRegion(inputString)
	local rawArgs = inputString:split(",")
	local args = {}
	for index, value in ipairs(rawArgs) do
		local newValue = tonumber(value)
		if newValue then
			args[index] = newValue
		else
			return
		end
		if index >= 2 then
			break
		end
	end
	table.sort(args, function(valueA, valueB)
		return valueA < valueB
	end)
	return NumberRange.new(unpack(args))
end

function regionToString(inputRegion)
	local minValue = inputRegion.Min
	local maxValue = inputRegion.Max
	return if minValue == maxValue then
		tostring(minValue)
		else
		`{minValue}, {maxValue}`
end

local floor, infinity, max = math.floor, math.huge, math.max

function getValidValue(propertyName, value)
	local rawValue = rawData[propertyName]
	if propertyName == "SoundId" then
		value = tonumber(value)
		return if value and value < infinity then floor(max(0, value)) else (tonumber(rawValue) or 142376088)
	end
	local dummySound = Instance.new("Sound")
	pcall(function()
		dummySound[propertyName] = if type(dummySound[propertyName]) == "number" then tonumber(rawValue) else rawValue
	end)
	pcall(function()
		dummySound[propertyName] = if typeof(dummySound[propertyName]) == "NumberRange" then stringToRegion(rawValue) else rawValue
	end)
	pcall(function()
		dummySound[propertyName] = value
	end)
	dummySound:Destroy()
	return dummySound[propertyName]
end

function addCheckboxHandler(propertyName, checkboxInstance)
	setRawData(propertyName, not not rawData[propertyName])
	checkboxInstance.Activated:Connect(function()
		local newState = not rawData[propertyName]
		setRawData(propertyName, newState)
		setCheckboxVisualState(checkboxInstance, newState)
	end)
	setCheckboxVisualState(checkboxInstance, rawData[propertyName])
end

function addNumberInputHandler(propertyName, inputBox)
	setRawData(propertyName, tostring(getValidValue(propertyName, tonumber(rawData[propertyName]))))
	inputBox.FocusLost:Connect(function()
		local newValue = tonumber(inputBox.Text)
		if newValue then
			setRawData(propertyName, tostring(getValidValue(propertyName, newValue)))
		end
		inputBox.Text = tostring(rawData[propertyName])
	end)
	inputBox.Text = tostring(rawData[propertyName])
end

function addStringInputHandler(propertyName, inputBox)
	setRawData(propertyName, tostring(rawData[propertyName]))
	inputBox.FocusLost:Connect(function()
		setRawData(propertyName, inputBox.Text)
		inputBox.Text = rawData[propertyName]
	end)
	inputBox.Text = rawData[propertyName]
end

function addRegionInputHandler(propertyName, inputBox)
	setRawData(propertyName, regionToString(getValidValue(propertyName, stringToRegion(rawData[propertyName]))))
	inputBox.FocusLost:Connect(function()
		setRawData(propertyName, regionToString(getValidValue(propertyName, stringToRegion(inputBox.Text))))
		inputBox.Text = tostring(rawData[propertyName])
	end)
	inputBox.Text = tostring(rawData[propertyName])
end

addNumberInputHandler("Volume", volumeInputBox)
addNumberInputHandler("PlaybackSpeed", playbackSpeedInputBox)
addNumberInputHandler("RollOffMinDistance", rollOffMinDistanceInputBox)
addNumberInputHandler("RollOffMaxDistance", rollOffMaxDistanceInputBox)
addNumberInputHandler("TimePosition", timePositionInputBox)

addCheckboxHandler("Looped", loopedCheckboxButton)
addCheckboxHandler("PlaybackRegionsEnabled", playbackRegionsEnabledCheckboxButton)
addCheckboxHandler("Archivable", archivableCheckboxButton)
addCheckboxHandler("ClientReplication", clientReplicationCheckboxButton)
addCheckboxHandler("PlayOnRemove", playOnRemoveCheckboxButton)
addCheckboxHandler("Playing", playingCheckboxButton)

addStringInputHandler("Name", nameInputBox)
addStringInputHandler("SoundGroup", soundGroupInputBox)
addStringInputHandler("Parent", parentInputBox)

addRegionInputHandler("LoopRegion", loopRegionInputBox)
addRegionInputHandler("PlaybackRegion", playbackRegionInputBox)

do
	local propertyName = "SoundId"
	setRawData(propertyName, getValidValue(propertyName, rawData[propertyName]))
	soundIdInputBox.FocusLost:Connect(function()
		setRawData(propertyName, getValidValue(propertyName, soundIdInputBox.Text:match("%d+")))
		soundIdInputBox.Text = tostring(rawData[propertyName])
	end)
	soundIdInputBox.Text = tostring(rawData[propertyName])
end

local rollOffMode = Enum.RollOffMode

do
	local propertyName = "RollOffMode"
	setRawData(propertyName, getValidValue(propertyName, rawData[propertyName]).Value)
	rollOffModeEnumerationButton.Activated:Connect(function()
		local newValue = rawData[propertyName] + 1
		if newValue > #rollOffMode:GetEnumItems() - 1 then
			newValue = 0
		end
		setRawData(propertyName, getValidValue(propertyName, newValue).Value)
		rollOffModeEnumerationButton.Text = rollOffMode:GetEnumItems()[rawData[propertyName] + 1].Name
	end)
	rollOffModeEnumerationButton.Text = rollOffMode:GetEnumItems()[rawData[propertyName] + 1].Name
end

local playSoundOthersRE = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlaySoundOthers")
playButton.Activated:Connect(function()
	local soundId = rawData.SoundId
	local clientReplication = rawData.ClientReplication
	local properties = {
		RollOffMode = rollOffMode:GetEnumItems()[rawData.RollOffMode + 1],
		LoopRegion = stringToRegion(rawData.LoopRegion),
		PlaybackRegion = stringToRegion(rawData.PlaybackRegion)
	}

	for index, value in pairs(rawData) do
		if properties[index] == nil and index ~= "SoundId" and index ~= "ClientReplication" then
			if table.find({"Volume", "PlaybackSpeed", "RollOffMinDistance", "RollOffMaxDistance", "TimePosition"}, index) then
				properties[index] = tonumber(value)
			elseif index == "SoundGroup" or index == "Parent" then
				pcall(function()
					local loadedValue = loadstring(`return {value}`)()
					if typeof(loadedValue) == "Instance" or loadedValue == nil then
						properties[index] = loadedValue
					end
				end)
			else
				properties[index] = value
			end
		end
	end

	playSoundOthersRE:FireServer(soundId, table.clone(properties)) -- Cloning because values in this table changed for no reason after firing remote event... Weird (Solara)

	if clientReplication then
		local localSound = Instance.new("Sound")
		localSound.SoundId = `rbxassetid://{soundId}`
		for index, value in pairs(properties) do
			localSound[index] = if index == "Parent" and value == nil then workspace:FindFirstChild("'PlayingSounds") or workspace else value
		end
		localSound:Play()
		local connection = localSound.Ended:Once(function()
			localSound:Destroy()
		end)
		task.wait(5)
		localSound:Destroy()
		connection:Disconnect()
	end
end)

function centerMainFrame()
	mainFrame.Position = UDim2.fromScale(
		0.5,
		0.5 - ((mainFrame.AbsoluteSize.Y / 2) / hideAndSeekExtremeAudioPlayerGUI.AbsoluteSize.Y)
	)
end

local client = game:GetService("Players").LocalPlayer
local toggleBoomboxThread

function toggleBoombox()
	pcall(function()
		local boomboxFrame = client.PlayerGui.MainGui.BoomboxFrame
		boomboxFrame.Visible = not boomboxFrame.Visible
	end)
end

openButton.MouseButton1Down:Connect(function()
	if toggleBoomboxThread then
		task.cancel(toggleBoomboxThread)
	end
	toggleBoomboxThread = task.delay(1, function()
		toggleBoombox()
		toggleBoomboxThread = nil
	end)
end)

openButton.MouseButton2Click:Connect(toggleBoombox)

openButton.MouseLeave:Connect(function()
	if toggleBoomboxThread then
		task.cancel(toggleBoomboxThread)
		toggleBoomboxThread = nil
	end
end)

openButton.Activated:Connect(function(_, clickCount)
	if toggleBoomboxThread then
		task.cancel(toggleBoomboxThread)
		toggleBoomboxThread = nil
		if clickCount == 1 then
			centerMainFrame()
		end
		mainFrame.Visible = true
	end
end)

function updateUIScale()
	local scale = hideAndSeekExtremeAudioPlayerGUI.AbsoluteSize.Y / 500
	uIScale.Scale = scale
	uIScale_2.Scale = scale
end

hideAndSeekExtremeAudioPlayerGUI:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateUIScale)
hideAndSeekExtremeAudioPlayerGUI.Parent = game:GetService("CoreGui")
updateUIScale()
centerMainFrame()

if typeof(readfile) ~= "function" or typeof(writefile) ~= "function" then
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Warning",
		Text = `"readfile" or "writefile" isn't supported, data will not be saved`,
		Icon = "rbxasset://textures/StudioSharedUI/alert_error@2x.png",
		Button1 = "Close",
		Duration = 5
	})
end
