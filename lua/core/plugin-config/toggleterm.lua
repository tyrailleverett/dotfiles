local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

toggleterm.setup {
  size = 10,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  direction = "horizontal",
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  winbar = {
    enabled = false,
    name_formatter = function(term)
      return term.name
    end
  },
}

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new {
  cmd = "lazygit",
  hidden = true,
  direction = "float",
  on_open = function(_)
    vim.cmd "startinsert!"
  end,
}

function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

vim.keymap.set("n", "tl", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "tt", "<cmd>exe v:count1 . 'ToggleTerm'<CR>")
vim.keymap.set("i", "tt", "<cmd>exe v:count1 . 'ToggleTerm'<CR>")

function _G.set_terminal_keymaps()
    local opts = {noremap = true}
    vim.api.nvim_buf_set_keymap(0, "t", "<Esc>", [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")