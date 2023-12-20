isBoxEnabled = false
isLineEnabled = false
isSkeletonEnabled = false
isHealthbarEnabled = false
isNameEnabled = false
isDistanceEnabled = false
distance_bone = 150
outputChatBox("Cheat Activated!", 0, 255, 0)
local function drawESPBoxes()
    local players = getElementsByType("player")
    local localPlayer = getLocalPlayer()
    local x, y, z = getElementPosition(localPlayer)
    r = math.random(0, 255)
    g = math.random(0, 255)
    b = math.random(0, 255)
    for _, ped in ipairs(players) do
        if ped ~= localPlayer then
            local px, py, pz = getElementPosition(ped)
            local x2, y2, z2 = getPedBonePosition(ped, 8)

            if isElementOnScreen(ped) then
                local sx, sy = getScreenFromWorldPosition(x2, y2, z2 + 0.5)
                local sx2, sy2 = getScreenFromWorldPosition(x2, y2, z2 - 2)
                if sx and sy then
                    local distance = getDistanceBetweenPoints3D(x, y, z, px, py, pz)
                    if distance > 9 then
                        boxSize = 1500 / distance
                    else
                        boxSize = 155
                    end
                    if isNameEnabled then
                        if getElementType(ped) == "player" then
                            dxDrawText(getPlayerName(ped) or "gay", sx+1, sy, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText(getPlayerName(ped) or "gay", sx-1, sy, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText(getPlayerName(ped) or "gay", sx, sy-1, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText(getPlayerName(ped) or "gay", sx, sy+1, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText(getPlayerName(ped) or "gay", sx, sy, sx, sy, tocolor(254, 254, 254, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                        else
                            dxDrawText("Bot", sx+1, sy, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText("Bot", sx-1, sy, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText("Bot", sx, sy-1, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText("Bot", sx, sy+1, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText("Bot", sx, sy, sx, sy, tocolor(254, 254, 254, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                        end
                    end
                    if isDistanceEnabled then
                        if getElementType(ped) == "player" then
                            dxDrawText(math.floor(distance).." CM", sx2+1, sy2, sx2, sy2, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText(math.floor(distance).." CM", sx2-1, sy2, sx2, sy2, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText(math.floor(distance).." CM", sx2, sy2-1, sx2, sy2, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText(math.floor(distance).." CM", sx2, sy2+1, sx2, sy2, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            dxDrawText(math.floor(distance).." CM", sx2, sy2, sx2, sy2, tocolor(254, 254, 254, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                        end
                    end
                    if isBoxEnabled then
                        dxDrawLine(sx - boxSize / 3.3, sy - boxSize / -5.7, sx + boxSize / 3.3, sy - boxSize / -5.7, tocolor(255, 255, 255, 200), 3)
                        dxDrawLine(sx - boxSize / 3.3, sy + boxSize / 0.8, sx + boxSize / 3.3, sy + boxSize / 0.8, tocolor(255, 255, 255, 200), 3)
                        dxDrawLine(sx - boxSize / 3.3, sy - boxSize / -5.7, sx - boxSize / 3.3, sy + boxSize / 0.8, tocolor(255, 255, 255, 200), 3)
                        dxDrawLine(sx + boxSize / 3.3, sy - boxSize / -5.7, sx + boxSize / 3.3, sy + boxSize / 0.8, tocolor(255, 255, 255, 200), 3)
                    end
                    if isSkeletonEnabled then
                        for _, player in ipairs(getElementsByType("player")) do
                            if not isPedDead(player) then
                                local headX, headY, headZ = getPedBonePosition(player, 6) -- رقم عظمة الرأس هو 6
                                local distance = getDistanceBetweenElements(localPlayer, player)
                                local screenX, screenY = getScreenFromWorldPosition(headX, headY, headZ + 0.3) -- +1 للرفع النص قليلاً عن اللاعب      
                                if distance <= distance_bone then  
                                    local bxKtf, byKtf, bzKtf = getPedBonePosition(player, 4)
                                    local bxKtf2, byKtf2, bzKtf2 = getPedBonePosition(player, 22)
                                    local bxDra3, byDra3, bzDra3 = getPedBonePosition(player, 23)
                                    local bxDra32, byDra32, bzDra32 = getPedBonePosition(player, 25)
                                    local bxKtfa, byKtfa, bzKtfa = getPedBonePosition(player, 4)
                                    local bxKtf2a, byKtf2a, bzKtf2a = getPedBonePosition(player, 32)
                                    local bxDra3a, byDra3a, bzDra3a = getPedBonePosition(player, 33)
                                    local bxDra32a, byDra32a, bzDra32a = getPedBonePosition(player, 35)
                                    local btn1, btn11, btn111 = getPedBonePosition(player, 4)
                                    local btn2, btn22, btn222 = getPedBonePosition(player, 1)
                                    local rgl1, rgl11, rgl111 = getPedBonePosition(player, 52)
                                    local rgl12, rgl122, rgl1222 = getPedBonePosition(player, 54)
                                    local rgl2, rgl22, rgl222 = getPedBonePosition(player, 42)
                                    local rgl223, rgl2223, rgl2222 = getPedBonePosition(player, 44)
                                    local ras1, ras2, ras3 = getPedBonePosition(player, 8)
                                    local ras12, ras112, ras1112 = getPedBonePosition(player, 6)
                                    local ras22, ras222, ras2222 = getPedBonePosition(player, 7)
                                    size = distance
                                    if distance >= 10 then
                                        size = distance / 8
                                    else
                                        size = 3
                                    end
                                    dxDrawLine3D(bxKtf, byKtf, bzKtf, bxKtf2, byKtf2, bzKtf2, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(bxKtf2, byKtf2, bzKtf2, bxDra3, byDra3, bzDra3, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(bxDra3, byDra3, bzDra3, bxDra32, byDra32, bzDra32, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(bxKtfa, byKtfa, bzKtfa, bxKtf2a, byKtf2a, bzKtf2a, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(bxKtf2a, byKtf2a, bzKtf2a, bxDra3a, byDra3a, bzDra3a, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(bxDra3a, byDra3a, bzDra3a, bxDra32a, byDra32a, bzDra32a, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(btn1, btn11, btn111, btn2, btn22, btn222, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(btn2, btn22, btn222, rgl1, rgl11, rgl111, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(rgl1, rgl11, rgl111, rgl12, rgl122, rgl1222, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(btn2, btn22, btn222, rgl2, rgl22, rgl222, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(rgl2, rgl22, rgl222, rgl223, rgl2223, rgl2222, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(btn1, btn11, btn111, ras1, ras2, ras3, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(ras1, ras2, ras3, ras12, ras112, ras1112, tocolor(r, g, b, 230), size, true)
                                    dxDrawLine3D(ras12, ras112, ras1112, ras22, ras222, ras2222, tocolor(r, g, b, 230), size, true)
                                end
                            end
                        end
                    end
                    if isHealthbarEnabled then
                        local health = getElementHealth(ped)
                        local healthHeight = (boxSize / 1) * (health / 100)

                        dxDrawRectangle(sx - boxSize / 2.7, sy - boxSize / -4.5 , 4, boxSize / 1, tocolor(48, 48, 48, 200))
                        dxDrawRectangle(sx - boxSize / 2.7, sy - boxSize / -0.82 - healthHeight, 4, healthHeight, tocolor(255, 0, 0, 200))
                    end

                    if isLineEnabled then
                        local localPlayer = getLocalPlayer()
                        local screenX, screenY = guiGetScreenSize()
                        local playerX, playerY, playerZ = getElementPosition(localPlayer)
                    
                        for _, ped in ipairs(players) do
                            local pedX, pedY, pedZ = getElementPosition(ped)
                            local x2, y2, z2 = getPedBonePosition(ped, 8)
                    
                            --if isElementOnScreen(ped) then
                                local sx, sy = getScreenFromWorldPosition(x2, y2, z2 - 1.9)
                                if sx and sy then
                                    local lineThickness = 2
                                    dxDrawLine(screenX / 2, screenY, sx, sy, tocolor(r, g ,b, 150), lineThickness)
                                end
                            --end
                        end
                    end

                end
            end
        end
    end
end
addEventHandler("onClientRender", root, drawESPBoxes)
local isPedEnabled = false
local function drawESPBoxes()
    if isPedEnabled then
        local players = getElementsByType("ped")
        local localPlayer = getLocalPlayer()
        local x, y, z = getElementPosition(localPlayer)
        r = math.random(0, 255)
        g = math.random(0, 255)
        b = math.random(0, 255)
        for _, ped in ipairs(players) do
            if ped ~= localPlayer then
                local px, py, pz = getElementPosition(ped)
                local x2, y2, z2 = getPedBonePosition(ped, 8)

                if isElementOnScreen(ped) then
                    local sx, sy = getScreenFromWorldPosition(x2, y2, z2 + 0.5)
                    sx2, sy2 = getScreenFromWorldPosition(x2, y2, z2 - 2)
                    if sx and sy then
                        local distance = getDistanceBetweenPoints3D(x, y, z, px, py, pz)
                        if distance > 9 then
                            boxSize = 1500 / distance
                        else
                            boxSize = 155
                        end
                        if isDistanceEnabled then
                            if getElementType(ped) == "ped" then
                                dxDrawText(math.floor(distance).." CM", sx2+1, sy2, sx2, sy2, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText(math.floor(distance).." CM", sx2-1, sy2, sx2, sy2, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText(math.floor(distance).." CM", sx2, sy2-1, sx2, sy2, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText(math.floor(distance).." CM", sx2, sy2+1, sx2, sy2, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText(math.floor(distance).." CM", sx2, sy2, sx2, sy2, tocolor(254, 254, 254, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            end
                        end
                        if isNameEnabled then
                            if getElementType(ped) == "player" then
                                dxDrawText(getPlayerName(ped) or "gay", sx+1, sy, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText(getPlayerName(ped) or "gay", sx-1, sy, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText(getPlayerName(ped) or "gay", sx, sy-1, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText(getPlayerName(ped) or "gay", sx, sy+1, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText(getPlayerName(ped) or "gay", sx, sy, sx, sy, tocolor(254, 254, 254, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            else
                                dxDrawText("Bot", sx+1, sy, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText("Bot", sx-1, sy, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText("Bot", sx, sy-1, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText("Bot", sx, sy+1, sx, sy, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                                dxDrawText("Bot", sx, sy, sx, sy, tocolor(254, 254, 254, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
                            end
                        end
                        if isBoxEnabled then
                            dxDrawLine(sx - boxSize / 3.3, sy - boxSize / -5.7, sx + boxSize / 3.3, sy - boxSize / -5.7, tocolor(255, 255, 255, 200), 3)
                            dxDrawLine(sx - boxSize / 3.3, sy + boxSize / 0.8, sx + boxSize / 3.3, sy + boxSize / 0.8, tocolor(255, 255, 255, 200), 3)
                            dxDrawLine(sx - boxSize / 3.3, sy - boxSize / -5.7, sx - boxSize / 3.3, sy + boxSize / 0.8, tocolor(255, 255, 255, 200), 3)
                            dxDrawLine(sx + boxSize / 3.3, sy - boxSize / -5.7, sx + boxSize / 3.3, sy + boxSize / 0.8, tocolor(255, 255, 255, 200), 3)
                        end
                        if isSkeletonEnabled then
                            for _, player in ipairs(getElementsByType("ped")) do
                                if not isPedDead(player) then
                                    local headX, headY, headZ = getPedBonePosition(player, 6) -- رقم عظمة الرأس هو 6
                                    local distance = getDistanceBetweenElements(localPlayer, player)
                                    local screenX, screenY = getScreenFromWorldPosition(headX, headY, headZ + 0.3) -- +1 للرفع النص قليلاً عن اللاعب      
                                    if distance <= distance_bone then  
                                        local bxKtf, byKtf, bzKtf = getPedBonePosition(player, 4)
                                        local bxKtf2, byKtf2, bzKtf2 = getPedBonePosition(player, 22)
                                        local bxDra3, byDra3, bzDra3 = getPedBonePosition(player, 23)
                                        local bxDra32, byDra32, bzDra32 = getPedBonePosition(player, 25)
                                        local bxKtfa, byKtfa, bzKtfa = getPedBonePosition(player, 4)
                                        local bxKtf2a, byKtf2a, bzKtf2a = getPedBonePosition(player, 32)
                                        local bxDra3a, byDra3a, bzDra3a = getPedBonePosition(player, 33)
                                        local bxDra32a, byDra32a, bzDra32a = getPedBonePosition(player, 35)
                                        local btn1, btn11, btn111 = getPedBonePosition(player, 4)
                                        local btn2, btn22, btn222 = getPedBonePosition(player, 1)
                                        local rgl1, rgl11, rgl111 = getPedBonePosition(player, 52)
                                        local rgl12, rgl122, rgl1222 = getPedBonePosition(player, 54)
                                        local rgl2, rgl22, rgl222 = getPedBonePosition(player, 42)
                                        local rgl223, rgl2223, rgl2222 = getPedBonePosition(player, 44)
                                        local ras1, ras2, ras3 = getPedBonePosition(player, 8)
                                        local ras12, ras112, ras1112 = getPedBonePosition(player, 6)
                                        local ras22, ras222, ras2222 = getPedBonePosition(player, 7)
                                        size = distance
                                        if distance >= 10 then
                                            size = distance / 8
                                        else
                                            size = 3
                                        end
                                        dxDrawLine3D(bxKtf, byKtf, bzKtf, bxKtf2, byKtf2, bzKtf2, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(bxKtf2, byKtf2, bzKtf2, bxDra3, byDra3, bzDra3, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(bxDra3, byDra3, bzDra3, bxDra32, byDra32, bzDra32, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(bxKtfa, byKtfa, bzKtfa, bxKtf2a, byKtf2a, bzKtf2a, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(bxKtf2a, byKtf2a, bzKtf2a, bxDra3a, byDra3a, bzDra3a, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(bxDra3a, byDra3a, bzDra3a, bxDra32a, byDra32a, bzDra32a, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(btn1, btn11, btn111, btn2, btn22, btn222, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(btn2, btn22, btn222, rgl1, rgl11, rgl111, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(rgl1, rgl11, rgl111, rgl12, rgl122, rgl1222, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(btn2, btn22, btn222, rgl2, rgl22, rgl222, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(rgl2, rgl22, rgl222, rgl223, rgl2223, rgl2222, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(btn1, btn11, btn111, ras1, ras2, ras3, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(ras1, ras2, ras3, ras12, ras112, ras1112, tocolor(r, g, b, 230), size, true)
                                        dxDrawLine3D(ras12, ras112, ras1112, ras22, ras222, ras2222, tocolor(r, g, b, 230), size, true)
                                    end
                                end
                            end
                        end
                        if isHealthbarEnabled then
                            local health = getElementHealth(ped)
                            local healthHeight = (boxSize / 1) * (health / 100)

                            dxDrawRectangle(sx - boxSize / 2.7, sy - boxSize / -4.5 , 4, boxSize / 1, tocolor(48, 48, 48, 200))
                            dxDrawRectangle(sx - boxSize / 2.7, sy - boxSize / -0.82 - healthHeight, 4, healthHeight, tocolor(255, 0, 0, 200))
                        end

                        if isLineEnabled then
                            local localPlayer = getLocalPlayer()
                            local screenX, screenY = guiGetScreenSize()
                            local playerX, playerY, playerZ = getElementPosition(localPlayer)
                        
                            for _, ped in ipairs(players) do
                                local pedX, pedY, pedZ = getElementPosition(ped)
                                local x2, y2, z2 = getPedBonePosition(ped, 8)
                        
                                --if isElementOnScreen(ped) then
                                    local sx, sy = getScreenFromWorldPosition(x2, y2, z2)
                                    if sx and sy then
                                        local lineThickness = 2
                                        dxDrawLine(screenX / 2, screenY / 70, sx, sy, tocolor(r, g ,b, 150), lineThickness)
                                    end
                                --end
                            end
                        end

                    end
                end
            end
        end
    end
end
addEventHandler("onClientRender", root, drawESPBoxes)

function getDistanceBetweenElements(arg1, arg2)
	local element1 = Vector3(getElementPosition( arg1 ))
	local element2 = Vector3(getElementPosition( arg2 ))
	local distance = getDistanceBetweenPoints3D( element1,element2 )
	return distance
end

function dxDrawRoundedRectangle(x, y, width, height, radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y+radius, width-(radius*2), height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawCircle(x+radius, y+radius, radius, 180, 270, color, color, 16, 1, postGUI)
    dxDrawCircle(x+radius, (y+height)-radius, radius, 90, 180, color, color, 16, 1, postGUI)
    dxDrawCircle((x+width)-radius, (y+height)-radius, radius, 0, 90, color, color, 16, 1, postGUI)
    dxDrawCircle((x+width)-radius, y+radius, radius, 270, 360, color, color, 16, 1, postGUI)
    dxDrawRectangle(x, y+radius, radius, height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y+height-radius, width-(radius*2), radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+width-radius, y+radius, radius, height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y, width-(radius*2), radius, color, postGUI, subPixelPositioning)
end

function isMouseInPosition ( x, y, width, height )
	if ( not isCursorShowing( ) ) then
		return false
	end
	local sx, sy = guiGetScreenSize ( )
	local cx, cy = getCursorPosition ( )
	local cx, cy = ( cx * sx ), ( cy * sy )
	
	return ( ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) )
end

local screenW, screenH = guiGetScreenSize()
local show = false
local visuals = false
local troll = false
local player = false
local executor = false
local msic = false
local cars = false

addEventHandler("onClientRender", root,
    function()
        if show then
            dxDrawRectangle(screenW * 0.3479, screenH * 0.3417, screenW * 0.3000, screenH * 0.3278, tocolor(20, 20, 20, 255), false)
            if isMouseInPosition(screenW * 0.3536, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269) then
                dxDrawRoundedRectangle(screenW * 0.3536, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 155), false)
                if getKeyState("mouse1") then
                    visuals = true
                    troll = false
                    player = false
                    executor = false
                    msic = false
                    cars = false
                end
            else
                dxDrawRoundedRectangle(screenW * 0.3536, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 255), false)
            end
            
            if isMouseInPosition(screenW * 0.4026, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269) then
                dxDrawRoundedRectangle(screenW * 0.4026, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 155), false)
                if getKeyState("mouse1") then
                    visuals = false
                    troll = true
                    player = false
                    executor = false
                    msic = false
                end
            else
                dxDrawRoundedRectangle(screenW * 0.4026, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 255), false)
            end

            if isMouseInPosition(screenW * 0.4516, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269) then
                dxDrawRoundedRectangle(screenW * 0.4516, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 155), false)
                if getKeyState("mouse1") then
                visuals = false
                troll = false
                player = true
                executor = false
                msic = false
                end
            else
                dxDrawRoundedRectangle(screenW * 0.4516, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 255), false)
            end

            if isMouseInPosition(screenW * 0.5005, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269) then
                dxDrawRoundedRectangle(screenW * 0.5005, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 155), false)
                if getKeyState("mouse1") then
                visuals = false
                troll = false
                player = false
                executor = true
                msic = false
                end
            else
                dxDrawRoundedRectangle(screenW * 0.5005, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 255), false)
            end

            if isMouseInPosition(screenW * 0.5495, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269) then
                dxDrawRoundedRectangle(screenW * 0.5495, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 155), false)
                if getKeyState("mouse1") then
                    visuals = false
                    troll = false
                    player = false
                    executor = false
                    cars = true
                    msic = false
                end
            else
                dxDrawRoundedRectangle(screenW * 0.5495, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 255), false)
            end

            if isMouseInPosition(screenW * 0.5984, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269) then
                dxDrawRoundedRectangle(screenW * 0.5984, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 155), false)
                if getKeyState("mouse1") then
                    visuals = false
                    troll = false
                    player = false
                    executor = false
                    cars = false
                    msic = true
                end
            else
                dxDrawRoundedRectangle(screenW * 0.5984, screenH * 0.3472, screenW * 0.0437, screenH * 0.0269, 5, tocolor(1, 104, 200, 255), false)
            end
            dxDrawRectangle(screenW * 0.3510, screenH * 0.3657, screenW * 0.2940, screenH * 0.2713, tocolor(36, 36, 36, 255), false)
            dxDrawText("OmgPnc Team © 2024", screenW * 0.3505, screenH * 0.6426, screenW * 0.6422, screenH * 0.6648, tocolor(200, 200, 200, 255), 1.00, "default", "center", "center", false, false, false, false, false)
            dxDrawText("Visuals", screenW * 0.3531, screenH * 0.3472, screenW * 0.3974, screenH * 0.3680, tocolor(254, 254, 254, 255), 1.00, "default", "center", "center", false, false, false, false, false)
            dxDrawText("Troll", screenW * 0.4026, screenH * 0.3472, screenW * 0.4469, screenH * 0.3680, tocolor(254, 254, 254, 255), 1.00, "default", "center", "center", false, false, false, false, false)
            dxDrawText("Players", screenW * 0.4510, screenH * 0.3472, screenW * 0.4953, screenH * 0.3680, tocolor(254, 254, 254, 255), 1.00, "default", "center", "center", false, false, false, false, false)
            dxDrawText("Executor", screenW * 0.5000, screenH * 0.3472, screenW * 0.5443, screenH * 0.3680, tocolor(254, 254, 254, 255), 1.00, "default", "center", "center", false, false, false, false, false)
            dxDrawText("Cars", screenW * 0.5490, screenH * 0.3472, screenW * 0.5932, screenH * 0.3680, tocolor(254, 254, 254, 255), 1.00, "default", "center", "center", false, false, false, false, false)
            dxDrawText("Misc", screenW * 0.5979, screenH * 0.3472, screenW * 0.6422, screenH * 0.3680, tocolor(254, 254, 254, 255), 1.00, "default", "center", "center", false, false, false, false, false)
        
            if visuals then
                dxDrawRectangle(screenW * 0.3563, screenH * 0.3796, screenW * 0.0135, screenH * 0.0241, tocolor(78, 78, 78, 255), false)
                dxDrawText("ESP Name", screenW * 0.3750, screenH * 0.3796, screenW * 0.4214, screenH * 0.4037, tocolor(254, 254, 254, 255), 1.00, "default", "left", "center", false, false, false, false, false)
                
                dxDrawRectangle(screenW * 0.3563, screenH * 0.4130, screenW * 0.0135, screenH * 0.0241, tocolor(78, 78, 78, 255), false)
                dxDrawText("ESP Line", screenW * 0.3750, screenH * 0.4130, screenW * 0.4214, screenH * 0.4370, tocolor(254, 254, 254, 255), 1.00, "default", "left", "center", false, false, false, false, false)
                
                dxDrawRectangle(screenW * 0.3563, screenH * 0.4463, screenW * 0.0135, screenH * 0.0241, tocolor(78, 78, 78, 255), false)
                dxDrawText("ESP Skeleton", screenW * 0.3750, screenH * 0.4463, screenW * 0.4214, screenH * 0.4704, tocolor(254, 254, 254, 255), 1.00, "default", "left", "center", false, false, false, false, false)
                
                dxDrawRectangle(screenW * 0.3563, screenH * 0.4796, screenW * 0.0135, screenH * 0.0241, tocolor(78, 78, 78, 255), false)
                dxDrawText("ESP Box", screenW * 0.3750, screenH * 0.4796, screenW * 0.4214, screenH * 0.5037, tocolor(254, 254, 254, 255), 1.00, "default", "left", "center", false, false, false, false, false)
                if isNameEnabled then
                    dxDrawRoundedRectangle(screenW * 0.3589, screenH * 0.3852, screenW * 0.0078, screenH * 0.0139, 3, tocolor(1, 104, 200, 255), false)
                end
                if isBoxEnabled then
                    dxDrawRoundedRectangle(screenW * 0.3594, screenH * 0.4852, screenW * 0.0078, screenH * 0.0139, 3, tocolor(1, 104, 200, 255), false)
                end
                if isLineEnabled then
                    dxDrawRoundedRectangle(screenW * 0.3594, screenH * 0.4185, screenW * 0.0078, screenH * 0.0139, 3, tocolor(1, 104, 200, 255), false)
                end
                if isSkeletonEnabled then
                    dxDrawRoundedRectangle(screenW * 0.3594, screenH * 0.4519, screenW * 0.0078, screenH * 0.0139, 3, tocolor(1, 104, 200, 255), false)
                end
                dxDrawRectangle(screenW * 0.3563, screenH * 0.5130, screenW * 0.0135, screenH * 0.0241, tocolor(78, 78, 78, 255), false)
                dxDrawText("ESP Health", screenW * 0.3750, screenH * 0.5130, screenW * 0.4214, screenH * 0.5370, tocolor(254, 254, 254, 255), 1.00, "default", "left", "center", false, false, false, false, false)
                if isHealthbarEnabled then
                    dxDrawRoundedRectangle(screenW * 0.3594, screenH * 0.5185, screenW * 0.0078, screenH * 0.0139, 3, tocolor(1, 104, 200, 255), false)
                end

                dxDrawRectangle(screenW * 0.3563, screenH * 0.5463, screenW * 0.0135, screenH * 0.0241, tocolor(78, 78, 78, 255), false)
                dxDrawText("ESP Peds", screenW * 0.3750, screenH * 0.5463, screenW * 0.4214, screenH * 0.5704, tocolor(254, 254, 254, 255), 1.00, "default", "left", "center", false, false, false, false, false)
                if isPedEnabled then
                    dxDrawRoundedRectangle(screenW * 0.3589, screenH * 0.5509, screenW * 0.0078, screenH * 0.0139, 3, tocolor(1, 104, 200, 255), false)
                end
                dxDrawRectangle(screenW * 0.3563, screenH * 0.5796, screenW * 0.0135, screenH * 0.0241, tocolor(78, 78, 78, 255), false)
                dxDrawText("ESP Distance", screenW * 0.3750, screenH * 0.5796, screenW * 0.4214, screenH * 0.6037, tocolor(254, 254, 254, 255), 1.00, "default", "left", "center", false, false, false, false, false)    
                if isDistanceEnabled then
                    dxDrawRoundedRectangle(screenW * 0.3589, screenH * 0.5852, screenW * 0.0078, screenH * 0.0139, 3, tocolor(1, 104, 200, 255), false)
                end
            end
        end
    end
)

function clicks(b, s)
    if b == "left" and s == "down" then
        if show then
            if visuals then
                if isMouseInPosition(screenW * 0.3563, screenH * 0.3796, screenW * 0.0135, screenH * 0.0241) then
                    -- ESP NAME ACTIVE
                    if isNameEnabled then
                        isNameEnabled = false
                    else
                        isNameEnabled = true
                    end
                end
                if isMouseInPosition(screenW * 0.3563, screenH * 0.4130, screenW * 0.0135, screenH * 0.0241) then
                    -- ESP LINE ACTIVE
                    if isLineEnabled then
                        isLineEnabled = false
                    else
                        isLineEnabled = true
                    end
                end
                if isMouseInPosition(screenW * 0.3563, screenH * 0.4463, screenW * 0.0135, screenH * 0.0241) then
                    -- ESP SKELETON ACTIVE
                    if isSkeletonEnabled then
                        isSkeletonEnabled = false
                    else
                        isSkeletonEnabled = true
                    end
                end
                if isMouseInPosition(screenW * 0.3563, screenH * 0.4796, screenW * 0.0135, screenH * 0.0241) then
                    -- ESP BOX ACTIVE
                    if isBoxEnabled then
                        isBoxEnabled = false
                    else
                        isBoxEnabled = true
                    end
                end
                if isMouseInPosition(screenW * 0.3563, screenH * 0.5130, screenW * 0.0135, screenH * 0.0241) then
                    -- ESP HEALTH ACTIVE
                    if isHealthbarEnabled then
                        isHealthbarEnabled = false
                    else
                        isHealthbarEnabled = true
                    end
                end
                if isMouseInPosition(screenW * 0.3563, screenH * 0.5463, screenW * 0.0135, screenH * 0.0241) then
                    -- ESP PEDS ACTIVE
                    if isPedEnabled then
                        isPedEnabled = false
                    else
                        isPedEnabled = true
                    end
                end
                if isMouseInPosition(screenW * 0.3563, screenH * 0.5796, screenW * 0.0135, screenH * 0.0241) then
                    -- ESP DISTANCE ACTIVE
                    if isDistanceEnabled then
                        isDistanceEnabled = false
                    else
                        isDistanceEnabled = true
                    end
                end
            end
        end
    end
end
addEventHandler("onClientClick", root, clicks)

bindKey("insert", "down", function()
    if not show then
        show = true
        showCursor(show)
    else
        show = false
        showCursor(show)
    end
end)