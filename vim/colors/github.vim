set background=light
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set t_Co=256
let g:colors_name = "github"

hi LineNr       guifg=#aaaaaa
hi Normal       guifg=#333333
hi Comment      guifg=#999988
hi Statement    guifg=#000000                   gui=bold
hi Type         guifg=#000000                   gui=none
hi Constant     guifg=#dd1144
hi Identifier   guifg=#000000
hi PreProc      guifg=#009999
hi Number       guifg=#009999
hi Boolean      guifg=#000000                   gui=bold
hi Special      guifg=#000000
hi Delimiter    guifg=#dd1144
hi Operator     guifg=#000000                   gui=bold
hi Include      guifg=#0086b3

" Ruby
hi rubyConstant guifg=#008080 gui=bold
hi rubySymbol guifg=#990073
hi rubyFunction guifg=#990000 gui=bold
hi rubyRegexp guifg=#009926
hi rubyRegexpDelimiter guifg=#009926
hi rubyDefine guifg=#000000 gui=bold
hi rubyClass guifg=#000000 gui=bold
hi rubyModule guifg=#000000 gui=bold
hi rubyPseudoVariable guifg=#999999
hi rubyInstanceVariable guifg=#008080
hi rubyClassVariable guifg=#008080
hi rubyGlobalVariable guifg=#008080

" CoffeeScript
hi coffeeParen guifg=#990000 gui=bold
hi coffeeParens guifg=#990000 gui=bold
hi coffeeObjAssign guifg=#008080 gui=bold
hi coffeeSpecialVar guifg=#000000 gui=bold
hi coffeeProtoAccess guifg=#008080 gui=bold
