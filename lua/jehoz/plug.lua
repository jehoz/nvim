local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Colors
Plug('catppuccin/nvim', {as = 'catppuccin'})

-- PlantUML syntax
Plug('aklt/plantuml-syntax')

-- Telescope fuzzy finder
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', {branch = '0.1.x'})
Plug('nvim-telescope/telescope-ui-select.nvim') -- use telescope UI for selections

-- Improved motion
Plug('ggandor/leap.nvim')

-- Treesitter fast incremental AST parsing (for sytax highlighting, search, etc)
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})

-- Purescript syntax support (none in treesitter)
Plug('purescript-contrib/purescript-vim')

-- git integration
Plug('tpope/vim-fugitive')
Plug('lewis6991/gitsigns.nvim')

-- LSP Support
Plug('neovim/nvim-lspconfig')

-- Autocompletion
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('L3MON4D3/LuaSnip')

Plug('VonHeikemen/lsp-zero.nvim', {branch = 'v3.x'})

-- portable package manager (also makes LSP stuff easier)
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')

-- Status line
Plug('nvim-lualine/lualine.nvim')
Plug('kyazdani42/nvim-web-devicons')


vim.call('plug#end')
