--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:7da7d08ca83f0349b5f6dc974cf4c49c:2cb5193cd11e3a538e49d112f3bb341c:7203f70239ac7e994b052bd867a50a22$
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
            y=883,
            width=789,
            height=776,

        },
        {
            -- polygon2
            x=881,
            y=1,
            width=867,
            height=909,

        },
        {
            -- polygon3
            x=1,
            y=1,
            width=878,
            height=880,

        },
        {
            -- polygon4
            x=792,
            y=912,
            width=879,
            height=871,

        },
    },

    sheetContentWidth = 1749,
    sheetContentHeight = 1784
}

SheetInfo.frameIndex =
{

    ["polygon1"] = 1,
    ["polygon2"] = 2,
    ["polygon3"] = 3,
    ["polygon4"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
