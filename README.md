# nvim

## Install Instructions

> Install requires [neovim](https://github.com/neovim/neovim) 0.9+. Always review the code before installing a configuration.

Backup your existing config:

```sh
# required

mv ~/.config/nvim{,.bak}
# or if you don't want to backup your old config:
# rm -rf ~/.config/nvim

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
# or if you don't want to backup your old files:
# rm -rf ~/.local/share/nvim
# rm -rf ~/.local/state/nvim
# rm -rf ~/.cache/nvim
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

- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [blink.cmp](https://github.com/saghen/blink.cmp)
- [conform.nvim](https://github.com/stevearc/conform.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [lazydev.nvim](https://github.com/folke/lazydev.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [markview.nvim](https://github.com/OXY2DEV/markview.nvim)
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [mini.ai](https://github.com/echasnovski/mini.ai)
- [mini.bracketed](https://github.com/echasnovski/mini.bracketed)
- [mini.diff](https://github.com/echasnovski/mini.diff)
- [mini.hipatterns](https://github.com/echasnovski/mini.hipatterns)
- [mini.icons](https://github.com/echasnovski/mini.icons)
- [mini.move](https://github.com/echasnovski/mini.move)
- [mini.operators](https://github.com/echasnovski/mini.operators)
- [mini.pairs](https://github.com/echasnovski/mini.pairs)
- [mini.splitjoin](https://github.com/echasnovski/mini.splitjoin)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-spider](https://github.com/chrisgrieser/nvim-spider)
- [nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [obsidian.nvim](https://github.com/epwalsh/obsidian.nvim)
- [persistence.nvim](https://github.com/folke/persistence.nvim)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [undotree](https://github.com/jiaoshijie/undotree)
- [vimtex](https://github.com/lervag/vimtex)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [yazi.nvim](https://github.com/mikavilpas/yazi.nvim)
