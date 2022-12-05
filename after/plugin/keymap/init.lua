local remap = require("felipesnow.maps")

local nnoremap = remap.nnoremap
local vnoremap = remap.vnoremap
local xnoremap = remap.xnoremap
-- local inoremap = remap.inoremap
local nmap = remap.nmap

nnoremap("0", "^")
nnoremap("^", "0")

vnoremap("<A-j>", "<cmd>m '>+1<CR>gv")
vnoremap("<A-k>", "<cmd>m '<-2<CR>gv")

nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")


xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

nnoremap("Q", "<nop>")

vnoremap(">", ">gv")
vnoremap("<", "<gv")

nnoremap("<C-j>", "<cmd>cn<cr>")
nnoremap("<C-k>", "<cmd>cp<cr>")
nnoremap("<C-l>", "<Nop>")
nnoremap("<C-l>", "<cmd>noh<cr>")

nnoremap("<A-S-h>", "5<C-w><")
nnoremap("<A-S-l>", "5<C-w>>")
nnoremap("<A-S-k>", "5<C-w>-")
nnoremap("<A-S-j>", "5<C-w>+")
vnoremap('/', "\"fy/\\V<C-R>f<CR>")

nnoremap("ZZ", "<cmd>Zen<cr>")
