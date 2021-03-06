

api.nvim_set_keymap('n', '-', ':RnvimrToggle<CR>', {noremap = true, silent = true})

-- Better nav for omnicomplete
cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')

-- COPY EVERYTHING --
-- map("n", "<C-a>", [[ <Cmd> %y+<CR>]], opt)
api.nvim_set_keymap("n", "<C-a>", [[<Cmd> %y+<CR>]], {noremap = true, silent = true})


-- Leader key is <Space>
vim.g.mapleader = " "

-- gotta move this somewhere else
vim.g.auto_save = 1

-- I hate escape
-- api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
-- api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
-- api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- wq (write and quit)
cmd "cnoreabbrev W w"
cmd "cnoreabbrev Q q"
cmd "cnoreabbrev Wq wq"
cmd "cnoreabbrev Wqq wq"
cmd "cnoreabbrev WQ wq"
cmd "cnoreabbrev wQ wq"

--------------------------=== Deleting ===--------------------------
-- " deleting with arrows and backspace
-- " inoremap <C-w> <C-\><C-o>dB
-- " inoremap <C-BS> <C-\><C-o>db
cmd "noremap! <C-BS> <C-w>"
cmd "noremap! <C-h> <C-w>"
-- cmd "inoremap <C-BS> <C-w>"
-- cmd "inoremap <C-h> <C-w>"
