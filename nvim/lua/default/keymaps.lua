local keymap = vim.keymap

-- To delete words with alt + backspace
keymap.set('i', '<A-BS>', '<C-w>')
keymap.set('c', '<A-BS>', '<C-w>')

-- Window transitions
keymap.set('n', ' h', '<cmd>wincmd h<CR>')
keymap.set('n', ' l', '<cmd>wincmd l<CR>')
keymap.set('n', ' k', '<cmd>wincmd k<CR>')
keymap.set('n', ' j', '<cmd>wincmd j<CR>')

-- Line up and down
keymap.set('n', '<C-j>', ':m .+1<CR>==')
keymap.set('n', '<C-k>', ':m .-2<CR>==')
keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv")
keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv")

-- Don't copy to clipboard when using x
keymap.set('n', 'x', '"_x')

-- Get cursor to the bottom of the screen when using C-d, and C-u
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '=', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Copy to clipboard
keymap.set('v', " y", '"+y')

-- keymap.set('v', "[", '<Nop>')
-- keymap.set('v', "]", '<Nop>')

-- Sorround natively
keymap.set('v', '(', 'di()<ESC>hp')
keymap.set('v', '{', 'di{}<ESC>hp')
keymap.set('v', '[', 'di[]<ESC>hp')
keymap.set('v', '\'', 'di\'\'<ESC>hp')
keymap.set('v', '"', 'di""<ESC>hp')
keymap.set('v', '<', 'di<><ESC>hp')


-- keymap.set('n', "<C-i>", "yiw :%s/<C-R><C-W>/")
