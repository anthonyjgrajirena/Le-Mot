local composer = require( "composer" )

local scene = composer.newScene()




-- create()
function scene:create( event )
  -- Code here runs when the scene is first created but has not yet appeared on screen

    local sceneGroup = self.view

    local backGroup = display.newGroup()
    local objectsGroup = display.newGroup()
    local textGroup = display.newGroup()

    local background = display.newImage( "images/fieldbackground.png" )
    background.x = display.contentWidth/2
    background.y = display.contentHeight/2

    local lemot = display.newImage("images/lemot(shadow).png")
    lemot.x = display.contentWidth/2
    lemot.y = display.contentHeight/2 - 550

    local oflanguage = display.newImage("images/oflanguage(shadow).png")
    oflanguage.x = display.contentWidth/2 + 200
    oflanguage.y = display.contentHeight/2 - 900

    local carnation = display.newImage("images/carnation(shadow).png")
    carnation.x = display.contentWidth/2 + 550
    carnation.y = display.contentHeight/2 + 950

    local polygonSequence = {
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

    local sheetInfo = require("polygon")
    local polygonSheet = graphics.newImageSheet( "images/polygon.png", sheetInfo:getSheet() )

    local polygon = display.newSprite( polygonSheet, polygonSequence )
    polygon.x = display.contentWidth/2
    polygon.y = display.contentHeight/2 + 200

    polygon:play()

    function changeScene( event )
      if ( event.phase == "began" ) then

      elseif ( event.phase == "ended" ) then
              composer.gotoScene("scene2", {effect = "crossFade", time = 2500})
              --objectsGroup:removeSelf()
              --textGroup:removeSelf()
      end
      return true
    end

    backGroup:insert( background )
    textGroup:insert( lemot )
    textGroup:insert( oflanguage )
    textGroup:insert( carnation )
    objectsGroup:insert( polygon )

    sceneGroup:insert( backGroup )
    sceneGroup:insert( objectsGroup )
    sceneGroup:insert( textGroup )


    polygon:addEventListener( "touch", changeScene)

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
