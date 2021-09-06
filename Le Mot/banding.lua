--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:3d2c9149342b7cee7a300b6c1f1b96ac:422cfea65ed48dbfe9c0b5efbeda8753:79ebee5425d7b542547b739ef46dc29e$
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
            -- banding1
            x=1,
            y=1,
            width=1250,
            height=785,

            sourceX = 0,
            sourceY = 12,
            sourceWidth = 1252,
            sourceHeight = 799
        },
        {
            -- banding2
            x=1,
            y=788,
            width=1246,
            height=475,

            sourceX = 0,
            sourceY = 8,
            sourceWidth = 1246,
            sourceHeight = 483
        },
        {
            -- banding3
            x=1,
            y=1265,
            width=1248,
            height=321,

            sourceX = 0,
            sourceY = 22,
            sourceWidth = 1248,
            sourceHeight = 343
        },
        {
            -- banding4
            x=1,
            y=1588,
            width=1244,
            height=249,

            sourceX = 0,
            sourceY = 4,
            sourceWidth = 1244,
            sourceHeight = 253
        },
    },

    sheetContentWidth = 1252,
    sheetContentHeight = 1838
}

SheetInfo.frameIndex =
{

    ["banding1"] = 1,
    ["banding2"] = 2,
    ["banding3"] = 3,
    ["banding4"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
