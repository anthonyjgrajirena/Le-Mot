local composer = require( "composer" )

local scene = composer.newScene()

-- create()
function scene:create( event )

    local backGroup = display.newGroup()
    local objectsGroup = display.newGroup()
    local textGroup = display.newGroup()

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    local background = display.newImage( "images/cosmosbackground.png" )
    background.x = display.contentWidth/2
    background.y = display.contentHeight/2

    sceneGroup:insert( background )

    local woolf = display.newImage("images/woolf(shadow).png")
    woolf.x = display.contentWidth/2
    woolf.y = display.contentHeight/2

    sceneGroup:insert( woolf )

    local bandingSequence = {
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

    local sheetInfo = require("banding")
    local bandingSheet = graphics.newImageSheet( "images/banding.png", sheetInfo:getSheet() )

    local banding1 = display.newSprite( bandingSheet, bandingSequence )
    banding1.x = display.contentWidth/2
    banding1.y = display.contentHeight/2 + 775

    local banding2 = display.newSprite( bandingSheet, bandingSequence )
    banding2.x = display.contentWidth/2
    banding2.y = display.contentHeight/2 - 775

    function changeScene( event )
      if ( event.phase == "began" ) then

      elseif ( event.phase == "ended" ) then
              composer.gotoScene("scene1", {effect = "crossFade", time = 2500})
              --objectsGroup:removeSelf()
              --textGroup:removeSelf()
      end
      return true
    end


    backGroup:insert( background )
    textGroup:insert( woolf )
    objectsGroup:insert( banding1 )
    objectsGroup:insert( banding2 )

    sceneGroup:insert( backGroup )
    sceneGroup:insert( objectsGroup )
    sceneGroup:insert( textGroup )

    banding1:play()
    banding2:play()

    woolf:addEventListener( "touch", changeScene)
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
