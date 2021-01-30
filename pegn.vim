if exists("b:current_syntax")
	finish
endif

syn region strings start="'" end="'"   

syn match arrows	'<-\{1,2}'  
syn match numbers 	'\d\+\.\*\d*' 
syn match comment	'\#\+\s*\(.\|\w\)\+'

syn match operators '\(+\|*\|?\|!\|/\)' " funziona, male ma funziona

let b:current_syntax = "PEGN"

hi def link arrows 		Type
hi def link numbers 	Constant
hi def link definition  Type
hi def link comment 	Comment
hi def link operators	Type
hi def link strings     String
