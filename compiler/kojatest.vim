" Vim compiler file
" Language: Koja (koja test)
" Maintainer: Henry Popp

if exists("current_compiler")
  finish
endif
let current_compiler = "kojatest"

CompilerSet makeprg=koja\ test\ --no-color\ --diagnostics\ short

" Short output of the dots reporter. Only an assertion has a column.
"
"   test/stack_test.koja:23:12: failure: assert popped == 3 (left: 2, right: 3)
"   test/stack_test.koja:30: failure: boom
"   test/stack_test.koja:38: crash: index 5 out of bounds
"   test/stack_test.koja:46: skipped: DATABASE_URL is not set
"   10 successful tests. 2 failures. 1 crashed. 1 skipped.
CompilerSet errorformat=
      \%f:%l:%c:\ failure:\ %m,
      \%f:%l:\ failure:\ %m,
      \%f:%l:\ crash:\ %m,
      \%-G%f:%l:\ skipped:\ %m,
      \%-G%.%#
