vim.opt.signcolumn = 'yes'
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.set_preferences({
    sign_icons = {}
})
lsp.nvim_workspace()
lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    signs = false,
    update_in_insert = false,
    underline = true,
    severity_sort = false,
    float = true,
})
