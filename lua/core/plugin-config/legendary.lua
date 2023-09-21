require('legendary').setup({
    keymaps = {
        { '<leader>ff', ':Telescope find_files<CR>', description = 'Find files' },
        { '<leader>cd', ':NoNeckPain<CR>', description = 'Center document' },
        { '<leader>xx', ':TroubleToggle<CR>', description = 'Toggle trouble' },
        { '<leader>xf', ':TroubleToggle quickfix<CR>', description = 'Toggle trouble quickfix' },
        { '<leader>fb', ':Telescope buffers<CR>', description = 'Find buffers' },
        { '<leader>fg', ':Telescope live_grep<CR>', description = 'Find grep' },
        { '<leader>fh', ':Telescope help_tags<CR>', description = 'Find help tags' },
        { '<leader>th', ':Themery<CR>', description = 'Toggle themery' },
        { '<leader>fp', function() vim.cmd("Telescope projections") end, description = 'Find projects' },
        { 'tl', '<cmd>lua _LAZYGIT_TOGGLE()<CR>', description = 'Toggle LazyGit' },
        { 'ct', ':ToggleTermToggleAll<CR>', description = 'Close Terminals' },
        
    },
    commands = {
        { ':qa!', description = 'Quit w/o Saving' },
       
    },
    autocmds = {
        { 'BufWritePre', vim.lsp.buf.format, description = 'Format Document' },
    },
    funcs = {
        { function() require('Comment.api').toggle.linewise.current() end, description = 'Toggle Line Comment' },
        { function() require('Comment.api').toggle.blockwise.current() end, description = 'Toggle Block Comment' },
    },
    extensions = {
        nvim_tree = true,
    },
    which_key = { auto_register = true },
    lazy_nvim = { auto_register = true },
  })


  vim.keymap.set('n', '<leader><Space>', ':Legendary<cr>')
  vim.keymap.set('n', '<Leader>gcc', 'gcc<cr>', { noremap = true, silent = true })
