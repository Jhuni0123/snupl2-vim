" Vim syntax file
" Language:     SnuPL/2
" Maintainer:   Park Jonghun <whdgnsdl887@gmail.com>
" URL:          https://github.com/jhuni0123/snupl2-vim
" Last Change:  2022 Apr 20

syn keyword     snuplModule         module
syn keyword     snuplExtern         extern
syn keyword     snuplStatement      return
syn keyword     snuplRepeat         while do
syn keyword     snuplConditional    if then else     
syn keyword     snuplBoolean        true false
syn keyword     snuplVarDecl        var const
syn keyword     snuplBeginEnd       begin end
syn keyword     snuplType           integer longint char boolean
syn keyword     snuplFunctionDecl   procedure function nextgroup=snuplFunction skipwhite

syn keyword     snuplBuiltin        DIM DOFS ReadInt ReadLong
syn keyword     snuplBuiltin        WriteChar WriteInt WriteLn WriteLong WriteStr

syn match       snuplComment        "//.*$"
syn match       snuplFunction       "\h\w*" display contained
syn match       snuplNumber         "\<\d\+[L]\=\>"

syn match       snuplEscape         +\\[nt0\\"']+ contained
syn match       snuplEscape         "\\x\x\{2}" contained

syn match       snuplCharacter      "'[^\\\']'"
syn match       snuplCharacter      "'\\[nt0\\"']'" contains=snuplEscape

syn region      snuplString         start=+"+ end=+"+ skip=+\\\\\|\\"+ oneline contains=snuplEscape

hi def link snuplModule         Statement
hi def link snuplFunctionDecl   Statement
hi def link snuplBeginEnd       Statement
hi def link snuplStatement      Statement
hi def link snuplRepeat         Repeat
hi def link snuplConditional    Conditional
hi def link snuplConstant       Constant
hi def link snuplBoolean        Boolean
hi def link snuplNumber         Number
hi def link snuplString         String
hi def link snuplCharacter      Character
hi def link snuplEscape         SpecialChar
hi def link snuplType           Type
hi def link snuplFunction       Function
hi def link snuplBuiltin        Function
hi def link snuplVarDecl        StorageClass
hi def link snuplComment        Comment
