set nocompatible
set ts=4
set sw=4
set ls=0
set nowrap
set noruler
set linebreak
set autoindent
set viminfo^=h
set modelines=1
set number

syntax on

" Highlight search matches
set hlsearch

" Set wrapping for certain file types
au FileType html,tex,markdown set wrap

" Additional file types
au BufNewFile,BufRead *.glsl set filetype=glsl
au BufNewFile,BufRead *.go set filetype=go
au BufNewFile,BufRead *.hx set filetype=haxe
au BufNewFile,BufRead *.kt set filetype=kotlin
au BufNewFile,BufRead *.md set filetype=markdown

" Set a default file type
au BufNewFile,BufRead * setf markdown

" Use tab to complete words
" (from http://vim.wikia.com/wiki/Autocomplete_with_TAB_when_typing_words)
function! TabComplete()
	if col( '.' ) > 1 && strpart( getline( '.' ), col( '.' )-2, 3 ) =~ '^\w'
		return "\<C-N>"
	else
		return "\<Tab>"
	endif
endfunction
inoremap <Tab> <C-R>=TabComplete()<CR>
