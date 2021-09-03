--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:a95eca9551293b25d14f28d237262569:28108dc57061114e911c46c8f0bdbf49:b4ca6abdcb35ac968ad745feb4d104a2$
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
            -- polygon1
            x=1,
            y=2369,
            width=789,
            height=776,

        },
        {
            -- polygon2
            x=1,
            y=1458,
            width=867,
            height=909,

        },
        {
            -- polygon3
            x=2549,
            y=1242,
            width=878,
            height=880,

        },
        {
            -- polygon4
            x=2549,
            y=2124,
            width=875,
            height=871,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 879,
            sourceHeight = 871
        },
        {
            -- snowflake1
            x=1,
            y=1,
            width=1289,
            height=1455,

            sourceX = 58,
            sourceY = 71,
            sourceWidth = 1413,
            sourceHeight = 1587
        },
        {
            -- snowflake2
            x=1292,
            y=1426,
            width=1255,
            height=1413,

            sourceX = 76,
            sourceY = 94,
            sourceWidth = 1413,
            sourceHeight = 1587
        },
        {
            -- snowflake3
            x=1292,
            y=1,
            width=1251,
            height=1423,

            sourceX = 95,
            sourceY = 63,
            sourceWidth = 1413,
            sourceHeight = 1587
        },
        {
            -- snowflake4
            x=2545,
            y=1,
            width=1141,
            height=1239,

            sourceX = 141,
            sourceY = 207,
            sourceWidth = 1413,
            sourceHeight = 1587
        },
    },

    sheetContentWidth = 3687,
    sheetContentHeight = 3146
}

SheetInfo.frameIndex =
{

    ["polygon1"] = 1,
    ["polygon2"] = 2,
    ["polygon3"] = 3,
    ["polygon4"] = 4,
    ["snowflake1"] = 5,
    ["snowflake2"] = 6,
    ["snowflake3"] = 7,
    ["snowflake4"] = 8,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
