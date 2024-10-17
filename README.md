# nvim

## Install Instructions

> Install requires [neovim](https://github.com/neovim/neovim) 0.9+. Always review the code before installing a configuration.

Backup your existing config:

```sh
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Clone the repository and install the plugins:

```sh
git clone https://github.com/ojas-bhagavath/nvim.git ~/.config/nvim/
```

Remove the `.git` repo to make it your own:

```sh
rm -rf ~/.config/nvim/.git
```

Start neovim!

```sh
nvim
```

## Plugins

### plugin-manager

- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)

### code

- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer),
  - [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path),
  - [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp),
  - [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip),
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)

### colorscheme

- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)

### editor

- [mikavilpas/yazi.nvim](https://github.com/mikavilpas/yazi.nvim)
- [folke/flash.nvim](https://github.com/folke/flash.nvim)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [echasnovski/mini.move](https://github.com/echasnovski/mini.move)
- [echasnovski/mini.splitjoin](https://github.com/echasnovski/mini.splitjoin)

### formatting

- [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)

### linting

- [mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint)

### lsp

- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [WhoIsSethDaniel/mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)

### treesitter

- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)

### ui

- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [b0o/incline.nvim](https://github.com/b0o/incline.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [echasnovski/mini.indentscope](https://github.com/echasnovski/mini.indentscope)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [echasnovski/mini.hipatterns](https://github.com/echasnovski/mini.hipatterns)
- [echasnovski/mini.diff](https://github.com/echasnovski/mini.diff)
- [nvimdev/dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)

### util

- [Shatur/neovim-session-manager](https://github.com/Shatur/neovim-session-manager)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)
- [jiaoshijie/undotree](https://github.com/jiaoshijie/undotree)
- [echasnovski/mini.ai](https://github.com/echasnovski/mini.ai)
- [echasnovski/mini.bracketed](https://github.com/echasnovski/mini.bracketed)
- [echasnovski/mini.bufremove](https://github.com/echasnovski/mini.bufremove)

### language-specific

#### markdown

- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [epwalsh/obsidian.nvim](https://github.com/epwalsh/obsidian.nvim)

#### latex

- [lervag/vimtex](https://github.com/lervag/vimtex)
