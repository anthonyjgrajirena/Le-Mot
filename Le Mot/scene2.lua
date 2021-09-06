local composer = require( "composer" )

local scene = composer.newScene()

-- create()
function scene:create( event )

    local backGroup = display.newGroup()
    local objectsGroup = display.newGroup()
    local textGroup = display.newGroup()

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    local background = display.newImage( "images/cloudbackground.png" )
    background.x = display.contentWidth/2
    background.y = display.contentHeight/2

    sceneGroup:insert( background )

    local fireworks = display.newImage("images/fireworks(shadow).png")
    fireworks.x = display.contentWidth/2 - 75
    fireworks.y = display.contentHeight/2 - 600

    sceneGroup:insert( fireworks )

    local blackflowers = display.newImage("images/blackflowers(shadow).png")
    blackflowers.x = display.contentWidth/2
    blackflowers.y = display.contentHeight/2 + 650

    sceneGroup:insert( blackflowers )

    local butterflySequence = {
        -- consecutive frames sequence
        {
            name = "cycle",
            start = 1,
            count = 4,
            time = 800,
            loopCount = 0,
            loopDirection = "bounce"
        }
    }

    local sheetInfo = require("butterflies")
    local butterflySheet = graphics.newImageSheet( "images/butterflies.png", sheetInfo:getSheet() )

    local butterfly1 = display.newSprite( butterflySheet, butterflySequence )
    butterfly1.x = display.contentWidth/2
    butterfly1.y = display.contentHeight/2 + 985

    local butterfly2 = display.newSprite( butterflySheet, butterflySequence )
    butterfly2.x = display.contentWidth/2
    butterfly2.y = display.contentHeight/2 + 300

    local butterfly3 = display.newSprite( butterflySheet, butterflySequence )
    butterfly3.x = display.contentWidth/2
    butterfly3.y = display.contentHeight/2 - 225

    local butterfly4 = display.newSprite( butterflySheet, butterflySequence )
    butterfly4.x = display.contentWidth/2
    butterfly4.y = display.contentHeight/2 - 950

    function changeScene( event )
      if ( event.phase == "began" ) then

      elseif ( event.phase == "ended" ) then
              composer.gotoScene("scene3", {effect = "crossFade", time = 2500})
              --objectsGroup:removeSelf()
              --textGroup:removeSelf()
      end
      return true
    end


    backGroup:insert( background )
    textGroup:insert( fireworks )
    textGroup:insert( blackflowers )
    objectsGroup:insert( butterfly1 )
    objectsGroup:insert( butterfly2 )
    objectsGroup:insert( butterfly3 )
    objectsGroup:insert( butterfly4 )

    sceneGroup:insert( backGroup )
    sceneGroup:insert( objectsGroup )
    sceneGroup:insert( textGroup )

    butterfly1:play()
    butterfly2:play()
    butterfly3:play()
    butterfly4:play()

    butterfly1:addEventListener( "touch", changeScene)
    butterfly2:addEventListener( "touch", changeScene)
    butterfly3:addEventListener( "touch", changeScene)
    butterfly4:addEventListener( "touch", changeScene)

end

-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen

    end
end

-- hide()
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen

    end
end

-- destroy()
function scene:destroy( event )

    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view

end



-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
