local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({buffer = bufnr})
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
end)

-- here you can setup the language servers
local mason = require('mason')
mason.setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'lua_ls',
    },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

--[[
local cmp = require('cmp')
local cmp_select = {behaviour = mason_lsp.cmp.SelectBehaviour.Select}
local cmp_mappings = mason_lsp.lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})
]]
