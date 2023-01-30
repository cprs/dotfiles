vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme rose-pine]])
vim.opt.number = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.g.OmniSharp_server_use_net6 = 1

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'rose-pine',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  }
}

vim.opt.guifont="FiraCode NFM:12"
