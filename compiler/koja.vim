" Vim compiler file
" Language: Koja
" Maintainer: Henry Popp

if exists("current_compiler")
  finish
endif
let current_compiler = "koja"

CompilerSet makeprg=koja\ check\ --no-color\ --diagnostics\ short\ %

" Short diagnostics (koja-driver/src/diagnostics.rs), one line each:
"
"   src/app.koja:5:12: error: type mismatch. Expected `Int`, found `String`
"   src/app.koja:9:3: warning: unused binding `x`
"   src/app.koja:5:12: note: the return type is declared here
CompilerSet errorformat=
      \%f:%l:%c:\ %trror:\ %m,
      \%f:%l:%c:\ %tarning:\ %m,
      \%f:%l:%c:\ %tote:\ %m,
      \%-G%.%#
