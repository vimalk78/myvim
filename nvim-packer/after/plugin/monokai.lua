--[[
-- DELETE THIS FILE
local monokai = require('monokai')
local palette = monokai.classic
monokai.setup {
    italics = false,
    palette = palette,
    custom_hlgroups = {
        TSInclude = {
            fg = palette.aqua,
        },
        GitSignsAdd = {
            fg = palette.green,
            bg = palette.base2
        },
        GitSignsDelete = {
            fg = palette.pink,
            bg = palette.base2
        },
        GitSignsChange = {
            fg = palette.orange,
            bg = palette.base2
        },
    }
}
]]--
