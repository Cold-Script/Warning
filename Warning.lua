local Library = {}
local CoreGui = game:GetService("CoreGui")
if not CoreGui:FindFirstChild("Nofitication") then
    local Nofitication = Instance.new("ScreenGui")
    Nofitication.Name = "Nofitication"
    Nofitication.Parent = CoreGui
    Nofitication.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Nofitication.ResetOnSpawn = false
    
    local Nofitication_Layout = Instance.new("UIListLayout")
    Nofitication_Layout.Name = "Nofitication Layout"
    Nofitication_Layout.Parent = Nofitication
    Nofitication_Layout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    Nofitication_Layout.SortOrder = Enum.SortOrder.LayoutOrder
    Nofitication_Layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
end
function Library:Notify(desc, image, time)
    local color = Color3.new(1,1,1)
    local Ambient_Shadow = Instance.new("ImageLabel")
    local Window = Instance.new("Frame")
    local Warning = Instance.new("ImageLabel")
    local Outline = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Description = Instance.new("TextLabel")
    
    Ambient_Shadow.Name = "Ambient Shadow"
    Ambient_Shadow.Parent = CoreGui:FindFirstChild("Nofitication")
    Ambient_Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Ambient_Shadow.BackgroundTransparency = 1
    Ambient_Shadow.BorderSizePixel = 0
    Ambient_Shadow.Position = UDim2.new(0.91525954, 0, 0.936809778, 0)
    Ambient_Shadow.Size = UDim2.new(0, 0, 0, 0)
    Ambient_Shadow.Image = "rbxassetid://1316045217"
    Ambient_Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Ambient_Shadow.ImageTransparency = 1
    Ambient_Shadow.ScaleType = Enum.ScaleType.Slice
    Ambient_Shadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    Window.Name = "Window"
    Window.Parent = Ambient_Shadow
    Window.BackgroundColor3 = Color3.fromRGB(0,0,0)
    Window.BackgroundTransparency = 0.75
    Window.BorderSizePixel = 1
    Window.Position = UDim2.new(0, 5, 0, 5)
    Window.Size = UDim2.new(0, 230, 0, 80)
    Window.ZIndex = 2
  
    Warning.Name = "Warning"
  	Warning.Parent = Window
    Warning.BackgroundColor3 = Color3.fromRGB(0,0,0)
  	Warning.BackgroundTransparency = 0.75
  	Warning.Position = UDim2.new(-0.4, 0, 0.0075, 0)
  	Warning.Size = UDim2.new(0, 80, 0, 80)
  	Warning.Image = image or "rbxassetid://3944668821"
  	Warning.ImageColor3 = Color3.fromRGB(255,255,255)
  	Warning.ScaleType = Enum.ScaleType.Slice
    Warning.ImageTransparency = 0
    Warning.SliceCenter = Rect.new(0,0,0,0)

    Outline.Name = "Outline"
    Outline.Parent = Window
    Outline.BackgroundColor3 = color
    Outline.BorderSizePixel = 0.001
    Outline.Position = UDim2.new(0, 0, 0, 25)
    Outline.Size = UDim2.new(0, 225, 0, 0)
    Outline.ZIndex = 5
    
    Title.Name = "Title"
    Title.Parent = Window
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1
    Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0, 8, 0, 2)
    Title.Size = UDim2.new(0, 222, 0, 22)
    Title.ZIndex = 4
    Title.Font = Enum.Font.GothamBold
    Title.Text = "[ Lonestar ] : "
    Title.TextColor3 = color
    Title.TextSize = 20
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    Description.Name = "Description"
    Description.Parent = Window
    Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description.BackgroundTransparency = 1
    Description.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Description.BorderSizePixel = 0
    Description.Position = UDim2.new(0, 8, 0, 34)
    Description.Size = UDim2.new(0, 216, 0, 40)
    Description.ZIndex = 4
    Description.Font = Enum.Font.FredokaOne
    Description.Text = desc
    Description.TextColor3 = color
    Description.TextTransparency = 0
    Description.TextSize = 20
    Description.TextWrapped = true
    Description.TextXAlignment = Enum.TextXAlignment.Left
    Description.TextYAlignment = Enum.TextYAlignment.Top
  
    local Ui = Instance.new("UICorner")
    Ui.CornerRadius = UDim.new(0, 3)
    Ui.Parent = Window
  
    local Ui2 = Instance.new("UICorner")
    Ui2.CornerRadius = UDim.new(0,5)
    Ui2.Parent = Warning
  
    local UI = Instance.new("UIStroke")
    UI.Color = color
    UI.Parent = Outline
    UI.Thickness = 2
  
    local UI2 = Instance.new("UIStroke")
    UI2.Color = color
    UI2.Parent = Window
    UI2.Thickness = 2
  
    local UI3 = Instance.new("UIStroke")
    UI3.Color = color
    UI3.Parent = Warning
    UI3.Thickness = 2
  
    local function LocalScript()
    local Script = Instance.new('LocalScript', Ambient_Shadow)
    Ambient_Shadow:TweenSize(UDim2.new(0, 240, 0, 100), "Out", "Linear", 0.2)
    Window.Size = UDim2.new(0, 230, 0, 80)
    Outline:TweenSize(UDim2.new(0, 0, 0, 1), "Out", "Linear", time or 5)
    wait(time or 5)
    Ambient_Shadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
    wait(0.2)
    Ambient_Shadow:Destroy()
    end
    coroutine.wrap(LocalScript)()
end
return Library





















