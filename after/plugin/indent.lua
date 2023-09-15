vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#1a1a1a gui=nocombine]]

vim.opt.list = true
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,

        char_highlight_list = {
        "IndentBlanklineIndent1",
    },
}
