if exists("b:current_syntax")
	finish
endif

syn region strings start="'" end="'"   

syn match arrows			'<-\{1,2}'  
syn match simpleNumbers 	'\d\+\.\{0,1}\d*' 
syn match hexNumbers		'x[0-9A-F]\+'
syn match unicodeNumber		'u\([0-9A-F]\{4}\|10[0-9A-F]\{4,5}\)'
syn match binaryNumber 		'b\(1\|0\)\+'
syn match octalNumber 		'o[0-7]\+'
syn match comment			'\#\+\s*\(.\|\w\)\+'
syn match operators '\(+\|*\|?\|!\|/\)' 

hi def link arrows 			Identifier
hi def link binaryNumber 	Constant
hi def link simpleNumbers	Constant
hi def link hexNumbers 		Constant
hi def link unicodeNumber	Constant
hi def link octalNumber		Constant
hi def link comment 		Comment
hi def link operators		Type
hi def link strings     	String

let b:current_syntax = "PEGN"

syntax sync clear
syntax sync minlines=1000
