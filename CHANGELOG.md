# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
