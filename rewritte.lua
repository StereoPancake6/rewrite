
repeat
    wait()
until game:IsLoaded()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwel33/hud/main/gui"))() --you can go into the github link and copy all of it and modify it for yourself.
local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwel33/hud/main/Notification"))()
Library.theme.accentcolor = Color3.fromRGB(0, 204, 255)
local Window3 = Library:CreateWindow("Choobian ", Vector2.new(600, 400))

local GetService =
    setmetatable(
    {},
    {
        __index = function(self, key)
            return game:GetService(key)
        end
    }
)

local checkifanticheat = false

local checkifexecuted = false

local loadscreen2 = Window3:CreateTab("Login")

local loadscreen33 = loadscreen2:CreateSector("Private Section", "right")

local visualenabled = false

loadscreen33:AddToggle(
    "Enable Visuals Section",
    true,
    function(Boolean)
        visualenabled = Boolean
    end
)

local miscenabled = false

loadscreen33:AddToggle(
    "Enable Player Section",
    true,
    function(Boolean)
        miscenabled = Boolean
    end
)

local teleportenabled = false

loadscreen33:AddToggle(
    "Enable Teleport Section",
    true,
    function(Boolean)
        teleportenabled = Boolean
    end
)

local antilockenabled = false

loadscreen33:AddToggle(
    "Enable Anti aim Section",
    true,
    function(Boolean)
        antilockenabled = Boolean
    end
)

local locksectionenabled = false

loadscreen33:AddToggle(
    "Enable Aiming Section",
    true,
    function(Boolean)
        locksectionenabled = Boolean
    end
)

local loadscreen3 = loadscreen2:CreateSector("Settings", "left")

loadscreen3:AddDropdown(
    "Game",
    {"Da Hood", "Untilted Hood", "Coming Soon"},
    "Da Hood",
    false,
    function(Value)
    end
)

local anticheatbypass = "Anticheat"
loadscreen3:AddDropdown(
    "Bypass",
    {"Anticheat", "Nothing"},
    "Anticheat",
    false,
    function(Value)
        anticheatbypass = Value
    end
)
  

local developermode = "True"
loadscreen3:AddDropdown(
    "Developer Mode",
    {"True", "False"},
    "True",
    false,
    function(Value)
        developermode = Value
    end
)

loadscreen3:AddDropdown(
    "Load Method",
    {"Safe Method", "Coming Soon..."},
    "Safe Method",
    false,
    function(Value)
    end
)

local versionthing = "Private"

loadscreen3:AddDropdown(
    "Version",
    {"Private"},
    "Private",
    false,
    function(Value)
        versionthing = Value
    end
)
 
loadscreen3:AddButton(
    "Execute",
    function()
        if checkifexecuted == true then
            NotifyLib.prompt("Choobian ", "Already Executed!", 0)
            return
        end
        if checkifanticheat == false then
            if game.PlaceId == 2788229376 then
                if anticheatbypass == "Anticheat" then
                    checkifanticheat = true
                    assert(getrawmetatable)
                    grm = getrawmetatable(game)
                    setreadonly(grm, false)
                    old = grm.__namecall
                    grm.__namecall =
                        newcclosure(
                        function(self, ...)
                            local args = {...}
                            if tostring(args[1]) == "TeleportDetect" then
                                return
                            elseif tostring(args[1]) == "CHECKER_1" then
                                return
                            elseif tostring(args[1]) == "CHECKER" then
                                return
                            elseif tostring(args[1]) == "GUI_CHECK" then
                                return
                            elseif tostring(args[1]) == "OneMoreTime" then
                                return
                            elseif tostring(args[1]) == "checkingSPEED" then
                                return
                            elseif tostring(args[1]) == "BANREMOTE" then
                                return
                            elseif tostring(args[1]) == "PERMAIDBAN" then
                                return
                            elseif tostring(args[1]) == "KICKREMOTE" then
                                return
                            elseif tostring(args[1]) == "BR_KICKPC" then
                                return
                            elseif tostring(args[1]) == "BR_KICKMOBILE" then
                                return
                            end
                            return old(self, ...)
                        end
                    )
                    NotifyLib.prompt("Choobian ", "Bypassed Anti Cheat! (Da hood Bypass Version)", 0)
                end

                if checkifanticheat == false then
                    if game.PlaceId == 5602055394 then
                        if anticheatbypass == "Anticheat" then
                            checkifanticheat = true
                            local l__Character__1 = game.Players.LocalPlayer.Character
                            l__Character__1:WaitForChild("HumanoidRootPart").ChildAdded:connect(
                                function(p1)
                                    if
                                        not (not p1:IsA("BodyVelocity")) or not (not p1:IsA("BodyPosition")) or
                                            p1:IsA("BodyGyro")
                                     then
                                        game.ReplicatedStorage.MainEvent:FireServer("CHECKER_1", p1)
                                    end
                                end
                            )
                            l__Character__1:WaitForChild("UpperTorso").ChildAdded:connect(
                                function(p2)
                                    if
                                        not (not p2:IsA("BodyVelocity")) or not (not p2:IsA("BodyPosition")) or
                                            p2:IsA("BodyGyro")
                                     then
                                        game.ReplicatedStorage.MainEvent:FireServer("CHECKER_1", p2)
                                    end
                                end
                            )
                            l__Character__1:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal("CFrame"):connect(
                                function()
                                    game.ReplicatedStorage.MainEvent:FireServer("TeleportDetect")
                                end
                            )
                            NotifyLib.prompt("Choobian ", "Bypassed Anti Cheat! SEMI (Hood Modded Bypass Version)", 0)
                        end
                    end
                end
            end
        end
        if checkifanticheat == false then
            if game.PlaceId == 9183932460 then
                if anticheatbypass == "Anticheat" then
                    checkifanticheat = true
                    local _1
                    _1 =
                        hookmetamethod(
                        game,
                        "__namecall",
                        function(self, ...)
                            if not checkcaller() and getnamecallmethod() == "FireServer" then
                                if tostring(self.Name) == ".gg/untitledhood" then
                                    local args = {...}
                                    if tostring(args[1]) == "ForceDetect" or tostring(args[1]) == "TeleportDetect" then
                                        return print("anticheat detected fly ")
                                    end
                                end
                            end

                            return _1(self, ...)
                        end
                    )

                    NotifyLib.prompt("Choobian ", "Bypassed Anti Cheat! (Untilted hood Bypass Version)", 0)
                end
            end
        end

        if versionthing == "Private" then  
            function Remove(Data, Data2)
                for i, v in pairs(Data) do
                    if v == Data2 then
                        table.remove(Data, i)
                    end
                end
            end
            local RunService = GetService.RunService
            local Players = GetService.Players
            local LocalPlayer = Players.LocalPlayer
            local Mouse = LocalPlayer:GetMouse()
            local Light = game:GetService("Lighting")
            local a = {}
            local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local CurrentCamera = workspace.CurrentCamera
            local Network = GetService.NetworkClient
            local predictorenable = false
            local memeoryspooferenabledv2 = false
            local PredictorColoxr = Color3.new(255, 255, 255)
            local PredictorPart = Instance.new("Part", game.Workspace)
            local newBillboardx = Instance.new("BillboardGui", PredictorPart)
            local newFramex = Instance.new("Frame", newBillboardx)
            local newUiCornorx = Instance.new("UICorner", newFramex)

            getgenv().selfdot = false

            local breadcrumbDistance = 5
            local distanceTraveled = 0
            local previousTime = tick()

            local function placeBreadcrumb(position)
                local breadcrumb = Instance.new("Part")
                breadcrumb.Position = position
                breadcrumb.Anchored = true
                breadcrumb.Shape = Enum.PartType.Ball
                breadcrumb.Material = "ForceField"
                breadcrumb.CanCollide = false
                breadcrumb.Color = Color3.fromRGB(4, 0, 255)
                breadcrumb.Parent = game.Workspace
                breadcrumb.Size = Vector3.new(1, 1, 1)
                wait(0.2)
                breadcrumb:Destroy()
            end

            getgenv().selfchamfollow = false
            getgenv().selfchamfollowingcolor = Color3.fromRGB(4, 0, 255)
            getgenv().selfchamfollowwait = 0.4
            getgenv().clonematerial = "ForceField"
            getgenv().skybox = false
            getgenv().theskybox = "Defualt"
            getgenv().DesyncVelocity = 15
            getgenv().FardJumpCooldown = false

            --Color of body
            local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid

            if humanoid.RigType == Enum.HumanoidRigType.R15 then
                _G.colorbody = LocalPlayer.Character.LeftHand.Color
                _G.colorbody1 = LocalPlayer.Character.RightHand.Color
                _G.colorbody2 = LocalPlayer.Character.LeftLowerArm.Color
                _G.colorbody3 = LocalPlayer.Character.RightLowerArm.Color
                _G.colorbody4 = LocalPlayer.Character.LeftUpperArm.Color
                _G.colorbody5 = LocalPlayer.Character.RightUpperArm.Color
                _G.colorbody6 = LocalPlayer.Character.LeftFoot.Color
                _G.colorbody7 = LocalPlayer.Character.RightFoot.Color
                _G.colorbody8 = LocalPlayer.Character.LeftLowerLeg.Color
                _G.colorbody9 = LocalPlayer.Character.RightLowerLeg.Color
                _G.colorbody10 = LocalPlayer.Character.UpperTorso.Color
                _G.colorbody11 = LocalPlayer.Character.LowerTorso.Color
                _G.colorbody12 = LocalPlayer.Character.LeftUpperLeg.Color
                _G.colorbody13 = LocalPlayer.Character.RightUpperLeg.Color
                _G.colorbody14 = LocalPlayer.Character.Head.Color
            end

            --Target aim DrawingFunctions
             
            --orbit
            local Yung =
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xwel33/meffsol-remake/main/orbit"))() -- This is not mine
            local Circle2222 = Yung:New3DCircle()
            local legitcolor = Color3.fromRGB(253, 150, 255)
            Circle2222.Visible = false
            Circle2222.ZIndex = 1
            local Chingbing32 = false
            local Chingbing33 = false
            Circle2222.Transparency = 1
            Circle2222.Color = Color3.fromRGB(255, 255, 255)
            Circle2222.Thickness = 1
            --
            --highlight
            local niggacum2 = false
            local niggacumcolorxe2 = Color3.fromRGB(255, 0, 0)
            local niggaculor2 = Color3.fromRGB(255, 0, 0)
            local LocalHL2 = Instance.new("Highlight")
            --

            local aiming = {
                targetaim = {
                    enabled = false,
                    toggablexd = false,
                    targeting = false,
                    view = false,
                    chat = false,
                    ben = false,
                    airshotfunpart = "LowerTorso",
                    airshotfun = false,
                    teleportontarget = false,
                    lookat = false,
                    Notificationmode = false,
                    Notificationmodepart = "Roblox",
                    autoshoot = false,
                    autoprediction = false,
                    key = Enum.KeyCode.Q,
                    prediction = 0.13,
                    predictionv2 = 0.13,
                    hitpart = "LowerTorso",
                    hitpart2 = "LowerTorso"
                },
                tracers = {
                    enabled = false,
                    showprediction = false,
                    rainbow = false,
                    thickness = 1.26,
                    colour = Color3.fromRGB(255, 255, 255),
                    from = "Penis"
                },
                orbit = {
                    enabled = false,
                    visualization = false,
                    flymode = false,
                    flymodeh = 75,
                    vc = Color3.fromRGB(255, 255, 255),
                    speed = 2,
                    distance = 10
                },
                visualization = {
                    part = false,
                    transparency = 0,
                    material = "forcefield",
                    circle = false,
                    forcefield = false,
                    forcefieldmat = "ForceField",
                    forcefieldcol = Color3.fromRGB(253, 150, 255),
                    mode = "Part",
                    partcolour = Color3.fromRGB(255, 255, 255),
                    circlecolour = Color3.fromRGB(255, 255, 255)
                },
                  
                fov = {
                    enabled = false,
                    filled = false,
                    thickness = 2,
                    sides = 350,
                    radius = 50,
                    colour = Color3.fromRGB(255, 255, 255),
                    option = "Circle"
                },
                od = {
                    unlockkoplayer = false,
                    unlockko = false,
                    tpko = false,
                    realodko = false,
                    stompko = false,
                    stomptime = 3
                }
            }

            local power2 = 0.999
            local AntiRagdoll2 = false
            local BulletTracers = false
            getgenv().FreezeAA = false
            getgenv().EnableGrip = false
            getgenv().EnableGripFront = 10
            getgenv().EnableGripSide = 10
            getgenv().EnableGripHeight = 10
            getgenv().AntiAntiBag = false

             
            local cframetpdesync = false

            local cframetpdesynctype = "Random"

            local randomtpxdistance = 10

            local visualizemodellol = false

            local customcframetpx = 0
            local customcframetpy = 0
            local customcframetpz = 0

            local swiperange = 5
            local Msqqrange = 5

            local canglelol = "Manual"
            local canglelolx = 0
            local cangleloly = 0
            local canglelolz = 0

            local lplr = game.Players.LocalPlayer -- i stole this from beanbot.

            local posistiontype2 = lplr.Character.HumanoidRootPart.CFrame

            local desync_stuff = {}
             -- i stole this
            local r6_dummy = game:GetObjects("rbxassetid://9474737816")[1]
            r6_dummy.Head.Face:Destroy()
             
            for i, v in pairs(r6_dummy:GetChildren()) do
                v.Transparency = v.Name == "HumanoidRootPart" and 1 or 0.70
                v.Material = "Neon"
                v.Color = Color3.fromRGB(190, 139, 255)
                v.CanCollide = false
                v.Anchored = false
                local decal = Instance.new("Decal", r6_dummy.Torso)
                decal.Face = Enum.NormalId.Back
                decal.Transparency = 0.5
                decal.Texture = "http://www.roblox.com/asset/?id=10949683360"
                local decal2 = Instance.new("Decal", r6_dummy.Torso)
                decal2.Face = Enum.NormalId.Front
                decal2.Transparency = 0.5
                decal2.Texture = "http://www.roblox.com/asset/?id=10949683360"
            end

            function RandomNumberRange(a)
                return math.random(-a * 100, a * 100) / 100
            end

            function RandomVectorRange(a, b, c)
                return Vector3.new(RandomNumberRange(a), RandomNumberRange(b), RandomNumberRange(c))
            end

            game:GetService("RunService").heartbeat:Connect(
                function()
                    if cframetpdesync == true then
                        desync_stuff[1] = lplr.Character.HumanoidRootPart.CFrame

                        local fakeCFrame = lplr.Character.HumanoidRootPart.CFrame

                        if cframetpdesynctype == "Random" then
                            fakeCFrame =
                                fakeCFrame *
                                CFrame.new(
                                    math.random(-randomtpxdistance, randomtpxdistance),
                                    math.random(-randomtpxdistance, randomtpxdistance),
                                    math.random(-randomtpxdistance, randomtpxdistance)
                                )
                            fakeCFrame =
                                fakeCFrame *
                                CFrame.Angles(
                                    math.rad(RandomNumberRange(180)),
                                    math.rad(RandomNumberRange(180)),
                                    math.rad(RandomNumberRange(180))
                                )
                        elseif cframetpdesynctype == "Nothing" then
                            fakeCFrame = fakeCFrame * CFrame.new()
                        elseif cframetpdesynctype == "Custom" then
                            fakeCFrame = fakeCFrame * CFrame.new(customcframetpx, customcframetpy, customcframetpz)
                        elseif cframetpdesynctype == "MsQQ" then
                            fakeCFrame =
                                fakeCFrame *
                                CFrame.new(math.random(-Msqqrange, Msqqrange), 0, math.random(-Msqqrange, Msqqrange))
                        elseif cframetpdesynctype == "lGfversion" then
                            fakeCFrame = fakeCFrame * CFrame.new(0, -4, 0)
                            fakeCFrame = fakeCFrame * CFrame.Angles(3.15, (tick() / 0.02) % (math.pi * 2), 0)
                        elseif cframetpdesynctype == "LatestPos" then
                            fakeCFrame = posistiontype2
                        elseif cframetpdesynctype == "Layvis" then
                            fakeCFrame = fakeCFrame * CFrame.new(0, -5, 0)
                            fakeCFrame = fakeCFrame * CFrame.Angles(1.55, 0, (tick() / 0.02) % (math.pi * 2))
                        elseif cframetpdesynctype == "SwipeX" then
                            fakeCFrame = fakeCFrame * CFrame.new(math.random(-swiperange, swiperange), 0, 0)
                            fakeCFrame = fakeCFrame * CFrame.Angles((tick() / 0.02) % (math.pi * 2), 0, 0)
                        elseif
                            cframetpdesynctype == "UndergroundTarget" and aiming.targetaim.toggablexd == true and
                                aiming.targetaim.targeting
                         then
                            fakeCFrame = game.Players[targetplr].Character.HumanoidRootPart.CFrame
                            fakeCFrame = fakeCFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, -7, 0)
                        elseif
                            cframetpdesynctype == "Randomtarget" and aiming.targetaim.toggablexd == true and
                                aiming.targetaim.targeting
                         then
                            fakeCFrame = game.Players[targetplr].Character.HumanoidRootPart.CFrame
                            fakeCFrame =
                                fakeCFrame *
                                CFrame.Angles(
                                    math.rad(RandomNumberRange(180)),
                                    math.rad(RandomNumberRange(180)),
                                    math.rad(RandomNumberRange(180))
                                ) *
                                CFrame.new(
                                    math.random(-randomtpxdistance, randomtpxdistance),
                                    math.random(-randomtpxdistance, randomtpxdistance),
                                    math.random(-randomtpxdistance, randomtpxdistance)
                                )
                        elseif
                            cframetpdesynctype == "CustomTarget" and aiming.targetaim.toggablexd == true and
                                aiming.targetaim.targeting
                         then
                            fakeCFrame = game.Players[targetplr].Character.HumanoidRootPart.CFrame
                            fakeCFrame =
                                fakeCFrame * CFrame.Angles(0, 0, 0) *
                                CFrame.new(customcframetpx, customcframetpy, customcframetpz)
                        end

                        if canglelol == "Manual" then
                            fakeCFrame = fakeCFrame * CFrame.Angles(canglelolx, cangleloly, canglelolz)
                        elseif canglelol == "Random" then
                            fakeCFrame =
                                fakeCFrame *
                                CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                        end

                        if visualizemodellol == true then
                            r6_dummy.Parent = workspace
                            r6_dummy.HumanoidRootPart.Velocity = Vector3.new()
                            r6_dummy:SetPrimaryPartCFrame(fakeCFrame)
                        else
                            r6_dummy.Parent = nil
                        end
                          

                        lplr.Character.HumanoidRootPart.CFrame = fakeCFrame

                        game:GetService("RunService").RenderStepped:Wait()

                        lplr.Character.HumanoidRootPart.CFrame = desync_stuff[1]
                    else
                        if r6_dummy.Parent ~= nil then
                            r6_dummy.Parent = nil
                        end
                    end
                end
            )

            local oldIndex
            oldIndex =
                hookmetamethod(
                game,
                "__index",
                newcclosure(
                    function(self, key)
                        if not velocitywalk == true or enablehitpartdesync == true then
                            if not checkcaller() then
                                if
                                    key == "CFrame" and cframetpdesync and lplr.Character and
                                        lplr.Character:FindFirstChild("HumanoidRootPart") and
                                        lplr.Character:FindFirstChild("Humanoid") and
                                        lplr.Character:FindFirstChild("Humanoid").Health > 0
                                 then
                                    if self == lplr.Character.HumanoidRootPart then
                                        return desync_stuff[1] or CFrame.new()
                                    elseif self == lplr.Character.Head then
                                        return desync_stuff[1] and
                                            desync_stuff[1] +
                                                Vector3.new(0, lplr.Character.HumanoidRootPart.Size / 2 + 0.5, 0) or
                                            CFrame.new()
                                    end
                                end
                            end
                        end
                        return oldIndex(self, key)
                    end
                )
            )

            local Meffsolset = {
                Loaded = false,
                Target = {
                    UseMouseNearest = "Mouse",
                    WallCheck = false,
                    Grabbed = false,
                    Knocked = false,
                    UseOldWallCheck = false,
                    UseNewWallCheck = true
                },
                TargetGui = {
                    Enabled = false
                }
            }

            local Service =
                setmetatable(
                {},
                {
                    __index = function(t, k)
                        return game:GetService(k)
                    end
                }
            )

            local RunService = Service.RunService
            local Players = Service.Players
            local LocalPlayer = Players.LocalPlayer
            local UIs = Service.UserInputService
            local TweenService = Service.TweenService
            local CurrentCamera = workspace.CurrentCamera
            local Mouse = LocalPlayer:GetMouse()
            local CoreGui = Service.CoreGui
            local GuiInset = Service.GuiService:GetGuiInset()

            if
                not pcall(
                    function()
                        return syn.protect_gui
                    end
                )
             then
                syn = {}
                syn.protect_gui = function(gui)
                    gui.Parent = CoreGui
                end
            end
             
            local MainGui = Instance.new("ScreenGui")
            MainGui.Name = "VaultsUI"
            MainGui.Parent = CoreGui
            MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            syn.protect_gui(MainGui)

            local DrawingFunctions = {
                NewLine = function(Thickness)
                    local Line = Drawing.new("Line")
                    Line.Visible = true
                    Line.Color = Color3.fromRGB(253, 150, 255)
                    Line.Thickness = 1
                    Line.Transparency = 1
                    Line.ZIndex = 2

                    local OutLine = Drawing.new("Line")
                    OutLine.Visible = true
                    OutLine.Color = Color3.fromRGB(0, 0, 0)
                    OutLine.Thickness = 4
                    OutLine.Transparency = 1
                    OutLine.ZIndex = 1
                    return Line, OutLine
                end,
                NewCircle = function()
                    local Circle = Drawing.new("Circle")
                    Circle.Transparency = 1
                    Circle.Thickness = 1
                    Circle.ZIndex = 2
                    Circle.Visible = true
                    Circle.Color = Color3.fromRGB(253, 150, 255)
                    Circle.NumSides = 100

                    local OutLine = Drawing.new("Circle")
                    OutLine.Visible = true
                    OutLine.Color = Color3.fromRGB(0, 0, 0)
                    OutLine.Transparency = 1
                    OutLine.Thickness = 4
                    OutLine.ZIndex = 1
                    OutLine.NumSides = 100
                    return Circle, OutLine
                end
            }

            local DrawingCircle, OutlineDrawingCircle = DrawingFunctions.NewCircle(1)

            local IsNetwork = function(GetPlayer)
                return GetPlayer and GetPlayer.Character and
                    GetPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                    GetPlayer.Character:FindFirstChild("Humanoid") ~= nil and
                    GetPlayer.Character:FindFirstChild("Head") ~= nil and
                    true or
                    false
            end

            local Meffsolset2 = {
                Round = function(num, numDecimalPlaces)
                    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
                end
            }

            local TargetUI = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local Container_2 = Instance.new("Frame")
            local Line_2 = Instance.new("Frame")
            local Profile = Instance.new("ImageButton")
            local HealthBorder = Instance.new("Frame")
            local HealthBar = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local HealthText = Instance.new("TextLabel")
            local HealthIcon = Instance.new("ImageButton")
            local Title_2 = Instance.new("TextLabel")
            local ArmorBorder = Instance.new("Frame")
            local ArmorBar = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local ArmorText = Instance.new("TextLabel")
            local ArmorIcon = Instance.new("ImageButton")
            local UmbraShadow_2 = Instance.new("ImageLabel")
            local AmbientShadow_2 = Instance.new("ImageLabel")

            TargetUI.Name = "Target UI"
            TargetUI.Parent = MainGui
            TargetUI.AnchorPoint = Vector2.new(0.5, 0.5)
            TargetUI.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
            TargetUI.BackgroundTransparency = 0.700
            TargetUI.BorderSizePixel = 0
            TargetUI.Position = UDim2.new(0.504575729, 0, 0.787337661, 0)
            TargetUI.Size = UDim2.new(0, 251, 0, 97)
            TargetUI.Visible = false

            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = TargetUI

            Container_2.Name = "Container"
            Container_2.Parent = TargetUI
            Container_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            Container_2.BackgroundTransparency = 0.700
            Container_2.BorderSizePixel = 0
            Container_2.Position = UDim2.new(0.00973401312, 0, 0.027855942, 0)
            Container_2.Size = UDim2.new(0, 248, 0, 94)

            Line_2.Name = "Line"
            Line_2.Parent = Container_2
            Line_2.BackgroundColor3 = Color3.fromRGB(0, 204, 255)
            Line_2.BorderSizePixel = 0
            Line_2.Position = UDim2.new(-0.00261220615, 0, -0.00655640941, 0)
            Line_2.Size = UDim2.new(0, 249, 0, 3)

            Profile.Name = "Profile"
            Profile.Parent = Container_2
            Profile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Profile.BackgroundTransparency = 1.000
            Profile.Position = UDim2.new(-0.00427350448, 0, 0.0338983051, 0)
            Profile.Size = UDim2.new(0, 90, 0, 90)
            Profile.AutoButtonColor = false
            Profile.Image = "rbxthumb://type=AvatarHeadShot&id=590180069&w=420&h=420"

            HealthBorder.Name = "HealthBorder"
            HealthBorder.Parent = Container_2
            HealthBorder.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
            HealthBorder.BackgroundTransparency = 0.500
            HealthBorder.BorderSizePixel = 0
            HealthBorder.Position = UDim2.new(0.400000006, 0, 0.349999994, 0)
            HealthBorder.Size = UDim2.new(0, 135, 0, 22)

            HealthBar.Name = "HealthBar"
            HealthBar.Parent = HealthBorder
            HealthBar.Active = true
            HealthBar.BackgroundColor3 = Color3.fromRGB(7, 215, 0)
            HealthBar.BorderSizePixel = 0
            HealthBar.ClipsDescendants = true
            HealthBar.Position = UDim2.new(0.0220597833, 0, -0.0436026901, 0)
            HealthBar.Size = UDim2.new(1, 0, 1, 0)

            UICorner_2.CornerRadius = UDim.new(0, 3)
            UICorner_2.Parent = HealthBar

            HealthText.Name = "HealthText"
            HealthText.Parent = HealthBorder
            HealthText.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
            HealthText.BackgroundTransparency = 1.000
            HealthText.Size = UDim2.new(0, 138, 0, 22)
            HealthText.Font = Enum.Font.Roboto
            HealthText.Text = "100"
            HealthText.TextColor3 = Color3.fromRGB(255, 255, 255)
            HealthText.TextSize = 20.000

            HealthIcon.Name = "HealthIcon"
            HealthIcon.Parent = HealthBorder
            HealthIcon.BackgroundTransparency = 1.000
            HealthIcon.Position = UDim2.new(0.0900000036, 0, 0.119999997, 0)
            HealthIcon.Size = UDim2.new(0, 15, 0, 15)
            HealthIcon.ZIndex = 2
            HealthIcon.Image = "rbxassetid://3926305904"
            HealthIcon.ImageRectOffset = Vector2.new(964, 444)
            HealthIcon.ImageRectSize = Vector2.new(36, 36)

            Title_2.Name = "Title"
            Title_2.Parent = Container_2
            Title_2.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
            Title_2.BackgroundTransparency = 1.000
            Title_2.Position = UDim2.new(0.426879644, 0, 0.0496608652, 0)
            Title_2.Size = UDim2.new(0, 132, 0, 25)
            Title_2.Font = Enum.Font.Roboto
            Title_2.Text = "T_4Q (WetAnimeGirls)"
            Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title_2.TextScaled = true
            Title_2.TextSize = 20.000
            Title_2.TextWrapped = true
            Title_2.TextXAlignment = Enum.TextXAlignment.Left

            ArmorBorder.Name = "ArmorBorder"
            ArmorBorder.Parent = Container_2
            ArmorBorder.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
            ArmorBorder.BackgroundTransparency = 0.500
            ArmorBorder.BorderSizePixel = 0
            ArmorBorder.Position = UDim2.new(0.400000006, 0, 0.649999976, 0)
            ArmorBorder.Size = UDim2.new(0, 135, 0, 22)

            ArmorBar.Name = "ArmorBar"
            ArmorBar.Parent = ArmorBorder
            ArmorBar.BackgroundColor3 = Color3.fromRGB(106, 167, 255)
            ArmorBar.BorderSizePixel = 0
            ArmorBar.Position = UDim2.new(0.0220597833, 0, -0.0436026901, 0)
            ArmorBar.Size = UDim2.new(1, 0, 1, 0)

            UICorner_3.CornerRadius = UDim.new(0, 3)
            UICorner_3.Parent = ArmorBar

            ArmorText.Name = "ArmorText"
            ArmorText.Parent = ArmorBorder
            ArmorText.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
            ArmorText.BackgroundTransparency = 1.000
            ArmorText.Size = UDim2.new(0, 138, 0, 21)
            ArmorText.Font = Enum.Font.Roboto
            ArmorText.Text = "100"
            ArmorText.TextColor3 = Color3.fromRGB(255, 255, 255)
            ArmorText.TextSize = 20.000

            ArmorIcon.Name = "ArmorIcon"
            ArmorIcon.Parent = ArmorBorder
            ArmorIcon.BackgroundTransparency = 1.000
            ArmorIcon.Position = UDim2.new(0.0900000036, 0, 0.119999997, 0)
            ArmorIcon.Size = UDim2.new(0, 15, 0, 15)
            ArmorIcon.ZIndex = 2
            ArmorIcon.Image = "rbxassetid://3926307971"
            ArmorIcon.ImageRectOffset = Vector2.new(164, 284)
            ArmorIcon.ImageRectSize = Vector2.new(36, 36)
             
            UmbraShadow_2.Name = "UmbraShadow"
            UmbraShadow_2.Parent = TargetUI
            UmbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
            UmbraShadow_2.BackgroundTransparency = 1.000
            UmbraShadow_2.BorderSizePixel = 0
            UmbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 6)
            UmbraShadow_2.Size = UDim2.new(1, 10, 1, 10)
            UmbraShadow_2.ZIndex = 0
            UmbraShadow_2.Image = "rbxassetid://1316045217"
            UmbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
            UmbraShadow_2.ImageTransparency = 0.850
            UmbraShadow_2.ScaleType = Enum.ScaleType.Slice
            UmbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

            AmbientShadow_2.Name = "AmbientShadow"
            AmbientShadow_2.Parent = TargetUI
            AmbientShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
            AmbientShadow_2.BackgroundTransparency = 1.000
            AmbientShadow_2.BorderSizePixel = 0
            AmbientShadow_2.Position = UDim2.new(0.5, 0, 0.476000011, 3)
            AmbientShadow_2.Size = UDim2.new(1, 5, 1, 5)
            AmbientShadow_2.ZIndex = 0
            AmbientShadow_2.Image = "rbxassetid://1316045217"
            AmbientShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
            AmbientShadow_2.ImageTransparency = 0.500
            AmbientShadow_2.ScaleType = Enum.ScaleType.Slice
            AmbientShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

             
            Library.theme.accentcolor = Color3.fromRGB(0, 204, 255)
            local watermark = Library:CreateWatermark("Choobian  | v2.19 | {fps} | {game} ")
            local Window = Library:CreateWindow("Choobian ", Vector2.new(700, 900), Enum.KeyCode.RightControl)

            local meffsettings = {
                Blatant = {
                    BlatantAA = {
                        Enabled = false,
                        NoAutoRotate = false,
                        AntiAimType = "Jitter",
                        AntiAimSpeed = 100,
                        JitterAngle = 180
                    },
                    LegitAA = {
                        Enabled = false,
                        AntiAimAt = false,
                        AntiAimAtDistance = 20
                    },
                    Farming = {
                        ATMFarm = false,
                        ShoeFarm = false,
                        AutoLettuce = false,
                        MuscleFarm = false,
                        MuscleFarmingType = "Normal",
                        BoxFarm = false,
                        HospitalFarm = false,
                        ATMPick = false
                    },
                    Movement = {
                        SpeedEnabled = false,
                        SpeedType = "Default",
                        SpeedRender = "Default",
                        SpeedAmount = 5
                    },
                    Cash = {
                        AutoDrop = false,
                        AutoDropAmount = 5000,
                        AutoPickCash = false
                    }
                },
                Teleport = {
                    TeleportReturn = false,
                    ReturnDelay = false,
                    AutoPurchase = false,
                    AmmoPurchaseAmount = 1
                }
            }

            local meffModule = {
                Old = {
                    CFrame
                },
                God = {
                    MeleeAlive = false,
                    GodMelee = false,
                    GodBullet = false,
                    AntiRagdoll = false
                },
                LagTick = 0,
                Ignores = {
                    "UpperTorso",
                    "LowerTorso",
                    "Head",
                    "LeftHand",
                    "LeftUpperArm",
                    "LeftLowerArm",
                    "RightHand",
                    "RightUpperArm",
                    "RightLowerArm"
                },
                PingBasedPrediction = 0.165,
                Instance = {},
                Teleport = {
                    Players = {},
                    Food = {
                        "Cranberry",
                        "Donut",
                        "Pizza",
                        "Chicken",
                        "Popcorn",
                        "Hamburger",
                        "Taco",
                        "Starblox Latte",
                        "Lettuce",
                        "Lemonade"
                    },
                    Gun = {
                        "Glock",
                        "SMG",
                        "Silencer",
                        "TacticalShotgun",
                        "P90",
                        "AUG",
                        "Shotgun",
                        "RPG",
                        "AR",
                        "Double-Barrel SG",
                        "Flamethrower",
                        "Revolver",
                        "LMG",
                        "AK47",
                        "DrumGun",
                        "Silencer",
                        "GrenadeLauncher",
                        "Taser",
                        "SilencerAR",
                        "Grenade"
                    },
                    Armor = {
                        "High-Medium Armor",
                        "Medium Armor"
                    },
                    Mask = {
                        "Surgeon Mask",
                        "Riot Mask",
                        "Pitchfork",
                        "Hockey Mask",
                        "Breathing Mask",
                        "Pumpkin Mask",
                        "Skull Mask",
                        "Paintball Mask",
                        "Ninja Mask"
                    },
                    Weight = {
                        "Weights",
                        "HeavyWeights"
                    },
                    Melee = {
                        "Shovel",
                        "Bat",
                        "Pencil",
                        "StopSign",
                        "Knife",
                        "Pitchfork"
                    },
                    Phone = {
                        "iPhone",
                        "iPhoneB",
                        "iPhoneG",
                        "iPhoneP",
                        "Old Phone",
                        "Orange Phone",
                        "Original Phone"
                    },
                    Bike = {
                        "DuoBike",
                        "Solo Bike"
                    },
                    Extra = {
                        "PepperSpray",
                        "LockPicker",
                        "Flashlight",
                        "Flowers",
                        "Money Gun",
                        "Brown Bag",
                        "Anti Bodies",
                        "Firework"
                    }
                }
            }

            local Settings = getgenv().Settings

            if locksectionenabled then
                --lock section
                local Anti = Window:CreateTab("Aiming")

                local triggerbotsection = Anti:CreateSector("Trigger bot", "left")
                getgenv().nigger = false
                getgenv().enabletimer = false
                getgenv().timer = 0.01
                local triggerkeybind =
                    triggerbotsection:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        getgenv().nigger = Boolean
                    end
                )
                  
                local triggerdelay =
                    triggerbotsection:AddToggle(
                    "Delay",
                    false,
                    function(Boolean)
                        getgenv().enabletimer = Boolean
                    end
                )
                triggerkeybind:AddKeybind()

                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        if getgenv().nigger == true then
                            local target = game.Players.LocalPlayer:GetMouse().Target
                            if target then
                                if target.Parent:IsA("Model") then
                                    for i, v in pairs(game:FindService("Players"):GetChildren()) do
                                        if v.Name == target.Parent.Name or v.Name == target.Parent.Parent.Name then
                                            if getgenv().enabletimer == true then
                                                Wait(getgenv().timer)
                                            end
                                            mouse1click()
                                        end
                                    end
                                end
                            end
                        end
                    end
                )

                triggerdelay:AddSlider(
                    0,
                    0,
                    1,
                    100,
                    function(Value)
                        getgenv().timer = Value
                    end
                )
                 

                local lock6 = Anti:CreateSector("Camera Aimbot", "left")

                getgenv().OldAimPart = "HumanoidRootPart"
                getgenv().AimPart = "HumanoidRootPart"
                getgenv().Airshotpart = "HumanoidRootPart"
                getgenv().AimRadius = 30
                getgenv().ThirdPerson = true
                getgenv().FirstPerson = true
                getgenv().Velocityres2 = false
                getgenv().TeamCheck = false
                getgenv().keybind = "q"
                getgenv().PredictMovement = false
                getgenv().PredictionVelocity = 12.29
                getgenv().CheckIfJumped = true
                getgenv().Smoothness = false
                getgenv().WallCheck = false
                getgenv().SmoothnessAmount = 0.05
                getgenv().Notificationmode = false
                getgenv().Notificationmodepart = "Roblox"
                getgenv().Disableontargetdeath = false
                getgenv().Disableonplayerdeath = false

                getgenv().Visual = {
                    Thickness = 3.4,
                    Transparency = 1,
                    Color = Color3.fromRGB(0, 255, 0),
                    FOV = false,
                    LINE = false
                }
                 

                local CurrentCamera = game:GetService("Workspace").CurrentCamera
                local Inset = game:GetService("GuiService"):GetGuiInset().Y
                local Mouse = game.Players.LocalPlayer:GetMouse()
                local Line = Drawing.new("Line")
                local Circle = Drawing.new("Circle")

                local CurrentCamera = game:GetService "Workspace".CurrentCamera
                local services =
                    setmetatable(
                    {},
                    {
                        __index = function(t, k)
                            return game:GetService(k)
                        end
                    }
                )
                local Players = services.Players
                local Uisf = services.UserInputService
                local Workgalaxy = services.Workspace
                local RService = services.RunService
                local SGui = services.StarterGui
                local Inset2 = game:GetService("GuiService"):GetGuiInset().Y

                local mousef = game.Players.LocalPlayer:GetMouse()
                local Clientuser = Players.LocalPlayer
                local runshit = game:GetService("RunService")
                local localnigger = game.Players.LocalPlayer
                local Line2 = Drawing.new("Line")

                local camgay = Workspace.CurrentCamera

                local CF = CFrame.new
                local RNew = Ray.new
                local Vec3 = Vector3.new
                local Vec2 = Vector2.new

                local Aimlock, MousePressed, CanNotify = false, false, false
                local AimlockTarget, OldPre

                 

                local Target, PartMode, Partz, NotifMode, PredictionF

                getgenv().GetObscuringObjects = function(T)
                    if T and T:FindFirstChild(AimPart) and Clientuser and Clientuser.Character:FindFirstChild("Head") then
                        local RayPos =
                            workspace:FindPartOnRay(RNew(T[AimPart].Position, Clientuser.Character.Head.Position))
                        if RayPos then
                            return RayPos:IsDescendantOf(T)
                        end
                    end
                end

                local GetNearestTarget = function()
                    local plr1g2 = nil
                    local distance = 99999

                    for i, v in next, Players:GetPlayers() do
                        if v.Name ~= Clientuser.Name then
                            --if v.Character and v.Team ~= Clientuser.Team then
                            if v.Character then
                                local pos, aaaa = camgay:WorldToViewportPoint(v.Character.Head.Position)
                                local mouse = Uisf:GetMouseLocation()
                                local magnitude = (Vec2(pos.X, pos.Y) - Vec2(mousef.X, mousef.Y)).magnitude

                                if aaaa and (magnitude < distance) then
                                    plr1g2 = v
                                    distance = magnitude
                                end
                            end
                        end
                    end

                    return plr1g2
                end
                  

                mousef.KeyDown:Connect(
                    function(k)
                        if k ~= keybind then
                            return
                        end
                        if Aimlock and AimlockTarget == nil then
                            if MousePressed ~= true then
                                MousePressed = true
                            end
                            local Target
                            Target = GetNearestTarget()
                            if Target ~= nil then
                                AimlockTarget = Target
                                if getgenv().Notificationmode and getgenv().Notificationmodepart == "Roblox" then
                                    game.StarterGui:SetCore(
                                        "SendNotification",
                                        {
                                            Title = "Choobian ",
                                            Text = "Locked: " .. AimlockTarget.DisplayName,
                                            Icon = "rbxthumb://type=AvatarHeadShot&id=" ..
                                                AimlockTarget.UserId .. "&w=420&h=420",
                                            Duration = 1
                                        }
                                    )
                                end
                                if aiming.targetaim.ben == true then
                                    local benlocked = Instance.new("Sound")
                                    benlocked.Name = "e"
                                    benlocked.Volume = aiming.targetaim.benvolume
                                    benlocked.SoundId = "rbxassetid://6518811702"
                                    benlocked.Parent = game:GetService("SoundService")
                                    benlocked.Playing = true
                                end
                                if getgenv().Notificationmode and getgenv().Notificationmodepart == "Meff" then
                                    NotifyLib.prompt("Choobian ", "Locked: " .. AimlockTarget.DisplayName, 0)
                                end
                            end
                        else
                            if AimlockTarget ~= nil then
                                AimlockTarget = nil
                            end
                            if MousePressed ~= false then
                                MousePressed = false
                                if getgenv().Notificationmode and getgenv().Notificationmodepart == "Roblox" then
                                    game.StarterGui:SetCore(
                                        "SendNotification",
                                        {
                                            Title = "Choobian ",
                                            Text = "Unlocked",
                                            Icon = "rbxassetid://11394475200",
                                            Duration = 1
                                        }
                                    )
                                end
                                if niggacum2 then
                                    LocalHL2.Parent = game.CoreGui
                                end
                                if aiming.targetaim.ben == true then
                                    local benlocked = Instance.new("Sound")
                                    benlocked.Name = "e"
                                    benlocked.Volume = aiming.targetaim.benvolume
                                    benlocked.SoundId = "rbxassetid://6518811702"
                                    benlocked.Parent = game:GetService("SoundService")
                                    benlocked.Playing = true
                                end
                                if getgenv().Notificationmode and getgenv().Notificationmodepart == "Meff" then
                                    NotifyLib.prompt("Choobian ", "Unlocked", 0)
                                end
                                Line2.Visible = false
                            end
                        end
                    end
                )
                  

                RService.RenderStepped:Connect(
                    function()
                        if ThirdPerson == true and FirstPerson == true then
                            if WallCheck == true and not GetObscuringObjects(AimlockTarget) then
                                if
                                    (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude > 1 or
                                        (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude <= 1
                                 then
                                    CanNotify = true
                                else
                                    CanNotify = false
                                end
                            elseif ThirdPerson == true and FirstPerson == false then
                                if (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude > 1 then
                                    CanNotify = true
                                else
                                    CanNotify = false
                                end
                            elseif ThirdPerson == false and FirstPerson == true then
                                if (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude <= 1 then
                                    CanNotify = true
                                else
                                    CanNotify = false
                                end
                            end
                            if Aimlock == true and MousePressed == true then
                                if AimlockTarget then
                                    if aiming.od.unlockko == true and AimlockTarget.Character.Humanoid.health < 1 then
                                        CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                                        AimlockTarget = nil
                                        if niggacum2 then
                                            LocalHL2.Parent = game.CoreGui
                                        end
                                        if Line.Visible == true or Circle.Visible == true then
                                            Line.Visible = false
                                            Circle.Visible = false
                                        end
                                    end
                                end
                            end
                              
                            if Aimlock == true and MousePressed == true then
                                if AimlockTarget then
                                    if aiming.od.tpko == true and AimlockTarget.Character.Humanoid.health < 1 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            AimlockTarget.Character.LowerTorso.CFrame
                                    end
                                end
                            end
                            if Aimlock == true and MousePressed == true then
                                if AimlockTarget then
                                    if aiming.od.realodko == true and AimlockTarget.Character.Humanoid.health < 1 then
                                        if AimlockTarget.Character.Humanoid.health < 1 then
                                            game:GetService("ReplicatedStorage").MainEvent:FireServer(
                                                "Reload",
                                                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA(
                                                    "Tool"
                                                )
                                            )
                                        end
                                    end
                                end
                            end
                            if
                                aiming.od.unlockkoplayer == true and game.Players.LocalPlayer.Character and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                                    game.Players.LocalPlayer.Character.Humanoid.health < 1
                             then
                                CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                                AimlockTarget = nil
                                if niggacum2 then
                                    LocalHL2.Parent = game.CoreGui
                                end
                                if Line.Visible == true or Circle.Visible == true then
                                    Line.Visible = false
                                    Circle.Visible = false
                                end
                            end
                            if Aimlock == true and MousePressed == true then
                                if AimlockTarget then
                                    if
                                        Line.Visible == true or
                                            Circle.Visible == true and AimlockTarget.Character.Humanoid.health < 1
                                     then
                                        Line.Visible = false
                                        Circle.Visible = false
                                    end
                                end
                            end
                            if Aimlock == true and MousePressed == true then
                                if
                                    niggacum2 and AimlockTarget and game.Players.LocalPlayer.Character and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                 then
                                    LocalHL2.Parent = AimlockTarget.Character
                                    LocalHL2.FillColor = niggaculor2
                                    LocalHL2.OutlineColor = niggacumcolorxe2
                                end
                            end
                            if
                                Aimlock == true and MousePressed == true and game.Players.LocalPlayer.Character and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                             then
                                if AimlockTarget then
                                    local Vector =
                                        CurrentCamera:WorldToViewportPoint(
                                        AimlockTarget.Character[getgenv().AimPart].Position +
                                            (AimlockTarget.Character[getgenv().AimPart].Velocity *
                                                getgenv().PredictionVelocity)
                                    )
                                    Line.Color = getgenv().Visual.Color
                                    Line.Transparency = getgenv().Visual.Transparency
                                    Line.Thickness = getgenv().Visual.Thickness
                                    Line.Visible = getgenv().Visual.LINE
                                    Line.From = Vector2.new(Mouse.X, Mouse.Y + Inset)
                                    Line.To = Vector2.new(Vector.X, Vector.Y)
                                    Line.Visible = getgenv().Visual.LINE
                                    Circle.Position = Vector2.new(Mouse.X, Mouse.Y + Inset)
                                    Circle.Visible = getgenv().Visual.FOV
                                    Circle.Thickness = 1.5
                                    Circle.Thickness = 2
                                    Circle.Radius = 60
                                    Circle.Color = getgenv().Visual.Color
                                end
                            else
                                Line.Visible = false
                                Circle.Visible = false
                            end
                              
                            if Aimlock == true and MousePressed == true then
                                if
                                    AimlockTarget and AimlockTarget.Character and
                                        AimlockTarget.Character:FindFirstChild(AimPart)
                                 then
                                    if FirstPerson == true then
                                        if CanNotify == true then
                                            if PredictMovement == true then
                                                if Smoothness == true then
                                                    local Main =
                                                        CF(
                                                        camgay.CFrame.p,
                                                        AimlockTarget.Character[AimPart].Position +
                                                            AimlockTarget.Character[AimPart].Velocity *
                                                                PredictionVelocity
                                                    )

                                                    camgay.CFrame =
                                                        camgay.CFrame:Lerp(
                                                        Main,
                                                        SmoothnessAmount,
                                                        Enum.EasingStyle.Elastic,
                                                        Enum.EasingDirection.InOut
                                                    )
                                                else
                                                    camgay.CFrame =
                                                        CF(
                                                        camgay.CFrame.p,
                                                        AimlockTarget.Character[AimPart].Position +
                                                            AimlockTarget.Character[AimPart].Velocity *
                                                                PredictionVelocity
                                                    )
                                                end
                                            elseif PredictMovement == false then
                                                if Smoothness == true then
                                                    local Main =
                                                        CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)

                                                    camgay.CFrame =
                                                        camgay.CFrame:Lerp(
                                                        Main,
                                                        SmoothnessAmount,
                                                        Enum.EasingStyle.Elastic,
                                                        Enum.EasingDirection.InOut
                                                    )
                                                else
                                                    camgay.CFrame =
                                                        CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)
                                                end
                                            end
                                        end

                                        if PredictMovement == true then
                                            if Smoothness == true then
                                                local Main =
                                                    CF(
                                                    camgay.CFrame.p,
                                                    AimlockTarget.Character[AimPart].Position +
                                                        AimlockTarget.Character[AimPart].Velocity * PredictionVelocity
                                                )

                                                camgay.CFrame =
                                                    camgay.CFrame:Lerp(
                                                    Main,
                                                    SmoothnessAmount,
                                                    Enum.EasingStyle.Elastic,
                                                    Enum.EasingDirection.InOut
                                                )
                                            else
                                                camgay.CFrame =
                                                    CF(
                                                    camgay.CFrame.p,
                                                    AimlockTarget.Character[AimPart].Position +
                                                        AimlockTarget.Character[AimPart].Velocity * PredictionVelocity
                                                )
                                            end
                                        elseif PredictMovement == false then
                                            if Smoothness == true then
                                                local Main =
                                                    CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)

                                                camgay.CFrame =
                                                    camgay.CFrame:Lerp(
                                                    Main,
                                                    SmoothnessAmount,
                                                    Enum.EasingStyle.Elastic,
                                                    Enum.EasingDirection.InOut
                                                )
                                            else
                                                camgay.CFrame =
                                                    CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        if aiming.visualization.forcefield and AimlockTarget then
                            AimlockTarget.Character.LeftHand.Material = "ForceField"
                            AimlockTarget.Character.RightHand.Material = "ForceField"
                            AimlockTarget.Character.LeftLowerArm.Material = "ForceField"
                            AimlockTarget.Character.RightLowerArm.Material = "ForceField"
                            AimlockTarget.Character.LeftUpperArm.Material = "ForceField"
                            AimlockTarget.Character.RightUpperArm.Material = "ForceField"
                            AimlockTarget.Character.LeftFoot.Material = "ForceField"
                            AimlockTarget.Character.RightFoot.Material = "ForceField"
                            AimlockTarget.Character.LeftLowerLeg.Material = "ForceField"
                            AimlockTarget.Character.RightLowerLeg.Material = "ForceField"
                            AimlockTarget.Character.UpperTorso.Material = "ForceField"
                            AimlockTarget.Character.LowerTorso.Material = "ForceField"
                            AimlockTarget.Character.LeftUpperLeg.Material = "ForceField"
                            AimlockTarget.Character.RightUpperLeg.Material = "ForceField"
                            AimlockTarget.Character.Head.Material = "ForceField"
                            _G.colorbody111 = AimlockTarget.Character.LeftHand.Color
                            _G.colorbody112 = AimlockTarget.Character.RightHand.Color
                            _G.colorbody21 = AimlockTarget.Character.LeftLowerArm.Color
                            _G.colorbody31 = AimlockTarget.Character.RightLowerArm.Color
                            _G.colorbody41 = AimlockTarget.Character.LeftUpperArm.Color
                            _G.colorbody51 = AimlockTarget.Character.RightUpperArm.Color
                            _G.colorbody61 = AimlockTarget.Character.LeftFoot.Color
                            _G.colorbody71 = AimlockTarget.Character.RightFoot.Color
                            _G.colorbody81 = AimlockTarget.Character.LeftLowerLeg.Color
                            _G.colorbody91 = AimlockTarget.Character.RightLowerLeg.Color
                            _G.colorbody101 = AimlockTarget.Character.UpperTorso.Color
                            _G.colorbody111 = AimlockTarget.Character.LowerTorso.Color
                            _G.colorbody121 = AimlockTarget.Character.LeftUpperLeg.Color
                            _G.colorbody131 = AimlockTarget.Character.RightUpperLeg.Color
                            _G.colorbody141 = AimlockTarget.Character.Head.Color
                            AimlockTarget.Character.LeftHand.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.RightHand.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.LeftLowerArm.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.RightLowerArm.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.LeftUpperArm.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.RightUpperArm.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.LeftFoot.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.RightFoot.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.LeftLowerLeg.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.RightLowerLeg.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.UpperTorso.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.LowerTorso.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.LeftUpperLeg.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.RightUpperLeg.Color = aiming.visualization.forcefieldcol
                            AimlockTarget.Character.Head.Color = aiming.visualization.forcefieldcol
                        end

                        if getgenv().CheckIfJumped == true then
                            if
                                AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air and
                                    AimlockTarget.Character.Humanoid.Jump == true
                             then
                                getgenv().AimPart = getgenv().Airshotpart
                            else
                                getgenv().AimPart = getgenv().OldAimPart
                            end
                        end
                    end
                )

                game:GetService("RunService").heartbeat:Connect(
                    function()
                        if aiming.visualization.forcefield and AimlockTarget ~= nil then
                            AimlockTarget.Character.LeftHand.Material = "Plastic"
                            AimlockTarget.Character.RightHand.Material = "Plastic"
                            AimlockTarget.Character.LeftLowerArm.Material = "Plastic"
                            AimlockTarget.Character.RightLowerArm.Material = "Plastic"
                            AimlockTarget.Character.LeftUpperArm.Material = "Plastic"
                            AimlockTarget.Character.RightUpperArm.Material = "Plastic"
                            AimlockTarget.Character.LeftFoot.Material = "Plastic"
                            AimlockTarget.Character.RightFoot.Material = "Plastic"
                            AimlockTarget.Character.LeftLowerLeg.Material = "Plastic"
                            AimlockTarget.Character.RightLowerLeg.Material = "Plastic"
                            AimlockTarget.Character.UpperTorso.Material = "Plastic"
                            AimlockTarget.Character.LowerTorso.Material = "Plastic"
                            AimlockTarget.Character.LeftUpperLeg.Material = "Plastic"
                            AimlockTarget.Character.RightUpperLeg.Material = "Plastic"
                            AimlockTarget.Character.Head.Material = "Plastic"
                            AimlockTarget.Character.LeftHand.Color = _G.colorbody111
                            AimlockTarget.Character.RightHand.Color = _G.colorbody112
                            AimlockTarget.Character.LeftLowerArm.Color = _G.colorbody21
                            AimlockTarget.Character.RightLowerArm.Color = _G.colorbody31
                            AimlockTarget.Character.LeftUpperArm.Color = _G.colorbody41
                            AimlockTarget.Character.RightUpperArm.Color = _G.colorbody51
                            AimlockTarget.Character.LeftFoot.Color = _G.colorbody61
                            AimlockTarget.Character.RightFoot.Color = _G.colorbody71
                            AimlockTarget.Character.LeftLowerLeg.Color = _G.colorbody81
                            AimlockTarget.Character.RightLowerLeg.Color = _G.colorbody91
                            AimlockTarget.Character.UpperTorso.Color = _G.colorbody101
                            AimlockTarget.Character.LowerTorso.Color = _G.colorbody111
                            AimlockTarget.Character.LeftUpperLeg.Color = _G.colorbody121
                            AimlockTarget.Character.RightUpperLeg.Color = _G.colorbody131
                            AimlockTarget.Character.Head.Color = _G.colorbody141
                        end
                    end
                )
                game:GetService("RunService").heartbeat:Connect(
                    function()
                        if aiming.targetaim.autoshoot and Aimlock and AimlockTarget then
                            mouse1click()
                            task.wait()
                        end
                    end
                )
                  

                local cameraanabled =
                    lock6:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        Aimlock = Boolean
                    end
                )
                local keybindcamera =
                    lock6:AddTextbox(
                    "Keybind",
                    false,
                    function(Text)
                        getgenv().keybind = Text
                    end
                )

                local cameraparttype =
                    lock6:AddDropdown(
                    "part",
                    {
                        "Head",
                        "UpperTorso",
                        "HumanoidRootPart",
                        "LowerTorso",
                        "LeftHand",
                        "RightHand",
                        "LeftLowerArm",
                        "RightLowerArm",
                        "LeftUpperArm",
                        "RightUpperArm",
                        "LeftFoot",
                        "LeftLowerLeg",
                        "LeftUpperLeg",
                        "RightLowerLeg",
                        "RightFoot",
                        "RightUpperLeg"
                    },
                    "HumanoidRootPart",
                    false,
                    function(Value)
                        getgenv().OldAimPart = Value
                        getgenv().AimPart = Value
                    end
                )

                local drawlinecolor =
                    lock6:AddToggle(
                    "Draw Line",
                    false,
                    function(Boolean)
                        getgenv().Visual.LINE = Boolean
                    end
                )

                local drawfovaimbot =
                    lock6:AddToggle(
                    "Draw Fov",
                    false,
                    function(Boolean)
                        getgenv().Visual.FOV = Boolean
                    end
                )
                  

                lock6:AddColorpicker(
                    "Visual Color",
                    Color3.fromRGB(0, 140, 175),
                    function(Color)
                        getgenv().Visual.Color = Color
                    end
                )
                local campred =
                    lock6:AddToggle(
                    "Prediction",
                    false,
                    function(Boolean)
                        getgenv().PredictMovement = Boolean
                    end
                )
                local predictionscam =
                    lock6:AddTextbox(
                    "Prediction",
                    false,
                    function(Text)
                        getgenv().PredictionVelocity = Text
                    end
                )

                local camsmoothness =
                    lock6:AddToggle(
                    "Smoothness",
                    false,
                    function(Boolean)
                        getgenv().Smoothness = Boolean
                    end
                )

                local smoothnesscame =
                    lock6:AddTextbox(
                    "Smoothness amount",
                    false,
                    function(Text)
                        getgenv().SmoothnessAmount = Text
                    end
                )
                local camaimrad =
                    lock6:AddSlider(
                    "Aim Radius",
                    0,
                    10,
                    120,
                    1,
                    function(Value)
                        getgenv().AimRadius = Value
                    end
                )
                local Airshotfuncam =
                    lock6:AddToggle(
                    "Airshot Hitpart Changer",
                    false,
                    function(Boolean)
                        getgenv().CheckIfJumped = Boolean
                    end
                )

                local cameraparttypev3 =
                    lock6:AddDropdown(
                    "Air part",
                    {
                        "Head",
                        "UpperTorso",
                        "HumanoidRootPart",
                        "LowerTorso",
                        "LeftHand",
                        "RightHand",
                        "LeftLowerArm",
                        "RightLowerArm",
                        "LeftUpperArm",
                        "RightUpperArm",
                        "LeftFoot",
                        "LeftLowerLeg",
                        "LeftUpperLeg",
                        "RightLowerLeg",
                        "RightFoot",
                        "RightUpperLeg"
                    },
                    "HumanoidRootPart",
                    false,
                    function(Value)
                        getgenv().Airshotpart = Value
                    end
                )

                local saveprediction2 = 0.14
                local savehitbbox2 = "LowerTorso"
                local camvelres =
                    lock6:AddToggle(
                    "Resolver",
                    false,
                    function(Boolean)
                        getgenv().Velocityres2 = Boolean
                        if getgenv().Velocityres2 == true then
                            saveprediction2 = getgenv().PredictionVelocity
                            savehitbbox2 = getgenv().OldAimPart
                            cameraparttype:Set("HumanoidRootPart")
                        end
                        if getgenv().Velocityres2 == false then
                            wait(0.1)
                            getgenv().PredictionVelocity = saveprediction2
                            cameraparttype:Set(savehitbbox2)
                        end
                    end
                )
                  
                camvelres:AddKeybind()

                local resolvertypev22 = "Nothing"
                local Desyncdetect = 70
                lock6:AddDropdown(
                    "Options",
                    {"Nothing", "Reverse", "DetectDesync", "Desync", "Underground", "Slingshot", "Swing"},
                    "Nothing",
                    false,
                    function(v)
                        resolvertypev22 = v
                    end
                )

                lock6:AddLabel("-Desync Detection-")
                lock6:AddSlider(
                    "Detection",
                    1,
                    70,
                    200,
                    1,
                    function(v)
                        Desyncdetect = v
                    end
                )

                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        if getgenv().Velocityres2 then
                            if
                                AimlockTarget and resolvertypev22 == "Underground" and AimlockTarget.Character ~= nil and
                                    AimlockTarget.Character:FindFirstChild("HumanoidRootPart")
                             then
                                pcall(
                                    function()
                                        local hrp = AimlockTarget.Character.HumanoidRootPart
                                        hrp.Velocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
                                        hrp.AssemblyLinearVelocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
                                    end
                                )
                            end
                        end
                    end
                )

                RunService.RenderStepped:Connect(
                    function()
                        if getgenv().Velocityres2 then
                            if resolvertypev22 == "Reverse" then
                                getgenv().PredictionVelocity = -12.29 -- nigga its that easy faggots
                                cameraparttype:Set("HumanoidRootPart")
                            elseif resolvertypev22 == "Desync" then
                                getgenv().PredictionVelocity = 0
                            elseif resolvertypev22 == "Slingshot" then
                                getgenv().PredictionVelocity = 24
                                cameraparttype:Set("Head")
                            elseif resolvertypev22 == "Swing" then
                                getgenv().PredictionVelocity = 3
                                cameraparttype:Set("HumanoidRootPart")
                            end
                        end
                    end
                )

                local camnotif =
                    lock6:AddToggle(
                    "Notification Mode",
                    false,
                    function(Boolean)
                        getgenv().Notificationmode = Boolean
                    end
                )
                local notificamtype =
                    lock6:AddDropdown(
                    "Notifications Type",
                    {"Roblox", "Meff"},
                    "Roblox",
                    false,
                    function(Value)
                        getgenv().Notificationmodepart = Value
                    end
                )

                local legit1 = Anti:CreateSector("Target Aim", "Right")

                local CurrentCamera = game:GetService("Workspace").CurrentCamera
                local LocalMouse = game.Players.LocalPlayer:GetMouse()

                local circle = Drawing.new("Circle")
                circle.Color = Color3.fromRGB(255, 255, 255)
                circle.Thickness = 2
                circle.NumSides = 350
                circle.Transparency = 0.6
                circle.Radius = 70
                circle.Visible = false
                circle.Filled = false

                local circlev = Drawing.new("Circle")
                circlev.Color = legitcolor
                circlev.Thickness = 2
                circlev.NumSides = 350
                circlev.Transparency = 0.6
                circlev.Radius = 50
                circlev.Visible = false
                  
                circlev.Filled = false

                local circlev2 = Drawing.new("Circle")
                circlev2.Color = legitcolor
                circlev2.Thickness = 4
                circlev2.NumSides = 3
                circlev2.Transparency = 0.6
                circlev2.Radius = 50
                circlev2.Visible = false
                circlev2.Filled = false

                local line = Drawing.new("Line")
                line.Visible = false
                line.From = Vector2.new(0, 0)
                line.To = Vector2.new(200, 200)
                _G.SpecterL = Color3.fromRGB(253, 150, 255)
                line.Color = _G.SpecterL
                line.Thickness = 1.26
                line.Transparency = 1.

                -- not mine lol
                function getClosestPlayerToCursor()
                    local ClosestDistance, ClosestPlayer = math.huge, nil
                    for _, Player in next, game:GetService("Players"):GetPlayers() do
                        local ISNTKNOCKED = Player.Character:FindFirstChild("BodyEffects")["K.O"].Value ~= true
                        local ISNTGRABBED = Player.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil

                        if Player ~= game.Players.LocalPlayer then
                            local Character = Player.Character
                            if Character and Character.Humanoid.Health > 1 and ISNTKNOCKED and ISNTGRABBED then
                                local Position, IsVisibleOnViewPort =
                                    CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart.Position)
                                if IsVisibleOnViewPort then
                                    local Distance =
                                        (Vector2.new(LocalMouse.X, LocalMouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude
                                    if Distance < ClosestDistance then
                                        ClosestPlayer = Player
                                        ClosestDistance = Distance
                                    end
                                end
                            end
                        end
                    end
                    return ClosestPlayer, ClosestDistance
                end

                game:GetService("UserInputService").InputBegan:Connect(
                    function(keyinput, stupid)
                        if keyinput.KeyCode == aiming.targetaim.key then
                            if aiming.targetaim.enabled then
                                aiming.targetaim.targeting = not aiming.targetaim.targeting
                                if aiming.targetaim.targeting then
                                    target = getClosestPlayerToCursor()
                                    targetplr = tostring(target)
                                    localtargetplr = game.Players[targetplr]

                                    if aiming.targetaim.chat == true then
                                        local args = {
                                            [1] = "Targeting " .. tostring(targetplr),
                                            [2] = "All"
                                        }

                                        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                            unpack(args)
                                        )
                                    end

                                    if
                                        aiming.targetaim.Notificationmode == true and
                                            aiming.targetaim.Notificationmodepart == "Roblox"
                                     then
                                        game.StarterGui:SetCore(
                                            "SendNotification",
                                            {
                                                Title = "Choobian ",
                                                Text = "Locked : " .. tostring(targetplr),
                                                Icon = "rbxthumb://type=AvatarHeadShot&id=" ..
                                                    game.Players[targetplr].UserId .. "&w=420&h=420",
                                                Duration = 1
                                            }
                                        )
                                    end
                                    if
                                        aiming.targetaim.Notificationmode == true and
                                            aiming.targetaim.Notificationmodepart == "Meff"
                                     then
                                        NotifyLib.prompt("Choobian ", "Locked: " .. tostring(targetplr), 0)
                                    end
                                    if aiming.targetaim.toggablexd == false then
                                        aiming.targetaim.toggablexd = true
                                    end
                                    if aiming.targetaim.view == true then
                                        if game.Players[targetplr].Character:FindFirstChild("Humanoid") then
                                            CurrentCamera.CameraSubject = game.Players[targetplr].Character.Humanoid
                                        end
                                    end

                                    if aiming.targetaim.ben == true then
                                        local benlocked = Instance.new("Sound")
                                        benlocked.Name = "e"
                                        benlocked.Volume = aiming.targetaim.benvolume
                                        benlocked.SoundId = "rbxassetid://6518811702"
                                        benlocked.Parent = game:GetService("SoundService")
                                        benlocked.Playing = true
                                    end
                                    if aiming.targetaim.airshotfun == true then
                                        if
                                            game.Players[targetplr].Character.Humanoid.FloorMaterial ==
                                                Enum.Material.Air and
                                                game.Players[targetplr].Character.Humanoid.Jump == true
                                         then
                                            aiming.targetaim.hitpart = aiming.targetaim.airshotfunpart
                                        else
                                            aiming.targetaim.hitpart = aiming.targetaim.hitpart2
                                        end
                                    end
                                    if niggacum2 == true and targetplr then
                                        LocalHL2.Parent = game.Players[targetplr].Character
                                        LocalHL2.FillColor = niggaculor2
                                        LocalHL2.OutlineColor = niggacumcolorxe2
                                    else
                                        LocalHL2.Parent = game.CoreGui
                                    end
                                    if aiming.targetaim.teleportontarget == true then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            CFrame.new(
                                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.X,
                                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.Y,
                                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.Z
                                        )
                                    end
                                    if aiming.visualization.forcefield == true then
                                        local humanoid = game:GetService("Players")[targetplr].Character.Humanoid

                                        if humanoid.RigType == Enum.HumanoidRigType.R15 then
                                            game.Players[targetplr].Character.LeftHand.Material = "ForceField"
                                            game.Players[targetplr].Character.RightHand.Material = "ForceField"
                                            game.Players[targetplr].Character.LeftLowerArm.Material = "ForceField"
                                            game.Players[targetplr].Character.RightLowerArm.Material = "ForceField"
                                            game.Players[targetplr].Character.LeftUpperArm.Material = "ForceField"
                                            game.Players[targetplr].Character.RightUpperArm.Material = "ForceField"
                                            game.Players[targetplr].Character.LeftFoot.Material = "ForceField"
                                            game.Players[targetplr].Character.RightFoot.Material = "ForceField"
                                            game.Players[targetplr].Character.LeftLowerLeg.Material = "ForceField"
                                            game.Players[targetplr].Character.RightLowerLeg.Material = "ForceField"
                                            game.Players[targetplr].Character.UpperTorso.Material = "ForceField"
                                            game.Players[targetplr].Character.LowerTorso.Material = "ForceField"
                                            game.Players[targetplr].Character.LeftUpperLeg.Material = "ForceField"
                                            game.Players[targetplr].Character.RightUpperLeg.Material = "ForceField"
                                            game.Players[targetplr].Character.Head.Material = "ForceField"
                                        end
                                    end
                                    if aiming.visualization.forcefield == true then
                                        local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid

                                        if humanoid.RigType == Enum.HumanoidRigType.R15 then
                                            _G.colorbody1111 = game.Players[targetplr].Character.LeftHand.Color
                                            _G.colorbody1121 = game.Players[targetplr].Character.RightHand.Color
                                            _G.colorbody211 = game.Players[targetplr].Character.LeftLowerArm.Color
                                            _G.colorbody311 = game.Players[targetplr].Character.RightLowerArm.Color
                                            _G.colorbody411 = game.Players[targetplr].Character.LeftUpperArm.Color
                                            _G.colorbody511 = game.Players[targetplr].Character.RightUpperArm.Color
                                            _G.colorbody611 = game.Players[targetplr].Character.LeftFoot.Color
                                            _G.colorbody711 = game.Players[targetplr].Character.RightFoot.Color
                                            _G.colorbody811 = game.Players[targetplr].Character.LeftLowerLeg.Color
                                            _G.colorbody911 = game.Players[targetplr].Character.RightLowerLeg.Color
                                            _G.colorbody1011 = game.Players[targetplr].Character.UpperTorso.Color
                                            _G.colorbody1111 = game.Players[targetplr].Character.LowerTorso.Color
                                            _G.colorbody1211 = game.Players[targetplr].Character.LeftUpperLeg.Color
                                            _G.colorbody1311 = game.Players[targetplr].Character.RightUpperLeg.Color
                                            _G.colorbody1411 = game.Players[targetplr].Character.Head.Color
                                            game.Players[targetplr].Character.LeftHand.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.RightHand.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.LeftLowerArm.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.RightLowerArm.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.LeftUpperArm.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.RightUpperArm.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.LeftFoot.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.RightFoot.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.LeftLowerLeg.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.RightLowerLeg.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.UpperTorso.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.LowerTorso.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.LeftUpperLeg.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.RightUpperLeg.Color =
                                                aiming.visualization.forcefieldcol
                                            game.Players[targetplr].Character.Head.Color =
                                                aiming.visualization.forcefieldcol
                                        end
                                    end
                                    if targetplr ~= nil and aiming.visualization.mode == "Ball" then
                                        local ipar = Instance.new("Part", game.Workspace)
                                        ipar.Name = "uwu"
                                        ipar.Anchored = true
                                        ipar.CanCollide = false
                                        ipar.Transparency = aiming.visualization.transparency
                                        ipar.Parent = game.Workspace
                                        ipar.Shape = Enum.PartType.Ball
                                        ipar.Size = Vector3.new(1, 0.7, 2)
                                        ipar.Color = legitcolor
                                        ipar.Material = aiming.visualization.material
                                        spawn(
                                            function()
                                                game:GetService("RunService").Stepped:Connect(
                                                    function()
                                                        ipar.Position =
                                                            game.Players[targetplr].Character.HumanoidRootPart.Position +
                                                            (game.Players[targetplr].Character.LowerTorso.Velocity *
                                                                aiming.targetaim.prediction)
                                                    end
                                                )
                                            end
                                        )
                                    end

                                    if targetplr ~= nil and aiming.visualization.mode == "Ball2" then
                                        local ipar2 = Instance.new("Part", game.Workspace)
                                        ipar2.Name = "uwu2"
                                        ipar2.Anchored = true
                                        ipar2.CanCollide = false
                                        ipar2.Transparency = aiming.visualization.transparency
                                        ipar2.Parent = game.Workspace
                                        ipar2.Shape = Enum.PartType.Ball
                                        ipar2.Size = Vector3.new(10, 7, 20)
                                        ipar2.Color = legitcolor
                                        ipar2.Material = aiming.visualization.material
                                        spawn(
                                            function()
                                                game:GetService("RunService").Stepped:Connect(
                                                    function()
                                                        ipar2.Position =
                                                            game.Players[targetplr].Character.HumanoidRootPart.Position +
                                                            (game.Players[targetplr].Character.LowerTorso.Velocity *
                                                                aiming.targetaim.prediction)
                                                    end
                                                )
                                            end
                                        )
                                    end

                                    if targetplr ~= nil and aiming.visualization.mode == "Block" then
                                        local ipar3 = Instance.new("Part", game.Workspace)
                                        ipar3.Name = "uwu3"
                                        ipar3.Anchored = true
                                        ipar3.CanCollide = false
                                        ipar3.Transparency = aiming.visualization.transparency
                                        ipar3.Parent = game.Workspace
                                        ipar3.Shape = Enum.PartType.Block
                                        ipar3.Size = Vector3.new(6, 6, 6)
                                        ipar3.Color = legitcolor
                                        ipar3.Material = aiming.visualization.material
                                        spawn(
                                            function()
                                                game:GetService("RunService").Stepped:Connect(
                                                    function()
                                                        ipar3.Position =
                                                            game.Players[targetplr].Character.HumanoidRootPart.Position +
                                                            (game.Players[targetplr].Character.LowerTorso.Velocity *
                                                                aiming.targetaim.prediction)
                                                    end
                                                )
                                            end
                                        )
                                    end
                                      
                                    if targetplr ~= nil and aiming.visualization.mode == "Cylinder" then
                                        local ipar7 = Instance.new("Part", game.Workspace)
                                        ipar7.Name = "uwu4"
                                        ipar7.Anchored = true
                                        ipar7.CanCollide = false
                                        ipar7.Transparency = aiming.visualization.transparency
                                        ipar7.Parent = game.Workspace
                                        ipar7.Shape = Enum.PartType.Cylinder
                                        ipar7.Size = Vector3.new(3, 6, 3)
                                        ipar7.Color = legitcolor
                                        ipar7.Material = aiming.visualization.material
                                        spawn(
                                            function()
                                                game:GetService("RunService").Stepped:Connect(
                                                    function()
                                                        ipar7.Position =
                                                            game.Players[targetplr].Character.HumanoidRootPart.Position +
                                                            (game.Players[targetplr].Character.LowerTorso.Velocity *
                                                                aiming.targetaim.prediction)
                                                    end
                                                )
                                            end
                                        )
                                    end
                                    if aiming.tracers.rainbow == true then
                                        spawn(
                                            function()
                                                for i = 0, 1, 0.001 do
                                                    line.Color = Color3.fromHSV(i, 1, 1)
                                                    task.wait()
                                                end
                                            end
                                        )
                                    end

                                    if aiming.orbit.enabled == true and aiming.targetaim.targeting then
                                        spawn(
                                            function()
                                                repeat
                                                    task.wait()

                                                    for i = 0, 360, aiming.orbit.speed do
                                                        if aiming.targetaim.targeting then
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                                CFrame.new(
                                                                game.Players[targetplr].Character.HumanoidRootPart.Position
                                                            ) *
                                                                CFrame.Angles(0, math.rad(i), 0) *
                                                                CFrame.new(aiming.orbit.distance, 0, 0)
                                                            task.wait()
                                                        end
                                                    end
                                                until game.Players[targetplr].Character.Humanoid.health < 1 or
                                                    aiming.orbit.enabled == false or
                                                    aiming.targetaim.targeting == false
                                            end
                                        )
                                    end
                                elseif not aiming.targetaim.targeting then
                                    if aiming.targetaim.chat == true then
                                        local args = {
                                            [1] = "Untargeting " .. tostring(targetplr),
                                            [2] = "All"
                                        }

                                        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                            unpack(args)
                                        )
                                    end
                                    if
                                        aiming.targetaim.Notificationmode == true and
                                            aiming.targetaim.Notificationmodepart == "Roblox"
                                     then
                                        game.StarterGui:SetCore(
                                            "SendNotification",
                                            {
                                                Title = "Choobian ",
                                                Text = "Unlocked",
                                                Icon = "rbxassetid://11394475200",
                                                Duration = 1
                                            }
                                        )
                                    end
                                    if
                                        aiming.targetaim.Notificationmode == true and
                                            aiming.targetaim.Notificationmodepart == "Meff"
                                     then
                                        NotifyLib.prompt("Choobian ", "Unlocked", 0)
                                    end
                                    if aiming.targetaim.toggablexd == true then
                                        aiming.targetaim.toggablexd = false
                                    end
                                    if aiming.targetaim.view == true then
                                        CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                                    end

                                    if aiming.visualization.mode == "Cylinder" then
                                        local vvv = game:GetService("Workspace").uwu4
                                        vvv:Destroy()
                                    end

                                    if aiming.visualization.mode == "Ball" then
                                        local vvv = game:GetService("Workspace").uwu
                                        vvv:Destroy()
                                    end

                                    if aiming.visualization.mode == "Ball2" then
                                        local vvv = game:GetService("Workspace").uwu2
                                        vvv:Destroy()
                                    end
                                    if aiming.visualization.mode == "Block" then
                                        local vvv = game:GetService("Workspace").uwu3
                                        vvv:Destroy()
                                    end
                                    if
                                        aiming.orbit.flymode == true and aiming.targetaim.toggablexd == false and
                                            aiming.targetaim.enabled == true
                                     then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            CFrame.new(
                                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.X,
                                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.Y,
                                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.Z
                                        )
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity =
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *
                                            0
                                        game:GetService("RunService").Stepped:wait()
                                    end
                                    if
                                        niggacum2 and aiming.targetaim.targeting == false and
                                            aiming.targetaim.toggablexd == false
                                     then
                                        LocalHL2.Parent = game.CoreGui
                                    end
                                    if aiming.visualization.forcefield == true then
                                        local humanoid = game:GetService("Players")[targetplr].Character.Humanoid

                                        if humanoid.RigType == Enum.HumanoidRigType.R15 then
                                            game.Players[targetplr].Character.LeftHand.Material = "Plastic"
                                            game.Players[targetplr].Character.RightHand.Material = "Plastic"
                                            game.Players[targetplr].Character.LeftLowerArm.Material = "Plastic"
                                            game.Players[targetplr].Character.RightLowerArm.Material = "Plastic"
                                            game.Players[targetplr].Character.LeftUpperArm.Material = "Plastic"
                                            game.Players[targetplr].Character.RightUpperArm.Material = "Plastic"
                                            game.Players[targetplr].Character.LeftFoot.Material = "Plastic"
                                            game.Players[targetplr].Character.RightFoot.Material = "Plastic"
                                            game.Players[targetplr].Character.LeftLowerLeg.Material = "Plastic"
                                            game.Players[targetplr].Character.RightLowerLeg.Material = "Plastic"
                                            game.Players[targetplr].Character.UpperTorso.Material = "Plastic"
                                            game.Players[targetplr].Character.LowerTorso.Material = "Plastic"
                                            game.Players[targetplr].Character.LeftUpperLeg.Material = "Plastic"
                                            game.Players[targetplr].Character.RightUpperLeg.Material = "Plastic"
                                            game.Players[targetplr].Character.Head.Material = "Plastic"
                                        end
                                    end
                                    if aiming.visualization.forcefield == true then
                                        local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid

                                        if humanoid.RigType == Enum.HumanoidRigType.R15 then
                                            game.Players[targetplr].Character.LeftHand.Color = _G.colorbody1111
                                            game.Players[targetplr].Character.RightHand.Color = _G.colorbody1121
                                            game.Players[targetplr].Character.LeftLowerArm.Color = _G.colorbody211
                                            game.Players[targetplr].Character.RightLowerArm.Color = _G.colorbody311
                                            game.Players[targetplr].Character.LeftUpperArm.Color = _G.colorbody411
                                            game.Players[targetplr].Character.RightUpperArm.Color = _G.colorbody511
                                            game.Players[targetplr].Character.LeftFoot.Color = _G.colorbody611
                                            game.Players[targetplr].Character.RightFoot.Color = _G.colorbody711
                                            game.Players[targetplr].Character.LeftLowerLeg.Color = _G.colorbody811
                                            game.Players[targetplr].Character.RightLowerLeg.Color = _G.colorbody911
                                            game.Players[targetplr].Character.UpperTorso.Color = _G.colorbody1011
                                            game.Players[targetplr].Character.LowerTorso.Color = _G.colorbody1111
                                            game.Players[targetplr].Character.LeftUpperLeg.Color = _G.colorbody1211
                                            game.Players[targetplr].Character.RightUpperLeg.Color = _G.colorbody1311
                                            game.Players[targetplr].Character.Head.Color = _G.colorbody1411
                                        end
                                    end
                                    if aiming.targetaim.ben == true then
                                        local benunlocked = Instance.new("Sound")
                                        benunlocked.Name = "Penis"
                                        benunlocked.Volume = aiming.targetaim.benvolume
                                        benunlocked.SoundId = "rbxassetid://6518811702"
                                        benunlocked.Parent = game:GetService("SoundService")
                                        benunlocked.Playing = true
                                    end
                                end
                            end
                        end
                    end
                )

                local enabletarget =
                    legit1:AddToggle(
                    "Enabled",
                    false,
                    function(v)
                        aiming.targetaim.enabled = v
                    end
                )

                legit1:AddTextbox(
                    "Prediction",
                    0.1229,
                    function(Text)  
                        aiming.targetaim.prediction = Text
                        aiming.targetaim.predictionv2 = Text
                    end
                )

                local hitpartpart =
                    legit1:AddDropdown(
                    "Part",
                    {
                        "Head",
                        "UpperTorso",
                        "HumanoidRootPart",
                        "LowerTorso",
                        "LeftHand",
                        "RightHand",
                        "LeftLowerArm",
                        "RightLowerArm",
                        "LeftUpperArm",
                        "RightUpperArm",
                        "LeftFoot",
                        "LeftLowerLeg",
                        "LeftUpperLeg",
                        "RightLowerLeg",
                        "RightFoot",
                        "RightUpperLeg"
                    },
                    "LowerTorso",
                    false,
                    function(v)  
                        aiming.targetaim.hitpart = v
                        aiming.targetaim.hitpart2 = v
                    end
                )

                legit1:AddDropdown(
                    "Airshot Hitpart",
                    {
                        "Head",
                        "UpperTorso",
                        "HumanoidRootPart",
                        "LowerTorso",
                        "LeftHand",
                        "RightHand",
                        "LeftLowerArm",
                        "RightLowerArm",
                        "LeftUpperArm",
                        "RightUpperArm",
                        "LeftFoot",
                        "LeftLowerLeg",
                        "LeftUpperLeg",
                        "RightLowerLeg",
                        "RightFoot",
                        "RightUpperLeg"
                    },
                    "LowerTorso",
                    false,
                    function(v)
                        aiming.targetaim.airshotfunpart = v
                    end
                )

                local airshotfun32
                legit1:AddToggle(
                    "Airshot Hitpart Changer",
                    false,
                    function(v)
                        aiming.targetaim.airshotfun = v
                    end
                )

                legit1:AddToggle(
                    "Ping Based",
                    false,
                    function(v)
                        aiming.targetaim.autoprediction = v
                    end
                  
                )

                local targetteleport =
                    legit1:AddToggle(
                    "Teleport To Target",
                    false,
                    function(Boolean)
                        aiming.targetaim.teleportontarget = Boolean
                    end
                )

                local TargetGuicolorxd =
                    legit1:AddToggle(
                    "Target Gui",
                    false,
                    function(Boolean)
                        Meffsolset.TargetGui.Enabled = Boolean
                    end
                )

                game:GetService("RunService").heartbeat:Connect(
                    function()
                        if
                            Meffsolset.TargetGui.Enabled and aiming.targetaim.toggablexd == true and targetplr and
                                game.Players[targetplr].Character ~= nil and
                                game.Players[targetplr].Character:FindFirstChild("HumanoidRootPart")
                         then
                            if targetplr == nil then
                                Profile.Image = "rbxassetid://11394475200"
                                ArmorText.Text = "Data Not Found!"
                                HealthText.Text = "Data Not Found!"
                            end
                            if targetplr then
                                local NewHealth =
                                    game.Players[targetplr].Character.Humanoid.Health /
                                    game.Players[targetplr].Character.Humanoid.MaxHealth
                                Profile.Image =
                                    "rbxthumb://type=AvatarHeadShot&id=" ..
                                    game.Players[targetplr].UserId .. "&w=420&h=420"
                                Title_2.Text =
                                    game.Players[targetplr].Name .. " (" .. game.Players[targetplr].DisplayName .. ")"
                                HealthText.Text = Meffsolset2.Round(NewHealth * 100, 2)
                                HealthBar:TweenSize(UDim2.new(NewHealth, 0, 1, 0), "In", "Linear", 0.25)
                                if
                                    game.Players[targetplr].Character:FindFirstChild("BodyEffects") and
                                        game.Players[targetplr].Character:FindFirstChild("BodyEffects"):FindFirstChild(
                                            "Armor"
                                        )
                                 then
                                    local NewArmor = game.Players[targetplr].Character.BodyEffects.Armor.Value / 200
                                    ArmorText.Text = Meffsolset2.Round(NewArmor * 100, 2)
                                    ArmorBar:TweenSize(UDim2.new(NewArmor, 0, 1, 0), "In", "Linear", 0.25)
                                else
                                    ArmorText.Text = "Data Not Found!"
                                end
                                TargetUI.Visible = true
                            end
                        else
                            TargetUI.Visible = false
                        end
                        if targetplr == nil then
                            Profile.Image = "rbxassetid://11394475200"
                            ArmorText.Text = "Data Not Found!"
                            HealthText.Text = "Data Not Found!"
                        end
                        task.wait(0.35)
                    end
                )

                local viewopponent =
                    legit1:AddToggle(
                    "Camera Mode",
                    false,
                    function(v)
                        aiming.targetaim.view = v
                    end
                  
                )

                local viewopponent =
                    legit1:AddToggle(
                    "Chat Mode",
                    false,
                    function(v)
                        aiming.targetaim.chat = v
                    end
                )
                local lookatopponent =
                    legit1:AddToggle(
                    "LookAt Mode",
                    false,
                    function(v)
                        aiming.targetaim.lookat = v
                    end
                )
                local flymodetarget =
                    legit1:AddToggle(
                    "Fly Mode",
                    false,
                    function(boolean)
                        aiming.orbit.flymode = boolean
                    end
                )

                local flymodehtarget =
                    legit1:AddSlider(
                    "FlyMode Height",
                    1,
                    75,
                    100,
                    1,
                    function(v)
                        aiming.orbit.flymodeh = v
                    end
                )

                RunService.Stepped:Connect(
                    function()
                        if
                            aiming.orbit.flymode == true and aiming.targetaim.toggablexd == true and
                                aiming.targetaim.enabled == true
                         then
                            for i, v in pairs(LocalPlayer.Character:GetDescendants()) do
                                if v:IsA("BasePart") and v.CanCollide == true then
                                    v.CanCollide = false
                                end
                            end
                        end
                        if
                            aiming.orbit.flymode == true and aiming.targetaim.toggablexd == true and
                                aiming.targetaim.enabled == true
                         then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                game.Players[targetplr].Character.HumanoidRootPart.CFrame.X,
                                aiming.orbit.flymodeh,
                                game.Players[targetplr].Character.HumanoidRootPart.CFrame.Z
                            )
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity =
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0
                            game:GetService("RunService").Stepped:wait()
                        end
                    end
                )

                RunService.RenderStepped:Connect(
                    function()
                        if
                            aiming.targetaim.enabled == true and aiming.targetaim.toggablexd == true and
                                aiming.targetaim.lookat == true and
                                game.Players[targetplr].Character:FindFirstChild("HumanoidRootPart")
                         then
                            if aiming.targetaim.lookat == true and aiming.targetaim.toggablexd == true then
                                lplr.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(
                                    LocalPlayer.Character.HumanoidRootPart.CFrame.Position,
                                    Vector3.new(
                                        game.Players[targetplr].Character.HumanoidRootPart.CFrame.X,
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position.Y,
                                        game.Players[targetplr].Character.HumanoidRootPart.CFrame.Z
                                    )
                                )
                                lplr.Character.Humanoid.AutoRotate = false
                                spawn(
                                    function()
                                        if aiming.targetaim.lookat == false then
                                            lplr.Character.Humanoid.AutoRotate = true
                                        end
                                    end
                                )
                            end
                        end
                    end
                )

                local notifmode2 =
                    legit1:AddToggle(
                    "Notification Mode",
                    false,
                    function(v)
                        aiming.targetaim.Notificationmode = v
                    end
                )

                legit1:AddDropdown(
                    "Notifications Type",
                    {"Roblox", "Meff"},
                    "Roblox",
                    false,
                    function(Value)
                        aiming.targetaim.Notificationmodepart = Value
                    end
                )

                local resolverxxd = Anti:CreateSector("Resolver", "right")
                local saveprediction = 0.14
                local savehitbbox = "LowerTorso"

                local niggabean =
                    resolverxxd:AddToggle(
                    "Resolver",
                    false,
                    function(Boolean)
                        Chingbing33 = Boolean
                        if Chingbing33 == true then
                            saveprediction = aiming.targetaim.prediction
                            savehitbbox = aiming.targetaim.hitpart
                            hitpartpart:Set("HumanoidRootPart")
                        end
                        if Chingbing33 == false then
                            wait(0.1)
                            aiming.targetaim.prediction = saveprediction
                            hitpartpart:Set(savehitbbox)
                        end
                    end
                )
                local resolvertypev2 = "Nothing"
                local Resolverdetections = 70
                resolverxxd:AddDropdown(
                    "Options",
                    {"Nothing", "Reverse", "DetectDesync", "Desync", "Underground", "Slingshot", "Swing"},
                    "Nothing",
                    false,
                    function(v)
                        resolvertypev2 = v
                    end
                )
                resolverxxd:AddLabel("-Desync Detection-")
                resolverxxd:AddSlider(
                    "Detection",
                    1,
                    70,
                    200,
                    1,
                    function(v)
                        Resolverdetections = v
                    end
                )

                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        if Chingbing33 then
                            if
                                game.Players[targetplr] and resolvertypev2 == "Underground" and
                                    game.Players[targetplr].Character ~= nil and
                                    game.Players[targetplr].Character:FindFirstChild("HumanoidRootPart")
                             then
                                pcall(
                                    function()
                                        local hrpb6 = game.Players[targetplr].Character.HumanoidRootPart
                                        hrpb6.Velocity = Vector3.new(hrpb6.Velocity.X, 0, hrpb6.Velocity.Z)
                                        hrpb6.AssemblyLinearVelocity =
                                            Vector3.new(hrpb6.Velocity.X, 0, hrpb6.Velocity.Z)
                                    end
                                )
                            end
                        end
                    end
                )

                RunService.RenderStepped:Connect(
                    function()
                        if Chingbing33 then
                            if resolvertypev2 == "Reverse" then
                                aiming.targetaim.prediction = -0.1437 -- nigga its that easy faggots
                                hitboxtargetaim:Set("HumanoidRootPart")
                            elseif resolvertypev2 == "Desync" then
                                aiming.targetaim.prediction = 0
                            elseif resolvertypev2 == "Slingshot" then
                                aiming.targetaim.prediction = 0.33
                                hitboxtargetaim:Set("LowerTorso")
                            elseif resolvertypev2 == "Swing" then
                                aiming.targetaim.prediction = 0.06
                                hitboxtargetaim:Set("HumanoidRootPart")
                            end
                        end
                    end
                )

                niggabean:AddKeybind()

                local legit02 = Anti:CreateSector("Tracer", "right")

                local tracerslol =
                    legit02:AddToggle(
                    "Draw Tracer",
                    false,
                    function(v)
                        aiming.tracers.enabled = v
                    end
                )

                local cp2 =
                    tracerslol:AddColorpicker(
                    Color3.fromRGB(0, 140, 175),
                    function(c)
                        aiming.tracers.colour = c
                    end
                )

                legit02:AddSlider(
                    "Line Thickness",
                    1,
                    0,
                    10,
                    10,
                    function(v)
                        aiming.tracers.thickness = v
                    end
                )

                legit02:AddDropdown(
                    "Tracer home",
                    {"Head", "Torso", "Gun", "Penis", "Cursor"},
                    "Penis",
                    false,
                    function(v)
                        aiming.tracers.from = v
                    end
                )

                legit02:AddToggle(
                    "Target Prediction",
                    false,
                    function(v)
                        aiming.tracers.showprediction = v
                    end
                )

                local legit2 = Anti:CreateSector("Target Strafe", "right")

                local orbitlol =
                    legit2:AddToggle(
                    "Enable",
                    false,
                    function(v)
                        aiming.orbit.enabled = v
                    end
                )

                local showcircle =
                    legit2:AddToggle(
                    "Visualize Path",
                    false,
                    function(v)
                        aiming.orbit.visualization = v
                    end
                )

                local cp3 =
                    showcircle:AddColorpicker(
                    Color3.fromRGB(0, 140, 175),
                    function(c)
                        aiming.orbit.vc = c
                    end
                )

                legit2:AddSlider(
                    "Speed",
                    1,
                    2,
                    50,
                    1,
                    function(v)
                        aiming.orbit.speed = v
                    end
                )

                legit2:AddSlider(
                    "Distance",
                    1,
                    10,
                    50,
                    1,
                    function(v)
                        aiming.orbit.distance = v
                    end
                )

                local legit3 = Anti:CreateSector("Visualization", "left")

                legit3:AddDropdown(
                    "Options",
                    {"Nothing", "Ball", "Ball2", "Cylinder", "Block", "Circle", "Triangle"},
                    "Nothing",
                    false,
                    function(v)
                        aiming.visualization.mode = v
                    end
                )

                legit3:AddSlider(
                    "Transparency",
                    0,
                    0,
                    1,
                    100,
                    function(v)
                        aiming.visualization.transparency = v
                    end
                )

                legit3:AddDropdown(
                    "Material",
                    {
                        "Plastic",
                        "Concrete",
                        "Grass",
                        "Metal",
                        "WoodPlanks",
                        "ForceField",
                        "Glass",
                        "Neon",
                        "SmoothPlastic",
                        "Fabric",
                        "Brick"
                    },
                    "ForceField",
                    false,
                    function(v)
                        aiming.visualization.material = v
                    end
                )

                legit3:AddColorpicker(
                    "Color",
                    Color3.fromRGB(0, 140, 175),
                    function(Color)
                        legitcolor = Color
                        circlev.Color = Color
                        circlev2.Color = Color
                    end
                )

                legit3:AddToggle(
                    "Rainbow Color",
                    false,
                    function(callback)
                        if callback then
                            if humanoid.RigType == Enum.HumanoidRigType.R15 then
                                niggerheartbeat =
                                    game:GetService("RunService").Heartbeat:Connect(
                                    function()
                                        legitcolor = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        circlev.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        circlev2.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                    end
                                )
                            end
                        else
                            if niggerheartbeat then
                                niggerheartbeat:Disconnect()
                            end
                        end
                    end
                )

                local forcefeildtarget =
                    legit3:AddToggle(
                    "ForceField Target",
                    false,
                    function(Boolean)
                        aiming.visualization.forcefield = Boolean
                    end
                )

                forcefeildtarget:AddColorpicker(
                    Color3.fromRGB(0, 140, 175),
                    function(Color)
                        aiming.visualization.forcefieldcol = Color
                    end
                )

                local highlightxd23 =
                    legit3:AddToggle(
                    "Highlight Target",
                    false,
                    function(Boolean)
                        niggacum2 = Boolean
                        if niggacum2 == false then
                            LocalHL2.Parent = game.CoreGui
                        end
                    end
                )

                highlightxd23:AddColorpicker(
                    Color3.fromRGB(0, 140, 175),
                    function(Color)
                        niggaculor2 = Color
                    end
                )
                highlightxd23:AddColorpicker(
                    Color3.fromRGB(0, 140, 175),
                    function(Color)
                        niggacumcolorxe2 = Color
                    end
                )

                local legit4 = Anti:CreateSector("Fov Adjustments", "left")

                local showfov =
                    legit4:AddToggle(
                    "Draw FOV",
                    false,
                    function(v)
                        aiming.fov.enabled = v
                    end
                )

                local cp =
                    showfov:AddColorpicker(
                    Color3.fromRGB(0, 140, 175),
                    function(c)
                        aiming.fov.colour = c
                    end
                )

                local filled =
                    legit4:AddToggle(
                    "FOV Filled",
                    false,
                    function(v)
                        aiming.fov.filled = v
                    end
                )

                legit4:AddSlider(
                    "FOV Thickness",
                    1,
                    2,
                    10,
                    10,
                    function(v)
                        aiming.fov.thickness = v
                    end
                )

                legit4:AddSlider(
                    "FOV Radius",
                    1,
                    70,
                    250,
                    1,
                    function(v)
                        aiming.fov.radius = v
                    end
                )

                legit4:AddSlider(
                    "FOV Sides",
                    1,
                    350,
                    500,
                    1,
                    function(v)
                        circle.NumSides = v
                    end
                )

                legit4:AddDropdown(
                    "Shape",
                    {"Circle", "Hexagon", "Square", "Custom"},
                    "Circle",
                    false,
                    function(v)
                        aiming.fov.option = v
                    end
                )

                local legit5 = Anti:CreateSector("On Death", "left")

                local unlockonknocked =
                    legit5:AddToggle(
                    "Unlock When Player Knocked",
                    false,
                    function(v)
                        aiming.od.unlockkoplayer = v
                    end
                )

                local unlockonknocked =
                    legit5:AddToggle(
                    "Unlock When Target Knocked",
                    false,
                    function(v)
                        aiming.od.unlockko = v
                    end
                )

                local realodkoknocked =
                    legit5:AddToggle(
                    "Realod When Target Knocked",
                    false,
                    function(v)
                        aiming.od.realodko = v
                    end
                )

                local unlockonknocked =
                    legit5:AddToggle(
                    "Teleport When Target Knocked",
                    false,
                    function(v)
                        aiming.od.tpko = v
                    end
                )

                local unlockonknocked =
                    legit5:AddToggle(
                    "Stomp After Target Knocked",
                    false,
                    function(v)
                        aiming.od.stompko = v
                    end
                )

                legit5:AddSlider(
                    "Stomp Interval ",
                    0,
                    0.12,
                    1,
                    100,
                    function(v)
                        aiming.od.stomptime = v
                    end
                )

                local legitcustom = Anti:CreateSector("Advanced Prediction", "Right")
                getgenv().longprediction = 0.13
                getgenv().mediumprediction = 0.13
                getgenv().closeprediction = 0.13
                legitcustom:AddToggle(
                    "Enable",
                    false,
                    function(callback)
                        if callback then
                            nutsackholder =
                                game:GetService("RunService").Heartbeat:Connect(
                                function()
                                    if
                                        targetplr ~= nil and aiming.targetaim.enabled and targetplr and
                                            aiming.targetaim.targeting == true and
                                            aiming.targetaim.enabled == true
                                     then
                                        if
                                            (game.Players[targetplr].Character.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                                25
                                         then
                                            aiming.targetaim.prediction = getgenv().closeprediction
                                        elseif
                                            (game.Players[targetplr].Character.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                                90
                                         then
                                            aiming.targetaim.prediction = getgenv().mediumprediction
                                        elseif
                                            (game.Players[targetplr].Character.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                                math.huge
                                         then
                                            aiming.targetaim.prediction = getgenv().longprediction
                                        end
                                    end
                                end
                            )
                        else
                            if nutsackholder then
                                nutsackholder:Disconnect()
                                task.Wait()
                                aiming.targetaim.prediction = aiming.targetaim.predictionv2
                            end
                        end
                    end
                )

                legitcustom:AddTextbox(
                    "Long Prediction Range",
                    nil,
                    function(Text)
                        getgenv().longprediction = Text
                    end
                )

                legitcustom:AddTextbox(
                    "Medium Prediction Range",
                    nil,
                    function(Text)
                        getgenv().mediumprediction = Text
                    end
                )

                legitcustom:AddTextbox(
                    "Close Prediction Range",
                    nil,
                    function(Text)
                        getgenv().closeprediction = Text
                    end
                )

                local legit6 = Anti:CreateSector("Auto Shoot", "right")

                local autoshootkey =
                    legit6:AddToggle(
                    "Enable",
                    false,
                    function(v)
                        aiming.targetaim.autoshoot = v
                    end
                )

                autoshootkey:AddKeybind()

                local legit7 = Anti:CreateSector("Extra", "right")

                legit7:AddToggle(
                    "Sound Mode",
                    false,
                    function(v)
                        aiming.targetaim.ben = v
                    end
                )

                legit7:AddSlider(
                    "Sound Volume",
                    0,
                    0.83,
                    1,
                    100,
                    function(v)
                        aiming.targetaim.benvolume = v
                    end
                )

                local mt = getrawmetatable(game)
                local old = mt.__namecall
                setreadonly(mt, false)
                mt.__namecall =
                    newcclosure(
                    function(...)
                        local args = {...}
                        if
                            targetplr ~= nil and aiming.targetaim.enabled and targetplr and
                                aiming.targetaim.targeting == true and
                                aiming.targetaim.enabled == true and
                                getnamecallmethod() == "FireServer" and
                                args[2] == "UpdateMousePos"
                         then
                            args[3] =
                                game.Players[targetplr].Character[aiming.targetaim.hitpart].Position +
                                (game.Players[targetplr].Character.LowerTorso.Velocity * aiming.targetaim.prediction)
                            return old(unpack(args))
                        end
                        return old(...)
                    end
                )

                --// main Code

                spawn(
                    function()
                        game:GetService("RunService").Stepped:Connect(
                            function()
                                --- fov
                                spawn(
                                    function()
                                        circle.Position = Vector2.new(LocalMouse.X, LocalMouse.Y + 35)
                                    end
                                )

                                spawn(
                                    function()
                                        if aiming.fov.option == "Circle" then
                                            aiming.fov.side = 350
                                            circle.NumSides = 350
                                            aiming.fov.side = 350
                                        elseif aiming.fov.option == "Hexagon" then
                                            aiming.fov.side = 6
                                            circle.NumSides = 6
                                            aiming.fov.side = 6
                                        elseif aiming.fov.option == "Square" then
                                            aiming.fov.side = 4
                                            circle.NumSides = 4
                                            aiming.fov.side = 4
                                        else
                                        end
                                    end
                                )

                                spawn(
                                    function()
                                        if aiming.fov.enabled == true then
                                            circle.Visible = true
                                        else
                                            circle.Visible = false
                                        end
                                    end
                                )

                                spawn(
                                    function()
                                        circle.Color = aiming.fov.colour
                                    end
                                )

                                spawn(
                                    function()
                                        circle.Filled = aiming.fov.filled
                                    end
                                )

                                spawn(
                                    function()
                                        circle.Radius = aiming.fov.radius
                                    end
                                )

                                spawn(
                                    function()
                                        circle.Thickness = aiming.fov.thickness
                                    end
                                )

                                spawn(
                                    function()
                                        line.Thickness = aiming.tracers.thickness
                                    end
                                )

                                --- targetaim

                                spawn(
                                    function()
                                        if aiming.targetaim.autoprediction == true then
                                            local pingvalue =
                                                game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(

                                            )
                                            local split = string.split(pingvalue, "(")
                                            local ping = tonumber(split[1])
                                            -- u can change these (i stole them from .gg/sets)
                                            if ping > 150 then
                                                aiming.targetaim.prediction = 0
                                            elseif ping > 140 then
                                                aiming.targetaim.prediction = 0.165773
                                            elseif ping > 130 then
                                                aiming.targetaim.prediction = 0.1223333
                                            elseif ping > 120 then
                                                aiming.targetaim.prediction = 0.143765
                                            elseif ping > 110 then
                                                aiming.targetaim.prediction = 0.1455
                                            elseif ping > 100 then
                                                aiming.targetaim.prediction = 0.130340
                                            elseif ping > 90 then
                                                aiming.targetaim.prediction = 0.136
                                            elseif ping > 80 then
                                                aiming.targetaim.prediction = 0.1347
                                            elseif ping > 70 then
                                                aiming.targetaim.prediction = 0.119
                                            elseif ping > 60 then
                                                aiming.targetaim.prediction = 0.12731
                                            elseif ping > 50 then
                                                aiming.targetaim.prediction = 0.127668
                                            elseif ping > 40 then
                                                aiming.targetaim.prediction = 0.125
                                            end
                                        end
                                    end
                                )
                                spawn(
                                    function()
                                        if aiming.tracers.rainbow == true then
                                        else
                                            line.Color = aiming.tracers.colour
                                        end
                                    end
                                )

                                spawn(
                                    function()
                                        if
                                            aiming.targetaim.enabled and aiming.targetaim.targeting and
                                                aiming.tracers.enabled == true
                                         then
                                            if aiming.tracers.showprediction == false then
                                                local plrp =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players[targetplr].Character[aiming.targetaim.hitpart].Position
                                                )
                                                local headt =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.Head.Position
                                                )
                                                local torsot =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.UpperTorso.Position
                                                )
                                                local penist =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.LowerTorso.Position
                                                )
                                                local Gunt =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.RightHand.Position
                                                )
                                                local mouset =
                                                    CurrentCamera:WorldToViewportPoint(LocalMouse.Hit.Position)

                                                line.Visible = true

                                                if aiming.tracers.from == "Penis" then
                                                    line.From = Vector2.new(penist.X, penist.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Gun" then
                                                    line.From = Vector2.new(Gunt.X, Gunt.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Head" then
                                                    line.From = Vector2.new(headt.X, headt.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Torso" then
                                                    line.From = Vector2.new(torsot.X, torsot.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Cursor" then
                                                    line.From = Vector2.new(mouset.X, mouset.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end
                                            else
                                                local plrp =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players[targetplr].Character[aiming.targetaim.hitpart].Position +
                                                        (game.Players[targetplr].Character[aiming.targetaim.hitpart].Velocity *
                                                            aiming.targetaim.prediction)
                                                )
                                                local headt =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.Head.Position
                                                ) +
                                                    (game.Players[targetplr].Character.Head.Velocity *
                                                        aiming.targetaim.prediction)
                                                local torsot =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.UpperTorso.Position +
                                                        (game.Players[targetplr].Character.UpperTorso.Velocity *
                                                            aiming.targetaim.prediction)
                                                )
                                                local penist =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.LowerTorso.Position +
                                                        (game.Players[targetplr].Character.LowerTorso.Velocity *
                                                            aiming.targetaim.prediction)
                                                )
                                                local Gunt =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.RightHand.Position +
                                                        (game.Players[targetplr].Character.RightHand.Velocity *
                                                            aiming.targetaim.prediction)
                                                )
                                                local mouset =
                                                    CurrentCamera:WorldToViewportPoint(LocalMouse.Hit.Position)

                                                line.Visible = true

                                                if aiming.tracers.from == "Penis" then
                                                    line.From = Vector2.new(penist.X, penist.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Gun" then
                                                    line.From = Vector2.new(Gunt.X, Gunt.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Head" then
                                                    line.From = Vector2.new(headt.X, headt.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Torso" then
                                                    line.From = Vector2.new(torsot.X, torsot.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Cursor" then
                                                    line.From = Vector2.new(mouset.X, mouset.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end
                                            end
                                        else
                                            line.Visible = false
                                        end
                                    end
                                )
                                if
                                    aiming.od.realodko and aiming.targetaim.targeting and
                                        aiming.targetaim.enabled == true
                                 then
                                    if game.Players[targetplr].Character.Humanoid.health < 1 then
                                        game:GetService("ReplicatedStorage").MainEvent:FireServer(
                                            "Reload",
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA(
                                                "Tool"
                                            )
                                        )
                                    end
                                end
                                if
                                    aiming.od.unlockko and aiming.targetaim.targeting and
                                        aiming.targetaim.enabled == true
                                 then
                                    if game.Players[targetplr].Character.Humanoid.health < 1 then
                                        aiming.targetaim.targeting = false
                                        line.Visible = false
                                        aiming.targetaim.toggablexd = false
                                        CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                                        if aiming.visualization.mode == "Cylinder" then
                                            local vvv = game:GetService("Workspace").uwu4
                                            vvv:Destroy()
                                        end

                                        if aiming.visualization.mode == "Ball" then
                                            local vvv = game:GetService("Workspace").uwu
                                            vvv:Destroy()
                                        end

                                        if aiming.visualization.mode == "Ball2" then
                                            local vvv = game:GetService("Workspace").uwu2
                                            vvv:Destroy()
                                        end
                                        if aiming.visualization.mode == "Block" then
                                            local vvv = game:GetService("Workspace").uwu3
                                            vvv:Destroy()
                                        end
                                        if niggacum2 then
                                            LocalHL2.Parent = game.CoreGui
                                        end
                                    end
                                end
                                if aiming.od.tpko == true then
                                    if game.Players[targetplr].Character.Humanoid.health < 0.99 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            game.Players[targetplr].Character.LowerTorso.CFrame
                                    end
                                end

                                if
                                    aiming.targetaim.targeting == true and aiming.targetaim.enabled == true and
                                        aiming.orbit.enabled == true and
                                        aiming.orbit.visualization == true
                                 then
                                    Circle2222.Color = aiming.orbit.vc
                                    Circle2222.Visible = true
                                    Circle2222.Radius = aiming.orbit.distance
                                    Circle2222.Position = game.Players[targetplr].Character.HumanoidRootPart.Position
                                else
                                    Circle2222.Visible = false
                                end

                                if aiming.visualization.mode == "Circle" then
                                    if aiming.targetaim.targeting and aiming.targetaim.enabled == true then
                                        local narcan =
                                            CurrentCamera:WorldToViewportPoint(
                                            game.Players[targetplr].Character.HumanoidRootPart.Position
                                        )
                                        circlev.Position = Vector2.new(narcan.X, narcan.Y)
                                        circlev.Transparency = aiming.visualization.transparency
                                        circlev.Visible = true
                                    else
                                        circlev.Visible = false
                                    end
                                end
                                if aiming.visualization.mode == "Triangle" then
                                    if aiming.targetaim.targeting and aiming.targetaim.enabled == true then
                                        local narcan =
                                            CurrentCamera:WorldToViewportPoint(
                                            game.Players[targetplr].Character.HumanoidRootPart.Position
                                        )
                                        circlev2.Position = Vector2.new(narcan.X, narcan.Y)
                                        circlev2.Transparency = aiming.visualization.transparency
                                        circlev2.Visible = true
                                    else
                                        circlev2.Visible = false
                                    end
                                end
                                if
                                    aiming.targetaim.autoshoot and aiming.targetaim.targeting and
                                        aiming.targetaim.enabled == true
                                 then
                                    mouse1click()
                                end
                            end
                        )
                    end
                )

                -- shit auto stomp srry
                spawn(
                    function()
                        while task.wait() do
                            if aiming.targetaim.targeting and aiming.targetaim.enabled and aiming.od.stompko == true then
                                if game.Players[targetplr].Character.Humanoid.health < 7 then
                                    if aiming.od.stompko == true then
                                        spawn(
                                            function()
                                                wait(aiming.od.stomptime)
                                                local args = {
                                                    [1] = "Stomp"
                                                }

                                                game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
                                            end
                                        )
                                    end
                                end
                            end
                        end
                    end
                )
            end

            if antilockenabled then
                -- Anti lock Setion --
                local Anti = Window:CreateTab("Anti-Aim")

                ----UI
                local RunService = GetService.RunService
                local StarterGui = GetService.StarterGui

                -- Gui to Lua
                -- Version: 3.2

                -- Instances:

                local ForreXDD = Instance.new("ScreenGui")
                local FrameforreXD = Instance.new("Frame")
                local desyncingxd = Instance.new("TextLabel")
                local UICorner = Instance.new("UICorner")
                local UICorner_2 = Instance.new("UICorner")
                local nodesync = Instance.new("TextLabel")
                local UICorner_3 = Instance.new("UICorner")

                --Properties:

                ForreXDD.Name = "ForreXDD"
                ForreXDD.Parent = game.CoreGui

                FrameforreXD.Name = "FrameforreXD"
                FrameforreXD.Parent = ForreXDD
                FrameforreXD.Active = false
                FrameforreXD.Visible = false
                FrameforreXD.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
                FrameforreXD.BorderColor3 = Color3.fromRGB(255, 255, 255)
                FrameforreXD.Position = UDim2.new(0, 0, 0.310185194, 0)
                FrameforreXD.Size = UDim2.new(0, 170, 0, 58)

                desyncingxd.Name = "desyncingxd"
                desyncingxd.Parent = FrameforreXD
                desyncingxd.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                desyncingxd.Position = UDim2.new(5.96046448e-08, 0, 0, 0)
                desyncingxd.Size = UDim2.new(0, 170, 0, 58)
                desyncingxd.Font = Enum.Font.RobotoCondensed
                desyncingxd.Text = "Desyncing!"
                desyncingxd.TextColor3 = Color3.fromRGB(0, 0, 0)
                desyncingxd.TextScaled = true
                desyncingxd.Visible = false
                desyncingxd.TextSize = 14.000
                desyncingxd.TextWrapped = true

                UICorner.CornerRadius = UDim.new(0, 9)
                UICorner.Parent = desyncingxd

                UICorner_2.CornerRadius = UDim.new(0, 9)
                UICorner_2.Parent = FrameforreXD

                nodesync.Name = "nodesync"
                nodesync.Parent = FrameforreXD
                nodesync.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                nodesync.Position = UDim2.new(1.1920929e-07, 0, 0, 0)
                nodesync.Size = UDim2.new(0, 170, 0, 58)
                nodesync.Font = Enum.Font.RobotoCondensed
                nodesync.Text = "Not Desyncing!"
                nodesync.TextColor3 = Color3.fromRGB(0, 0, 0)
                nodesync.TextScaled = true
                nodesync.Visible = false
                nodesync.TextSize = 14.000
                nodesync.TextWrapped = true

                UICorner_3.CornerRadius = UDim.new(0, 9)
                UICorner_3.Parent = nodesync
                ----Ui

                local cframetpaa888 = Anti:CreateSector("Tp Desync", "Right")

                local enabledesynccframetp =
                    cframetpaa888:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        cframetpdesync = Boolean
                        if cframetpdesynctype == "LatestPos" then
                            posistiontype2 = lplr.Character.HumanoidRootPart.CFrame
                        end
                    end
                )

                enabledesynccframetp:AddKeybind()

                local visualizedesynccframetp =
                    cframetpaa888:AddToggle(
                    "Visualize",
                    false,
                    function(Boolean)
                        visualizemodellol = Boolean
                    end
                )
                visualizedesynccframetp:AddColorpicker(
                    Color3.fromRGB(0, 140, 175),
                    function(Color)
                        for i, v in pairs(r6_dummy:GetChildren()) do
                            if v:IsA("BasePart") then
                                v.Color = Color
                            end
                        end
                    end
                )

                cframetpaa888:AddSlider(
                    "Transparency",
                    0,
                    0.7,
                    1,
                    100,
                    function(Value)
                        for i, v in pairs(r6_dummy:GetChildren()) do
                            v.Transparency = v.Name == "HumanoidRootPart" and 1 or Value
                        end
                    end
                )

                cframetpaa888:AddDropdown(
                    "Material",
                    {
                        "Plastic",
                        "Concrete",
                        "Grass",
                        "Metal",
                        "WoodPlanks",
                        "ForceField",
                        "Glass",
                        "Neon",
                        "SmoothPlastic",
                        "Fabric",
                        "Brick"
                    },
                    "Neon",
                    false,
                    function(Value)
                        for i, v in pairs(r6_dummy:GetChildren()) do
                            v.Material = Value
                        end
                    end
                )

                local cframetptype =
                    cframetpaa888:AddDropdown(
                    "Type",
                    {
                        "Nothing",
                        "Random",
                        "LatestPos",
                        "Custom",
                        "MsQQ",
                        "lGfversion",
                        "Layvis",
                        "SwipeX",
                        "UndergroundTarget",
                        "Randomtarget",
                        "CustomTarget"
                    },
                    "Nothing",
                    false,
                    function(Value)
                        cframetpdesynctype = Value
                    end
                )

                cframetpaa888:AddLabel("-Custom-")

                local cframetppowerx =
                    cframetpaa888:AddSlider(
                    "Cframe_X",
                    -50,
                    0,
                    50,
                    1,
                    function(Value)
                        customcframetpx = Value
                    end
                )

                local cframetppowery =
                    cframetpaa888:AddSlider(
                    "Cframe_Y",
                    -50,
                    0,
                    50,
                    1,
                    function(Value)
                        customcframetpy = Value
                    end
                )

                local cframetppowerz =
                    cframetpaa888:AddSlider(
                    "Cframe_Z",
                    -50,
                    0,
                    50,
                    1,
                    function(Value)
                        customcframetpz = Value
                    end
                )

                if developermode == "True" then
                    cframetpaa888:AddLabel("-Angle-")

                    local cframetptype =
                        cframetpaa888:AddDropdown(
                        "Type",
                        {"Random", "Manual", "Nothing"},
                        "Nothing",
                        false,
                        function(Value)
                            canglelol = Value
                        end
                    )

                    cframetpaa888:AddSlider(
                        "Angle_X",
                        0,
                        0,
                        10,
                        10,
                        function(Value)
                            canglelolx = Value
                        end
                    )

                    cframetpaa888:AddSlider(
                        "Angle_Y",
                        0,
                        0,
                        10,
                        10,
                        function(Value)
                            cangleloly = Value
                        end
                    )

                    cframetpaa888:AddSlider(
                        "Angle_Z",
                        0,
                        0,
                        10,
                        10,
                        function(Value)
                            canglelolz = Value
                        end
                    )

                    cframetpaa888:AddLabel("-Random-")

                    local cframetppowerx =
                        cframetpaa888:AddSlider(
                        "Random Range",
                        0,
                        10,
                        100,
                        1,
                        function(Value)
                            randomtpxdistance = Value
                        end
                    )

                    cframetpaa888:AddLabel("-MsQQ-")

                    cframetpaa888:AddSlider(
                        "MsQQ Range",
                        0,
                        5,
                        50,
                        1,
                        function(Value)
                            Msqqrange = Value
                        end
                    )

                    cframetpaa888:AddLabel("-SwipeX-")

                    cframetpaa888:AddSlider(
                        "SwipeX Range",
                        0,
                        5,
                        50,
                        1,
                        function(Value)
                            swiperange = Value
                        end
                    )
                end

                local hitpartdesync = Anti:CreateSector("HitPart Desync", "left")
                hitpartdesync:AddLabel("-ON BETA-")
                -- Gui to Lua
                -- Version: 3.2

                -- Instances:

                local guihitpart = Instance.new("ScreenGui")
                local hitpartFrame = Instance.new("Frame")
                local desyncing2 = Instance.new("TextLabel")
                local notdesyncing2 = Instance.new("TextLabel")

                --Properties:

                guihitpart.Name = "guihitpart"
                guihitpart.Parent = game.CoreGui
                guihitpart.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

                hitpartFrame.Name = "hitpartFrame"
                hitpartFrame.Parent = guihitpart
                hitpartFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                hitpartFrame.BackgroundTransparency = 1.000
                hitpartFrame.Position = UDim2.new(0, 0, 0.577160478, 0)
                hitpartFrame.Size = UDim2.new(0, 173, 0, 50)

                desyncing2.Name = "desyncing2"
                desyncing2.Parent = hitpartFrame
                desyncing2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                desyncing2.BackgroundTransparency = 1.000
                desyncing2.Size = UDim2.new(0, 173, 0, 50)
                desyncing2.Visible = false
                desyncing2.Font = Enum.Font.Oswald
                desyncing2.Text = "Desyncing..."
                desyncing2.TextColor3 = Color3.fromRGB(0, 255, 0)
                desyncing2.TextScaled = true
                desyncing2.TextSize = 14.000
                desyncing2.TextStrokeTransparency = 0.000
                desyncing2.TextWrapped = true

                notdesyncing2.Name = "notdesyncing2"
                notdesyncing2.Parent = hitpartFrame
                notdesyncing2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                notdesyncing2.BackgroundTransparency = 1.000
                notdesyncing2.Size = UDim2.new(0, 173, 0, 50)
                notdesyncing2.Visible = false
                notdesyncing2.Font = Enum.Font.Oswald
                notdesyncing2.Text = "Not Desyncing..."
                notdesyncing2.TextColor3 = Color3.fromRGB(255, 0, 0)
                notdesyncing2.TextScaled = true
                notdesyncing2.TextSize = 14.000
                notdesyncing2.TextStrokeTransparency = 0.000
                notdesyncing2.TextWrapped = true

                local enablehitpartdesync = false
                local enablehitpartdesync2 = false
                local spinpartdesync = "Nothing"
                local walkwithdesync = false
                local hitpartuitext = false
                local Powergitpart = 10000

                local enablehitpartdes =
                    hitpartdesync:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        enablehitpartdesync = Boolean
                        enablehitpartdesync2 = Boolean
                        if hitpartuitext == true and enablehitpartdesync == true then
                            desyncing2.Visible = true
                            notdesyncing2.Visible = false
                        end
                        if hitpartuitext == true and enablehitpartdesync == false then
                            desyncing2.Visible = false
                            notdesyncing2.Visible = true
                        end
                    end
                )
                enablehitpartdes:AddKeybind()
                local posistionversion = "Normal"
                local posistiontype =
                    hitpartdesync:AddDropdown(
                    "Posistion Type",
                    {"Random", "Custom", "Normal", "LookVector"},
                    "Normal",
                    false,
                    function(Value)
                        posistionversion = Value
                    end
                )
                local randomposistionX = 0
                local randomposistionY = 0
                local randomposistionZ = 0
                local customposistionX = 0
                local customposistionY = 0
                local customposistionZ = 0

                if developermode == "True" then
                    hitpartdesync:AddLabel("-Posistion-")
                    hitpartdesync:AddLabel(" ")
                    hitpartdesync:AddLabel("-Random Posistion-")
                    local randomposistionXslider =
                        hitpartdesync:AddSlider(
                        "Random Reach_X",
                        0,
                        0,
                        100,
                        1,
                        function(Value)
                            randomposistionX = Value
                        end
                    )
                    local randomposistionYslider =
                        hitpartdesync:AddSlider(
                        "Random Reach_Y",
                        0,
                        0,
                        100,
                        1,
                        function(Value)
                            randomposistionY = Value
                        end
                    )

                    local randomposistionZslider =
                        hitpartdesync:AddSlider(
                        "Random Reach_Z",
                        0,
                        0,
                        100,
                        1,
                        function(Value)
                            randomposistionZ = Value
                        end
                    )

                    hitpartdesync:AddLabel("-Custom Posistion-")
                    local customposistionXslider =
                        hitpartdesync:AddSlider(
                        "Custom Reach_X",
                        -100,
                        0,
                        100,
                        1,
                        function(Value)
                            customposistionX = Value
                        end
                    )
                    local customposistionYslider =
                        hitpartdesync:AddSlider(
                        "Custom Reach_Y",
                        -100,
                        0,
                        100,
                        1,
                        function(Value)
                            customposistionY = Value
                        end
                    )

                    local customposistionZslider =
                        hitpartdesync:AddSlider(
                        "Custom Reach_Z",
                        -100,
                        0,
                        100,
                        1,
                        function(Value)
                            customposistionZ = Value
                        end
                    )
                end

                hitpartdesync:AddToggle(
                    "Ui Text",
                    false,
                    function(Boolean)
                        hitpartuitext = Boolean
                        if hitpartuitext == true then
                            if enablehitpartdesync == true then
                                desyncing2.Visible = true
                                notdesyncing2.Visible = false
                            else
                                desyncing2.Visible = false
                                notdesyncing2.Visible = true
                            end
                        end
                        if hitpartuitext == false then
                            desyncing2.Visible = false
                            notdesyncing2.Visible = false
                        end
                    end
                )

                if developermode == "True" then
                    hitpartdesync:AddToggle(
                        "Enable Walk",
                        false,
                        function(Boolean)
                            walkwithdesync = Boolean
                        end
                    )

                    local UserInputService = game:GetService("UserInputService")

                    local Keys = {
                        ["W"] = Enum.KeyCode.W,
                        ["A"] = Enum.KeyCode.A,
                        ["S"] = Enum.KeyCode.S,
                        ["D"] = Enum.KeyCode.D
                    }
                    local Active = false
                    local CurrentKey

                    UserInputService.InputBegan:Connect(
                        function(input, gameProcessed)
                            if enablehitpartdesync2 == true and walkwithdesync then
                                for a, b in pairs(Keys) do
                                    if UserInputService:IsKeyDown(b) then
                                        repeat
                                            enablehitpartdesync = false
                                            if hitpartuitext == true then
                                                desyncing2.Visible = false
                                                notdesyncing2.Visible = true
                                            end
                                            task.wait()
                                        until game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity.magnitude <
                                            0.1
                                        enablehitpartdesync = true
                                        if hitpartuitext == true then
                                            desyncing2.Visible = true
                                            notdesyncing2.Visible = false
                                        end
                                        CurrentKey = b
                                    end
                                end
                            end
                        end
                    )
                end

                function isAlive(player)
                    local alive = false
                    if player ~= nil and player.Parent == game.Players and player.Character ~= nil then
                        if
                            player.Character:FindFirstChild("HumanoidRootPart") and
                                player.Character:FindFirstChild("Humanoid") ~= nil and
                                player.Character.Humanoid.Health > 0 and
                                player.Character:FindFirstChild("Head")
                         then
                            alive = true
                        end
                    end

                    return alive
                end

                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        if isAlive(lplr) then
                            if lplr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                                task.wait()
                            else
                                if enablehitpartdesync then
                                    if desync_stuff["cfr"] == nil then
                                        desync_stuff["cfr"] = lplr.Character.HumanoidRootPart.CFrame
                                    end
                                    desync_stuff["vel"] = lplr.Character.HumanoidRootPart.Velocity
                                    if spinpartdesync == "Nothing" then
                                        lplr.Character.HumanoidRootPart.CFrame =
                                            desync_stuff["cfr"] * CFrame.Angles(0, 0, 0)
                                    elseif spinpartdesync == "Spin" then
                                        lplr.Character.HumanoidRootPart.CFrame =
                                            desync_stuff["cfr"] * CFrame.Angles(0, (tick() / 0.02) % (math.pi * 2), 0)
                                    elseif spinpartdesync == "Tiny Jitter" then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            desync_stuff["cfr"] *
                                            CFrame.Angles(0, (tick() / 0.02) % (math.pi * 0.005), 0)
                                    elseif spinpartdesync == "Random" then
                                        lplr.Character.HumanoidRootPart.CFrame =
                                            desync_stuff["cfr"] *
                                            CFrame.Angles(
                                                math.random(-10, 10),
                                                math.random(-10, 10),
                                                math.random(-10, 10)
                                            )
                                    elseif spinpartdesync == "SlowSpin" then
                                        lplr.Character.HumanoidRootPart.CFrame =
                                            desync_stuff["cfr"] * CFrame.Angles(0, (tick() / 5) % (math.pi * 2), 0)
                                    elseif spinpartdesync == "Jitter" then
                                        lplr.Character.HumanoidRootPart.CFrame =
                                            desync_stuff["cfr"] * CFrame.Angles(0, math.random(-1000, 1000) / 1000, 0)
                                    end
                                    if posistionversion == "Normal" then
                                        lplr.Character.HumanoidRootPart.Velocity =
                                            Vector3.new(1, 1, 1) * -(Powergitpart)
                                    elseif posistionversion == "Random" then
                                        lplr.Character.HumanoidRootPart.Velocity =
                                            Vector3.new(
                                            math.random(-randomposistionX, randomposistionX),
                                            math.random(-randomposistionY, randomposistionY),
                                            math.random(-randomposistionZ, randomposistionZ)
                                        ) * -(Powergitpart)
                                    elseif posistionversion == "Custom" then
                                        lplr.Character.HumanoidRootPart.Velocity =
                                            Vector3.new(customposistionX, customposistionY, customposistionZ) *
                                            -(Powergitpart)
                                    elseif posistionversion == "LookVector" then
                                        lplr.Character.HumanoidRootPart.Velocity =
                                            lplr.Character.HumanoidRootPart.CFrame.lookVector * Powergitpart
                                    end

                                    game:GetService("RunService").RenderStepped:Wait()

                                    lplr.Character.HumanoidRootPart.Velocity = desync_stuff["vel"]
                                    if spinpartdesync == "Random" then
                                        lplr.Character.HumanoidRootPart.CFrame = desync_stuff["cfr"]
                                    end
                                else
                                    desync_stuff["cfr"] = nil
                                end
                            end
                        else
                            desync_stuff["cfr"] = nil
                        end
                    end
                )

                local oldIndex

                oldIndex =
                    hookmetamethod(
                    game,
                    "__index",
                    newcclosure(
                        function(self, key)
                            if not velocitywalk == true or cframetpdesync == true then
                                if not checkcaller() then
                                    if
                                        key == "CFrame" and enablehitpartdesync and lplr.Character and
                                            lplr.Character:FindFirstChild("HumanoidRootPart") and
                                            lplr.Character:FindFirstChildOfClass("Humanoid") and
                                            lplr.Character:FindFirstChildOfClass("Humanoid").Health > 0
                                     then
                                        if self == lplr.Character.HumanoidRootPart then
                                            return desync_stuff["cfr"] or CFrame.new()
                                        elseif self == lplr.Character.Head then
                                            return desync_stuff["cfr"] and
                                                desync_stuff["cfr"] +
                                                    Vector3.new(0, lplr.Character.HumanoidRootPart.Size / 2 + 0.5, 0) or
                                                CFrame.new()
                                        end
                                    end
                                end
                            end
                            return oldIndex(self, key)
                        end
                    )
                )

                local spinpart =
                    hitpartdesync:AddDropdown(
                    "Refresh Type",
                    {"Spin", "SlowSpin", "Tiny Jitter", "Random", "Jitter", "Nothing"},
                    "Nothing",
                    false,
                    function(Value)
                        spinpartdesync = Value
                    end
                )

                if developermode == "True" then
                    local powerveldesync =
                        hitpartdesync:AddSlider(
                        "Power",
                        1000,
                        100000,
                        100000,
                        0.01,
                        function(Value)
                            Powergitpart = Value
                        end
                    )
                end

                local antilock63 = Anti:CreateSector("Velocity Spoofer Desync", "left")
                local oldVelocityxx = 0
                local oldVelocityzz = 0
                local oldVelocityyy = 0
                local randomxx = 0
                local randomzz = 0
                local randomyy = 0
                local randomangle = 180
                --// Desync_Source
                function RandomNumberRange(a)
                    return math.random(-a * 100, a * 100) / 100
                end

                function RandomVectorRange(a, b, c)
                    return Vector3.new(RandomNumberRange(a), RandomNumberRange(b), RandomNumberRange(c))
                end
                --// Services
                checkcaller = checkcaller
                newcclosure = newcclosure
                hookmetamethod = hookmetamethod
                local Powervel = 16384
                local velocitywalk = false
                local spinXD = false
                local velocitytype = "Custom"
                local notifyvel = false
                local Velmultiplier = 1.5
                local Notificationstype2 = "Roblox"
                local BruhXD = game:GetService("RunService")
                local LocalPlayer = game:GetService("Players").LocalPlayer
                local Bullshit = LocalPlayer:GetMouse()

                local velocityball = Instance.new("Part", game.Workspace)
                velocityball.Name = "velocityballXDD"
                velocityball.Anchored = true
                velocityball.CanCollide = false
                velocityball.Transparency = 1
                velocityball.Parent = game.Workspace
                velocityball.Shape = Enum.PartType.Ball
                velocityball.Size = Vector3.new(5, 5, 5)
                velocityball.Color = Color3.fromRGB(0, 140, 175)
                velocityball.Material = "ForceField"

                local enablevelo =
                    antilock63:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        velocitywalk = Boolean

                        if velocitywalk == true and notifyvel == true and Notificationstype2 == "Meff" then
                            NotifyLib.prompt("Choobian ", "Enabled", 0.5)
                        end
                        if velocitywalk == false and notifyvel == true and Notificationstype2 == "Meff" then
                            NotifyLib.prompt("Choobian ", "Disabled", 0.5)
                        end
                        if velocitywalk == true and notifyvel == true and Notificationstype2 == "Roblox" then
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                    Title = "Choobian ",
                                    Text = "Enabled",
                                    Icon = "rbxassetid://11394475200",
                                    Duration = 1
                                }
                            )
                        end
                        if velocitywalk == false and notifyvel == true and Notificationstype2 == "Roblox" then
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                    Title = "Choobian ",
                                    Text = "Disabled",
                                    Icon = "rbxassetid://11394475200",
                                    Duration = 1
                                }
                            )
                        end
                    end
                )

                enablevelo:AddKeybind()

                local DesyncTypes = {}
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        if velocitywalk == true then
                            DesyncTypes[1] = LocalPlayer.Character.HumanoidRootPart.CFrame
                            DesyncTypes[2] = LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity
                            if spinXD == true then
                                local SpoofThis = LocalPlayer.Character.HumanoidRootPart.CFrame

                                SpoofThis = SpoofThis * CFrame.new(Vector3.new(0, 0, 0))
                                SpoofThis =
                                    SpoofThis *
                                    CFrame.Angles(
                                        math.rad(RandomNumberRange(randomangle)),
                                        math.rad(RandomNumberRange(randomangle)),
                                        math.rad(RandomNumberRange(randomangle))
                                    )

                                LocalPlayer.Character.HumanoidRootPart.CFrame = SpoofThis
                            end

                            if velocitytype == "Custom" then
                                LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity =
                                    Vector3.new(oldVelocityxx, oldVelocityyy, oldVelocityzz) * Powervel
                            elseif velocitytype == "NoVelocity" then
                                LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(1, 1, 1) * 0
                            elseif velocitytype == "LookVector" then
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity =
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *
                                    Powervel
                            elseif velocitytype == "Random" then
                                LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity =
                                    Vector3.new(randomxx, randomyy, randomzz) * Powervel
                            elseif velocitytype == "Underground" then
                                LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity =
                                    Vector3.new(0, -10, 0) * Powervel
                            elseif velocitytype == "Up" then
                                LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity =
                                    Vector3.new(0, 10, 0) * Powervel
                            elseif velocitytype == "MultiPlier" then
                                local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                                hrp.Velocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z) * (Velmultiplier)
                            end

                            game:GetService("RunService").RenderStepped:Wait()

                            LocalPlayer.Character.HumanoidRootPart.CFrame = DesyncTypes[1]
                            LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = DesyncTypes[2]
                        end
                    end
                )

                --// Hook_CFrame
                local XDDDDDD = nil
                XDDDDDD =
                    hookmetamethod(
                    game,
                    "__index",
                    newcclosure(
                        function(self, key)
                            if not cframetpdesync == true or enablehitpartdesync == true then
                                if not checkcaller() then
                                    if
                                        key == "CFrame" and velocitywalk == true and velocitytype == "Custom" and
                                            LocalPlayer.Character and
                                            LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                            LocalPlayer.Character:FindFirstChild("Humanoid") and
                                            LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0
                                     then
                                        if self == LocalPlayer.Character.HumanoidRootPart then
                                            return DesyncTypes[1] or CFrame.new()
                                        elseif self == LocalPlayer.Character.Head then
                                            return DesyncTypes[1] and
                                                DesyncTypes[1] +
                                                    Vector3.new(
                                                        0,
                                                        LocalPlayer.Character.HumanoidRootPart.Size / 2 + 0.5,
                                                        0
                                                    ) or
                                                CFrame.new()
                                        end
                                    end
                                end
                            end
                            return XDDDDDD(self, key)
                        end
                    )
                )

                RunService.RenderStepped:Connect(
                    function()
                        if velocitywalk == true and velocitytype == "Random" then
                            while velocitywalk == true do
                                randomxx = math.random(-10, 10)
                                randomyy = math.random(-10, 10)
                                randomzz = math.random(-10, 10)
                                task.Wait()
                            end
                        end
                    end
                )

                local niggacumrefreshrate2 = 0.1
                local velocitynotifi =
                    antilock63:AddToggle(
                    "Notifications",
                    false,
                    function(Boolean)
                        notifyvel = Boolean
                    end
                )
                local notificationtyp22 =
                    antilock63:AddDropdown(
                    "Notifications Type",
                    {"Roblox", "Meff"},
                    "Roblox",
                    false,
                    function(Value)
                        Notificationstype2 = Value
                    end
                )
                local uitextdes = false
                local uitextable =
                    antilock63:AddToggle(
                    "Ui Text",
                    false,
                    function(Boolean)
                        uitextdes = Boolean
                        if uitextdes == true then
                            FrameforreXD.Visible = true
                        end
                        if uitextdes == false then
                            FrameforreXD.Visible = false
                        end
                        while uitextdes == true do
                            if velocitywalk == true and uitextdes == true then
                                desyncingxd.Visible = true
                                nodesync.Visible = false
                            end
                            if velocitywalk == false and uitextdes == true then
                                desyncingxd.Visible = false
                                nodesync.Visible = true
                            end
                            task.wait()
                        end
                    end
                )
                local velocitytypetype =
                    antilock63:AddDropdown(
                    "Type",
                    {"Custom", "MultiPlier", "NoVelocity", "Random", "Underground", "Up", "LookVector"},
                    "Custom",
                    false,
                    function(Value)
                        velocitytype = Value
                    end
                )

                local powervel2 =
                    antilock63:AddSlider(
                    "Power",
                    0,
                    10,
                    100,
                    1,
                    function(Value)
                        Powervel = Value
                    end
                )

                antilock63:AddLabel("-Custom-")
                local velocityxrandom2 =
                    antilock63:AddSlider(
                    "Velocity_X",
                    -100,
                    0,
                    100,
                    1,
                    function(Value)
                        oldVelocityxx = Value
                    end
                )
                local velocityyrandom2 =
                    antilock63:AddSlider(
                    "Velocity_Y",
                    -100,
                    0,
                    100,
                    1,
                    function(Value)
                        oldVelocityyy = Value
                    end
                )
                local velocityzrandom2 =
                    antilock63:AddSlider(
                    "Velocity_Z",
                    -100,
                    0,
                    100,
                    1,
                    function(Value)
                        oldVelocityzz = Value
                    end
                )

                if developermode == "True" then
                    antilock63:AddLabel("-Velocity MultiPlier-")

                    local multipliertype =
                        antilock63:AddSlider(
                        "MultiPlier",
                        1,
                        1.5,
                        10,
                        10,
                        function(Value)
                            Velmultiplier = Value
                        end
                    )

                    antilock63:AddLabel("-Blatant-")
                    local velocityxrandom = false
                    local randomdxx =
                        antilock63:AddToggle(
                        "Random_X",
                        false,
                        function(Boolean)
                            velocityxrandom = Boolean
                            while velocityxrandom == true do
                                velocityxrandom2:Set(math.random(-10, 10))
                                task.wait(niggacumrefreshrate2)
                            end
                            if velocityxrandom == false then
                                velocityxrandom2:Set(0)
                                task.wait(0.1)
                            end
                        end
                    )
                    local velocityyrandom = false
                    local randomdyy =
                        antilock63:AddToggle(
                        "Random_Y",
                        false,
                        function(Boolean)
                            velocityyrandom = Boolean
                            while velocityyrandom == true do
                                velocityyrandom2:Set(math.random(-10, 10))
                                task.wait(niggacumrefreshrate2)
                            end
                            if velocityyrandom == false then
                                velocityyrandom2:Set(0)
                                task.wait(0.1)
                            end
                        end
                    )
                    local velocityzrandom = false
                    local randomdzz =
                        antilock63:AddToggle(
                        "Random_Z",
                        false,
                        function(Boolean)
                            velocityzrandom = Boolean
                            while velocityzrandom == true do
                                velocityzrandom2:Set(math.random(-10, 10))
                                task.wait(niggacumrefreshrate2)
                            end
                            if velocityzrandom == false then
                                velocityzrandom2:Set(0)
                                task.wait(0.1)
                            end
                        end
                    )
                    local powervel2toggle = false
                    local randompowerr =
                        antilock63:AddToggle(
                        "Random power",
                        false,
                        function(Boolean)
                            powervel2toggle = Boolean
                            while powervel2toggle == true do
                                powervel2:Set(math.random(10, 1000))
                                task.wait(niggacumrefreshrate2)
                            end
                            if powervel2toggle == false then
                                powervel2:Set(10)
                                task.wait(0.1)
                            end
                        end
                    )
                    local velrefreshh =
                        antilock63:AddSlider(
                        "Refresh Rate",
                        0,
                        0.1,
                        2,
                        100,
                        function(Value)
                            niggacumrefreshrate2 = Value
                        end
                    )

                    antilock63:AddLabel("-Blatant2-")

                    local nocolisionsaa = false
                    local nocollisionsvel =
                        antilock63:AddToggle(
                        "No Collisions",
                        false,
                        function(Boolean)
                            nocolisionsaa = Boolean
                            if velocitywalk == true and nocolisionsaa == true then
                                game.Players.LocalPlayer.Character.Head.CanCollide = false
                                game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
                                game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                            end
                            if velocitywalk == false and nocolisionsaa == false then
                                game.Players.LocalPlayer.Character.Head.CanCollide = true
                                game.Players.LocalPlayer.Character.UpperTorso.CanCollide = true
                                game.Players.LocalPlayer.Character.LowerTorso.CanCollide = true
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
                            end
                        end
                    )
                end

                local LegitAntiAimSector = Anti:CreateSector("Legit Anti Aim", "Right")

                local freezeaa3 =
                    LegitAntiAimSector:AddToggle(
                    "Freeze AA",
                    false,
                    function(Boolean)
                        getgenv().FreezeAA2 = Boolean
                        local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        while getgenv().FreezeAA2 == true do
                            task.wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(Position))
                        end
                    end
                )

                freezeaa3:AddKeybind()

                local BlatantAntiAimSector = Anti:CreateSector("Angle Changer", "Right")
                local niggacumrefreshrate = 0.1
                local AntiAimToggle =
                    BlatantAntiAimSector:AddToggle(
                    "Blatant Enabled",
                    false,
                    function(State)
                        meffsettings.Blatant.BlatantAA.Enabled = State
                    end
                )

                AntiAimToggle:AddKeybind()
                local autorottatable =
                    BlatantAntiAimSector:AddToggle(
                    "No Auto Rotate",
                    false,
                    function(Boolean)
                        meffsettings.Blatant.BlatantAA.NoAutoRotate = Boolean
                    end
                )
                local jitterypespin =
                    BlatantAntiAimSector:AddDropdown(
                    "Anti Aim Type",
                    {"Jitter", "Fake Desync", "Spin"},
                    "Jitter",
                    false,
                    function(Value)
                        meffsettings.Blatant.BlatantAA.AntiAimType = Value
                    end
                )

                local antiaimspeedxd =
                    BlatantAntiAimSector:AddSlider(
                    "Anti Aim Speed",
                    0,
                    100,
                    300,
                    1,
                    function(Value)
                        meffsettings.Blatant.BlatantAA.AntiAimSpeed = Value
                    end
                )

                local jitteranglexd =
                    BlatantAntiAimSector:AddSlider(
                    "Jitter Angle",
                    0,
                    180,
                    360,
                    1,
                    function(Value)
                        meffsettings.Blatant.BlatantAA.JitterAngle = Value
                    end
                )

                local randomanglespeed = false
                local randomangleseed =
                    BlatantAntiAimSector:AddToggle(
                    "Random Angle",
                    false,
                    function(Boolean)
                        randomanglespeed = Boolean
                        while randomanglespeed == true do
                            jitteranglexd:Set(math.random(10, 360))
                            task.wait(niggacumrefreshrate)
                        end
                        if randomanglespeed == false then
                            jitteranglexd:Set(0)
                        end
                    end
                )

                local randomanglespeed2 = false
                local randomspeedseedable =
                    BlatantAntiAimSector:AddToggle(
                    "Random speed",
                    false,
                    function(Boolean)
                        randomanglespeed2 = Boolean
                        while randomanglespeed2 == true do
                            antiaimspeedxd:Set(math.random(10, 300))
                            task.wait(niggacumrefreshrate)
                        end
                        if randomanglespeed2 == false then
                            antiaimspeedxd:Set(0)
                        end
                    end
                )

                local refreshspinrate =
                    BlatantAntiAimSector:AddSlider(
                    "Refresh Rate",
                    0,
                    0.1,
                    1,
                    100,
                    function(Value)
                        niggacumrefreshrate = Value
                    end
                )

                local BlatantAntiAimSector9 = Anti:CreateSector("Fake Animations", "Right")

                local laydownbind =
                    BlatantAntiAimSector9:AddToggle(
                    "Lay",
                    false,
                    function(Boolean)
                        if Boolean then
                            _G.Save1 = game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId
                            _G.Save2 = game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId
                            _G.Save3 = game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId
                            _G.Save4 = game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId
                            _G.Save5 = game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId
                            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                                "http://www.roblox.com/asset/?id=3152378852"
                            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=3152378852"
                            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=3152378852"
                            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=3152378852"
                            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=3152378852"
                        else
                            if _G.Save1 and _G.Save2 and _G.Save3 and _G.Save4 and _G.Save5 then
                                game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = _G.Save1
                                game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = _G.Save2
                                game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = _G.Save3
                                game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = _G.Save4
                                game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = _G.Save5
                            end
                        end
                    end
                )

                local bendanimax =
                    BlatantAntiAimSector9:AddToggle(
                    "Bend",
                    false,
                    function(Boolean)
                        if Boolean then
                            _G.Save1 = game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId
                            _G.Save2 = game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId
                            _G.Save3 = game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId
                            _G.Save4 = game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId
                            _G.Save5 = game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId
                            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                                "http://www.roblox.com/asset/?id=696096087"
                            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=696096087"
                            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=696096087"
                            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=696096087"
                            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=696096087"
                        else
                            if _G.Save1 and _G.Save2 and _G.Save3 and _G.Save4 and _G.Save5 then
                                game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = _G.Save1
                                game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = _G.Save2
                                game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = _G.Save3
                                game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = _G.Save4
                                game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = _G.Save5
                            end
                        end
                    end
                )

                local noanimati =
                    BlatantAntiAimSector9:AddToggle(
                    "No Animation",
                    false,
                    function(Boolean)
                        if Boolean then
                            _G.Save1 = game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId
                            _G.Save2 = game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId
                            _G.Save3 = game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId
                            _G.Save4 = game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId
                            _G.Save5 = game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId
                            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                                "http://www.roblox.com/asset/?id=0"
                            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=0"
                            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=0"
                            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=0"
                            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                                "http://www.roblox.com/asset/?id=0"
                        else
                            if _G.Save1 and _G.Save2 and _G.Save3 and _G.Save4 and _G.Save5 then
                                game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = _G.Save1
                                game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = _G.Save2
                                game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = _G.Save3
                                game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = _G.Save4
                                game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = _G.Save5
                            end
                        end
                    end
                )
            end
            --misc

            if miscenabled then
                local Misc3 = Window:CreateTab("Player")

                local fard3 = Misc3:CreateSector("Grip Editor", "left")

                getgenv().EnableGrip = false
                getgenv().EnableGripFront = 10
                getgenv().EnableGripSide = 10
                getgenv().EnableGripHeight = 10

                local gripkeybind =
                    fard3:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        getgenv().EnableGrip = Boolean
                        while getgenv().EnableGrip do
                            game:GetService("RunService").Stepped:wait()
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.GripPos = Vector3.new(-EnableGripSide, -EnableGripHeight, EnableGripFront)
                        end

                        if getgenv().EnableGrip == false then
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.GripPos = Vector3.new(-0, -0, 0)
                        end
                    end
                )

                gripkeybind:AddKeybind()

                local gripheightxxx =
                    fard3:AddSlider(
                    "Grip Height",
                    -100,
                    0,
                    100,
                    1,
                    function(Value)
                        getgenv().EnableGripHeight = Value
                    end
                )

                local gripsidexxx =
                    fard3:AddSlider(
                    "Grip Side",
                    -100,
                    0,
                    100,
                    1,
                    function(Value)
                        getgenv().EnableGripSide = Value
                    end
                )

                local gripfrontxxx =
                    fard3:AddSlider(
                    "Grip front",
                    -100,
                    0,
                    100,
                    1,
                    function(Value)
                        getgenv().EnableGripFront = Value
                    end
                )

                local faggotporn = true
                local randomsize = 7

                local ramdongripkeybind =
                    fard3:AddToggle(
                    "Random Position",
                    false,
                    function(Boolean)
                        faggotporn = Boolean
                        local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                        while faggotporn == true do
                            repeat
                                wait()
                            until game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            game:GetService("RunService").Stepped:wait()
                            niggertool.GripPos =
                                Vector3.new(
                                math.random(-randomsize, randomsize),
                                math.random(-randomsize, randomsize),
                                math.random(-randomsize, randomsize)
                            )
                            task.wait()
                        end

                        if faggotporn == false then
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.GripPos = Vector3.new(0, 0, 0)
                        end
                    end
                )

                ramdongripkeybind:AddKeybind()

                fard3:AddSlider(
                    "Range",
                    1,
                    0,
                    50,
                    10,
                    function(Value)
                        randomsize = Value
                    end
                )

                local fard3 = Misc3:CreateSector("Gun Size Editor", "left")

                getgenv().EnableGrip2 = false
                getgenv().EnableGripFront2 = 10
                getgenv().EnableGripSide2 = 10
                getgenv().EnableGripHeight2 = 10

                local gripkeybind2 =
                    fard3:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        getgenv().EnableGrip2 = Boolean
                        while getgenv().EnableGrip2 do
                            game:GetService("RunService").Stepped:wait()
                            local niggertool2 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool2.Handle.Size = Vector3.new(EnableGripSide2, EnableGripHeight2, EnableGripFront2)
                        end
                        if getgenv().EnableGrip == false then
                            local niggertool2 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool2.Handle.Size = Vector3.new(1, 1, 1)
                        end
                    end
                )

                gripkeybind2:AddKeybind()

                local gripheightxxxv2 =
                    fard3:AddSlider(
                    "Size Height",
                    0,
                    0,
                    100,
                    1,
                    function(Value)
                        getgenv().EnableGripHeight2 = Value
                    end
                )

                local gripsidexxx2 =
                    fard3:AddSlider(
                    "Size Side",
                    0,
                    0,
                    100,
                    1,
                    function(Value)
                        getgenv().EnableGripSide2 = Value
                    end
                )

                local gripfrontxxxv2 =
                    fard3:AddSlider(
                    "Size front",
                    0,
                    0,
                    100,
                    1,
                    function(Value)
                        getgenv().EnableGripFront2 = Value
                    end
                )

                local fard3xdd = Misc3:CreateSector("Fly", "right")
                local forregod = false
                local flyspeed = 1 * 50

                local flykeybind =
                    fard3xdd:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        forregod = Boolean
                        if forregod == true then
                            FlyLoop =
                                game:GetService("RunService").Stepped:Connect(
                                function()
                                    spawn(
                                        function()
                                            pcall(
                                                function()
                                                    local speed = flyspeed
                                                    local velocity = Vector3.new(0, 1.2, 0)
                                                    local UserInputService = game:GetService("UserInputService")

                                                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                                        velocity =
                                                            velocity +
                                                            (workspace.CurrentCamera.CoordinateFrame.lookVector * speed)
                                                    end
                                                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                                        velocity =
                                                            velocity +
                                                            (workspace.CurrentCamera.CoordinateFrame.rightVector *
                                                                -speed)
                                                    end
                                                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                                        velocity =
                                                            velocity +
                                                            (workspace.CurrentCamera.CoordinateFrame.lookVector * -speed)
                                                    end
                                                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                                        velocity =
                                                            velocity +
                                                            (workspace.CurrentCamera.CoordinateFrame.rightVector * speed)
                                                    end

                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                                                        velocity
                                                    game.Players.LocalPlayer.Character.Humanoid:ChangeState("Freefall")
                                                end
                                            )
                                        end
                                    )
                                end
                            )
                        elseif forregod == false and FlyLoop then
                            FlyLoop:Disconnect()
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Landing")
                        end
                    end
                )

                flykeybind:AddKeybind()

                fard3xdd:AddSlider(
                    "Fly Speed",
                    0,
                    1,
                    10,
                    1,
                    function(Value)
                        flyspeed = Value * 50
                    end
                )

                local Trashtalkable = Misc3:CreateSector("Auto Message", "left")
                _G.EnableTrashTalk = false
                getgenv().Customtypertype = "TrashTalk"
                getgenv().words = {
                    "你是垃圾，菜鸟可以做得更好。",
                    "imagine dying 😅😅😅 LLLL",
                    "Oops i forgot you were there, oh wait you actually dont exist anyways.",
                    "ez ez you got clapped by a low level haha!",
                    "🤓: you cant just exploit in here!!111!!111 its illegal!!!!",
                    "why are you dying to me bro fr fr",
                    "clapped by Choobian  user :skull:",
                    "bro got clapped lol",
                    "🤓: imagine being fatherless'  where are yours then go check 😁😁😁",
                    "sorry did my target aim hit you? if so then youre trash 😅",
                    "bro got skill issues 😅😅😅",
                    "bozo cant even beat me",
                    "fr fr Choobian  on top",
                    "What's up 'Hackle cheatle' here guys, I have been arresting due to multiple crimes including cheating.",
                    "wdym touch grass i have one of those on my feet",
                    "fortnite 19$ gift card who wants it!!!??",
                    "Are you serius rn?",
                    "ez bozo",
                    "your dad never came back from the milk store for a reason",
                    "damn bro did your mother drop you when youre born",
                    "Who are you talking to? a kill say bot? 😅",
                    "damn bro you really need a therapist 😅😅",
                    "🤓: stop hacking!!!! its against the rules!!!",
                    "wenomechainsama tumajarbisaun",
                    "Roll the ops on me then😹😹😹😹",
                    "you should go back to kindergarden bro 😂",
                    "im just better than you!!!!!",
                    "Choobian  better than you smh smh smh 😅"
                }
                getgenv().wordsV2 = {
                    "Choobian  > U😱",
                    "Choobian  owns you😹😹",
                    "Get good get Choobian  🙂",
                    "Stop crying and get Choobian ",
                    "Roll the ops on me then😹😹😹😹",
                    "Get Choobian  right now bro!!",
                    "Get your aim up and get Choobian ",
                    "Stop complaining and get Choobian 🤕🤕",
                    "Choobian  > Your career",
                    "Yes ik Choobian  is the best😳😳",
                    "Choobian  got more features then your grandmother🥸🥸",
                    "get better dude🥳",
                    "Bro just get Choobian  LOL",
                    "Yo 12 year old get Choobian !"
                }

                getgenv().wordsV3 = {
                    "你是垃圾，菜鸟可以做得更好。",
                    "想象一下死亡的情景",
                    "哎呀，我忘了你在那里，哦，等等，你实际上根本不存在。",
                    "ez ez你被低级拍手哈哈！",
                    "你不能在这里利用！!111!!111它是非法的！!!!",
                    "你为什么要死于我，兄弟。",
                    "被Choobian 用户鼓掌：骷髅：",
                    "兄弟被拍手笑",
                    "想象一下，你的父亲在哪里，然后去看看？",
                    "对不起，我的目标瞄准击中了你吗？ 如果是这样，那你就是垃圾！",
                    "兄弟有技能问题？",
                    "博佐连我都打不过",
                    "fr fr fr Choobian  on top",
                    "这是怎么回事'Hackle cheatle'这里的家伙，我一直因包括作弊在内的多项罪行而被捕。",
                    "wdym触摸草我有一个那些在我的脚",
                    "fortnite19$礼品卡谁想要它！!!??",
                    "你是serius rn吗？",
                    "ez bozo",
                    "你爸爸从牛奶店回来是有原因的",
                    "该死的兄弟，你妈妈在你出生的时候把你扔下了吗",
                    "你在跟谁说话？ 杀人说机器人？ 😅 ",
                    "该死的兄弟，你真的需要一个治疗师！",
                    " 🤓 ：停止黑客攻击！!!! 这是违反规则的！!!",
                    "那就把行动推到我身上！",
                    "你应该回幼儿园去。",
                    "我只是比你好！!!!!",
                    "Choobian >你😱",
                    "Choobian 拥有你！",
                    "别哭了，别哭了",
                    "那就把行动推到我身上！",
                    "马上去拿桑奇盒子，兄弟！!",
                    "让你的目标，并得到桑奇框",
                    "别抱怨了，拿个傻盒子！",
                    "Choobian >你的事业",
                    "是的，Choobian 是最好的！",
                    "Choobian 比你祖母有更多的功能！",
                    "变得更好，伙计！",
                    "兄弟只要拿到傻盒子哈哈",
                    "哟12岁得到Choobian ！"
                }

                getgenv().wordsV4 = {
                    "Choobian  > ты 😱 ",
                    "Choobian  владеет тобой 😹 😹 ",
                    "Будь хорошим, получи Choobian  🙂 ",
                    "Перестань плакать и получи Choobian ",
                    "Тогда проверни операцию на мне 😹 😹 😹 😹 ",
                    "Получи Choobian  прямо сейчас, братан!!",
                    "Прицелись и получи Choobian ",
                    "Перестань жаловаться и получи Choobian  🤕 🤕 ",
                    "Choobian  > Твоя карьера",
                    "Да, Choobian  лучший 😳 😳 ",
                    "У Choobian  больше возможностей, чем у твоей бабушки🥸🥸",
                    "становись лучше, чувак🥳",
                    "Братан, просто купи сэнки бокс, ЛОЛ",
                    "Йоу, 12-летний, купи сэнки бокс!",
                    "представь, что умираешь 😅 😅 😅 LLLL",
                    "Ой, я забыл, что ты там был, о, подожди, ты на самом деле все равно не существуешь.",
                    "ez ez тебе похлопал низкий уровень, ха-ха!",
                    " 🤓 : ты не можешь просто эксплуатировать здесь!!111!!111 это незаконно!!!!",
                    "почему ты умираешь для меня, братан, фр, фр",
                    "похлопал пользователь Choobian  :skull:",
                    "братану похлопали, лол",
                    " 🤓 : представь, что ты сирота, а где твои, тогда иди проверь",
                    "прости, моя цель попала в тебя? если так, то ты мусор 😅 😅 😅 ",
                    "у братана проблемы с навыками 😅 😅 😅 ",
                    "придурок даже не может победить меня",
                    "fr fr Choobian  сверху",
                    "Как дела, ребята, меня арестовывали из-за множества преступлений, включая мошенничество",
                    "wdym touch grass, у меня есть такая же на ногах",
                    "подарочная карта fortnite на 19$, кто хочет ее!!!??",
                    "Ты сериус рн?",
                    "эз бозо",
                    "твой отец не вернулся из магазина молока по какой-то причине",
                    "черт возьми, братан, твоя мать бросила тебя, когда ты родился",
                    "С кем ты разговариваешь? бот, говорящий об убийстве? 🤓 ",
                    "черт возьми, братан, тебе действительно нужен психотерапевт 😅 😅 ",
                    " 🤓 : прекрати взламывать!!!! это против правил!!!",
                    "wenomechainsama tumajarbisaun",
                    "Тогда проверни на мне операцию",
                    "тебе стоит вернуться в детский сад, братан",
                    "я просто лучше тебя!!!!!",
                    "Сэнки бокс лучше, чем ты, смх, смх, смх 😅 "
                }

                getgenv().customword = {}
                getgenv().Holder = ""

                _G.thekeybind = "y"

                Trashtalkable:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)  
                        _G.EnableTrashTalk = Boolean
                        if _G.EnableTrashTalk == true then
                            keybindfunctional =
                                game.Players.LocalPlayer:GetMouse().KeyDown:connect(
                                function(key)
                                    if key == _G.thekeybind then
                                        if getgenv().Customtypertype == "TrashTalk" then
                                            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                                words[math.random(#getgenv().words)],
                                                "All"
                                            )
                                        elseif getgenv().Customtypertype == "Choobian Box" then
                                            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                                wordsV2[math.random(#getgenv().wordsV2)],
                                                "All"
                                            )
                                        elseif getgenv().Customtypertype == "Chinease" then
                                            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                                wordsV3[math.random(#getgenv().wordsV3)],
                                                "All"
                                            )
                                        elseif getgenv().Customtypertype == "Russian" then
                                            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                                wordsV4[math.random(#getgenv().wordsV4)],
                                                "All"
                                            )
                                        elseif getgenv().Customtypertype == "Custom" then
                                            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                                customword[math.random(#getgenv().customword)],
                                                "All"
                                            )
                                        end
                                    end
                                end
                            )
                        else
                            if keybindfunctional then
                                keybindfunctional:Disconnect()
                            end
                        end
                    end
                )

                Trashtalkable:AddTextbox(
                    "Keybind",
                    "y",
                    nil,
                    function(Text)
                        _G.thekeybind = Text
                    end
                )

                Trashtalkable:AddLabel("-Auto Send-")
                _G.autotypetimer = 3
                _G.enableautorimer = false
                Trashtalkable:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        _G.enableautorimer = Boolean
                        if _G.enableautorimer == true then
                            repeat
                                if getgenv().Customtypertype == "TrashTalk" then
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        words[math.random(#getgenv().words)],
                                        "All"
                                    )
                                elseif getgenv().Customtypertype == "Choobian Box" then
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        wordsV2[math.random(#getgenv().wordsV2)],
                                        "All"
                                    )
                                elseif getgenv().Customtypertype == "Chinease" then
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        wordsV3[math.random(#getgenv().wordsV3)],
                                        "All"
                                    )
                                elseif getgenv().Customtypertype == "Russian" then
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        wordsV4[math.random(#getgenv().wordsV4)],
                                        "All"
                                    )
                                elseif getgenv().Customtypertype == "Custom" then
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        customword[math.random(#getgenv().customword)],
                                        "All"
                                    )
                                end
                                wait(_G.autotypetimer)
                            until _G.enableautorimer == false
                        end
                    end
                )
                Trashtalkable:AddSlider(
                    "Time",
                    0.1,
                    3,
                    10,
                    10,
                    function(Value)
                        _G.autotypetimer = Value
                    end
                )

                Trashtalkable:AddLabel("-Type Ver-")
                Trashtalkable:AddDropdown(
                    "Type",
                    {"TrashTalk", "Choobian Box", "Chinease", "Russian", "Custom"},
                    "TrashTalk",
                    false,
                    function(Value)
                        getgenv().Customtypertype = Value
                    end
                )
                Trashtalkable:AddLabel("-Custom Text-")
                Trashtalkable:AddTextbox(
                    "Add Custom Text",
                    false,
                    function(Text)
                        getgenv().Holder = Text
                    end
                )
                Trashtalkable:AddButton(
                    "Add Text",
                    function()
                        table.insert(getgenv().customword, getgenv().Holder)
                        game.StarterGui:SetCore(
                            "SendNotification",
                            {
                                Title = "Choobian ",
                                Text = "Succes!",
                                Icon = "rbxassetid://11394475200",
                                Duration = 1
                            }
                        )
                    end
                )
                Trashtalkable:AddButton(
                    "Remove Text",
                    function()
                         
                        if table.find(getgenv().customword, getgenv().Holder) then
                            Remove(getgenv().customword, getgenv().Holder)
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                    Title = "Choobian ",
                                    Text = "Succes!",
                                    Icon = "rbxassetid://11394475200",
                                    Duration = 1
                                }
                            )
                        else
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                    Title = "Choobian ",
                                    Text = "Error!",
                                    Icon = "rbxassetid://11394475200",
                                    Duration = 1
                                }
                            )
                        end
                    end
                )

                local Moddetection = Misc3:CreateSector("Mod Detector", "right")

                local bitch = {
                    163721789,
                    15427717,
                    201454243,
                    822999,
                    63794379,
                    17260230,
                    28357488,
                    93101606,
                    8195210,
                    89473551,
                    16917269,
                    85989579,
                    1553950697,
                    476537893,
                    155627580,
                    31163456,
                    7200829,
                    25717070,
                    201454243,
                    15427717,
                    63794379,
                    16138978,
                    60660789,
                    17260230,
                    16138978,
                    1161411094,
                    9125623,
                    11319153,
                    34758833,
                    194109750,
                    35616559,
                    1257271138,
                    28885841,
                    23558830,
                    25717070
                }
                _G.Enablemoddetection = false
                Moddetection:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        _G.Enablemoddetection = Boolean
                        if _G.Enablemoddetection == true then
                            for l, c in pairs(game.Players:GetChildren()) do
                                for i, v in pairs(bitch) do
                                    if c.UserId == v then
                                        if _G.AlertType == "Kick" then
                                            game.Players.LocalPlayer:Kick("Mod Detected")
                                        else
                                            game.StarterGui:SetCore(
                                                "SendNotification",
                                                {
                                                    Title = "Choobian ",
                                                    Text = "DETECTED MODERATOR!",
                                                    Icon = "rbxassetid://11394475200",
                                                    Duration = 1
                                                }
                                            )
                                        end
                                    end
                                end
                            end
                            playeraddedfunction =
                                game.Players.PlayerAdded:Connect(
                                function(plr)
                                    for i, v in pairs(bitch) do
                                        if plr.UserId == v then
                                            if _G.AlertType == "Kick" then
                                                game.Players.LocalPlayer:Kick("Mod Detected")
                                            else
                                                game.StarterGui:SetCore(
                                                    "SendNotification",
                                                    {
                                                        Title = "Choobian ",
                                                        Text = "DETECTED MODERATOR!",
                                                        Icon = "rbxassetid://11394475200",
                                                        Duration = 1
                                                    }
                                                )
                                            end
                                        end
                                    end
                                end
                            )
                        else
                            if playeraddedfunction then
                                playeraddedfunction:Disconnect()
                            end
                        end
                    end
                )

                Moddetection:AddDropdown(
                    "Alert Type",
                    {"Kick", "Notify", "None"},
                    "Kick",
                    false,
                    function(Value)
                        _G.AlertType = "Kick"
                    end
                )
                  

                local godemodesfunctions = Misc3:CreateSector("Character Functions", "right")

                godemodesfunctions:AddButton(
                    "Anti Ragdoll",
                    function()
                        AntiRagdoll2 = true
                        NilBody()
                    end
                )

                godemodesfunctions:AddButton(
                    "Destroy Functions",
                    function()
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR") then
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").Health =
                                0
                        end
                        local newCharacter =
                            game:GetService("Workspace"):WaitForChild(game:GetService("Players").LocalPlayer.Name)
                        local spoofFolder = Instance.new("Folder")
                        spoofFolder.Name = "FULLY_LOADED_CHAR"
                        spoofFolder.Parent = newCharacter
                        newCharacter:WaitForChild("RagdollConstraints"):Destroy()
                        local spoofValue = Instance.new("BoolValue", newCharacter)
                        spoofValue.Name = "RagdollConstraints"
                        game:GetService("Players").LocalPlayer.Character.BodyEffects.Defense:Destroy()
                        Defense = Instance.new("IntValue", game:GetService("Players").LocalPlayer.Character.BodyEffects)
                        Defense.Name = "Defense"
                        Defense.Value = 101
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects").Armor:Destroy()
                        local Clone1 = Instance.new("IntValue")
                        Clone1.Name = "Armor"
                        Clone1.Value = 101
                        Clone1.Parent = game:GetService("Players").LocalPlayer.Character.BodyEffects
                    end
                )
                  
                godemodesfunctions:AddLabel("-Semi-")
                godemodesfunctions:AddToggle(
                    "Hide Block",
                    false,
                    function(Callback)
                        if Callback then
                            hideblockrenderstepped =
                                game:GetService("RunService").RenderStepped:connect(
                                function()
                                    pcall(
                                        function()
                                            for i, v in pairs(
                                                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA(
                                                    "Humanoid"
                                                ):GetPlayingAnimationTracks()
                                            ) do
                                                if
                                                    v.Animation.AnimationId == "rbxassetid://5641749824" or
                                                        v.Name == "Block"
                                                 then
                                                    v:Stop()
                                                end
                                            end
                                        end
                                    )
                                end
                            )
                        else
                            if hideblockrenderstepped then
                                hideblockrenderstepped:Disconnect()
                            end
                        end
                    end
                )

                godemodesfunctions:AddToggle(
                    "Destroy Particle",
                    false,
                    function(Callback)
                        if Callback then
                            lolnoparticles =
                                game:GetService("RunService").RenderStepped:connect(
                                function()
                                    pcall(
                                        function()
                                            local Particle =
                                                game:GetService("Players").LocalPlayer.Character.UpperTorso:FindFirstChild(
                                                "ElectricuteParticle"
                                            ) or
                                                game:GetService("Players").LocalPlayer.Character.UpperTorso:FindFirstChild(
                                                    "FlamethrowerFireParticle"
                                                ) or
                                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                                    "Christmas_Sock"
                                                )
                                            if Particle then
                                                Particle:Destroy()
                                            end
                                        end
                                    )
                                end
                            )
                        else
                            if lolnoparticles then
                                lolnoparticles:Disconnect()
                            end
                        end
                    end
                )
                 
                godemodesfunctions:AddToggle(
                    "Auto Block",
                    false,
                    function(Callback)
                        if Callback then
                            holfingflol =
                                game:GetService("UserInputService").InputBegan:Connect(
                                function(key, b)
                                    if key.KeyCode == Enum.KeyCode.F and not b then
                                        HoldingF = true
                                    end
                                end
                            )
                            notholdifglol =
                                game:GetService("UserInputService").InputEnded:Connect(
                                function(key, b)
                                    if key.KeyCode == Enum.KeyCode.F and not b then
                                        HoldingF = false
                                    end
                                end
                            )
                            LULAUTOBLOCK =
                                game:GetService("RunService").RenderStepped:connect(
                                function()
                                    local forbidden = {
                                        "[RPG]",
                                        "[SMG]",
                                        "[TacticalShotgun]",
                                        "[AK47]",
                                        "[AUG]",
                                        "[Glock]",
                                        "[Shotgun]",
                                        "[Flamethrower]",
                                        "[Silencer]",
                                        "[AR]",
                                        "[Revolver]",
                                        "[SilencerAR]",
                                        "[LMG]",
                                        "[P90]",
                                        "[DrumGun]",
                                        "[Double-Barrel SG]",
                                        "[Hamburger]",
                                        "[Chicken]",
                                        "[Pizza]",
                                        "[Cranberry]",
                                        "[Donut]",
                                        "[Taco]",
                                        "[Starblox Latte]",
                                        "[BrownBag]",
                                        "[Weights]",
                                        "[HeavyWeights]"
                                    }
                                    local Found = false
                                    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
                                        if
                                            v and v.Character and v.Character:FindFirstChild("UpperTorso") and
                                                v.Character:FindFirstChild("FULLY_LOADED_CHAR") and
                                                (v.Character.UpperTorso.Position -
                                                    game:GetService("Players").LocalPlayer.Character:WaitForChild(
                                                        "HumanoidRootPart"
                                                    ).Position).Magnitude <= 25
                                         then
                                            if
                                                v.Character.BodyEffects.Attacking.Value == true and
                                                    not table.find(
                                                        forbidden,
                                                        v.Character:FindFirstChildWhichIsA("Tool").Name
                                                    ) and
                                                    v.Name ~= game:GetService("Players").LocalPlayer.Name
                                             then
                                                Found = true
                                                game:GetService("ReplicatedStorage").MainEvent:FireServer(
                                                    "Block",
                                                    game:GetService("Players").LocalPlayer.Name
                                                )
                                            end
                                        end
                                    end
                                    if Found == false and HoldingF == false then
                                        if
                                            game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):FindFirstChild(
                                                "Block"
                                            )
                                         then
                                            game:GetService("Players").LocalPlayer.Character.BodyEffects.Block:Destroy()
                                        end
                                    end
                                end
                            )
                        else
                            if LULAUTOBLOCK then
                                LULAUTOBLOCK:Disconnect()
                            end
                            if notholdifglol then
                                notholdifglol:Disconnect()
                            end
                            if holfingflol then
                                holfingflol:Disconnect()
                            end
                        end
                    end
                )

                local CashSector = Misc3:CreateSector("Cash", "right")

                local AutoDropToggle =
                    CashSector:AddToggle(
                    "Auto Drop",
                    false,
                    function(State)
                        meffsettings.Blatant.Cash.AutoDrop = State
                    end
                )

                AutoDropToggle:AddSlider(
                    1000,
                    5000,
                    10000,
                    1,
                    function(Value)
                        meffsettings.Blatant.Cash.AutoDropAmount = Value
                    end
                )

                CashSector:AddToggle(
                    "Auto Pick Cash",
                    false,
                    function(State)
                        meffsettings.Blatant.Cash.AutoPickCash = State
                    end
                )

                local fard5v2 = Misc3:CreateSector("Anti Stomp", "left")
                getgenv().AntiStompType = "Cframe_Flinger"
                getgenv().WhhenAntiStompEnable = 99
                getgenv().AntiStomprunservice = nil

                fard5v2:AddToggle(
                    "Enable",
                    false,
                    function(Callback)  
                        if Callback then
                            getgenv().AntiStomprunservice =
                                game:GetService("RunService").Stepped:Connect(
                                function()
                                    if
                                        game.Players.LocalPlayer.Character and
                                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                                            game.Players.LocalPlayer.Character.Humanoid.Health <=
                                                getgenv().WhhenAntiStompEnable
                                     then
                                        if getgenv().AntiStompType == "Nil_Char" then
                                            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                                if v:IsA("MeshPart") or v:IsA("Part") then
                                                    v:Destroy()
                                                end
                                            end
                                            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                                if v:IsA("Accessory") then
                                                    v.Handle:Destroy()
                                                end
                                            end
                                        elseif getgenv().AntiStompType == "No_Collisions" then
                                            if game.Players.LocalPlayer.Character ~= nil then
                                                for _, child in pairs(
                                                    game.Players.LocalPlayer.Character:GetDescendants()
                                                ) do
                                                    if child:IsA("BasePart") and child.CanCollide == true then
                                                        child.CanCollide = false
                                                    end
                                                end
                                            end
                                        elseif getgenv().AntiStompType == "Remove_Health" then
                                            game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                        elseif getgenv().AntiStompType == "Velocity_Flinger" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                                                Vector3.new(1, 1, 1) * (2 ^ 16)
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity =
                                                Vector3.new(1, 1, 1) * (2 ^ 16)
                                        elseif getgenv().AntiStompType == "Cframe_Flinger" then
                                            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                                if v:IsA("MeshPart") or v:IsA("Part") then
                                                    v.CFrame = v.CFrame * CFrame.new(0, 5, 0)
                                                end
                                            end
                                        end
                                    end
                                end
                            )
                        else
                            if getgenv().AntiStomprunservice then
                                getgenv().AntiStomprunservice:Disconnect()
                            end
                        end
                    end
                )

                fard5v2:AddDropdown(
                    "Method",
                    {"Nil_Char", "No_Collisions", "Remove_Health", "Velocity_Flinger", "Cframe_Flinger"},
                    "Nil_Char",
                    false,
                    function(Value)
                        getgenv().AntiStompType = Value
                    end
                )

                fard5v2:AddSlider(
                    "Enable On Health",
                    1,
                    5,
                    100,
                    1,
                    function(Value)
                        getgenv().WhhenAntiStompEnable = Value
                    end
                )

                local fard5 = Misc3:CreateSector("misc's Button", "left")
                local fakemoney =
                    fard5:AddTextbox(
                    "fake money",
                    nil,
                    function(Text)
                        game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                        game.Players.LocalPlayer.Backpack.Wallet.Handle.BillboardGui.TextLabel.Text = Text
                        game.Players.LocalPlayer.PlayerGui.MainScreenGui.MoneyText.Text = Text
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Plr.Backpack.Wallet)
                    end
                )

                local fakebountyy =
                    fard5:AddTextbox(
                    "fake bounty",
                    nil,
                    function(Text)
                        for i, v in pairs(
                            game.Players.LocalPlayer.PlayerGui.MainScreenGui.Leaderboard.PlayerScroll:GetChildren()
                        ) do
                            if i == 2 then
                                v.Text = Text
                            end
                        end
                    end
                )

                fard5:AddButton(
                    "No Recoil",
                    function()
                         
                        function isframework(scriptInstance)
                            if tostring(scriptInstance) == "Framework" then
                                return true
                            end
                            return false
                        end

                        function checkArgs(instance, index)
                            if tostring(instance):lower():find("camera") and tostring(index) == "CFrame" then
                                return true
                            end
                            return false
                        end

                        newindex =
                            hookmetamethod(
                            game,
                            "__newindex",
                            function(self, index, value)
                                local callingScr = getcallingscript()

                                if isframework(callingScr) and checkArgs(self, index) then
                                    return
                                end

                                return newindex(self, index, value)
                            end
                        )
                        NotifyLib.prompt("Choobian ", "Succes!", 3)
                    end
                )

                fard5:AddButton(
                    "No Flashbang",
                    function()
                        Player.PlayerGui:FindFirstChild("MainScreenGui"):FindFirstChild("whiteScreen"):Destroy()
                    end
                )

                fard5:AddButton(
                    "Fe fat",
                    function()
                        game.Players.LocalPlayer.Character.Humanoid.BodyDepthScale:Destroy()
                        game.Players.LocalPlayer.Character.Humanoid.BodyWidthScale:Destroy()
                    end
                )
                fard5:AddButton(
                    "Tornado",
                    function()
                         
                        game.Players.LocalPlayer.Character.Humanoid.Changed:connect(
                            function()
                                game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(
                                    stateType.FallingDown,
                                    false
                                )
                                game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(stateType.Ragdoll, false)
                            end
                        )

                        function tweenup(pos)
                            local tweenService = game:GetService("TweenService")
                            local partToTween = game.Players.LocalPlayer.Character.HumanoidRootPart
                            local finalCframe = CFrame.new(pos)
                            local tweenInfo = TweenInfo.new(1.1, Enum.EasingStyle.Sine)

                            local tween = tweenService:Create(partToTween, tweenInfo, {CFrame = finalCframe})
                            tween:Play()
                        end

                        function TrailSpam()
                            local lp = game:GetService "Players".LocalPlayer
                            if not lp.Character.LeftHand:FindFirstChild("BodyPosition") then
                                local bodeey = Instance.new("BodyPosition", lp.Character.LeftHand)
                                bodeey.D = 1
                                bodeey.MaxForce = Vector3.new(0, 0, 0)
                            end
                            if not lp.Character.RightHand:FindFirstChild("BodyPosition") then
                                local bodee = Instance.new("BodyPosition", lp.Character.RightHand)
                                bodee.D = 1
                                bodee.MaxForce = Vector3.new(0, 0, 0)
                            end
                            wait()
                            local bodeey = lp.Character.LeftHand:FindFirstChild("BodyPosition")
                            local bodee = lp.Character.RightHand:FindFirstChild("BodyPosition")
                            local lp = game:GetService("Players").LocalPlayer
                            if lp.Character.RightHand:FindFirstChild("RightWrist") then
                                lp.Character.RightHand.RightWrist:Destroy()
                            end
                            if lp.Character.LeftHand:FindFirstChild("LeftWrist") then
                                lp.Character.LeftHand.LeftWrist:Destroy()
                            end
                            lp.Character.Humanoid:UnequipTools()
                            lp.Character.Humanoid:EquipTool(lp.Backpack["Combat"])
                            local postp = {
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(130.153, 173.160294, -1354.48999),
                                CFrame.new(961.021057, 90, 230),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(992.213318, 90, -873.381531),
                                CFrame.new(240.491379, 90, -1273.5083),
                                CFrame.new(-1139.67273, 90, -1230.86694),
                                CFrame.new(-1251.28076, 90, -514.631531),
                                CFrame.new(130.153, 173.160294, -1354.48999),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(961.021057, 90, 230.306442),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(992.213318, 90, -873.381531),
                                CFrame.new(240.491379, 90, -1273.5083),
                                CFrame.new(961.021057, 90, 230),
                                CFrame.new(130.153, 173.160294, -1354.48999),
                                CFrame.new(-1139.67273, 90, -1230.86694),
                                CFrame.new(-1251.28076, 90, -514.631531),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(992.213318, 90, -873.381531),
                                CFrame.new(240.491379, 90, -1273.5083),
                                CFrame.new(-1139.67273, 90, -1230.86694),
                                CFrame.new(961.021057, 90, 230),
                                CFrame.new(-1251.28076, 90, -514.631531),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(961.021057, 90, 230),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(130.153, 173.160294, -1354.48999),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(992.213318, 90, -873.381531),
                                CFrame.new(-1153.1626, 55.6271172, -685.939575),
                                CFrame.new(-1206.84583, 70.9403839, -203.551514),
                                CFrame.new(240.491379, 90, -1273.5083),
                                CFrame.new(-1139.67273, 90, -1230.86694),
                                CFrame.new(-1251.28076, 90, -514.631531),
                                CFrame.new(961.021057, 90, 230),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(961.021057, 90, 230),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(992.213318, 90, -873.381531),
                                CFrame.new(240.491379, 90, -1273.5083),
                                CFrame.new(-1139.67273, 90, -1230.86694),
                                CFrame.new(-1251.28076, 90, -514.631531),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(961.021057, 90, 230.306442),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(-1153.1626, 55.6271172, -685.939575),
                                CFrame.new(-1206.84583, 70.9403839, -203.551514),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(992.213318, 90, -873.381531),
                                CFrame.new(240.491379, 90, -1273.5083),
                                CFrame.new(961.021057, 90, 230),
                                CFrame.new(-1139.67273, 90, -1230.86694),
                                CFrame.new(-1251.28076, 90, -514.631531),
                                CFrame.new(130.153, 173.160294, -1354.48999),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(992.213318, 90, -873.381531),
                                CFrame.new(240.491379, 90, -1273.5083),
                                CFrame.new(-1139.67273, 90, -1230.86694),
                                CFrame.new(961.021057, 90, 230),
                                CFrame.new(-1251.28076, 90, -514.631531),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(-1153.1626, 55.6271172, -685.939575),
                                CFrame.new(-1206.84583, 70.9403839, -203.551514),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(961.021057, 90, 230),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(130.153, 173.160294, -1354.48999),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(992.213318, 90, -873.381531),
                                CFrame.new(240.491379, 90, -1273.5083),
                                CFrame.new(-1139.67273, 90, -1230.86694),
                                CFrame.new(-1251.28076, 90, -514.631531),
                                CFrame.new(961.021057, 90, 230),
                                CFrame.new(130.153, 173.160294, -1354.48999),
                                CFrame.new(-954.342529, 90, 166.837296),
                                CFrame.new(463.102356, 90, 518.199585),
                                CFrame.new(-1153.1626, 55.6271172, -685.939575),
                                CFrame.new(-1206.84583, 70.9403839, -203.551514)
                            }

                            local chars = game.Players.LocalPlayer.Character
                            _G.a = true
                            lp.Character:FindFirstChild("Combat"):Activate()
                            wait(2)
                            for i = 1, #postp do
                                wait()
                                lp.Character.RightHand.CFrame = postp[i]
                                lp.Character.LeftHand.CFrame = postp[i]
                                bodee.Position = lp.Character.RightHand.Position
                                bodeey.Position = lp.Character.LeftHand.Position
                            end
                            wait()
                            wait()
                            bodee:Destroy()
                            bodeey:Destroy()
                            wait()
                            wait()
                            lp.Character.RightHand.CFrame = CFrame.new(lp.Character.UpperTorso.Position)
                            lp.Character.LeftHand.CFrame = CFrame.new(lp.Character.UpperTorso.Position)
                        end

                        TrailSpam()
                    end
                )
                fard5:AddButton(
                    "Gun Fly",
                    function()
                        local rdm = tostring(math.random(1, 1000))
                        _G.CurrentNameGunFly = rdm
                        _G[rdm] = true
                        local boop =
                            coroutine.wrap(
                            function()
                                local plr = game.Players.LocalPlayer
                                local mouse = plr:GetMouse()
                                local cam = game:GetService "Workspace".CurrentCamera
                                local lp = game.Players.LocalPlayer
                                cam.CameraType = "Custom"
                                localplayer = plr

                                if workspace:FindFirstChild("Core") then
                                    workspace.Core:Destroy()
                                end

                                local partsers = Instance.new("Part", lp.Character)
                                partsers.Transparency = 1
                                partsers.CanCollide = false
                                partsers.CFrame = lp.Character.Head.CFrame

                                local Core = Instance.new("Part")
                                Core.Name = "Core"
                                Core.Size = Vector3.new(0.05, 0.05, 0.05)

                                spawn(
                                    function()
                                        Core.Parent = workspace
                                        local Weld = Instance.new("Weld", Core)
                                        Weld.Part0 = Core
                                        Weld.Part1 = partsers
                                        Weld.C0 = CFrame.new(0, 0, 0)
                                    end
                                )

                                workspace:WaitForChild("Core")
                                cam.CameraSubject = partsers
                                local torso = workspace.Core
                                flying = true
                                local speed = 10
                                local keys = {a = false, d = false, w = false, s = false}
                                local e1
                                local e2
                                local function start()
                                    local bodey = Instance.new("BodyPosition", lp.Character.RightHand)
                                    bodey.Name = "rightwr"
                                    bodey.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                    bodey.D = 9e9
                                    bodey.P = 10000
                                    bodey.Position = Core.Position

                                    local bodee = Instance.new("BodyPosition", lp.Character.LeftHand)
                                    bodee.Name = "leftwr"
                                    bodee.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                    bodee.D = 9e9
                                    bodee.P = 10000
                                    bodee.Position = Core.Position
                                      

                                    local pos = Instance.new("BodyPosition", torso)
                                    local gyro = Instance.new("BodyGyro", torso)
                                    pos.Name = "EPIXPOS"
                                    pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                    pos.position = torso.Position
                                    gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                                    gyro.cframe = torso.CFrame
                                    repeat
                                        wait()
                                        localplayer.Character.Humanoid.PlatformStand = true
                                        local new = gyro.cframe - gyro.cframe.p + pos.position
                                        if not keys.w and not keys.s and not keys.a and not keys.d then
                                            speed = 5
                                        end
                                        if keys.w then
                                            new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                                            speed = speed + 0
                                        end
                                        if keys.s then
                                            new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                                            speed = speed + 0
                                        end
                                        if keys.d then
                                            new = new * CFrame.new(speed, 0, 0)
                                            speed = speed + 0
                                        end
                                        if keys.a then
                                            new = new * CFrame.new(-speed, 0, 0)
                                            speed = speed + 0
                                        end
                                        if speed > 10 then
                                            speed = 5
                                        end
                                        pos.position = new.p
                                        if keys.w then
                                            gyro.cframe =
                                                workspace.CurrentCamera.CoordinateFrame *
                                                CFrame.Angles(-math.rad(speed * 0), 0, 0)
                                        elseif keys.s then
                                            gyro.cframe =
                                                workspace.CurrentCamera.CoordinateFrame *
                                                CFrame.Angles(math.rad(speed * 0), 0, 0)
                                        else
                                            gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                                        end
                                    until flying == false or _G[rdm] == false
                                    if gyro then
                                        gyro:Destroy()
                                    end
                                    if pos then
                                        pos:Destroy()
                                    end
                                    if bodey then
                                        bodey:Destroy()
                                    end
                                      
                                    if bodee then
                                        bodee:Destroy()
                                    end
                                    _G[rdm] = false
                                    flying = false
                                    localplayer.Character.Humanoid.PlatformStand = false
                                    speed = 10
                                end
                                e1 =
                                    mouse.KeyDown:connect(
                                    function(key)
                                        if not torso or not torso.Parent then
                                            flying = false
                                            e1:disconnect()
                                            e2:disconnect()
                                            return
                                        end
                                        if key == "w" then
                                            keys.w = true
                                        elseif key == "s" then
                                            keys.s = true
                                        elseif key == "a" then
                                            keys.a = true
                                        elseif key == "d" then
                                            keys.d = true
                                        elseif key == "x" then
                                            if flying == true then
                                                flying = false
                                                _G[rdm] = false
                                                cam.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                                            else
                                                flying = true
                                                cam.CameraSubject = partsers
                                                start()
                                            end
                                        end
                                    end
                                )
                                e2 =
                                    mouse.KeyUp:connect(
                                    function(key)
                                        if key == "w" then
                                            keys.w = false
                                        elseif key == "s" then
                                            keys.s = false
                                        elseif key == "a" then
                                            keys.a = false
                                        elseif key == "d" then
                                            keys.d = false
                                        end
                                    end
                                )
                                start()
                            end
                        )
                        boop()
                          
                        local chars = game.Players.LocalPlayer.Character
                        game:GetService("RunService").Stepped:connect(
                            function()
                                --noclip
                                if _G[rdm] then
                                    if chars:FindFirstChild("Humanoid") ~= nil and chars:FindFirstChild("Head") ~= nil then
                                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(11)
                                    end
                                end
                            end
                        )

                        game.Players.LocalPlayer.Character.RightHand.RightWrist:Destroy()
                        game.Players.LocalPlayer.Character.LeftHand.LeftWrist:Destroy()

                        local lp = game.Players.LocalPlayer
                        local cam = game:GetService "Workspace".CurrentCamera
                        _G[rdm] =
                            game:GetService("RunService").Stepped:Connect(
                            function()
                                if _G[rdm] then
                                    lp.Character.HumanoidRootPart.CFrame =
                                        CFrame.new(game:GetService "Workspace".Core.Position) + Vector3.new(0, 2000, 0)
                                    lp.Character.RightHand.CFrame =
                                        CFrame.new(game:GetService "Workspace".Core.Position)
                                    lp.Character.LeftHand.CFrame = CFrame.new(game:GetService "Workspace".Core.Position)
                                end
                            end
                        )

                        Core.Changed:connect(
                            function()
                                if _G[rdm] then
                                    lp.Character.HumanoidRootPart.CFrame =
                                        CFrame.new(game:GetService "Workspace".Core.Position) + Vector3.new(0, 2000, 0)
                                    lp.Character.RightHand.CFrame =
                                        CFrame.new(game:GetService "Workspace".Core.Position)
                                    lp.Character.LeftHand.CFrame = CFrame.new(game:GetService "Workspace".Core.Position)
                                end
                            end
                        )
                    end
                )
                local fpsboost =
                    fard5:AddButton(
                    "Low gfx",
                    function(state)
                        if state then
                            local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
                            local g = game
                            local w = g.Workspace
                            local l = g.Lighting
                            local t = w.Terrain
                            t.WaterWaveSize = 0
                            t.WaterWaveSpeed = 0
                              
                            t.WaterReflectance = 0
                            t.WaterTransparency = 0
                            l.GlobalShadows = false
                            l.FogEnd = 9e9
                            l.Brightness = 0
                            settings().Rendering.QualityLevel = "Level01"
                            for i, v in pairs(g:GetDescendants()) do
                                if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                                    v.Material = "Plastic"
                                    v.Reflectance = 0
                                elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                                    v.Transparency = 1
                                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                                    v.Lifetime = NumberRange.new(0)
                                elseif v:IsA("Explosion") then
                                    v.BlastPressure = 1
                                    v.BlastRadius = 1
                                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                                    v.Enabled = false
                                elseif v:IsA("MeshPart") then
                                    v.Material = "Plastic"
                                    v.Reflectance = 0
                                    v.TextureID = 10385902758728957
                                end
                            end
                            for i, e in pairs(l:GetChildren()) do
                                if
                                    e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or
                                        e:IsA("BloomEffect") or
                                        e:IsA("DepthOfFieldEffect")
                                 then
                                    e.Enabled = false
                                end
                            end
                        else
                        end
                    end
                )

                fard5:AddButton(
                    "No Bullet Delay",
                    function()
                        local nobulletdelay = game:GetService("CorePackages").Packages
                        nobulletdelay:Destroy()
                        NotifyLib.prompt("Choobian ", "Succes!", 3)
                    end
                )

                 

                fard5:AddButton(
                    "chat spy",
                    function()
                        --\\ lol i was so humble

                        --chat "/spy" to toggle!
                        enabledmeff = true
                        --if true will check your messages too
                        spyOnMyself = true
                        --if true will chat the logs publicly (fun, risky)
                        public = false
                        --if true will use /me to stand out
                        publicItalics = true
                        --customize private logs
                        privateProperties = {
                            Color = Color3.fromRGB(0, 255, 255),
                            Font = Enum.Font.SourceSansBold,
                            TextSize = 18
                        }
                        --////////////////////////////////////////////////////////////////
                        local StarterGui = game:GetService("StarterGui")
                        local Players = game:GetService("Players")
                        local player =
                            Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or
                            Players.LocalPlayer
                        local saymsg =
                            game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild(
                            "SayMessageRequest"
                        )
                        local getmsg =
                            game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild(
                            "OnMessageDoneFiltering"
                        )
                        local instance = (_G.chatSpyInstance or 0) + 1
                        _G.chatSpyInstance = instance

                        local function onChatted(p, msg)
                            if _G.chatSpyInstance == instance then
                                if p == player and msg:lower():sub(1, 4) == "/spy" then
                                    enabledmeff = not enabledmeff
                                    wait(0.3)
                                    privateProperties.Text = "{SPY " .. (enabledmeff and "EN" or "DIS") .. "ABLED}"
                                    StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
                                elseif enabledmeff and (spyOnMyself == true or p ~= player) then
                                    msg = msg:gsub("[\n\r]", ""):gsub("\t", " "):gsub("[ ]+", " ")
                                    local hidden = true
                                    local conn =
                                        getmsg.OnClientEvent:Connect(
                                        function(packet, channel)
                                            if
                                                packet.SpeakerUserId == p.UserId and
                                                    packet.Message == msg:sub(#msg - #packet.Message + 1) and
                                                    (channel == "All" or
                                                        (channel == "Team" and public == false and
                                                            Players[packet.FromSpeaker].Team == player.Team))
                                             then
                                                hidden = false
                                            end
                                        end
                                    )
                                    wait(1)
                                    conn:Disconnect()
                                      
                                    if hidden and enabledmeff then
                                        if public then
                                            saymsg:FireServer(
                                                (publicItalics and "/me " or "") .. "{SPY} [" .. p.Name .. "]: " .. msg,
                                                "All"
                                            )
                                        else
                                            privateProperties.Text = "{SPY} [" .. p.Name .. "]: " .. msg
                                            StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
                                        end
                                    end
                                end
                            end
                        end

                        for _, p in ipairs(Players:GetPlayers()) do
                            p.Chatted:Connect(
                                function(msg)
                                    onChatted(p, msg)
                                end
                            )
                        end
                        Players.PlayerAdded:Connect(
                            function(p)
                                p.Chatted:Connect(
                                    function(msg)
                                        onChatted(p, msg)
                                    end
                                )
                            end
                        )

                        privateProperties.Text = "{SPY " .. (enabledmeff and "EN" or "DIS") .. "ABLED}"
                        StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
                        if not player.PlayerGui:FindFirstChild("Chat") then
                            wait(3)
                        end
                        local chatFrame = player.PlayerGui.Chat.Frame
                        chatFrame.ChatChannelParentFrame.Visible = true
                        chatFrame.ChatBarParentFrame.Position =
                            chatFrame.ChatChannelParentFrame.Position +
                            UDim2.new(UDim.new(), chatFrame.ChatChannelParentFrame.Size.Y)
                    end
                )

                local fard3xd = Misc3:CreateSector("Remove Part", "right")
                local removehitboxpart = "None"
                local savedhitboxes =
                    fard3xd:AddDropdown(
                    "Remove",
                    {"None", "RightLeg", "LeftLeg", "LeftArm", "RightArm"},
                    "None",
                    false,
                    function(Value)  
                        removehitboxpart = Value
                        if removehitboxpart == "None" then
                        elseif removehitboxpart == "RightLeg" then
                            game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
                        elseif removehitboxpart == "LeftLeg" then
                            game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
                        elseif removehitboxpart == "LeftArm" then
                            game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
                        elseif removehitboxpart == "RightArm" then
                            game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
                        end
                    end
                )

                local Visuals8 = Misc3:CreateSector("Sound Changer", "right")
                Visuals8:AddLabel("Hold out your gun first")
                local shootsoundid = "rbxassetid://6603571443"
                Visuals8:AddTextbox(
                    "Shoot Sound",
                    "6603571443",
                    false,
                    function(Text)
                        shootsoundid = "rbxassetid://" .. Text
                    end
                )

                local shootidtoggle = false

                Visuals8:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        shootidtoggle = Boolean
                        while shootidtoggle do
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.Handle.ShootSound.SoundId = shootsoundid
                            task.wait()
                        end
                    end
                )
                 
                local noammoid = "rbxassetid://9125915045"

                Visuals8:AddTextbox(
                    "No Ammo Sound",
                    "9125915045",
                    false,
                    function(Text)
                        noammoid = "rbxassetid://" .. Text
                    end
                )

                local shootidtoggle2 = false

                Visuals8:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        shootidtoggle2 = Boolean
                        while shootidtoggle2 do
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.Handle.NoAmmo.SoundId = noammoid
                            task.wait()
                        end
                    end
                )

                local MovementSector = Misc3:CreateSector("Movement", "right")

                local SpeedToggle =
                    MovementSector:AddToggle(
                    "Speed Enabled",
                    false,
                    function(State)
                        meffsettings.Blatant.Movement.SpeedEnabled = State
                    end
                )

                SpeedToggle:AddKeybind()
                local movmentspeed2 =
                    SpeedToggle:AddSlider(
                      
                    1,
                    5,
                    100,
                    1,
                    function(Value)
                        meffsettings.Blatant.Movement.SpeedAmount = Value
                    end
                )

                local speedtypemovement =
                    MovementSector:AddDropdown(
                    "Speed Type",
                    {"CFrame", "Velocity", "Coming soon"},
                    "CFrame",
                    false,
                    function(Value)
                        meffsettings.Blatant.Movement.SpeedType = Value
                    end
                )

                local speedrenderble =
                    MovementSector:AddDropdown(
                    "Speed Render Type",
                    {"Default", "Fast"},
                    "Default",
                    false,
                    function(Value)
                        meffsettings.Blatant.Movement.SpeedRenderType = Value
                    end
                )

                local fard = Misc3:CreateSector("misc's Toggle", "right")

                local antibind =
                    fard:AddToggle(
                    "Anti Fling",
                    false,
                    function(Boolean)
                        LocalPlayer.Character.HumanoidRootPart.Anchored = Boolean
                    end
                )

                antibind:AddKeybind()
                  
                local jumpableno =
                    fard:AddToggle(
                    "no jump cooldown",
                    false,
                    function(Boolean)
                        getgenv().FardJumpCooldown = Boolean
                    end
                )

                _G.AutoReload = false -- change to false if u don't want it anymore.

                local autorealodable =
                    fard:AddToggle(
                    "Auto Reload",
                    false,
                    function(Boolean)
                        _G.AutoReload = Boolean
                        while _G.AutoReload == true and game:GetService("RunService").Heartbeat:Wait() do
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                                        "Ammo"
                                    )
                                 then
                                    if
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                                            "Ammo"
                                        ).Value <= 0
                                     then
                                        game:GetService("ReplicatedStorage").MainEvent:FireServer(
                                            "Reload",
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA(
                                                "Tool"
                                            )
                                        )
                                        wait(1)
                                    end
                                end
                            end
                        end
                    end
                )
                _G.FreezeBullets = false

                fard:AddToggle(
                    "Freeze Bullets",
                    false,
                    function(Boolean)
                        _G.FreezeBullets = Boolean
                    end
                )
                _G.InvisibleMask = false

                fard:AddToggle(
                    "Invisible Mask",
                    false,
                    function(Boolean)
                        _G.InvisibleMask = Boolean
                    end
                )
                 
                game.Players.LocalPlayer.Character.DescendantAdded:Connect(
                    function(Desc)
                        if Desc.Name == "ShootBBGUI" and _G.FreezeBullets == true then
                            wait(0.5)
                            Desc:Destroy()
                        end
                    end
                )

                game.Players.LocalPlayer.Character.ChildAdded:connect(
                    function(Child)
                        if Child.Name == "In-gameMask" and _G.InvisibleMask == true then
                            Child:WaitForChild("Handle"):Destroy()
                        end
                    end
                )

                game.Players.LocalPlayer.CharacterAdded:connect(
                    function()
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character ~= nil
                        game.Players.LocalPlayer.Character.DescendantAdded:Connect(
                            function(Desc)
                                if Desc.Name == "ShootBBGUI" and _G.FreezeBullets == true then
                                    wait(0.5)
                                    Desc:Destroy()
                                end
                            end
                        )
                        game.Players.LocalPlayer.Character.ChildAdded:connect(
                            function(Child)
                                if Child.Name == "In-gameMask" and _G.InvisibleMask == true then
                                    Child:WaitForChild("Handle"):Destroy()
                                end
                            end
                        )
                    end
                )

                local AutoStomp =
                    fard:AddToggle(
                    "Auto Stomp",
                    nil,
                    function(Boolean)
                        if Boolean == true then
                            game:GetService("RunService"):BindToRenderStep(
                                "Auto-Stomp",
                                0,
                                function()
                                    game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
                                end
                            )
                        elseif Boolean == false then
                            game:GetService("RunService"):UnbindFromRenderStep("Auto-Stomp")
                        end
                    end
                )

                local AntiSlow =
                    fard:AddToggle(
                    "Anti Slow",
                    nil,
                    function(Boolean)
                        if Boolean == true then
                            game:GetService("RunService"):BindToRenderStep(
                                "Anti-Slow",
                                0,
                                function()
                                    if
                                        game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild(
                                            "NoWalkSpeed"
                                        )
                                     then
                                        game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild(
                                            "NoWalkSpeed"
                                        ):Destroy()
                                    end
                                    if
                                        game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild(
                                            "ReduceWalk"
                                        )
                                     then
                                        game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild(
                                            "ReduceWalk"
                                        ):Destroy()
                                    end
                                    if
                                        game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild(
                                            "NoJumping"
                                        )
                                     then
                                        game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild(
                                            "NoJumping"
                                        ):Destroy()
                                    end
                                    if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then
                                        game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false
                                    end
                                end
                            )
                        elseif Boolean == false then
                            game:GetService("RunService"):UnbindFromRenderStep("Anti-Slow")
                        end
                    end
                )
                local boombox = false

                fard:AddToggle(
                    "Loop Mute BoomBox",
                    false,
                    function(Boolean)
                        boombox = Boolean
                        if boombox then
                            for i, v in pairs(game:GetService "Players":GetChildren()) do
                                if v and v.Character then
                                    local character = v.Character.name

                                    local Player = character

                                    local Players = game:GetService("Players")
                                    local RunService = game:GetService("RunService")

                                    RunService.Heartbeat:Connect(
                                        function()
                                            if boombox then
                                                pcall(
                                                    function()
                                                        Players[Player].Character.LowerTorso:FindFirstChild(
                                                                "BOOMBOXSOUND"
                                                            ).Playing = false
                                                        Players[Player].Character.LowerTorso:FindFirstChild(
                                                                "BOOMBOXSOUND"
                                                            ).TimePosition = 0
                                                    end
                                                )
                                            end
                                        end
                                    )
                                end
                            end
                        end
                    end
                )

                local antiafk = false
                fard:AddToggle(
                    "Anti Afk",
                    false,
                    function(Boolean)  
                        antiafk = Boolean
                        if antiafk then
                            local vu = game:GetService("VirtualUser")
                            antiafk =
                                game:GetService("Players").LocalPlayer.Idled:connect(
                                function()
                                    vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                                    wait(1)
                                    vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                                end
                            )
                        else
                            antiafk:Disconnect()
                        end
                    end
                )

                local spamcall = false
                fard:AddToggle(
                    "Spam Call Everyone",
                    false,
                    function(Boolean)
                        spamcall = Boolean
                        while spamcall do
                            wait()
                            for i, v in pairs(game.Players:GetPlayers()) do
                                task.wait()
                                game.ReplicatedStorage.MainEvent:FireServer("PhoneCall", v.Name)
                            end
                        end
                    end
                )

                local antibaggable =
                    fard:AddToggle(
                    "Anti Bag",
                      
                    false,
                    function(Boolean)
                        getgenv().AntiAntiBag = Boolean
                    end
                )

                local Reach =
                    fard:AddToggle(
                    "Reach",
                    nil,
                    function(Boolean)
                        if Boolean == true then
                            game:GetService("RunService"):BindToRenderStep(
                                "Reach",
                                0,
                                function()
                                    local success, err =
                                        pcall(
                                        function()
                                            if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                                                for i, v in pairs(game:GetService("Players"):GetChildren()) do
                                                    if
                                                        (v.Character.HumanoidRootPart.Position -
                                                            game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <=
                                                            50
                                                     then
                                                        if
                                                            game.Players.LocalPlayer.Character:FindFirstChildOfClass(
                                                                "Tool"
                                                            )
                                                         then
                                                            if
                                                                game.Players.LocalPlayer.Character:FindFirstChildOfClass(
                                                                    "Tool"
                                                                ):FindFirstChild("Handle")
                                                             then
                                                                firetouchinterest(
                                                                    game.Players.LocalPlayer.Character:FindFirstChildOfClass(
                                                                        "Tool"
                                                                    ).Handle,
                                                                    v.Character.UpperTorso,
                                                                    0
                                                                )
                                                            else
                                                                firetouchinterest(
                                                                    game.Players.LocalPlayer.Character["RightHand"],
                                                                    v.Character.UpperTorso,
                                                                    0
                                                                )
                                                                firetouchinterest(
                                                                    game.Players.LocalPlayer.Character["LeftHand"],
                                                                    v.Character.UpperTorso,
                                                                    0
                                                                )
                                                                firetouchinterest(
                                                                    game.Players.LocalPlayer.Character["RightFoot"],
                                                                    v.Character.UpperTorso,
                                                                    0
                                                                )
                                                                firetouchinterest(
                                                                    game.Players.LocalPlayer.Character["LeftFoot"],
                                                                    v.Character.UpperTorso,
                                                                    0
                                                                )
                                                                firetouchinterest(
                                                                    game.Players.LocalPlayer.Character["RightLowerLeg"],
                                                                    v.Character.UpperTorso,
                                                                    0
                                                                )
                                                                firetouchinterest(
                                                                    game.Players.LocalPlayer.Character["LeftLowerLeg"],
                                                                    v.Character.UpperTorso,
                                                                    0
                                                                )
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    )
                                end
                            )
                        elseif Boolean == false then
                            game:GetService("RunService"):UnbindFromRenderStep("Reach")
                        end
                    end
                )

                Reach:AddKeybind()

                local FarmingSector = Misc3:CreateSector("Farming", "right")

                FarmingSector:AddToggle(
                    "Shoe Farm",
                    false,
                    function(State)
                        meffsettings.Blatant.Farming.ShoeFarm = State
                    end
                )

                FarmingSector:AddToggle(
                    "ATM Farm",
                    false,
                    function(State)
                        meffsettings.Blatant.Farming.ATMFarm = State
                        wait(1)
                        meffsettings.Blatant.Farming.ATMPick = false
                    end
                )

                FarmingSector:AddToggle(
                    "Hospital Farm",
                    false,
                    function(State)
                        meffsettings.Blatant.Farming.HospitalFarm = State
                    end
                )

                local BoxFarmToggle =
                    FarmingSector:AddToggle(
                    "Box Farm",
                    false,
                    function(State)
                        meffsettings.Blatant.Farming.BoxFarm = State
                    end
                )

                BoxFarmToggle:AddKeybind()

                FarmingSector:AddDropdown(
                    "Muscle Farming Type",
                    {"Normal", "Heavy"},
                    "Normal",
                    false,
                    function(State)
                        meffsettings.Blatant.Farming.MuscleFarmingType = State
                    end
                )

                FarmingSector:AddToggle(
                    "Muscle Farm",
                    false,
                    function(State)
                        meffsettings.Blatant.Farming.MuscleFarm = State
                    end
                )

                FarmingSector:AddToggle(
                    "Lettuce Farm",
                    false,
                    function(State)
                        meffsettings.Blatant.Farming.AutoLettuce = State
                    end
                )

                local pingspoofer = Misc3:CreateSector("Ping Spoofer", "Left")
                local ColorNiggertype = Color3.fromRGB(126, 211, 33)
                local PingLabel
                local ColorNigger,
                    ColorNigger1,
                    ColorNigger2,
                    ColorNigger3,
                    ColorNigger4,
                    ColorNigger5,
                    ColorNigger6,
                    ColorNigger7,
                    ColorNigger8,
                    ColorNigger9,
                    ColorNigger10,
                    ColorNigger11,
                    ColorNigger12,
                    ColorNigger13,
                    ColorNigger14,
                    ColorNigger15,
                    ColorNigger16,
                    ColorNigger17,
                    ColorNigger18,
                    ColorNigger19
                local minmem2 = 80000
                local maxmem2 = 85000
                local pingspooferv2 = false

                pingspoofer:AddToggle(
                    "Enable Spoof",
                    false,
                    function(Boolean)
                        pingspooferv2 = Boolean
                        if pingspooferv2 == true then
                            local PerformanceStats =
                                game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PerformanceStats")
                            for I, Child in next, PerformanceStats:GetChildren() do
                                if Child.StatsMiniTextPanelClass.TitleLabel.Text == "Ping" then
                                    PingLabel = Child.StatsMiniTextPanelClass.ValueLabel
                                    ColorNigger = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_0
                                    ColorNigger1 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_1
                                    ColorNigger2 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_2
                                    ColorNigger3 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_3
                                    ColorNigger4 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_4
                                    ColorNigger5 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_5
                                    ColorNigger6 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_6
                                    ColorNigger7 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_7
                                    ColorNigger8 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_8
                                    ColorNigger9 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_9
                                    ColorNigger10 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_10
                                    ColorNigger11 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_11
                                    ColorNigger12 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_12
                                    ColorNigger13 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_13
                                    ColorNigger14 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_14
                                    ColorNigger15 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_15
                                    ColorNigger16 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_16
                                    ColorNigger17 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_17
                                    ColorNigger18 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_18
                                    ColorNigger19 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_19
                                    break
                                end
                            end
                        end
                        if pingspooferv2 == true then
                            nigger =
                                PingLabel:GetPropertyChangedSignal("Text"):Connect(
                                function()
                                    local textrandom = math.random(minmem2, maxmem2) / 100
                                    PingLabel.Text = textrandom .. " ms"
                                    ColorNigger.BackgroundColor3 = ColorNiggertype
                                    ColorNigger1.BackgroundColor3 = ColorNiggertype
                                    ColorNigger2.BackgroundColor3 = ColorNiggertype
                                    ColorNigger3.BackgroundColor3 = ColorNiggertype
                                    ColorNigger4.BackgroundColor3 = ColorNiggertype
                                    ColorNigger5.BackgroundColor3 = ColorNiggertype
                                    ColorNigger6.BackgroundColor3 = ColorNiggertype
                                    ColorNigger7.BackgroundColor3 = ColorNiggertype
                                    ColorNigger8.BackgroundColor3 = ColorNiggertype
                                    ColorNigger9.BackgroundColor3 = ColorNiggertype
                                    ColorNigger10.BackgroundColor3 = ColorNiggertype
                                    ColorNigger11.BackgroundColor3 = ColorNiggertype
                                    ColorNigger12.BackgroundColor3 = ColorNiggertype
                                    ColorNigger13.BackgroundColor3 = ColorNiggertype
                                    ColorNigger14.BackgroundColor3 = ColorNiggertype
                                    ColorNigger15.BackgroundColor3 = ColorNiggertype
                                    ColorNigger16.BackgroundColor3 = ColorNiggertype
                                    ColorNigger17.BackgroundColor3 = ColorNiggertype
                                    ColorNigger18.BackgroundColor3 = ColorNiggertype
                                    ColorNigger19.BackgroundColor3 = ColorNiggertype
                                    if game.PlaceId == 9825515356 then
                                        game:GetService("ReplicatedStorage").MainEvent:FireServer("GetPing", textrandom)
                                    end
                                end
                            )
                        else
                            if nigger then
                                nigger:Disconnect()
                            end
                        end
                    end
                )

                local colormemtype2 = "Yellow"
                pingspoofer:AddDropdown(
                    "Color Type",
                    {"Yellow", "Red", "Green"},
                    "Yellow",
                    false,
                    function(v)
                        colormemtype2 = v
                        if colormemtype2 == "Yellow" then
                            ColorNiggertype = Color3.fromRGB(209, 211, 33)
                        elseif colormemtype2 == "Red" then
                            ColorNiggertype = Color3.fromRGB(211, 88, 33)
                        elseif colormemtype2 == "Green" then
                            ColorNiggertype = Color3.fromRGB(126, 211, 33)
                        end
                    end
                )

                pingspoofer:AddSlider(
                    "Max ping",
                    -10,
                    1,
                    1000,
                    0.1,
                    function(Value)
                        maxmem2 = Value .. 10
                    end
                )

                pingspoofer:AddSlider(
                    "Min Ping",
                    -10,
                    1,
                    1000,
                    0.1,
                    function(Value)
                        minmem2 = Value .. 10
                    end
                )

                local memeoryspoofer = Misc3:CreateSector("Memory Spoofer", "Right")
                local MemLabelv33
                local Colorfatcunt,
                    Colorfatcunt1,
                    Colorfatcunt2,
                    Colorfatcunt3,
                    Colorfatcunt4,
                    Colorfatcunt5,
                    Colorfatcunt6,
                    Colorfatcunt7,
                    Colorfatcunt8,
                    Colorfatcunt9,
                    Colorfatcunt10,
                    Colorfatcunt11,
                    Colorfatcunt12,
                    Colorfatcunt13,
                    Colorfatcunt14,
                    Colorfatcunt15,
                    Colorfatcunt16,
                    Colorfatcunt17,
                    Colorfatcunt18,
                    Colorfatcunt19
                local minmem = 80000
                local maxmem = 85000
                _G.funnycolor = Color3.fromRGB(126, 211, 33)
                local colormemtype = "Yellow"
                memeoryspoofer:AddToggle(
                    "Enable Spoofer",
                    false,
                    function(Boolean)
                        memeoryspooferenabledv2 = Boolean
                        if memeoryspooferenabledv2 == true then
                            local PerformanceStats =
                                game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PerformanceStats")
                            for I, Child in next, PerformanceStats:GetChildren() do
                                if Child.StatsMiniTextPanelClass.TitleLabel.Text == "Mem" then
                                    MemLabelv33 = Child.StatsMiniTextPanelClass.ValueLabel
                                    Colorfatcunt = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_0
                                    Colorfatcunt1 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_1
                                    Colorfatcunt2 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_2
                                    Colorfatcunt3 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_3
                                    Colorfatcunt4 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_4
                                    Colorfatcunt5 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_5
                                    Colorfatcunt6 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_6
                                    Colorfatcunt7 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_7
                                    Colorfatcunt8 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_8
                                    Colorfatcunt9 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_9
                                    Colorfatcunt10 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_10
                                    Colorfatcunt11 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_11
                                    Colorfatcunt12 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_12
                                    Colorfatcunt13 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_13
                                    Colorfatcunt14 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_14
                                    Colorfatcunt15 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_15
                                    Colorfatcunt16 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_16
                                    Colorfatcunt17 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_17
                                    Colorfatcunt18 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_18
                                    Colorfatcunt19 = Child.PS_AnnotatedGraph.PS_BarFrame.Bar_19
                                    break
                                end
                            end
                        end
                        if memeoryspooferenabledv2 == true then
                            faggotcum =
                                MemLabelv33:GetPropertyChangedSignal("Text"):Connect(
                                function()
                                    local textrandom = math.random(minmem, maxmem) / 100
                                    MemLabelv33.Text = textrandom .. " MB"
                                    Colorfatcunt.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt1.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt2.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt3.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt4.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt5.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt6.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt7.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt8.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt9.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt10.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt11.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt12.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt13.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt14.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt15.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt16.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt17.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt18.BackgroundColor3 = _G.funnycolor
                                    Colorfatcunt19.BackgroundColor3 = _G.funnycolor
                                end
                            )
                        else
                            if faggotcum then
                                faggotcum:Disconnect()
                            end
                        end
                    end
                )

                memeoryspoofer:AddDropdown(
                    "Color Type",
                    {"Yellow", "Red", "Green"},
                    "Yellow",
                    false,
                    function(v)
                        colormemtype = v
                        if colormemtype == "Yellow" then
                            _G.funnycolor = Color3.fromRGB(209, 211, 33)
                        elseif colormemtype == "Red" then
                            _G.funnycolor = Color3.fromRGB(211, 88, 33)
                        elseif colormemtype == "Green" then
                            _G.funnycolor = Color3.fromRGB(126, 211, 33)
                        end
                    end
                )

                memeoryspoofer:AddSlider(
                    "Max Memory",
                    0,
                    850,
                    2000,
                    0.1,
                    function(Value)
                        maxmem = Value .. 10
                    end
                )

                memeoryspoofer:AddSlider(
                    "Min Memory",
                    0,
                    800,
                    2000,
                    0.1,
                    function(Value)
                        minmem = Value .. 10
                    end
                )
            end

            if teleportenabled then
                local TeleportTab = Window:CreateTab("Teleports")

                local TeleportModule = {
                    Food = meffModule.Teleport.Food[1],
                    Gun = meffModule.Teleport.Gun[1],
                    Armor = meffModule.Teleport.Armor[1],
                    Melee = meffModule.Teleport.Melee[1],
                    Extra = meffModule.Teleport.Extra[1],
                    Bike = meffModule.Teleport.Bike[1],
                    Mask = meffModule.Teleport.Mask[1],
                    Phone = meffModule.Teleport.Phone[1],
                    Weight = meffModule.Teleport.Weight[1],
                    AutoSet = {
                        Tools = {}
                    }
                }

                local FoodSector = TeleportTab:CreateSector("Food Teleport", "left")
                FoodSector:AddDropdown(
                    "Food Selection",
                    meffModule.Teleport.Food,
                    meffModule.Teleport.Food[1],
                    false,
                    function(Value)
                        TeleportModule.Food = Value
                    end
                )

                FoodSector:AddButton(
                    "Teleport",
                    function()
                        TeleportBuy(ToolName(TeleportModule.Food))
                    end
                )

                local GunSector = TeleportTab:CreateSector("Gun Teleport", "left")
                GunSector:AddDropdown(
                    "Gun Selection",
                    meffModule.Teleport.Gun,
                    meffModule.Teleport.Gun[1],
                    false,
                    function(Value)
                        TeleportModule.Gun = Value
                    end
                )

                GunSector:AddButton(
                    "Teleport",
                    function()
                        TeleportBuy(ToolName(TeleportModule.Gun))
                        spawn(
                            function()
                                for i = 1, meffsettings.Teleport.AmmoPurchaseAmount do
                                    TeleportBuy(ToolAmmo(TeleportModule.Gun))
                                    wait(1)
                                end
                            end
                        )
                    end
                )

                getgenv().mainlocation = "Bank"

                local LocationSector = TeleportTab:CreateSector("Location Teleport", "left")
                LocationSector:AddDropdown(
                    "Location Teleport",
                    {"Bank", "Food", "UpHill", "Gas Station", "School", "Casino", "Down hill"},
                    "Bank",
                    false,
                    function(Value)
                        getgenv().mainlocation = Value
                    end
                )

                LocationSector:AddButton(
                    "Teleport",
                    function()
                        if getgenv().mainlocation == "Bank" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                -395.639313,
                                21.7499943,
                                -296.996582,
                                0.0315065868,
                                -7.03567977e-08,
                                -0.999503553,
                                -3.38179507e-09,
                                1,
                                -7.04983449e-08,
                                0.999503553,
                                5.60127855e-09,
                                0.0315065868
                            )
                        elseif getgenv().mainlocation == "Food" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                -329.771393,
                                23.682642,
                                -290.737885,
                                0.00267133373,
                                -1.85452436e-08,
                                -0.999996424,
                                -3.10311457e-08,
                                1,
                                -1.86282048e-08,
                                0.999996424,
                                3.10807948e-08,
                                0.00267133373
                            )
                        elseif getgenv().mainlocation == "UpHill" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                485.570068,
                                47.7549896,
                                -569.496826,
                                0.013204433,
                                8.4341373e-08,
                                0.999912798,
                                5.66054439e-08,
                                1,
                                -8.50962394e-08,
                                -0.999912798,
                                5.77241543e-08,
                                0.013204433
                            )
                        elseif getgenv().mainlocation == "Gas Station" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                569.729248,
                                49.0000343,
                                -255.716797,
                                -0.0274654441,
                                -8.37121945e-08,
                                0.999622762,
                                -2.34975168e-08,
                                1,
                                8.30981719e-08,
                                -0.999622762,
                                -2.12063238e-08,
                                -0.0274654441
                            )
                        elseif getgenv().mainlocation == "School" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                -593.704712,
                                21.7499924,
                                173.596588,
                                -0.999854207,
                                -8.25533135e-08,
                                -0.0170756821,
                                -8.15472774e-08,
                                1,
                                -5.96126384e-08,
                                0.0170756821,
                                -5.8211473e-08,
                                -0.999854207
                            )
                        elseif getgenv().mainlocation == "Casino" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                -1004.89423,
                                21.7499943,
                                -164.039993,
                                0.997695506,
                                -2.03665209e-08,
                                -0.0678502768,
                                1.96321039e-08,
                                1,
                                -1.1490882e-08,
                                0.0678502768,
                                1.01323572e-08,
                                0.997695506
                            )
                        elseif getgenv().mainlocation == "Down hill" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(
                                -550.641724,
                                7.99984598,
                                -735.04248,
                                -0.0338952243,
                                7.9451496e-08,
                                0.999425411,
                                -3.13831237e-08,
                                1,
                                -8.05615201e-08,
                                -0.999425411,
                                -3.40957413e-08,
                                -0.0338952243
                            )
                        end
                    end
                )
                local ArmorSector = TeleportTab:CreateSector("Armor Teleport", "left")
                ArmorSector:AddDropdown(
                    "Armor Selection",
                    meffModule.Teleport.Armor,
                    meffModule.Teleport.Armor[1],
                    false,
                    function(Value)
                        TeleportModule.Armor = Value
                    end
                )

                ArmorSector:AddButton(
                    "Teleport",
                    function()
                        TeleportBuy(ToolName(TeleportModule.Armor))
                    end
                )

                local MeleeSector = TeleportTab:CreateSector("Melee Teleport", "left")
                MeleeSector:AddDropdown(
                    "Melee Selection",
                    meffModule.Teleport.Melee,
                    meffModule.Teleport.Melee[1],
                    false,
                    function(Value)
                        TeleportModule.Melee = Value
                    end
                )

                MeleeSector:AddButton(
                    "Teleport",
                    function()
                        TeleportBuy(ToolName(TeleportModule.Melee))
                    end
                )

                local ExtraSector = TeleportTab:CreateSector("Extra Teleport", "left")
                ExtraSector:AddDropdown(
                    "Extra Selection",
                    meffModule.Teleport.Extra,
                    meffModule.Teleport.Extra[1],
                    false,
                    function(Value)
                        TeleportModule.Extra = Value
                    end
                )

                ExtraSector:AddButton(
                    "Teleport",
                    function()
                        TeleportBuy(ToolName(TeleportModule.Extra))
                    end
                )

                local BikeSector = TeleportTab:CreateSector("Bike Teleport", "left")
                BikeSector:AddDropdown(
                    "Bike Selection",
                    meffModule.Teleport.Bike,
                    meffModule.Teleport.Bike[1],
                    false,
                    function(Value)
                        TeleportModule.Bike = Value
                    end
                )

                BikeSector:AddButton(
                    "Teleport",
                    function()
                        TeleportBuy(ToolName(TeleportModule.Bike))
                    end
                )

                local MaskSector = TeleportTab:CreateSector("Mask Teleport", "left")
                MaskSector:AddDropdown(
                    "Mask Selection",
                    meffModule.Teleport.Mask,
                    meffModule.Teleport.Mask[1],
                    false,
                    function(Value)
                        TeleportModule.Mask = Value
                    end
                )

                MaskSector:AddButton(
                    "Teleport",
                    function()
                        TeleportBuy(ToolName(TeleportModule.Mask))
                    end
                )

                local PhoneSector = TeleportTab:CreateSector("Phone Teleport", "left")
                PhoneSector:AddDropdown(
                    "Phone Selection",
                    meffModule.Teleport.Phone,
                    meffModule.Teleport.Phone[1],
                    false,
                    function(Value)
                        TeleportModule.Phone = Value
                    end
                )

                PhoneSector:AddButton(
                    "Teleport",
                    function()
                        TeleportBuy(ToolName(TeleportModule.Phone))
                    end
                )

                local WeightSector = TeleportTab:CreateSector("Weight Teleport", "left")
                WeightSector:AddDropdown(
                    "Weight Selection",
                    meffModule.Teleport.Weight,
                    meffModule.Teleport.Weight[1],
                    false,
                    function(Value)
                        TeleportModule.Weight = Value
                    end
                )

                WeightSector:AddButton(
                    "Teleport",
                    function()
                        TeleportBuy(ToolName(TeleportModule.Weight))
                    end
                )

                local TeleportSettings = TeleportTab:CreateSector("Teleport Settings", "right")
                TeleportSettings:AddToggle(
                    "Teleport Return",
                    false,
                    function(State)
                        meffsettings.Teleport.TeleportReturn = State
                    end
                )

                TeleportSettings:AddSlider(
                    "Return Delay",
                    0,
                    1,
                    100,
                    1,
                    function(Value)
                        meffsettings.Teleport.ReturnDelay = Value
                    end
                )

                TeleportSettings:AddToggle(
                    "Auto Purchase",
                    false,
                    function(State)
                        meffsettings.Teleport.AutoPurchase = State
                    end
                )

                TeleportSettings:AddSlider(
                    "Ammo Purchase Amount",
                    0,
                    1,
                    100,
                    1,
                    function(Value)
                        meffsettings.Teleport.AmmoPurchaseAmount = Value
                    end
                )

                local AutoSetTab = TeleportTab:CreateSector("Auto Set", "right")
                for i, v in pairs(meffModule.Teleport.Armor) do
                    AutoSetTab:AddToggle(
                        v,
                        false,
                        function(State)
                            if State then
                                if not table.find(TeleportModule.AutoSet.Tools, v) then
                                    table.insert(TeleportModule.AutoSet.Tools, v)
                                end
                            else
                                Remove(TeleportModule.AutoSet.Tools, v)
                            end
                        end
                    )
                end

                for i, v in pairs(meffModule.Teleport.Gun) do
                    AutoSetTab:AddToggle(
                        v,
                        false,
                        function(State)
                            if State then
                                if not table.find(TeleportModule.AutoSet.Tools, v) then
                                    table.insert(TeleportModule.AutoSet.Tools, v)
                                end
                            else
                                Remove(TeleportModule.AutoSet.Tools, v)
                            end
                        end
                    )
                end

                AutoSetTab:AddButton(
                    "Teleport",
                    function()
                        if Alive(LocalPlayer) then
                            for i, v in pairs(TeleportModule.AutoSet.Tools) do
                                if string.find(v:lower(), "armor") then
                                    if
                                        meffsettings.Teleport.ArmorValueCheck and
                                            LocalPlayer.Character.BodyEffects.Armor.Value < 0
                                     then
                                        TeleportBuy(ToolName(v, true))
                                    else
                                        TeleportBuy(ToolName(v, true))
                                    end
                                else
                                    TeleportBuy(ToolName(v, true))
                                    spawn(
                                        function()
                                            for i = 1, meffsettings.Teleport.AmmoPurchaseAmount do
                                                TeleportBuy(ToolAmmo(v), true)
                                                wait(0.3)
                                            end
                                        end
                                    )
                                end
                            end
                        end
                    end
                )

                local plrteleport = TeleportTab:CreateSector("player", "right")

                plrteleport:AddTextbox(
                    "teleport",
                    nil,
                    function(Text)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game.Players[Text].Character.HumanoidRootPart.CFrame

                        wait(5)

                        p1.CFrame = p1.CFrame
                    end
                )
            end

            --esp

            if visualenabled then
                local Misc = Window:CreateTab("Visuals")

                local ESPSection = Misc:CreateSector("Esp", "left")

                local lplr = game.Players.LocalPlayer
                local camera = game:GetService("Workspace").CurrentCamera
                local CurrentCamera = workspace.CurrentCamera
                local worldToViewportPoint = CurrentCamera.worldToViewportPoint
                local mouse = game.Players.LocalPlayer:GetMouse()
                local UserInput = game:GetService("UserInputService")
                local player = game:GetService("Players").LocalPlayer
                local camera = game:GetService("Workspace").CurrentCamera

                getgenv().taffy_esp = {
                    box = {
                        enabled1 = true,
                        enabled = false,
                        outline = false,
                        healthbar = false,
                        armorBar = false,
                        color1 = Color3.fromRGB(255, 255, 255),
                        color2 = Color3.fromRGB(0, 0, 0),
                        healthbarcolor = Color3.fromRGB(4, 0, 255),
                        armorbarColor = Color3.fromRGB(73, 73, 255)
                    },
                    viewtracer = {
                        enabled = false,
                        length = 15,
                        autothickness = false,
                        thickness = 3,
                        color = Color3.fromRGB(255, 255, 255)
                    },
                    tracer = {
                        enabled = false,
                        unlocktracers = false,
                        color = Color3.fromRGB(255, 255, 255)
                    },
                    name = {
                        enabled = true,
                        outline = false,
                        size = 13,
                        font = 2,
                        color = Color3.fromRGB(255, 255, 255)
                    },
                    misc = {
                        teamcheck = false,
                        useteamcolors = false,
                        visibleonly = true
                    },
                    Toolsshow = {
                        enable = false,
                        outline = false,
                        size = 8,
                        font = 3,
                        color = Color3.fromRGB(147, 39, 161)
                    }
                }

                assert(getgenv().taffy_esp, "not loaded lol")

                function esp(v)
                    -- box --
                    local BLOCKOUTLINE = Drawing.new("Square")
                    BLOCKOUTLINE.Visible = false
                    BLOCKOUTLINE.Color = Color3.new(0, 0, 0)
                    BLOCKOUTLINE.Thickness = 3
                    BLOCKOUTLINE.Transparency = 1
                    BLOCKOUTLINE.Filled = false

                    local BOXPLAYER = Drawing.new("Square")
                    BOXPLAYER.Visible = false
                    BOXPLAYER.Color = taffy_esp.box.color1
                    BOXPLAYER.Thickness = 1
                    BOXPLAYER.Transparency = 1
                    BOXPLAYER.Filled = false

                    local HealthBarOUTLINE = Drawing.new("Square")
                    HealthBarOUTLINE.Thickness = 3
                    HealthBarOUTLINE.Filled = false
                    HealthBarOUTLINE.Color = Color3.new(0, 0, 0)
                    HealthBarOUTLINE.Transparency = 1
                    HealthBarOUTLINE.Visible = false

                    local HealthBarITSELF = Drawing.new("Square")
                    HealthBarITSELF.Thickness = 1
                    HealthBarITSELF.Filled = false
                    HealthBarITSELF.Transparency = 1
                    HealthBarITSELF.Visible = false

                    local ARMOBBAROUTLINE = Drawing.new("Square")
                    ARMOBBAROUTLINE.Thickness = 3
                    ARMOBBAROUTLINE.Filled = false
                    ARMOBBAROUTLINE.Color = Color3.new(0, 0, 0)
                    ARMOBBAROUTLINE.Transparency = 1
                    ARMOBBAROUTLINE.Visible = false

                    local ArmorBarITSELF = Drawing.new("Square")
                    ArmorBarITSELF.Thickness = 1
                    ArmorBarITSELF.Filled = false
                    ArmorBarITSELF.Transparency = 1
                    ArmorBarITSELF.Visible = false

                    -- tracer --

                    local Tracer = Drawing.new("Line")
                    Tracer.Visible = false
                    Tracer.Color = Color3.new(1, 1, 1)
                    Tracer.Thickness = 1
                    Tracer.Transparency = 1

                    -- View tracer --
                    local line = Drawing.new("Line") --// Parse and Set the line for tracer
                    line.Visible = false
                    line.From = Vector2.new(0, 0)
                    line.To = Vector2.new(0, 0)
                    line.Color = getgenv().taffy_esp.viewtracer.color
                    line.Thickness = getgenv().taffy_esp.viewtracer.thickness
                    line.Transparency = 1

                    -- name --

                    local Name = Drawing.new("Text")
                    Name.Transparency = 1
                    Name.Visible = false
                    Name.Color = taffy_esp.name.color
                    Name.Size = 16
                    Name.Center = true
                    Name.Outline = false
                    Name.Font = 2
                    Name.Text = "name [100/100]"

                    --tool--

                    local toolshow = Drawing.new("Text")
                    toolshow.Transparency = 1
                    toolshow.Visible = false
                    toolshow.Color = getgenv().taffy_esp.Toolsshow.color
                    toolshow.Size = 16
                    toolshow.Center = true
                    toolshow.Outline = false
                    toolshow.Font = 2
                    toolshow.Text = ""

                    game:GetService("RunService").RenderStepped:Connect(
                        function()
                            if
                                taffy_esp.box.enabled1 and v.Character ~= nil and
                                    v.Character:FindFirstChild("Humanoid") ~= nil and
                                    v.Character:FindFirstChild("Head") and
                                    v.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                                    v ~= lplr and
                                    v.Character.Humanoid.Health > 0 and
                                    (not taffy_esp.misc.teamcheck or v.TeamColor == lplr.TeamColor)
                             then
                                local Vector, onScreen =
                                    camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                                local Distance =
                                    (CurrentCamera.CFrame.p - v.Character.HumanoidRootPart.Position).Magnitude
                                local RootPart = v.Character.HumanoidRootPart
                                local Head = v.Character.Head
                                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                                local HeadPosition =
                                    worldToViewportPoint(CurrentCamera, Head.Position + Vector3.new(0, 0.5, 0))
                                local LegPosition =
                                    worldToViewportPoint(CurrentCamera, RootPart.Position - Vector3.new(0, 3, 0))
                                if (not taffy_esp.misc.visibleonly or onScreen) then
                                    if taffy_esp.box.enabled1 then
                                        BLOCKOUTLINE.Size =
                                            Vector2.new(2500 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                                        BLOCKOUTLINE.Position =
                                            Vector2.new(
                                            RootPosition.X - BLOCKOUTLINE.Size.X / 2,
                                            RootPosition.Y - BLOCKOUTLINE.Size.Y / 2
                                        )
                                        BLOCKOUTLINE.Visible = taffy_esp.box.outline and taffy_esp.box.enabled
                                        BLOCKOUTLINE.Color = taffy_esp.box.color2

                                        BOXPLAYER.Size =
                                            Vector2.new(2500 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                                        BOXPLAYER.Position =
                                            Vector2.new(
                                            RootPosition.X - BOXPLAYER.Size.X / 2,
                                            RootPosition.Y - BOXPLAYER.Size.Y / 2
                                        )
                                        BOXPLAYER.Visible = taffy_esp.box.enabled

                                        if not taffy_esp.misc.useteamcolors then
                                            local color = v.TeamColor
                                            BOXPLAYER.Color = taffy_esp.box.color1
                                        else
                                            BOXPLAYER.Color = taffy_esp.box.color1
                                        end

                                        HealthBarOUTLINE.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
                                        HealthBarOUTLINE.Position = HealthBarOUTLINE.Position - Vector2.new(6, 0)
                                        HealthBarOUTLINE.Visible = taffy_esp.box.outline and taffy_esp.box.healthbar

                                        HealthBarITSELF.Size =
                                            Vector2.new(
                                            2,
                                            (HeadPosition.Y - LegPosition.Y) /
                                                (v.Character.Humanoid.MaxHealth /
                                                    math.clamp(
                                                        v.Character.Humanoid.Health,
                                                        0,
                                                        v.Character.Humanoid.MaxHealth
                                                    ))
                                        )
                                        HealthBarITSELF.Position =
                                            Vector2.new(
                                            BOXPLAYER.Position.X - 5,
                                            BOXPLAYER.Position.Y + (1 / HealthBarITSELF.Size.Y)
                                        )
                                        HealthBarITSELF.Color = taffy_esp.box.healthbarcolor
                                        HealthBarITSELF.Visible = taffy_esp.box.healthbar

                                        if
                                            v.Character:FindFirstChild("BodyEffects") and
                                                v.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor")
                                         then
                                            ARMOBBAROUTLINE.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
                                            ARMOBBAROUTLINE.Position = ARMOBBAROUTLINE.Position - Vector2.new(6, 0)
                                            ARMOBBAROUTLINE.Visible = taffy_esp.box.outline
                                            if v.Character.BodyEffects.Armor.Value > 0 then
                                                local ArmorTitle = v.Character.BodyEffects.Armor.Value / 2
                                                ArmorBarITSELF.Size =
                                                    Vector2.new(
                                                    2,
                                                    (HeadPosition.Y - LegPosition.Y) /
                                                        (v.Character.Humanoid.MaxHealth /
                                                            math.clamp(ArmorTitle, 0, v.Character.Humanoid.MaxHealth))
                                                )
                                                ArmorBarITSELF.Position =
                                                    Vector2.new(
                                                    BOXPLAYER.Position.X - 8,
                                                    BOXPLAYER.Position.Y + (1 / ArmorBarITSELF.Size.Y)
                                                )
                                                ArmorBarITSELF.Color = taffy_esp.box.armorbarColor
                                                ArmorBarITSELF.Visible = taffy_esp.box.armorBar
                                            end
                                        end
                                    else
                                        BLOCKOUTLINE.Visible = false
                                        BOXPLAYER.Visible = false
                                        ARMOBBAROUTLINE.Visible = false
                                        ArmorBarITSELF.Visible = false
                                        HealthBarOUTLINE.Visible = false
                                        HealthBarITSELF.Visible = false
                                    end
                                    if taffy_esp.tracer.enabled and taffy_esp.box.enabled1 then
                                        if taffy_esp.tracer.unlocktracers then
                                            Tracer.From = Vector2.new(mouse.X, mouse.Y + 36)
                                        else
                                            Tracer.From =
                                                Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                                        end
                                        Tracer.To = Vector2.new(Vector.X, Vector.Y)
                                        Tracer.Visible = taffy_esp.tracer.enabled
                                        if not taffy_esp.misc.useteamcolors then
                                            local color = v.TeamColor
                                            Tracer.Color = taffy_esp.tracer.color
                                        else
                                            Tracer.Color = taffy_esp.tracer.color
                                        end
                                    else
                                        Tracer.Visible = false
                                    end

                                    if taffy_esp.Toolsshow.enable and taffy_esp.box.enabled1 then
                                        local Equipped =
                                            v.Character:FindFirstChildOfClass("Tool") and
                                            v.Character:FindFirstChildOfClass("Tool").Name or
                                            "None"
                                        toolshow.Text = Equipped
                                        toolshow.Position =
                                            Vector2.new(
                                            workspace.Camera:WorldToViewportPoint(v.Character.Head.Position).X,
                                            workspace.Camera:WorldToViewportPoint(v.Character.Head.Position).Y + 30
                                        )
                                        toolshow.Color = getgenv().taffy_esp.Toolsshow.color
                                        toolshow.Font = 3
                                        Name.Size = taffy_esp.Toolsshow.size
                                        toolshow.Visible = true
                                    else
                                        toolshow.Visible = false
                                    end
                                    if
                                        taffy_esp.viewtracer.enabled and taffy_esp.box.enabled1 and v.Character ~= nil and
                                            v.Character:FindFirstChild("Humanoid") ~= nil and
                                            v.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                                            v.Character.Humanoid.Health > 0 and
                                            v.Character:FindFirstChild("Head") ~= nil
                                     then
                                        local headpos, OnScreen = camera:WorldToViewportPoint(v.Character.Head.Position)
                                        if OnScreen then -- checks if player is on screen or not
                                            local offsetCFrame =
                                                CFrame.new(0, 0, -getgenv().taffy_esp.viewtracer.length)
                                            local check = false
                                            line.Thickness = getgenv().taffy_esp.viewtracer.thickness
                                            line.Color = getgenv().taffy_esp.viewtracer.color
                                            line.From = Vector2.new(headpos.X, headpos.Y)
                                            if getgenv().taffy_esp.viewtracer.autothickness == true then
                                                local distance =
                                                    (player.Character.HumanoidRootPart.Position -
                                                    v.Character.HumanoidRootPart.Position).magnitude --//AutoThickness
                                                local value = math.clamp(1 / distance * 100, 0.1, 3) --0.1 is min thickness, 4 is max
                                                line.Thickness = value
                                            end
                                            repeat
                                                local dir = v.Character.Head.CFrame:ToWorldSpace(offsetCFrame)
                                                offsetCFrame = offsetCFrame * CFrame.new(0, 0, 0.2)
                                                local dirpos, vis =
                                                    camera:WorldToViewportPoint(Vector3.new(dir.X, dir.Y, dir.Z))
                                                if vis then
                                                    check = true
                                                    line.To = Vector2.new(dirpos.X, dirpos.Y)
                                                    line.Visible = true
                                                    offsetCFrame =
                                                        CFrame.new(0, 0, -getgenv().taffy_esp.viewtracer.length)
                                                end
                                            until check == true
                                        else
                                            line.Visible = false
                                        end
                                    else
                                        line.Visible = false
                                        if game.Players:FindFirstChild(v.Name) == nil then
                                            line:Destroy()
                                        end
                                    end
                                    if taffy_esp.name.enabled and taffy_esp.box.enabled1 then
                                        Name.Text =
                                            tostring(v.Name) ..
                                            " [" ..
                                                tostring(math.floor(v.Character.Humanoid.Health + 0.5)) ..
                                                    "/" .. tostring(v.Character.Humanoid.MaxHealth) .. "]"
                                        Name.Position =
                                            Vector2.new(
                                            workspace.Camera:WorldToViewportPoint(v.Character.Head.Position).X,
                                            workspace.Camera:WorldToViewportPoint(v.Character.Head.Position).Y - 30
                                        )
                                        Name.Visible = true
                                        Name.Size = taffy_esp.name.size
                                        if not taffy_esp.misc.useteamcolors then
                                            local color = v.TeamColor
                                            Name.Color = taffy_esp.name.color
                                        else
                                            Name.Color = taffy_esp.name.color
                                        end
                                        Name.Outline = taffy_esp.name.outline
                                    else
                                        Name.Visible = false
                                    end
                                else
                                    BLOCKOUTLINE.Visible = false
                                    BOXPLAYER.Visible = false
                                    toolshow.Visible = false
                                    ARMOBBAROUTLINE.Visible = false
                                    ArmorBarITSELF.Visible = false
                                    HealthBarOUTLINE.Visible = false
                                    HealthBarITSELF.Visible = false
                                    Tracer.Visible = false
                                    line.Visible = false
                                    Name.Visible = false
                                end
                            else
                                toolshow.Visible = false
                                BLOCKOUTLINE.Visible = false
                                BOXPLAYER.Visible = false
                                line.Visible = false
                                ARMOBBAROUTLINE.Visible = false
                                ArmorBarITSELF.Visible = false
                                HealthBarOUTLINE.Visible = false
                                HealthBarITSELF.Visible = false
                                Tracer.Visible = false
                                Name.Visible = false
                            end
                        end
                    )
                end

                for i, v in pairs(game.Players:GetChildren()) do
                    esp(v)
                end

                game.Players.PlayerAdded:Connect(
                    function(v)
                        esp(v)
                    end
                )

                getgenv().mainlocation = ""

                ESPSection:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        getgenv().taffy_esp.box.enabled1 = Boolean
                    end
                )

                local boxcolor2 =
                    ESPSection:AddToggle(
                    "Box",
                    false,
                    function(Boolean)
                        getgenv().taffy_esp.box.enabled = Boolean
                    end
                )

                boxcolor2:AddColorpicker(
                    Color3.new(1, 1, 1),
                    function(Color)
                        getgenv().taffy_esp.box.color1 = Color
                    end
                )

                local healthcolor =
                    ESPSection:AddToggle(
                    "Healthbar",
                    false,
                    function(Boolean)
                        getgenv().taffy_esp.box.healthbar = Boolean
                    end
                )

                healthcolor:AddColorpicker(
                    Color3.new(0, 1, 0),
                    function(Color)
                        getgenv().taffy_esp.box.healthbarcolor = Color
                    end
                )

                local armorcolor =
                    ESPSection:AddToggle(
                    "Armor",
                    false,
                    function(Boolean)
                        getgenv().taffy_esp.box.armorBar = Boolean
                    end
                )

                armorcolor:AddColorpicker(
                    Color3.fromRGB(73, 73, 255),
                    function(Color)
                        taffy_esp.box.armorbarColor = Color
                    end
                )
                local tracercolor =
                    ESPSection:AddToggle(
                    "Tracer",
                    false,
                    function(Boolean)
                        getgenv().taffy_esp.tracer.enabled = Boolean
                    end
                )

                local unlockabletracers =
                    ESPSection:AddToggle(
                    "Unlock Tracer",
                    false,
                    function(Boolean)
                        getgenv().taffy_esp.tracer.unlocktracers = Boolean
                    end
                )

                tracercolor:AddColorpicker(
                    Color3.new(1, 1, 1),
                    function(Color)
                        getgenv().taffy_esp.tracer.color = Color
                    end
                )

                local namecolor =
                    ESPSection:AddToggle(
                    "Name",
                    false,
                    function(Boolean)
                        getgenv().taffy_esp.name.enabled = Boolean
                    end
                )

                namecolor:AddColorpicker(
                    Color3.new(1, 1, 1),
                    function(Color)
                        getgenv().taffy_esp.name.color = Color
                    end
                )

                local toolcolor =
                    ESPSection:AddToggle(
                    "Tool",
                    false,
                    function(Boolean)
                        getgenv().taffy_esp.Toolsshow.enable = Boolean
                    end
                )

                toolcolor:AddColorpicker(
                    Color3.new(1, 1, 1),
                    function(Color)
                        getgenv().taffy_esp.Toolsshow.color = Color
                    end
                )

                ESPSection:AddToggle(
                    "Outline",
                    false,
                    function(Boolean)
                        taffy_esp.box.outline = Boolean
                    end
                )

                ESPSection:AddLabel("-View Tracer-")

                local enabletracervieew =
                    ESPSection:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        getgenv().taffy_esp.viewtracer.enabled = Boolean
                    end
                )

                enabletracervieew:AddColorpicker(
                    Color3.new(1, 1, 1),
                    function(Color)
                        getgenv().taffy_esp.viewtracer.color = Color
                    end
                )

                ESPSection:AddSlider(
                    "Length",
                    0,
                    15,
                    100,
                    1,
                    function(Value)
                        getgenv().taffy_esp.viewtracer.length = Value
                    end
                )

                ESPSection:AddSlider(
                    "Thickness",
                    0,
                    2,
                    100,
                    1,
                    function(Value)
                        getgenv().taffy_esp.viewtracer.thickness = Value
                    end
                )

                ESPSection:AddToggle(
                    "AutoThickness",
                    false,
                    function(Boolean)
                        getgenv().taffy_esp.viewtracer.autothickness = Boolean
                    end
                )

                local Visuals2 = Misc:CreateSector("Visuals Settings", "right")
                local colorsaturations =
                    Visuals2:AddSlider(
                    "Color Saturation",
                    0,
                    0.1,
                    100,
                    1,
                    function(Value)
                        Light.ColorCorrection.Saturation = Value
                    end
                )
                local foggable =
                    Visuals2:AddSlider(
                    "Fog",
                    0,
                    500,
                    2000,
                    1,
                    function(Value)
                        game.Lighting.FogEnd = Value
                    end
                )
                local Brightnessx =
                    Visuals2:AddSlider(
                    "Brightness",
                    0,
                    0.1,
                    100,
                    1,
                    function(Value)
                        Light.Brightness = Value
                    end
                )
                local howmanystars =
                    Visuals2:AddSlider(
                    "Stars",
                    0,
                    500,
                    5000,
                    1,
                    function(Value)
                        Light.Sky.StarCount = Value
                    end
                )
                getgenv().Ambience = false
                getgenv().Ambiencecolor = Color3.fromRGB(0, 0, 0)
                getgenv().OutdoorAmbient = false
                getgenv().OutdoorAmbientcolor = Color3.fromRGB(152, 152, 146)

                local Ambiencecolor3 =
                    Visuals2:AddToggle(
                    "Ambience",
                    false,
                    function(Boolean)
                        getgenv().Ambience = Boolean
                        while getgenv().Ambience do
                            wait()
                            game:GetService("Lighting").Ambient = getgenv().Ambiencecolor
                        end
                        if getgenv().Ambience == false then
                            game:GetService("Lighting").Ambient = Color3.fromRGB(0, 0, 0)
                        end
                    end
                )

                Ambiencecolor3:AddColorpicker(
                    Color3.fromRGB(0, 0, 0),
                    function(Color)
                        getgenv().Ambiencecolor = Color
                    end
                )

                local Ambiencecolor2 =
                    Visuals2:AddToggle(
                    "Outdoor Ambience",
                    false,
                    function(Boolean)
                        getgenv().OutdoorAmbient = Boolean
                        while getgenv().OutdoorAmbient do
                            wait()
                            game:GetService("Lighting").OutdoorAmbient = getgenv().OutdoorAmbientcolor
                        end
                        if getgenv().OutdoorAmbient == false then
                            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(152, 152, 146)
                        end
                    end
                )

                Ambiencecolor2:AddColorpicker(
                    Color3.fromRGB(152, 152, 146),
                    function(Color)
                        getgenv().OutdoorAmbientcolor = Color
                    end
                )

                local customsklove =
                    Visuals2:AddToggle(
                    "Custom skybox",
                    false,
                    function(Boolean)
                        getgenv().skybox = Boolean
                        while getgenv().skybox do
                            task.wait()
                            if getgenv().skybox and getgenv().theskybox == "Pink sky" then
                                Light["ClockTime"] = "12"
                                game:GetService("Lighting").Sky.SkyboxBk = "http://www.roblox.com/asset/?id=1279987105"
                                game:GetService("Lighting").Sky.SkyboxDn = "http://www.roblox.com/asset/?id=1279987105"
                                game:GetService("Lighting").Sky.SkyboxFt = "http://www.roblox.com/asset/?id=1279987105"
                                game:GetService("Lighting").Sky.SkyboxLf = "http://www.roblox.com/asset/?id=1279987105"
                                game:GetService("Lighting").Sky.SkyboxRt = "http://www.roblox.com/asset/?id=1279987105"
                                game:GetService("Lighting").Sky.SkyboxUp = "http://www.roblox.com/asset/?id=1279987105"
                            elseif getgenv().theskybox == "Red sky" then
                                Light["ClockTime"] = "12"
                                game:GetService("Lighting").Sky.SkyboxBk = "http://www.roblox.com/asset/?id=2571711090"
                                game:GetService("Lighting").Sky.SkyboxDn = "http://www.roblox.com/asset/?id=2571711090"
                                game:GetService("Lighting").Sky.SkyboxFt = "http://www.roblox.com/asset/?id=2571711090"
                                game:GetService("Lighting").Sky.SkyboxLf = "http://www.roblox.com/asset/?id=2571711090"
                                game:GetService("Lighting").Sky.SkyboxRt = "http://www.roblox.com/asset/?id=2571711090"
                                game:GetService("Lighting").Sky.SkyboxUp = "http://www.roblox.com/asset/?id=2571711090"
                            elseif getgenv().theskybox == "Nebula" then
                                Light["ClockTime"] = "12"
                                game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://6277563515"
                                game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://6277565742"
                                game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://6277567481"
                                game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://6277569562"
                                game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://6277583250"
                                game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://6277586065"
                            elseif getgenv().theskybox == "Dark Night" then
                                Light["ClockTime"] = "12"
                                game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://6285719338"
                                game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://6285721078"
                                game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://6285722964"
                                game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://6285724682"
                                game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://6285726335"
                                game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://6285730635"
                            elseif getgenv().theskybox == "Space" then
                                Light["ClockTime"] = "12"
                                game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://877168885"
                                game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://877169070"
                                game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://877169154"
                                game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://877169233"
                                game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://877169317"
                                game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://877169431"
                            elseif getgenv().theskybox == "Purple sky" then
                                Light["ClockTime"] = "12"
                                game:GetService("Lighting").Sky.SkyboxBk = "http://www.roblox.com/asset/?id=9971120429"
                                game:GetService("Lighting").Sky.SkyboxDn = "http://www.roblox.com/asset/?id=9971120429"
                                game:GetService("Lighting").Sky.SkyboxFt = "http://www.roblox.com/asset/?id=9971120429"
                                game:GetService("Lighting").Sky.SkyboxLf = "http://www.roblox.com/asset/?id=9971120429"
                                game:GetService("Lighting").Sky.SkyboxRt = "http://www.roblox.com/asset/?id=9971120429"
                                game:GetService("Lighting").Sky.SkyboxUp = "http://www.roblox.com/asset/?id=9971120429"
                            elseif getgenv().theskybox == "Green sky" then
                                Light["ClockTime"] = "12"
                                game:GetService("Lighting").Sky.SkyboxBk = "http://www.roblox.com/asset/?id=8754359769"
                                game:GetService("Lighting").Sky.SkyboxDn = "http://www.roblox.com/asset/?id=8754359769"
                                game:GetService("Lighting").Sky.SkyboxFt = "http://www.roblox.com/asset/?id=8754359769"
                                game:GetService("Lighting").Sky.SkyboxLf = "http://www.roblox.com/asset/?id=8754359769"
                                game:GetService("Lighting").Sky.SkyboxRt = "http://www.roblox.com/asset/?id=8754359769"
                                game:GetService("Lighting").Sky.SkyboxUp = "http://www.roblox.com/asset/?id=8754359769"
                            elseif getgenv().theskybox == "Meffsol sky" then
                                Light["ClockTime"] = "12"
                                game:GetService("Lighting").Sky.SkyboxBk = "http://www.roblox.com/asset/?id=9398566564"
                                game:GetService("Lighting").Sky.SkyboxDn = "http://www.roblox.com/asset/?id=9398566564"
                                game:GetService("Lighting").Sky.SkyboxFt = "http://www.roblox.com/asset/?id=9398566564"
                                game:GetService("Lighting").Sky.SkyboxLf = "http://www.roblox.com/asset/?id=9398566564"
                                game:GetService("Lighting").Sky.SkyboxRt = "http://www.roblox.com/asset/?id=9398566564"
                                game:GetService("Lighting").Sky.SkyboxUp = "http://www.roblox.com/asset/?id=9398566564"
                            end
                        end
                    end
                )

                Visuals2:AddDropdown(
                    "skybox",
                    {"Pink sky", "Nebula", "Red sky", "Purple sky", "Green sky", "Meffsol sky", "Space", "Dark Night"},
                    "Pink sky",
                    false,
                    function(Value)
                        getgenv().theskybox = Value
                    end
                )

                local grenadeesp = Misc:CreateSector("Grenade Esp", "right")
                getgenv().Enable = false
                getgenv().Checkpos = false
                getgenv().grenadenameball = false
                getgenv().grenademodel = false
                getgenv().dangercolor = Color3.fromRGB(255, 0, 0)
                getgenv().safecolor = Color3.fromRGB(0, 255, 0)

                local grenadename = Drawing.new("Text")
                grenadename.Transparency = 1
                grenadename.Visible = false
                grenadename.Color = getgenv().dangercolor
                grenadename.Size = 16
                grenadename.Center = true
                grenadename.Outline = false
                grenadename.Font = 2
                grenadename.Text = "[DANGER]"
                local grenademodel = Instance.new("Part", game.Workspace)
                grenademodel.Name = "GrenadeModel"
                grenademodel.Anchored = true
                grenademodel.CanCollide = false
                grenademodel.Transparency = 1
                grenademodel.Parent = game.Workspace
                grenademodel.Shape = Enum.PartType.Ball
                grenademodel.Size = Vector3.new(20, 14, 40)
                grenademodel.Color = getgenv().dangercolor
                grenademodel.Material = "ForceField"
                spawn(
                    function()
                        game:GetService("RunService").Heartbeat:Connect(
                            function()
                                if getgenv().Enable == true then
                                    if game.PlaceId == 2788229376 then
                                        if
                                            game:GetService("Workspace"):FindFirstChild("Ignored"):FindFirstChild(
                                                "Handle"
                                            )
                                         then
                                            local camera = game:GetService("Workspace").CurrentCamera
                                            local CurrentCamera = workspace.CurrentCamera
                                            local worldToViewportPoint = CurrentCamera.worldToViewportPoint
                                            local RootPart = game:GetService("Workspace").Ignored.Handle
                                            local RootPosition, RootVis =
                                                worldToViewportPoint(CurrentCamera, RootPart.Position)
                                            grenademodel.Transparency = 0
                                            if getgenv().grenademodel == true then
                                                grenademodel.Transparency = 0
                                                grenademodel.Position =
                                                    game:GetService("Workspace").Ignored.Handle.Position
                                            else
                                                grenademodel.Transparency = 1
                                            end
                                            if getgenv().grenademodel == true and getgenv().Checkpos == false then
                                                grenademodel.Color = getgenv().dangercolor
                                            end
                                            if getgenv().grenadenameball == true and getgenv().Checkpos == false then
                                                grenadename.Text = "[DANGER]"
                                                grenadename.Color = getgenv().dangercolor
                                                grenadename.Position = Vector2.new(RootPosition.X, RootPosition.Y)
                                                grenadename.Visible = true
                                                grenadename.Size = 25
                                            else
                                                grenadename.Visible = false
                                            end
                                            if
                                                (game:GetService("Workspace").Ignored.Handle.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                                    12 and getgenv().Checkpos == true
                                             then
                                                if getgenv().grenademodel == true then
                                                    grenademodel.Color = getgenv().dangercolor
                                                end
                                                if getgenv().grenadenameball == true then
                                                    grenadename.Text = "[DANGER]"
                                                    grenadename.Color = getgenv().dangercolor
                                                    grenadename.Position = Vector2.new(RootPosition.X, RootPosition.Y)
                                                    grenadename.Visible = true
                                                    grenadename.Size = 25
                                                else
                                                    grenadename.Visible = false
                                                end
                                            else
                                                if getgenv().grenademodel == true and getgenv().Checkpos == true then
                                                    grenademodel.Color = getgenv().safecolor
                                                end
                                                if getgenv().grenadenameball == true and getgenv().Checkpos == true then
                                                    grenadename.Text = "[SAFE]"
                                                    grenadename.Color = getgenv().safecolor
                                                    grenadename.Position = Vector2.new(RootPosition.X, RootPosition.Y)
                                                    grenadename.Visible = true
                                                    grenadename.Size = 25
                                                else
                                                    if getgenv().grenadenameball == true and getgenv().Checkpos == true then
                                                        grenadename.Visible = false
                                                    end
                                                end
                                            end
                                        else
                                            grenadename.Visible = false
                                            grenademodel.Transparency = 1
                                        end
                                    end
                                end
                            end
                        )
                    end
                )

                grenadeesp:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        getgenv().Enable = true
                    end
                )

                grenadeesp:AddToggle(
                    "Bubble",
                    false,
                    function(Boolean)
                        getgenv().grenademodel = Boolean
                    end
                )

                grenadeesp:AddToggle(
                    "Text",
                    false,
                    function(Boolean)
                        getgenv().grenadenameball = Boolean
                    end
                )

                grenadeesp:AddToggle(
                    "Check Position",
                    false,
                    function(Boolean)
                        getgenv().Checkpos = Boolean
                    end
                )

                grenadeesp:AddColorpicker(
                    "Danger Color",
                    Color3.fromRGB(255, 0, 0),
                    function(Color)
                        getgenv().dangercolor = Color
                    end
                )

                grenadeesp:AddColorpicker(
                    "Safe Color",
                    Color3.fromRGB(0, 255, 0),
                    function(Color)
                        getgenv().safecolor = Color
                    end
                )

                local fard8 = Misc:CreateSector("Client Sided", "right")

                fard8:AddToggle(
                    "Headless",
                    false,
                    function(callback)
                        if callback then
                            _G.Save0 = game.Players.LocalPlayer.Character.Head.face.Texture
                            game.Players.LocalPlayer.Character.Head.Transparency = 1
                            game.Players.LocalPlayer.Character.Head.face.Texture = 0
                        else
                            if _G.Save0 then
                                game.Players.LocalPlayer.Character.Head.Transparency = 0
                                game.Players.LocalPlayer.Character.Head.face.Texture = _G.Save0
                            end
                        end
                    end
                )
                local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid

                if humanoid.RigType == Enum.HumanoidRigType.R15 then
                    _G.Save9112 = game.Players.LocalPlayer.Character.RightLowerLeg.MeshId
                    _G.Save91212 = game.Players.LocalPlayer.Character.RightUpperLeg.MeshId
                    _G.Save911112 = game.Players.LocalPlayer.Character.RightUpperLeg.TextureID
                    _G.Save911332 = game.Players.LocalPlayer.Character.RightFoot.MeshId
                end
                fard8:AddToggle(
                    "Korblox",
                    false,
                    function(callback)
                        if callback then
                            local ply = game.Players.LocalPlayer
                            local chr = ply.Character
                            chr.RightLowerLeg.MeshId = "902942093"
                            chr.RightLowerLeg.Transparency = "1"
                            chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
                            chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
                            chr.RightFoot.MeshId = "902942089"
                            chr.RightFoot.Transparency = "1"
                        else
                            local ply = game.Players.LocalPlayer
                            local chr = ply.Character
                            chr.RightLowerLeg.MeshId = _G.Save9112
                            chr.RightLowerLeg.Transparency = "0"
                            chr.RightUpperLeg.MeshId = _G.Save91212
                            chr.RightUpperLeg.TextureID = _G.Save911112
                            chr.RightFoot.MeshId = _G.Save911332
                            chr.RightFoot.Transparency = "0"
                        end
                    end
                  
                )

                getgenv().beastmode = false
                local beastmodexd =
                    fard8:AddToggle(
                    "Beast Mode",
                    false,
                    function(Boolean)
                        getgenv().beastmode = Boolean
                        if getgenv().beastmode == true then
                            _G.Save0 = game.Players.LocalPlayer.Character.Head.face.Texture
                            game.Players.LocalPlayer.Character:WaitForChild("Head"):WaitForChild("face").Texture =
                                "rbxassetid://127959433"
                        else
                            if _G.Save0 then
                                game.Players.LocalPlayer.Character:WaitForChild("Head"):WaitForChild("face").Texture =
                                    _G.Save0
                            end
                        end
                    end
                )

                getgenv().Tattletale = false
                local Tattletaleontop =
                    fard8:AddToggle(
                    "Tattletale",
                    false,
                    function(Boolean)
                        getgenv().Tattletale = Boolean
                        if getgenv().Tattletale == true then
                            _G.Save0 = game.Players.LocalPlayer.Character.Head.face.Texture
                            game.Players.LocalPlayer.Character:WaitForChild("Head"):WaitForChild("face").Texture =
                                "rbxassetid://4925283890"
                        else
                            if _G.Save0 then
                                game.Players.LocalPlayer.Character:WaitForChild("Head"):WaitForChild("face").Texture =
                                    _G.Save0
                            end
                        end
                    end
                )

                getgenv().sshf = false
                local superhappyfaceable =
                    fard8:AddToggle(
                    "Super Super Happy Face",
                    false,
                    function(Boolean)
                        getgenv().sshf = Boolean
                        if getgenv().sshf == true then
                            _G.Save0 = game.Players.LocalPlayer.Character.Head.face.Texture
                            game.Players.LocalPlayer.Character:WaitForChild("Head"):WaitForChild("face").Texture =
                                "rbxassetid://9058356392"
                        else
                            if _G.Save0 then
                                game.Players.LocalPlayer.Character:WaitForChild("Head"):WaitForChild("face").Texture =
                                    _G.Save0
                            end
                        end
                    end
                )

                getgenv().playfulVampire = false
                local playfulVampireon =
                    fard8:AddToggle(
                    "Playful Vampire",
                    false,
                    function(Boolean)
                        getgenv().playfulVampire = Boolean
                        if getgenv().playfulVampire == true then
                            _G.Save0 = game.Players.LocalPlayer.Character.Head.face.Texture
                            game.Players.LocalPlayer.Character:WaitForChild("Head"):WaitForChild("face").Texture =
                                "rbxassetid://2409281591"
                        else
                            if _G.Save0 then
                                game.Players.LocalPlayer.Character:WaitForChild("Head"):WaitForChild("face").Texture =
                                    _G.Save0
                            end
                        end
                    end
                )

                 
                local Visuals7 = Misc:CreateSector("Image Changer", "left")
                Visuals7:AddDropdown(
                    "Damage Indicator",
                    {"Normal", "Wakeup", "Peter", "Jumpscare", "Blood", "Meff", "Blank"},
                    "Normal",
                    false,
                    function(Value)
                        chingchong332 = Value
                        if chingchong332 == "Wakeup" then
                            game.ReplicatedStorage.DMGIndicator.Image = "http://www.roblox.com/asset/?id=6210809637"
                        elseif chingchong332 == "Peter" then
                            game.ReplicatedStorage.DMGIndicator.Image = "http://www.roblox.com/asset/?id=10062244808"
                        elseif chingchong332 == "Meff" then
                            game.ReplicatedStorage.DMGIndicator.Image = "http://www.roblox.com/asset/?id=9398566564"
                        elseif chingchong332 == "Blood" then
                            game.ReplicatedStorage.DMGIndicator.Image = "http://www.roblox.com/asset/?id=3236192667"
                        elseif chingchong332 == "Jumpscare" then
                            game.ReplicatedStorage.DMGIndicator.Image = "http://www.roblox.com/asset/?id=1021461193"
                        elseif chingchong332 == "Blank" then
                            game.ReplicatedStorage.DMGIndicator.Image = "http://www.roblox.com/asset/?id=8968805098"
                        elseif chingchong332 == "Normal" then
                            game.ReplicatedStorage.DMGIndicator.Image = "http://www.roblox.com/asset/?id=2827810687"
                        end
                    end
                )
                Visuals7:AddLabel("Hold out your gun first")
                local chingchong3322 = "Normal"

                Visuals7:AddDropdown(
                    "Ammo Image",
                    {"Normal", "Wakeup", "Peter", "Jumpscare", "Blood", "Meff", "Blank", "Bullet2"},
                    "Normal",
                    false,
                    function(Value)  
                        chingchong3322 = Value
                        if chingchong3322 == "Wakeup" then
                            game.ReplicatedStorage.AmmoG.Image = "http://www.roblox.com/asset/?id=6210809637"
                        elseif chingchong3322 == "Peter" then
                            game.ReplicatedStorage.AmmoG.Image = "http://www.roblox.com/asset/?id=10062244808"
                        elseif chingchong3322 == "Meff" then
                            game.ReplicatedStorage.AmmoG.Image = "http://www.roblox.com/asset/?id=9398566564"
                        elseif chingchong3322 == "Blood" then
                            game.ReplicatedStorage.AmmoG.Image = "http://www.roblox.com/asset/?id=3236192667"
                        elseif chingchong3322 == "Jumpscare" then
                            game.ReplicatedStorage.AmmoG.Image = "http://www.roblox.com/asset/?id=1021461193"
                        elseif chingchong3322 == "Blank" then
                            game.ReplicatedStorage.AmmoG.Image = "http://www.roblox.com/asset/?id=8968805098"
                        elseif chingchong3322 == "Bullet2" then
                            game.ReplicatedStorage.AmmoG.Image = "http://www.roblox.com/asset/?id=497785534"
                        elseif chingchong3322 == "Normal" then
                            game.ReplicatedStorage.AmmoG.Image = "http://www.roblox.com/asset/?id=444744114"
                        end
                    end
                )

                local chingbong332 = "Normal"

                Visuals7:AddDropdown(
                    "ShootBB Indicator",
                    {"Normal", "Wakeup", "Peter", "Jumpscare", "Blood", "Meff", "Blank"},
                    "Normal",
                    false,
                    function(Value)
                        chingbong332 = Value
                        if chingbong332 == "Wakeup" then
                            game:GetService("RunService").Stepped:wait()
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.Handle.ShootBBGUI.Shoot.Image = "http://www.roblox.com/asset/?id=6210809637"
                        elseif chingbong332 == "Peter" then
                            game:GetService("RunService").Stepped:wait()
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.Handle.ShootBBGUI.Shoot.Image = "http://www.roblox.com/asset/?id=10062244808"
                        elseif chingbong332 == "Meff" then
                            game:GetService("RunService").Stepped:wait()
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.Handle.ShootBBGUI.Shoot.Image = "http://www.roblox.com/asset/?id=9398566564"
                        elseif chingbong332 == "Blood" then
                            game:GetService("RunService").Stepped:wait()
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.Handle.ShootBBGUI.Shoot.Image = "http://www.roblox.com/asset/?id=3236192667"
                        elseif chingbong332 == "Jumpscare" then
                            game:GetService("RunService").Stepped:wait()
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.Handle.ShootBBGUI.Shoot.Image = "http://www.roblox.com/asset/?id=1021461193"
                        elseif chingbong332 == "Blank" then
                            game:GetService("RunService").Stepped:wait()
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.Handle.ShootBBGUI.Shoot.Image = "http://www.roblox.com/asset/?id=8968805098"
                        elseif chingbong332 == "Normal" then
                            game:GetService("RunService").Stepped:wait()
                            local niggertool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            niggertool.Handle.ShootBBGUI.Shoot.Image = "http://www.roblox.com/asset/?id=2769170822"
                        end
                    end
                )

                local cursor2 = Misc:CreateSector("cursor", "left")

                cursor2:AddColorpicker(
                    "Color",
                    Color3.new(1, 1, 1),
                    function(Color)
                        game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.BackgroundColor3 =
                            Color
                        game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Top.BackgroundColor3 =
                            Color
                        game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Bottom.BackgroundColor3 =
                            Color
                        game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Right.BackgroundColor3 =
                            Color
                        game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Left.BackgroundColor3 =
                            Color
                    end
                )

                cursor2:AddToggle(
                    "Top",
                    false,
                    function(callback)
                        if callback then
                            Topcursor =
                                game:GetService("RunService").heartbeat:Connect(
                                function()
                                    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Top.Visible =
                                        false
                                end
                            )
                        else  
                            if Topcursor then
                                Topcursor:Disconnect()
                            end
                            game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Top.Visible =
                                true
                        end
                    end
                )

                cursor2:AddToggle(
                    "Bottom",
                    false,
                    function(callback)
                        if callback then
                            Bottomcursor =
                                game:GetService("RunService").heartbeat:Connect(
                                function()
                                    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Bottom.Visible =
                                        false
                                end
                            )
                        else
                            if Bottomcursor then
                                Bottomcursor:Disconnect()
                            end
                            game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Bottom.Visible =
                                true
                        end
                    end
                )

                cursor2:AddToggle(
                    "Right",
                    false,
                    function(callback)
                        if callback then
                            Rightcursor =
                                game:GetService("RunService").heartbeat:Connect(
                                function()
                                    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Right.Visible =
                                        false
                                end
                            )
                        else
                            if Rightcursor then
                                Rightcursor:Disconnect()
                            end
                            game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Right.Visible =
                                true
                        end
                    end
                )
                 
                cursor2:AddToggle(
                    "Left",
                    false,
                    function(callback)
                        if callback then
                            leftcursor =
                                game:GetService("RunService").heartbeat:Connect(
                                function()
                                    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Left.Visible =
                                        false
                                end
                            )
                        else
                            if leftcursor then
                                leftcursor:Disconnect()
                            end
                            game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Left.Visible =
                                true
                        end
                    end
                )

                getgenv().rotationspeed = 5

                cursor2:AddToggle(
                    "Rotation",
                    false,
                    function(callback)
                        if callback then
                            rotatecursorlol =
                                game:GetService("RunService").heartbeat:Connect(
                                function()
                                    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Rotation =
                                        game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Rotation +
                                        getgenv().rotationspeed
                                    task.wait()
                                end
                            )
                        else
                            if rotatecursorlol then
                                rotatecursorlol:Disconnect()
                            end
                            game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Rotation =
                                0
                        end
                    end
                )

                cursor2:AddSlider(
                    "Rotation Speed",
                    0,
                    5,
                    10,
                      
                    10,
                    function(Value)
                        getgenv().rotationspeed = Value
                    end
                )

                local rainbowcursor = false
                cursor2:AddToggle(
                    "Rainbow Cursor",
                    false,
                    function(Boolean)
                        rainbowcursor = Boolean
                        if rainbowcursor == true then
                            rainbowcursorlol =
                                game:GetService("RunService").heartbeat:Connect(
                                function()
                                    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.BackgroundColor3 =
                                        Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Top.BackgroundColor3 =
                                        Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Bottom.BackgroundColor3 =
                                        Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Right.BackgroundColor3 =
                                        Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Left.BackgroundColor3 =
                                        Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                    task.wait()
                                end
                            )
                        end
                        if rainbowcursor == false then
                            if rainbowcursorlol then
                                rainbowcursorlol:Disconnect()
                            end
                            game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.BackgroundColor3 =
                                Color3.new(1, 1, 1)
                            game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Top.BackgroundColor3 =
                                Color3.new(1, 1, 1)
                            game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Bottom.BackgroundColor3 =
                                Color3.new(1, 1, 1)
                            game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Right.BackgroundColor3 =
                                Color3.new(1, 1, 1)
                            game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui").Aim.Left.BackgroundColor3 =
                                Color3.new(1, 1, 1)
                        end
                    end
                )
                local deadcham = Misc:CreateSector("Dead Cham Player", "left")
                getgenv().deadchamenabled = false
                getgenv().deadchamcolor = Color3.fromRGB(0, 140, 175)
                local deadchamenabledd =
                    deadcham:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        getgenv().deadchamenabled = Boolean
                    end
                )
                deadchamenabledd:AddColorpicker(
                    Color3.fromRGB(0, 140, 175),
                    function(Color)
                        getgenv().deadchamcolor = Color
                    end
                )
                game:GetService("RunService").RenderStepped:Connect(
                    function()
                        if getgenv().deadchamenabled == true then
                            for i, v in pairs(game.Players:GetChildren()) do
                                if v.Name ~= game.Players.LocalPlayer.Name then
                                    if v.Character and v.Character:FindFirstChild("Humanoid") then
                                        if
                                            v.Character:WaitForChild("BodyEffects") and v.Character.Humanoid.health < 1 or
                                                v.Character:FindFirstChild("BodyEffects")["K.O"].Value or
                                                v.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
                                         then
                                            for _, k in pairs(v.Character:GetChildren()) do
                                                if k:IsA "BasePart" and not k:FindFirstChild "Cham" then
                                                    local cham = Instance.new("BoxHandleAdornment", k)
                                                    cham.ZIndex = 10
                                                    cham.Adornee = k
                                                    cham.AlwaysOnTop = true
                                                    cham.Size = k.Size
                                                    cham.Transparency = .5
                                                    cham.Color3 = getgenv().deadchamcolor
                                                    cham.Name = "Cham"
                                                end
                                            end
                                        else
                                            for _, k in pairs(v.Character:GetChildren()) do
                                                if k:IsA "BasePart" and k:FindFirstChild "Cham" then
                                                    k:FindFirstChild("Cham"):Destroy()
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        game:GetService("RunService").RenderStepped:Wait()
                    end
                )
                local Visuals3 = Misc:CreateSector("client visual", "left")

                task.spawn(
                    function()
                        PredictorPart.Anchored = true
                        PredictorPart.CanCollide = false
                        PredictorPart.CFrame = CFrame.new(0, 9999, 0)
                        PredictorPart.Transparency = 1
                        newBillboardx.Name = "Predictor"
                        newBillboardx.Adornee = PredictorPart
                        newBillboardx.Size = UDim2.new(0.7, 0, 0.7, 0)
                        newBillboardx.AlwaysOnTop = true
                        newFramex.Size = UDim2.new(1, 0, 1, 0)
                        newFramex.BackgroundTransparency = 0
                        newUiCornorx.CornerRadius = UDim.new(50, 50)
                      
                    end
                )

                local predictorcolor3 =
                    Visuals3:AddToggle(
                    "Predicter",
                    false,
                    function(Boolean)
                        predictorenable = Boolean
                        if predictorenable then
                            PredictorHook =
                                game:GetService("RunService").Stepped:Connect(
                                function()
                                    PredictorPart.CFrame =
                                        CFrame.new(
                                        LocalPlayer.Character.HumanoidRootPart.Position +
                                            (LocalPlayer.Character.HumanoidRootPart.Velocity * 0.11)
                                    )
                                    spawn(
                                        function()
                                            newFramex.BackgroundColor3 = PredictorColoxr
                                        end
                                    )
                                end
                            )
                        elseif predictorenable == false and PredictorHook then
                            PredictorHook:Disconnect()
                            PredictorPart.CFrame = CFrame.new(0, 5000, 0)
                        end
                    end
                )

                predictorcolor3:AddColorpicker(
                    Color3.new(1, 1, 1),
                    function(Color)
                        PredictorColoxr = Color
                    end
                )

                local bodycham2 =
                    Visuals3:AddToggle(
                    "Body cham",
                    false,
                    function(callback)
                        if callback then
                            local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid

                            if humanoid.RigType == Enum.HumanoidRigType.R15 then
                                _G.colorbody11111 = game.Players.LocalPlayer.Character.LeftHand.Color
                                _G.colorbody11211 = game.Players.LocalPlayer.Character.RightHand.Color
                                _G.colorbody2111 = game.Players.LocalPlayer.Character.LeftLowerArm.Color
                                _G.colorbody3111 = game.Players.LocalPlayer.Character.RightLowerArm.Color
                                _G.colorbody4111 = game.Players.LocalPlayer.Character.LeftUpperArm.Color
                                _G.colorbody5111 = game.Players.LocalPlayer.Character.RightUpperArm.Color
                                _G.colorbody6111 = game.Players.LocalPlayer.Character.LeftFoot.Color
                                _G.colorbody7111 = game.Players.LocalPlayer.Character.RightFoot.Color
                                _G.colorbody8111 = game.Players.LocalPlayer.Character.LeftLowerLeg.Color
                                _G.colorbody9111 = game.Players.LocalPlayer.Character.RightLowerLeg.Color
                                _G.colorbody10111 = game.Players.LocalPlayer.Character.UpperTorso.Color
                                _G.colorbody11111 = game.Players.LocalPlayer.Character.LowerTorso.Color
                                _G.colorbody12111 = game.Players.LocalPlayer.Character.LeftUpperLeg.Color
                                _G.colorbody13111 = game.Players.LocalPlayer.Character.RightUpperLeg.Color
                                _G.colorbody14111 = game.Players.LocalPlayer.Character.Head.Color
                                nutssackquaklolzzz =
                                    game:GetService("RunService").heartbeat:Connect(
                                    function()
                                        game.Players.LocalPlayer.Character.LeftHand.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.RightHand.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.LeftLowerArm.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.RightLowerArm.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.LeftUpperArm.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.RightUpperArm.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.LeftFoot.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.RightFoot.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.RightLowerLeg.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.UpperTorso.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.LowerTorso.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.RightUpperLeg.Material = "ForceField"
                                        game.Players.LocalPlayer.Character.Head.Material = "ForceField"
                                    end
                                )
                            end
                        else
                            if nutssackquaklolzzz then
                                nutssackquaklolzzz:Disconnect()
                            end
                            local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid

                            if humanoid.RigType == Enum.HumanoidRigType.R15 then  
                                game.Players.LocalPlayer.Character.LeftHand.Material = "Plastic"
                                game.Players.LocalPlayer.Character.RightHand.Material = "Plastic"
                                game.Players.LocalPlayer.Character.LeftLowerArm.Material = "Plastic"
                                game.Players.LocalPlayer.Character.RightLowerArm.Material = "Plastic"
                                game.Players.LocalPlayer.Character.LeftUpperArm.Material = "Plastic"
                                game.Players.LocalPlayer.Character.RightUpperArm.Material = "Plastic"
                                game.Players.LocalPlayer.Character.LeftFoot.Material = "Plastic"
                                game.Players.LocalPlayer.Character.RightFoot.Material = "Plastic"
                                game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "Plastic"
                                game.Players.LocalPlayer.Character.RightLowerLeg.Material = "Plastic"
                                game.Players.LocalPlayer.Character.UpperTorso.Material = "Plastic"
                                game.Players.LocalPlayer.Character.LowerTorso.Material = "Plastic"
                                game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "Plastic"
                                game.Players.LocalPlayer.Character.RightUpperLeg.Material = "Plastic"
                                game.Players.LocalPlayer.Character.Head.Material = "Plastic"
                                game.Players.LocalPlayer.Character.LeftHand.Color = _G.colorbody11111
                                game.Players.LocalPlayer.Character.RightHand.Color = _G.colorbody11211
                                game.Players.LocalPlayer.Character.LeftLowerArm.Color = _G.colorbody2111
                                game.Players.LocalPlayer.Character.RightLowerArm.Color = _G.colorbody3111
                                game.Players.LocalPlayer.Character.LeftUpperArm.Color = _G.colorbody4111
                                game.Players.LocalPlayer.Character.RightUpperArm.Color = _G.colorbody5111
                                game.Players.LocalPlayer.Character.LeftFoot.Color = _G.colorbody6111
                                game.Players.LocalPlayer.Character.RightFoot.Color = _G.colorbody7111
                                game.Players.LocalPlayer.Character.LeftLowerLeg.Color = _G.colorbody8111
                                game.Players.LocalPlayer.Character.RightLowerLeg.Color = _G.colorbody9111
                                game.Players.LocalPlayer.Character.UpperTorso.Color = _G.colorbody10111
                                game.Players.LocalPlayer.Character.LowerTorso.Color = _G.colorbody11111
                                game.Players.LocalPlayer.Character.LeftUpperLeg.Color = _G.colorbody12111
                                game.Players.LocalPlayer.Character.RightUpperLeg.Color = _G.colorbody13111
                                game.Players.LocalPlayer.Character.Head.Color = _G.colorbody14111
                            end
                        end
                    end
                )

                bodycham2:AddColorpicker(
                    Color3.new(1, 1, 1),
                    function(Color)
                        local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid

                        if humanoid.RigType == Enum.HumanoidRigType.R15 then
                            LocalPlayer.Character.LeftHand.Color = Color
                            LocalPlayer.Character.RightHand.Color = Color
                            LocalPlayer.Character.LeftLowerArm.Color = Color
                            LocalPlayer.Character.RightLowerArm.Color = Color
                            LocalPlayer.Character.LeftUpperArm.Color = Color
                            LocalPlayer.Character.RightUpperArm.Color = Color
                            LocalPlayer.Character.LeftFoot.Color = Color
                            LocalPlayer.Character.RightFoot.Color = Color
                            LocalPlayer.Character.LeftLowerLeg.Color = Color
                            LocalPlayer.Character.RightLowerLeg.Color = Color
                            LocalPlayer.Character.UpperTorso.Color = Color
                            LocalPlayer.Character.LowerTorso.Color = Color
                            LocalPlayer.Character.LeftUpperLeg.Color = Color
                            LocalPlayer.Character.RightUpperLeg.Color = Color
                            LocalPlayer.Character.Head.Color = Color
                        end
                    end
                )

                local bodycham2 =
                    Visuals3:AddToggle(
                    "Rainbow Body",
                    false,
                    function(callback)
                        if callback then
                            _G.colorbody111 = LocalPlayer.Character.LeftHand.Color
                            _G.colorbody112 = LocalPlayer.Character.RightHand.Color
                            _G.colorbody21 = LocalPlayer.Character.LeftLowerArm.Color
                            _G.colorbody31 = LocalPlayer.Character.RightLowerArm.Color
                            _G.colorbody41 = LocalPlayer.Character.LeftUpperArm.Color
                            _G.colorbody51 = LocalPlayer.Character.RightUpperArm.Color
                            _G.colorbody61 = LocalPlayer.Character.LeftFoot.Color
                            _G.colorbody71 = LocalPlayer.Character.RightFoot.Color
                            _G.colorbody81 = LocalPlayer.Character.LeftLowerLeg.Color
                            _G.colorbody91 = LocalPlayer.Character.RightLowerLeg.Color
                            _G.colorbody101 = LocalPlayer.Character.UpperTorso.Color
                            _G.colorbody117 = LocalPlayer.Character.LowerTorso.Color
                            _G.colorbody121 = LocalPlayer.Character.LeftUpperLeg.Color
                            _G.colorbody131 = LocalPlayer.Character.RightUpperLeg.Color
                            _G.colorbody141 = LocalPlayer.Character.Head.Color
                            local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
                            nutssackquaklolz =
                                game:GetService("RunService").heartbeat:Connect(
                                function()
                                    if humanoid.RigType == Enum.HumanoidRigType.R15 then
                                        LocalPlayer.Character.LeftHand.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.RightHand.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.LeftLowerArm.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.RightLowerArm.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.LeftUpperArm.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.RightUpperArm.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.LeftFoot.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.RightFoot.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.LeftLowerLeg.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.RightLowerLeg.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.UpperTorso.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.LowerTorso.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.LeftUpperLeg.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.RightUpperLeg.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                        LocalPlayer.Character.Head.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                    end
                                  
                                end
                            )
                        else
                            if nutssackquaklolz then
                                nutssackquaklolz:Disconnect()
                            end
                            local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid

                            if humanoid.RigType == Enum.HumanoidRigType.R15 then
                                LocalPlayer.Character.LeftHand.Color = _G.colorbody111
                                LocalPlayer.Character.RightHand.Color = _G.colorbody112
                                LocalPlayer.Character.LeftLowerArm.Color = _G.colorbody21
                                LocalPlayer.Character.RightLowerArm.Color = _G.colorbody31
                                LocalPlayer.Character.LeftUpperArm.Color = _G.colorbody41
                                LocalPlayer.Character.RightUpperArm.Color = _G.colorbody51
                                LocalPlayer.Character.LeftFoot.Color = _G.colorbody61
                                LocalPlayer.Character.RightFoot.Color = _G.colorbody71
                                LocalPlayer.Character.LeftLowerLeg.Color = _G.colorbody81
                                LocalPlayer.Character.RightLowerLeg.Color = _G.colorbody91
                                LocalPlayer.Character.UpperTorso.Color = _G.colorbody101
                                LocalPlayer.Character.LowerTorso.Color = _G.colorbody117
                                LocalPlayer.Character.LeftUpperLeg.Color = _G.colorbody121
                                LocalPlayer.Character.RightUpperLeg.Color = _G.colorbody131
                                LocalPlayer.Character.Head.Color = _G.colorbody141
                            end
                        end
                    end
                )
                getgenv().nutssackcolor = nil
                local colorcham =
                    Visuals3:AddToggle(
                    "Gun cham",
                    false,
                    function(callback)
                        if callback then
                            nutssackquak =
                                game:GetService("RunService").heartbeat:Connect(
                                function()
                                    local Client = game.GetService(game, "Players").LocalPlayer
                                    Client.Character:FindFirstChildOfClass("Tool").Default.Material =
                                        Enum.Material.ForceField
                                    Client.Character:FindFirstChildOfClass("Tool").Default.BrickColor =
                                        getgenv().nutssackcolor
                                end
                            )
                        else
                            if nutssackquak then
                                nutssackquak:Disconnect()
                            end
                            local Client = game.GetService(game, "Players").LocalPlayer
                            Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.Plastic
                        end
                    end
                )

                colorcham:AddColorpicker(
                    Color3.new(1, 1, 1),
                    function(Color)
                        getgenv().nutssackcolor = BrickColor.new(Color)
                    end
                )

                Visuals3:AddToggle(
                    "Rainbow Gun",
                    false,
                    function(callback)
                        if callback then
                            nutssackquak =
                                game:GetService("RunService").heartbeat:Connect(
                                function()
                                    getgenv().nutssackcolor = BrickColor.new(Color3.fromHSV(tick() % 5 / 5, 1, 1))
                                end
                            )
                        else
                            if nutssackquak then
                                nutssackquak:Disconnect()
                            end
                            LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.BrickColor =
                                BrickColor.new(Color3.new(1, 1, 1))
                        end
                    end
                )
                 
                local niggacum = false
                local niggacumcolorxe = Color3.fromRGB(255, 0, 0)
                local niggaculor = Color3.fromRGB(255, 0, 0)
                local LocalPlayer = game.Players.LocalPlayer
                local LocalHL = Instance.new("Highlight")

                local highlightxd =
                    Visuals3:AddToggle(
                    "Highlight",
                    false,
                    function(Boolean)
                        niggacum = Boolean
                    end
                )

                task.spawn(
                    function()
                        while true do
                            wait()
                            if niggacum == true then
                                LocalHL.Parent = LocalPlayer.Character
                                LocalHL.FillColor = niggaculor
                                LocalHL.OutlineColor = niggacumcolorxe
                            end
                            if niggacum == false then
                                LocalHL.Parent = game.CoreGui
                            end
                        end
                    end
                )

                highlightxd:AddColorpicker(
                    Color3.fromRGB(0, 140, 175),
                    function(Color)
                        niggaculor = Color
                    end
                )
                highlightxd:AddColorpicker(
                    Color3.fromRGB(0, 140, 175),
                    function(Color)
                        niggacumcolorxe = Color
                    end
                )

                local Visuals757 = Misc:CreateSector("Trail", "right")

                _G.toggletrail = false
                _G.t = .02
                _G.trailmaterial = "ForceField"
                _G.trailsize = Vector3.new(1, 1, 1)
                _G.Colorpart = Color3.fromRGB(4, 0, 255)
                _G.postrail = -3
                _G.timedelete = 2
                local a = false
                local parts = 0

                game:GetService "RunService".RenderStepped:Connect(
                    function()
                        if _G.toggletrail then
                            if game:GetService "Players".LocalPlayer.Character and not a then
                                a = true
                                local part = Instance.new("Part")
                                part.Name = game:GetService "Players".LocalPlayer.Name .. " part " .. parts
                                part.CanCollide = false
                                part.Size = _G.trailsize
                                part.CFrame =
                                    game:GetService "Players".LocalPlayer.Character:FindFirstChild "HumanoidRootPart".CFrame *
                                    CFrame.new(0, _G.postrail, 0)
                                part.Anchored = true
                                part.Shape = Enum.PartType.Ball
                                part.Material = _G.trailmaterial
                                part.Parent = workspace
                                part.Color = _G.Colorpart
                                parts = parts + 1
                                wait(_G.t)
                                a = false
                                wait(_G.timedelete)
                                part:Destroy()
                            end
                        end
                    end
                )

                local trailenabled =
                    Visuals757:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)  
                        _G.toggletrail = Boolean
                    end
                )

                Visuals757:AddSlider(
                    "Size Trail",
                    0,
                    1,
                    10,
                    10,
                    function(Value)
                        _G.trailsize = Vector3.new(Value, Value, Value)
                    end
                )

                Visuals757:AddSlider(
                    "Position",
                    -10,
                    -3,
                    10,
                    1,
                    function(Value)
                        _G.postrail = Value
                    end
                )

                Visuals757:AddSlider(
                    "Refresh Rate",
                    0,
                    1,
                    1,
                    100,
                    function(Value)
                        _G.t = Value
                    end
                )

                Visuals757:AddSlider(
                    "Remove Time",
                    0,
                    2,
                    10,
                    10,
                    function(Value)
                        _G.timedelete = Value
                    end
                )

                Visuals757:AddDropdown(
                    "Material",
                    {
                        "Plastic",
                        "Concrete",
                        "Grass",
                        "Metal",
                        "WoodPlanks",
                        "ForceField",
                        "Glass",
                        "Neon",
                        "SmoothPlastic",
                        "Fabric",
                        "Brick"
                    },
                    "ForceField",
                    false,
                    function(Value)
                        _G.trailmaterial = Value
                    end
                )

                Visuals757:AddColorpicker(
                    "Color",
                    Color3.fromRGB(0, 140, 175),
                    function(Color)
                        _G.Colorpart = Color
                    end
                )

                local Visuals77 = Misc:CreateSector("Cone Hat", "right")

                LoadedTime = tick()

                local LocalPlayer = game.Players.LocalPlayer

                function Alive(Player)
                    if
                        Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                            Player.Character:FindFirstChild("Humanoid") ~= nil and
                            Player.Character:FindFirstChild("Head") ~= nil
                     then
                        return true
                    end
                    return false
                end

                settings = {
                    enabled = false, -- / true / false
                    minCameraDistance = 1, -- / any number 
                    hatTransparency = .35, -- / 0 - 1 (0 being invisible)
                    circleTransparency = 1, -- / 0 - 1 (0 being invisible)
                    height = .75, -- / any number
                    radius = 1, -- /-- any number
                    sides = 25, -- / any number
                    rainbow = false, -- / true / false
                    color = Color3.fromRGB(128, 18, 255), -- / 0-255,0-255,0-255
                    offset = Vector3.new(0, .75, 0) -- / number,number,number (studs offset from head center)
                }

                local runservice = game:GetService("RunService")
                local lplr = game:GetService("Players").LocalPlayer
                local camera = workspace.CurrentCamera
                local tau = math.pi * 2
                local drawings = {}

                for i = 1, settings.sides do
                    drawings[i] = {Drawing.new("Line"), Drawing.new("Triangle")}
                    drawings[i][1].ZIndex = 2
                    drawings[i][1].Thickness = 2
                    drawings[i][2].ZIndex = 1
                    drawings[i][2].Filled = true
                end

                runservice.RenderStepped:Connect(
                    function()
                        local pass =
                            settings.enabled and lplr.Character and lplr.Character:FindFirstChild("Head") ~= nil and
                            (camera.CFrame.p - camera.Focus.p).magnitude > settings.minCameraDistance and
                            lplr.Character.Humanoid.Health > 0
                        for i = 1, #drawings do
                            local line, triangle = drawings[i][1], drawings[i][2]
                            if pass then
                                local color =
                                    settings.rainbow and Color3.fromHSV((tick() % 5 / 5 - (i / #drawings)) % 1, .5, 1) or
                                    settings.color
                                local pos = lplr.Character.Head.Position + settings.offset
                                local topWorld = pos + Vector3.new(0, settings.height, 0)

                                local last, next = (i / settings.sides) * tau, ((i + 1) / settings.sides) * tau
                                local lastWorld =
                                    pos + (Vector3.new(math.cos(last), 0, math.sin(last)) * settings.radius)
                                local nextWorld =
                                    pos + (Vector3.new(math.cos(next), 0, math.sin(next)) * settings.radius)
                                local lastScreen = camera:WorldToViewportPoint(lastWorld)
                                local nextScreen = camera:WorldToViewportPoint(nextWorld)
                                local topScreen = camera:WorldToViewportPoint(topWorld)

                                line.From = Vector2.new(lastScreen.X, lastScreen.Y)
                                line.To = Vector2.new(nextScreen.X, nextScreen.Y)
                                line.Color = color
                                line.Transparency = settings.circleTransparency
                                line.Visible = true

                                triangle.PointA = Vector2.new(topScreen.X, topScreen.Y)
                                triangle.PointB = line.From
                                triangle.PointC = line.To
                                triangle.Color = color
                                triangle.Transparency = settings.hatTransparency
                                triangle.Visible = true
                            else
                                line.Visible = false
                                triangle.Visible = false
                            end
                        end
                    end
                )

                local conehatcolor =
                    Visuals77:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        settings.enabled = Boolean
                    end
                )

                conehatcolor:AddColorpicker(
                    Color3.new(1, 1, 1),
                    function(Color)
                        settings.color = Color
                    end
                )

                Visuals77:AddToggle(
                    "Rainbow",
                    false,
                    function(Boolean)
                        settings.rainbow = Boolean
                    end
                )

                Visuals77:AddSlider(
                    "Height",
                    0,
                    0.75,
                    2,
                    20,
                      
                    function(Value)
                        settings.height = Value
                    end
                )

                Visuals77:AddSlider(
                    "Radius",
                    0,
                    1,
                    6,
                    10,
                    function(Value)
                        settings.radius = Value
                    end
                )

                Visuals77:AddSlider(
                    "Sides",
                    0,
                    25,
                    50,
                    1,
                    function(Value)
                        settings.sides = Value
                    end
                )

                local Visuals4 = Misc:CreateSector("Player look", "left")

                local selfdot3 =
                    Visuals4:AddToggle(
                    "Self dot",
                    false,
                    function(Boolean)
                        getgenv().selfdot = Boolean

                        while getgenv().selfdot do
                            local ET = tick() - previousTime
                            previousTime = tick()

                            distanceTraveled =
                                distanceTraveled +
                                ET * (game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Magnitude)
                            print(distanceTraveled)
                            if distanceTraveled > breadcrumbDistance then
                                placeBreadcrumb(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                                distanceTraveled = 0
                            end
                            wait()
                        end
                    end
                )

                local Clone4 =
                    Visuals4:AddToggle(
                    "Clone",
                    false,
                    function(Boolean)
                        getgenv().selfchamfollow = Boolean

                        if getgenv().selfchamfollow == true then
                            repeat
                                game.Players.LocalPlayer.Character.Archivable = true
                                local Clone = game.Players.LocalPlayer.Character:Clone()
                                for _, Obj in next, Clone:GetDescendants() do
                                    if
                                        Obj.Name == "HumanoidRootPart" or Obj:IsA("Humanoid") or Obj:IsA("LocalScript") or
                                            Obj:IsA("Script") or
                                            Obj:IsA("Decal")
                                     then
                                        Obj:Destroy()
                                    elseif Obj:IsA("BasePart") or Obj:IsA("Meshpart") or Obj:IsA("Part") then
                                        if Obj.Transparency == 1 then
                                            Obj:Destroy()
                                        else
                                            Obj.CanCollide = false
                                            Obj.Anchored = true
                                            Obj.Material = getgenv().clonematerial
                                            Obj.Color = getgenv().selfchamfollowingcolor
                                            Obj.Transparency = 0
                                            Obj.Size = Obj.Size + Vector3.new(0.03, 0.03, 0.03)
                                        end
                                    end
                                    pcall(
                                        function()
                                            Obj.CanCollide = false
                                        end
                                    )
                                end
                                Clone.Parent = game.Workspace
                                wait(getgenv().selfchamfollowwait)
                                Clone:Destroy()
                            until getgenv().selfchamfollow == false
                        end
                    end
                )

                Clone4:AddColorpicker(
                    Color3.new(1, 1, 1),
                    function(Color)
                        getgenv().selfchamfollowingcolor = Color
                    end
                  
                )

                Visuals4:AddDropdown(
                    "Clone Material",
                    {"ForceField", "Neon", "Glass", "SmoothPlastic"},
                    "ForceField",
                    false,
                    function(Value)
                        getgenv().clonematerial = Value
                    end
                )

                Visuals4:AddSlider(
                    "Cham respawn",
                    0,
                    2,
                    10,
                    20,
                    function(Value)
                        getgenv().selfchamfollowwait = Value
                    end
                )

                function Alive(Player)
                    if
                        Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                            Player.Character:FindFirstChild("Humanoid") ~= nil and
                            Player.Character:FindFirstChild("Head") ~= nil
                     then
                        return true
                    end
                    return false
                end

                local bullettracerr = Misc:CreateSector("Bullet Tracers", "right")

                local bulletcolor2 =
                    bullettracerr:AddToggle(
                    "Enable",
                    false,
                    function(Boolean)
                        BulletTracers = Boolean
                    end
                )

                bulletcolor2:AddColorpicker(
                    Color3.new(1, 1, 1),
                    function(Color)
                        bullet_tracer_color = Color
                    end
                )

                local rainbowbullet = false

                bullettracerr:AddToggle(
                    "Rainbow",
                    false,
                    function(Boolean)
                        rainbowbullet = Boolean
                        while rainbowbullet do
                            bullet_tracer_color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                            task.wait()
                        end
                    end
                )
            end

            function Jitter(Speed, Angle)
                if Alive(LocalPlayer) then
                    local Jit = Speed or math.random(30, 90)
                    LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
                        CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0)
                end
            end

            function Spin(Speed)
                if Alive(LocalPlayer) then
                    LocalPlayer.Character.HumanoidRootPart.CFrame =
                        LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(Speed), 0)
                end
            end

            function TeleportBuy(Target, AutoSetDelay)
                if workspace.Ignored.Shop:FindFirstChild(Target) and Alive(LocalPlayer) then
                    meffModule.Old.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                    wait(0.05)
                      
                    LocalPlayer.Character.HumanoidRootPart.CFrame =
                        Workspace.Ignored.Shop[Target].Head.CFrame * CFrame.new(0, 3, 0)
                    wait(0.15)
                    if meffsettings.Teleport.AutoPurchase then
                        for i = 1, 10 do
                            fireclickdetector(Workspace.Ignored.Shop[Target].ClickDetector)
                        end
                    end
                    if meffsettings.Teleport.TeleportReturn then
                        wait(meffsettings.Teleport.ReturnDelay)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = meffModule.Old.CFrame
                    end
                    if AutoSetDelay then
                        wait(1)
                    end
                end
            end

            function Buy(Target, Delay, LagBack)
                if workspace.Ignored.Shop:FindFirstChild(Target) and Alive(LocalPlayer) then
                    meffModule.Old.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                    wait(0.05)
                    LocalPlayer.Character.HumanoidRootPart.CFrame =
                        Workspace.Ignored.Shop[Target].Head.CFrame * CFrame.new(0, 3, 0)
                    wait(0.15)
                    for i = 1, 3 do
                        fireclickdetector(Workspace.Ignored.Shop[Target].ClickDetector)
                    end
                    if LagBack then
                        wait(1)
                        LocalPlayer.Character.HumanoidRootPart.CFrame = meffModule.Old.CFrame
                    end
                    if Delay ~= nil then
                        wait(Delay)
                    end
                end
            end

            function Visible(OriginPart, Part)
                if Alive(LocalPlayer) then
                    local IgnoreList = {CurrentCamera, LocalPlayer.Character, OriginPart.Parent}
                    local Parts =
                        CurrentCamera:GetPartsObscuringTarget({OriginPart.Position, Part.Position}, IgnoreList)

                    for i, v in pairs(Parts) do
                        if v.Transparency >= 0.3 then
                            meffModule.Instance[#meffModule.Instance + 1] = v
                        end

                        if v.Material == Enum.Material.Glass then
                            meffModule.Instance[#meffModule.Instance + 1] = v
                        end
                    end

                    return #Parts == 0
                end
                return true
            end

            function ToolName(Name)
                for Check = 1, 100000 do
                    if Workspace.Ignored.Shop:FindFirstChild("[" .. Name .. "] - $" .. Check) then
                        return tostring("[" .. Name .. "] - $" .. Check)
                    end
                end
            end

            function ToolAmmo(Name)
                for Check1 = 1, 250 do
                    for Check2 = 1, 250 do
                        if Workspace.Ignored.Shop:FindFirstChild(Check1 .. " [" .. Name .. " Ammo] - $" .. Check2) then
                            return tostring(Check1 .. " [" .. Name .. " Ammo] - $" .. Check2)
                        end
                    end
                end
            end

            RunService.Heartbeat:Connect(
                function()
                    if Alive(LocalPlayer) then
                        if
                            meffsettings.Blatant.Movement.SpeedEnabled and
                                meffsettings.Blatant.Movement.SpeedType == "CFrame"
                         then
                            if meffsettings.Blatant.Movement.SpeedRenderType == "Default" then
                                if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                                    for i = 1, meffsettings.Blatant.Movement.SpeedAmount do
                                        LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection)
                                    end
                                end
                            end
                        end
                    end
                end
            )

            RunService.Heartbeat:Connect(
                function()
                    if Alive(LocalPlayer) then
                        if
                            meffsettings.Blatant.Movement.SpeedEnabled and
                                meffsettings.Blatant.Movement.SpeedType == "Velocity"
                         then
                            if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity =
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *
                                    meffsettings.Blatant.Movement.SpeedAmount
                            end
                        end
                    end
                  
                end
            )
            RunService.RenderStepped:Connect(
                function()
                    if
                        aiming.od.unlockkoplayer == true and game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                            game.Players.LocalPlayer.Character.Humanoid.health < 1
                     then
                        aiming.targetaim.targeting = false
                        targetplr = nil
                        line.Visible = false
                        aiming.targetaim.toggablexd = false
                        CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                        if aiming.visualization.mode == "Cylinder" then
                            local vvv = game:GetService("Workspace").uwu4
                            vvv:Destroy()
                        end

                        if aiming.visualization.mode == "Ball" then
                            local vvv = game:GetService("Workspace").uwu
                            vvv:Destroy()
                        end

                        if aiming.visualization.mode == "Ball2" then
                            local vvv = game:GetService("Workspace").uwu2
                            vvv:Destroy()
                        end
                        if aiming.visualization.mode == "Block" then
                            local vvv = game:GetService("Workspace").uwu3
                            vvv:Destroy()
                        end
                        if niggacum2 then
                            LocalHL2.Parent = game.CoreGui
                        end
                    end
                    if Alive(LocalPlayer) then
                        if
                            meffsettings.Blatant.Movement.SpeedEnabled and
                                meffsettings.Blatant.Movement.SpeedType == "CFrame"
                         then
                            if meffsettings.Blatant.Movement.SpeedRenderType == "Fast" and Alive(LocalPlayer) then
                                if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                                    for i = 1, meffsettings.Blatant.Movement.SpeedAmount do
                                        LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection)
                                    end
                                end
                            end
                        end
                        if AntiRagdoll2 then
                            GodFunction(AntiRagdoll2)
                        end
                        if getgenv().skybox == false then
                            if game.PlaceId == 2788229376 or game.PlaceId == 9183932460 then
                                game:GetService("Lighting").Sky.SkyboxBk = "rbxassetid://600830446"
                                game:GetService("Lighting").Sky.SkyboxDn = "rbxassetid://600831635"
                                game:GetService("Lighting").Sky.SkyboxFt = "rbxassetid://600832720"
                                game:GetService("Lighting").Sky.SkyboxLf = "rbxassetid://600886090"
                                game:GetService("Lighting").Sky.SkyboxRt = "rbxassetid://600833862"
                                game:GetService("Lighting").Sky.SkyboxUp = "rbxassetid://600835177"
                            end
                        end
                        if meffsettings.Blatant.Cash.AutoDrop then
                            ReplicatedStorage.MainEvent:FireServer(
                                "DropMoney",
                                tostring(meffsettings.Blatant.Cash.AutoDropAmount)
                            )
                        end
                        if FardJumpCooldown then
                            LocalPlayer.Character.Humanoid.UseJumpPower = false
                        else
                            LocalPlayer.Character.Humanoid.UseJumpPower = true
                        end
                        if AntiAntiBag then
                            if LocalPlayer.Character["Christmas_Sock"] then
                                LocalPlayer.Character["Christmas_Sock"]:Destroy()
                            end
                        end
                        if meffsettings.Blatant.Cash.AutoPickCash then
                            pcall(
                                function()
                                    for _, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                                        if v.Name == "MoneyDrop" then
                                            local MoneyMagnitude =
                                                (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                                            if MoneyMagnitude < 25 then
                                                fireclickdetector(v.ClickDetector)
                                            end
                                        end
                                    end
                                end
                            )
                        end
                        if meffsettings.Blatant.Farming.MuscleFarm then
                            pcall(
                                function()
                                    if meffsettings.Blatant.Farming.MuscleFarmingType == "Normal" then
                                        if not LocalPlayer.Backpack:FindFirstChild("[Weights]") then
                                            Buy("[Weights] - $120", 1)
                                        end
                                        if LocalPlayer.Backpack:FindFirstChild("[Weights]") then
                                            LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack["[Weights]"])
                                        end

                                        LocalPlayer.Character["[Weights]"]:Activate()
                                    end
                                    if meffsettings.Blatant.Farming.MuscleFarmingType == "Heavy" then
                                        if not LocalPlayer.Backpack:FindFirstChild("[HeavyWeights]") then
                                            Buy("[HeavyWeights] - $250", 1)
                                        end
                                        if LocalPlayer.Backpack:FindFirstChild("[HeavyWeights]") then
                                            LocalPlayer.Character.Humanoid:EquipTool(
                                                LocalPlayer.Backpack["[HeavyWeights]"]
                                            )
                                        end
                                        LocalPlayer.Character["[HeavyWeights]"]:Activate()
                                    end
                                end
                            )
                        end
                        if meffsettings.Blatant.Farming.ATMPick then
                            pcall(
                                function()
                                    for _, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                                        if v.Name == "MoneyDrop" then
                                            local MoneyMagnitude =
                                                (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                            if MoneyMagnitude < 25 then
                                                fireclickdetector(v.ClickDetector)
                                            end
                                        end
                                    end
                                end
                            )
                        end
                        if meffsettings.Blatant.Farming.ShoeFarm then
                            pcall(
                                function()
                                    for i, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                                        if v.Name == "MeshPart" then
                                            LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                v.CFrame * CFrame.new(0, 2, 0)
                                            local ShoeDistance =
                                                (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                            if ShoeDistance < 25 then
                                                fireclickdetector(v.ClickDetector)
                                            end
                                        else
                                            fireclickdetector(
                                                Workspace.Ignored["Clean the shoes on the floor and come to me for cash"].ClickDetector
                                            )
                                        end
                                    end
                                end
                            )
                        end
                        if meffsettings.Blatant.Farming.HospitalFarm then
                            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(116, 23, -479)
                            for _, v in pairs(Workspace.Ignored.HospitalJob:GetChildren()) do
                                if v.Name == "Can I get the Green bottle" then
                                    fireclickdetector(v.Parent.Green.ClickDetector)
                                    wait(1)
                                    fireclickdetector(v.ClickDetector)
                                end
                                if v.Name == "Can I get the Blue bottle" then
                                    fireclickdetector(v.Parent.Blue.ClickDetector)
                                    wait(1)
                                    fireclickdetector(v.ClickDetector)
                                end
                                if v.Name == "Can I get the Red bottle" then
                                    fireclickdetector(v.Parent.Red.ClickDetector)
                                    wait(1)
                                    fireclickdetector(v.ClickDetector)
                                end
                            end
                        end
                        if meffsettings.Blatant.Farming.AutoLettuce then
                            pcall(
                                function()
                                    Buy("[Lettuce] - $5", 1)
                                    if LocalPlayer.Backpack:FindFirstChild("[Lettuce]") then
                                        LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack["[Lettuce]"])
                                    end
                                    wait(0.5)
                                    LocalPlayer.Character["[Lettuce]"]:Activate()
                                end
                            )
                        end
                        if meffsettings.Blatant.Farming.BoxFarm then
                            pcall(
                                function()
                                    LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        Workspace.MAP.Map.ArenaBOX.PunchingBagInGame["pretty ransom"].CFrame *
                                        CFrame.new(0, -1, 3)
                                    if LocalPlayer.Backpack:FindFirstChild("Combat") then
                                        LocalPlayer.Backpack.Combat.Parent = LocalPlayer.Character
                                    end
                                end
                            )
                            mouse1click()
                        end

                        if getgenv().freezevel == true then
                            local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                            while getgenv().freezevel == true do
                                task.wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(Position))
                            end
                        end
                        if meffsettings.Blatant.BlatantAA.Enabled then
                            if meffsettings.Blatant.BlatantAA.AntiAimType == "Jitter" then
                                Jitter(
                                    meffsettings.Blatant.BlatantAA.AntiAimSpeed,
                                    meffsettings.Blatant.BlatantAA.JitterAngle
                                )
                            else
                                Spin(meffsettings.Blatant.BlatantAA.AntiAimSpeed)
                            end
                            if meffsettings.Blatant.BlatantAA.NoAutoRotate then
                                lplr.Character.Humanoid.AutoRotate = false
                            else
                                lplr.Character.Humanoid.AutoRotate = true
                            end
                        else
                            lplr.Character.Humanoid.AutoRotate = true
                        end
                    end
                end
            )

            spawn(
                function()
                    while wait() do
                        if meffsettings.Blatant.Farming.ATMFarm then
                            for _, v in pairs(Workspace.Cashiers:GetChildren()) do
                                if v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    repeat
                                        meffsettings.Blatant.Farming.ATMPick = false
                                        wait()
                                        if meffsettings.Blatant.Farming.ATMFarm then
                                            if Alive(LocalPlayer) then
                                                LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.Head.CFrame * CFrame.new(0, -1, 2.5)
                                                if LocalPlayer.Backpack:FindFirstChild("Combat") then
                                                    LocalPlayer.Backpack.Combat.Parent = LocalPlayer.Character
                                                end
                                                --if LocalPlayer.Character:FindFirstChild("Combat") then
                                                LocalPlayer.Character["Combat"]:Activate()
                                            --end
                                            end
                                        end
                                    until v.Humanoid.Health <= 0 or not meffsettings.Blatant.Farming.ATMFarm
                                    pcall(
                                        function()
                                            LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent =
                                                LocalPlayer.Backpack
                                        end
                                    )
                                    meffsettings.Blatant.Farming.ATMPick = true
                                    wait(5)
                                end
                            end
                        end
                    end
                end
            )

            function GodFunction(Variable)
                LocalPlayer.Character.RagdollConstraints:Destroy()
                local Folder = Instance.new("Folder", LocalPlayer.Character)
                Folder.Name = "FULLY_LOADED_CHAR"
                wait()
                StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
                Variable = false
            end
            if game.PlaceId == 9183932460 or game.PlaceId == 2788229376 then
                -- Bullet Tracers
                bullet_tracer_color = Color3.fromRGB(255, 255, 255)
                function GetGun()
                    if game.Players.LocalPlayer.Character then
                        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v:FindFirstChild "Ammo" then
                                return v
                            end
                        end
                    end
                    return nil
                end

                BulletTracers = false
                local Services = {
                    Players = game:GetService("Players"),
                    UserInputService = game:GetService("UserInputService"),
                    RunService = game:GetService("RunService")
                }

                local Local = {
                    Player = Services.Players.LocalPlayer,
                    Mouse = Services.Players.LocalPlayer:GetMouse()
                }
                local Other = {
                    Camera = workspace.CurrentCamera,

                    BeamPart = Instance.new("Part", workspace)
                }

                Other.BeamPart.Name = "BeamPart"
                Other.BeamPart.Transparency = 1
                local Settings = {
                    StartColor = MainAccentColor,
                    EndColor = MainAccentColor,
                    StartWidth = 3,
                    EndWidth = 3,
                    ShowImpactPoint = false,
                    ImpactTransparency = 0.5,
                    ImpactColor = Color3.new(1, 1, 1),
                    Time = 1
                }
                game:GetService "RunService".Heartbeat:Connect(
                    function()
                        if game:GetService("Workspace").Ignored:FindFirstChild "BULLET_RAYS" and BulletTracers then
                            game:GetService("Workspace").Ignored.BULLET_RAYS:Destroy()
                        end
                    end
                )
                local funcs = {}
                Local.Mouse.TargetFilter = Other.BeamPart
                function funcs:Beam(v1, v2)
                    v2 = Vector3.new(v2.X - 0.1, v2.Y + 0.2, v2.Z)
                    local colorSequence =
                        ColorSequence.new(
                        {
                            ColorSequenceKeypoint.new(0, bullet_tracer_color),
                            ColorSequenceKeypoint.new(1, bullet_tracer_color)
                        }
                    )
                    local Part = Instance.new("Part", Other.BeamPart)
                    Part.Size = Vector3.new(0, 0, 0)
                    Part.Massless = true
                    Part.Transparency = 1
                    Part.CanCollide = false
                    Part.Position = v1
                    Part.Anchored = true
                    local Attachment = Instance.new("Attachment", Part)
                    local Part2 = Instance.new("Part", Other.BeamPart)
                    Part2.Size = Vector3.new(0, 0, 0)
                    Part2.Transparency = 0
                    Part2.CanCollide = false
                    Part2.Position = v2
                    Part2.Anchored = true
                    Part2.Material = Enum.Material.ForceField
                    Part2.Color = Settings.ImpactColor
                    Part2.Massless = true
                    local Attachment2 = Instance.new("Attachment", Part2)
                    local Beam = Instance.new("Beam", Part)
                    Beam.FaceCamera = true
                    Beam.Color = colorSequence
                    Beam.Attachment0 = Attachment
                    Beam.Attachment1 = Attachment2
                    Beam.LightEmission = 6
                    Beam.LightInfluence = 1
                    Beam.Width0 = Settings.StartWidth
                    Beam.Width1 = Settings.EndWidth
                    Beam.Texture = "http://www.roblox.com/asset/?id=9150663556"
                    Beam.TextureSpeed = 2
                    Beam.TextureLength = 1
                    delay(
                        Settings.Time,
                        function()
                            Part:Destroy()
                            Part2:Destroy()
                        end
                    )
                end

                spawn(
                    function()
                        while task.wait(0.5) do
                            gun = GetGun()
                            if gun then
                                LastAmmo = gun.Ammo.Value
                                gun.Ammo:GetPropertyChangedSignal("Value"):Connect(
                                    function()
                                        if BulletTracers and gun.Ammo.Value < LastAmmo then
                                            LastAmmo = gun.Ammo.Value
                                            funcs:Beam(gun.Handle.Position, Local.Mouse.hit.p)
                                        end
                                    end
                                )
                            end
                        end
                    end
                )
            end
            local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid

            if humanoid.RigType == Enum.HumanoidRigType.R15 then
                LocalPlayer.Character.LeftHand.Color = _G.colorbody
                LocalPlayer.Character.RightHand.Color = _G.colorbody1
                LocalPlayer.Character.LeftLowerArm.Color = _G.colorbody2
                LocalPlayer.Character.RightLowerArm.Color = _G.colorbody3
                LocalPlayer.Character.LeftUpperArm.Color = _G.colorbody4
                LocalPlayer.Character.RightUpperArm.Color = _G.colorbody5
                LocalPlayer.Character.LeftFoot.Color = _G.colorbody6
                LocalPlayer.Character.RightFoot.Color = _G.colorbody7
                LocalPlayer.Character.LeftLowerLeg.Color = _G.colorbody8
                LocalPlayer.Character.RightLowerLeg.Color = _G.colorbody9
                LocalPlayer.Character.UpperTorso.Color = _G.colorbody10
                LocalPlayer.Character.LowerTorso.Color = _G.colorbody11
                LocalPlayer.Character.LeftUpperLeg.Color = _G.colorbody12
                LocalPlayer.Character.RightUpperLeg.Color = _G.colorbody13
                LocalPlayer.Character.Head.Color = _G.colorbody14
            end

            function NilBody()
                if Alive(LocalPlayer) then
                    for i, v in pairs(LocalPlayer.Character:GetChildren()) do
                        if v:IsA("BasePart") or v:IsA("Part") or v:IsA("MeshPart") then
                            if v.Name ~= "HumanoidRootPart" then
                                v:Destroy()
                            end
                        end
                    end
                end
            end
            -- Settings Window --
            local SettingsTab = Window:CreateTab("Settings")

            if is_synapse_function then
                SettingsTab:CreateConfigSystem("left")
            else
                NotifyLib.prompt("Choobian ", "Your Executor Doesnt Support Config.", 3)
            end

            local SettingsTab23 = SettingsTab:CreateSector("Credits", "right")

            SettingsTab23:AddLabel("ur cute")

            local SettingsTab2 = SettingsTab:CreateSector("Menu", "right")
            local watermarksorry =
                SettingsTab2:AddToggle(
                "WaterMark",
                true,
                function(Boolean)
                    watermark.Visible = Boolean
                end
            )
end
end)
