require("projections").setup({
    workspaces = {
        "~/Projects",
    },
    patterns = { ".git", ".svn", ".hg", "package.json", "composer.json" },
    store_hooks = {
        pre = function()
            local nvim_tree_present, api = pcall(require, "nvim-tree.api")
            if nvim_tree_present then api.tree.close() end
        end,

        post = function()
            local nvim_tree_present, api = pcall(require, "nvim-tree.api")
            local global_cwd = vim.fn.getcwd(-1, -1)
            if nvim_tree_present then api.tree.change_root(global_cwd) end 
        end 
    },
    restore_hooks = {
        pre = function()
            local nvim_tree_present, api = pcall(require, "nvim-tree.api")
            if nvim_tree_present then api.tree.close() end
        end,

        post = function()
            local nvim_tree_present, api = pcall(require, "nvim-tree.api")
            local global_cwd = vim.fn.getcwd(-1, -1)
            if nvim_tree_present then api.tree.change_root(global_cwd) end 
        end 
    }
})

require('telescope').load_extension('projections')
vim.keymap.set("n", "<leader>fp", function() vim.cmd("Telescope projections") end)

local Session = require("projections.session")
vim.api.nvim_create_autocmd({ 'VimLeavePre' }, {
    callback = function() Session.store(vim.loop.cwd()) end,
})

local switcher = require("projections.switcher")
vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = function()
        if vim.fn.argc() ~= 0 then return end
        local session_info = Session.info(vim.loop.cwd())
        if session_info == nil then
            Session.restore_latest()
        else
            Session.restore(vim.loop.cwd())
        end
    end,
    desc = "Restore last session automatically"
})

vim.opt.sessionoptions:append("localoptions")
