local composer = require( "composer" )

local scene = composer.newScene()

-- create()
function scene:create( event )

    local backGroup = display.newGroup()
    local objectsGroup = display.newGroup()
    local textGroup = display.newGroup()

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    local background = display.newImage( "images/mountainbackground.png" )
    background.x = display.contentWidth/2
    background.y = display.contentHeight/2

    sceneGroup:insert( background )

    local burningSnowflake = display.newImage("images/burningsnowflake.png")
    burningSnowflake.x = display.contentWidth/2
    burningSnowflake.y = display.contentHeight/2 - 1000

    sceneGroup:insert( burningSnowflake )

    local fromLove = display.newImage("images/fromlove.png")
    fromLove.x = display.contentWidth/2
    fromLove.y = display.contentHeight/2 - 750

    sceneGroup:insert( fromLove )

    local dream = display.newImage("images/dream.png")
    dream.x = display.contentWidth/2 + 650
    dream.y = display.contentHeight/2 + 1050

    sceneGroup:insert( dream )

    local snowflakeSequence = {
        -- consecutive frames sequence
        {
            name = "cycle",
            start = 1,
            count = 8,
            time = 1600,
            loopCount = 0,
            loopDirection = "bounce"
        }
    }

    local sheetInfo = require("snowflake")
    local snowflakeSheet = graphics.newImageSheet( "images/snowflake.png", sheetInfo:getSheet() )

    local snowflake = display.newSprite( snowflakeSheet, snowflakeSequence )
    snowflake.x = display.contentWidth/2
    snowflake.y = display.contentHeight/2 + 150

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
    textGroup:insert( burningSnowflake )
    textGroup:insert( fromLove )
    textGroup:insert( dream )
    objectsGroup:insert( snowflake )

    sceneGroup:insert( backGroup )
    sceneGroup:insert( objectsGroup )
    sceneGroup:insert( textGroup )

    snowflake:play()

    snowflake:addEventListener( "touch", changeScene)

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
