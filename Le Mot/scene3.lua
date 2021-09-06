local composer = require( "composer" )

local scene = composer.newScene()

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    local cocteau = display.newImage( "images/cocteau(shadow).png" )
    cocteau.x = display.contentWidth/2 - 200
    cocteau.y = display.contentHeight/2

    function hideBird( event )
      if ( event.phase == "began") then
      cocteau.alpha = 0.0
    elseif ( event.phase == "ended" ) then
      cocteau.alpha = 1.0
    end
    end

    function changeScene( event )
      if ( event.phase == "began" ) then

      elseif ( event.phase == "ended" ) then
              composer.gotoScene("scene4", {effect = "crossFade", time = 2500})
              --objectsGroup:removeSelf()
              --textGroup:removeSelf()
      end
      return true
    end


    local asterisk = display.newImage("images/asterisk.png")
    asterisk.x = 975
    asterisk.y = 300
    asterisk:addEventListener("touch", changeScene)


    local background = display.newImage( "images/amour.png" )
    background.x = display.contentWidth/2
    background.y = display.contentHeight/2
    background:addEventListener("touch", hideBird)

    sceneGroup:insert( background )
    sceneGroup:insert( cocteau )
    sceneGroup:insert( asterisk )
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
