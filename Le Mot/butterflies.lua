--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:1843c412777897263eab6cb072744c1d:efaa01e12e4685576ec1d369cf6becc5:1d37dcde4a9ed331286274717dedeb5d$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- butterfly1_
            x=1,
            y=1,
            width=1022,
            height=474,

        },
        {
            -- butterfly2_
            x=994,
            y=521,
            width=978,
            height=492,

        },
        {
            -- butterfly3_
            x=1025,
            y=1,
            width=956,
            height=518,

        },
        {
            -- butterfly4_
            x=1,
            y=477,
            width=991,
            height=508,

            sourceX = 0,
            sourceY = 4,
            sourceWidth = 991,
            sourceHeight = 512
        },
    },

    sheetContentWidth = 1982,
    sheetContentHeight = 1014
}

SheetInfo.frameIndex =
{

    ["butterfly1_"] = 1,
    ["butterfly2_"] = 2,
    ["butterfly3_"] = 3,
    ["butterfly4_"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
