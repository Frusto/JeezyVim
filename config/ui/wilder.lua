-- Load wilder.nvim
local wilder = require("wilder")

-- Setup wilder
wilder.setup({
    modes = { ":", "/", "?" },
})

-- Configure gradient highlights (customize as needed)
vim.cmd("highlight Pmenu guibg=NONE")

local gradient = {
    "#f4468f",
    "#fd4a85",
    "#ff507a",
    "#ff566f",
    "#ff5e63",
    "#ff6658",
    "#ff704e",
    "#ff7a45",
    "#ff843d",
    "#ff9036",
    "#f89b31",
    "#efa72f",
    "#e6b32e",
    "#dcbe30",
    "#d2c934",
    "#c8d43a",
    "#bfde43",
    "#b6e84e",
    "#aff05b",
}

-- Generate highlights for the gradient
for i, fg in ipairs(gradient) do
    gradient[i] = wilder.make_hl("WilderGradient" .. i, "Pmenu", { { a = 1 }, { a = 1 }, { foreground = fg } })
end

-- Configure renderer with palette theme, highlights, and icons
wilder.set_option(
    "renderer",
    wilder.popupmenu_renderer(wilder.popupmenu_palette_theme({
        border = "rounded",
        max_height = "30%",
        min_height = 0,
        max_width = "30%",
        prompt_position = "bottom", -- 'top' or 'bottom' for the prompt position
        reverse = 0,          -- Set to 1 to reverse the list order
        highlights = {
            gradient = gradient, -- Apply gradient highlights to unselected items
        },
        highlighter = wilder.highlighter_with_gradient({
            wilder.basic_highlighter(), -- Keep gradient for all items
        }),
        -- Add file-type icons using nvim-web-devicons
        left = { " ", wilder.popupmenu_devicons() },
        right = { " ", wilder.popupmenu_scrollbar() },
    }))
)
