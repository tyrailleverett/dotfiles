local lsp_zero = require('lsp-zero')
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"tsserver", "intelephense", "prismals", "svelte", "html", "cssls", "astro", "tailwindcss"}
})

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local lspconfig = require('lspconfig')
lspconfig.tsserver.setup({})
lspconfig.intelephense.setup({})
lspconfig.prismals.setup({})
lspconfig.svelte.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.astro.setup({})
lspconfig.tailwindcss.setup({})

