# pegn.vim

First attempt at a minimal syntax highlighting plugin for PEGN grammars. If you want to know something more about PEGN go to [pegn.dev](https://pegn.dev) to read about this awesome project and its implications.

## Installation

I use Plug to manage my plugins, so that's the one I'll recommend
Add something like the following to your `.vimrc` after installing the [`Plug`](https://github.com/junegunn/vim-plug) Vim package manager 

```vim
augroup pegn_syntax
	au! BufNewFile,BufRead *.pegn set filetype=PEGN
augroup END

call plug#begin('/dir/to/your/vimplugins')
Plug 'Zeroandahalf/pegn-vim'
call plug#end()
```

## License

This code is licensed under Mozilla Public License 2.0. Read the *LICENSE* file. 

## Disclaimer
I'm not developing PEGN, I just wanted to contribute to it with something and I don't know much of the details so go ask them if you have questions.
