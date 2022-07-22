require("lsp")

local neogit = require('neogit')
local nnoremap = require('keymap').nnoremap

neogit.setup {}

nnoremap("<leader>go", function()
    neogit.open({ })
end);
