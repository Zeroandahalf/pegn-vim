" TODO: continuare il match con le varie parti.
"		Osservare bene la documentazione di PEGN e la grammatica che specifica PEGN stesso
" Verifica che un file con la stessa sintassi non sia già caricato, in questo
" caso esce direttamente

if exists("b:current_syntax")
	finish
endif

" Meta-commenti
" Commenti 
"
" L-Arrow-Long 
" L-Arrow-Short
" Plus
" Star
" Digit
" Quoted string

syn keyword arrows <-- <- skipwhitespace

syn match numbers 	 '\d\+'  " matcha i numeri
syn match definition '^\w\+' " matcha la prima parola in una riga, i termini di PEGN
"syn match comment '^\#\+.*$'  " matcha i commenti, anche con più #
"syn match quant '?|*|+' 	 "


let b:current_syntax = "PEGN"

hi def link arrows 		Type
hi def link numbers 	Constant
hi def link comment 	Comment
hi def link quant 		Constant
hi def link arrows 		Statement

" augroup filetypedetect
" 	 au! BufNewFile,BufRead *.pegn setfiletype PEGN
" augroup END

