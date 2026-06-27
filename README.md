# vim-koja

A Vim and Neovim plugin for the [Koja programming language](https://github.com/koja-lang/koja): syntax highlighting, indentation, and `:make` integration via the `koja` compiler.

## Features

- Filetype detection for `.koja` and `.kojs`.
- Syntax highlighting (keywords, types, strings with interpolation, numbers, annotations, comments).
- Auto-indentation that follows block openers (`fn`, `if`, `match`, `for`, …) and dedents on `end` / `else` / `after` / `when`.
- `matchit` support — jump between block delimiters (`fn`…`end`, `if`…`else`…`end`, …) with `%`.
- `:make` integration: runs `koja check` and populates the quickfix list with parsed errors and warnings.

This plugin covers syntax and editing only. For language-server features, pair it with `koja-lsp` through your LSP client (see [below](#language-server-optional)).

## Requirements

- Vim or Neovim.
- The `koja` compiler on your `$PATH` for `:make`. Installing Koja via [asdf](https://github.com/koja-lang/asdf-koja) provides it. Otherwise, see the [installation guide](https://github.com/koja-lang/koja/blob/main/INSTALLING.md).

## Installation

With [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'koja-lang/vim-koja'
```

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{ "koja-lang/vim-koja" }
```

Or without a plugin manager, as a native package:

```sh
# Vim
git clone https://github.com/koja-lang/vim-koja ~/.vim/pack/plugins/start/vim-koja
# Neovim
git clone https://github.com/koja-lang/vim-koja ~/.config/nvim/pack/plugins/start/vim-koja
```

## Language server (optional)

This plugin handles syntax and indentation only. For diagnostics, completion, and go-to-definition, run the `koja-lsp` server (installed alongside the `koja` compiler) through any LSP client — Neovim's built-in LSP, [coc.nvim](https://github.com/neoclide/coc.nvim), or [vim-lsp](https://github.com/prabirshrestha/vim-lsp). It communicates over stdio and treats the directory containing `koja.toml` as the project root.

## Contributing

Standard Vim runtimepath layout — the repository root is the plugin:

- `ftdetect/koja.vim` — maps `*.koja` / `*.kojs` to the `koja` filetype.
- `ftplugin/koja.vim` — buffer-local options (indent width, comments, `matchit` pairs) and selects the `koja` compiler.
- `syntax/koja.vim` — highlighting rules.
- `indent/koja.vim` — `indentexpr`-based auto-indentation.
- `compiler/koja.vim` — `makeprg` and `errorformat` for `:make` (runs `koja check`).
