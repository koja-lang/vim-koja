# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.5.0] - 2026-09-21

Supports features for Koja 0.19.

### Added

- Highlighting, indentation, and `%` matching for `test "description"` blocks, and highlighting for the `assert` statement.
- Highlighting for function and constant aliases (`alias JSON.decode`). The package head is a qualifier, not a type or constant.
- `compiler/kojatest.vim`. `:compiler kojatest` makes `:make` run `koja test` and puts each failed assertion, `fail`, and crash in the quickfix list at its line. Skips and the summary are left out.

### Fixed

- `:make` fills the quickfix list again. The compiler prints one-line diagnostics when its output is not a terminal, and the `errorformat` still expected the multi-line form. `makeprg` now asks for `--diagnostics short` and the `errorformat` reads `file:line:col: error: message`, with warnings and notes typed the same way.

### Removed

- Highlighting, indentation, and `%` matching for `unless`, removed from the language in Koja 0.19. Write `if not cond` instead.

## [0.4.0] - 2026-09-12

### Added

- Highlighting for named function references (`&name/arity`).

## [0.3.0] - 2026-08-09

### Added

- Highlighting for the error channel keywords `try`, `fail`, and `rescue` and the `!` separator in `! E` signatures.
- Highlighting, indentation, and `%` matching for `builtin` declarations.

## [0.2.0] - 2026-07-10

### Added

- Auto-indent recognizes `priv` before any block-opening declaration (`priv struct`, `priv enum`, and friends).

### Fixed

- Auto-indent works again. The block-opener and dedent patterns used `\>` inside very-magic regexes, which matches a literal `>` instead of a word boundary, so no line ever indented.

## [0.1.0] - 2026-06-27

Initial release.

[unreleased]: https://github.com/koja-lang/vim-koja/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/koja-lang/vim-koja/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/koja-lang/vim-koja/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/koja-lang/vim-koja/releases/tag/v0.1.0
