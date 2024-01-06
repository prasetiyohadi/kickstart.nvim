-- [[ Setting options ]]
-- See `:help vim.o`

local cmd = vim.cmd
local o = vim.o
local opt = vim.opt
local wo = vim.wo

-- Turn on modifiable
o.modifiable = true

-- Do not save undo history
o.undofile = false

-- Make relative line numbers default
wo.relativenumber = true

-- Configure filetype
cmd [[filetype plugin indent on]]

-- Configure conceal level
opt.conceallevel = 2

-- Configure folding
opt.foldenable = false

-- Encoding
opt.encoding = 'utf-8' -- set default encoding to UTF-8
opt.fileencoding = 'utf-8'
opt.fileencodings = 'utf-8'

-- Fix backspace indent
opt.backspace = 'indent,eol,start'

-- Visual settings
cmd [[syntax on]]
