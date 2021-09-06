--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:3f3b98ab373d9f1bf4cf066c22a228d6:25146696cef9f30ef01dcec11d75efdc:b4ca6abdcb35ac968ad745feb4d104a2$
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
            -- snowflake1
            x=1,
            y=1,
            width=903,
            height=1019,

            sourceX = 41,
            sourceY = 49,
            sourceWidth = 989,
            sourceHeight = 1111
        },
        {
            -- snowflake2
            x=880,
            y=1022,
            width=879,
            height=991,

            sourceX = 53,
            sourceY = 64,
            sourceWidth = 989,
            sourceHeight = 1111
        },
        {
            -- snowflake3
            x=1,
            y=1022,
            width=877,
            height=997,

            sourceX = 66,
            sourceY = 44,
            sourceWidth = 989,
            sourceHeight = 1111
        },
        {
            -- snowflake4
            x=906,
            y=1,
            width=799,
            height=867,

            sourceX = 98,
            sourceY = 145,
            sourceWidth = 989,
            sourceHeight = 1111
        },
    },

    sheetContentWidth = 1760,
    sheetContentHeight = 2020
}

SheetInfo.frameIndex =
{

    ["snowflake1"] = 1,
    ["snowflake2"] = 2,
    ["snowflake3"] = 3,
    ["snowflake4"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
