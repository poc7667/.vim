hi  Comment  ctermfg=6
"auto exec ruby and coffee script with F5 , remeber to save file before launching
autocmd FileType ruby nmap <F5> :!ruby %<cr>
autocmd FileType coffee nmap <F5> :!coffee %<cr>
set encoding=utf-8 
set fileencoding=utf-8 

colorscheme elflord            
set smartindent
set tabstop=4
set shiftwidth=4
"try to set show ansi color
if &term=="ansi" 
set t_Co=0 
endif

"set expandtab

filetype on

if has("cscope")
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
" add any database in current directory
if filereadable("cscope.out")
cs add cscope.out
" else add database pointed to by environment
elseif $CSCOPE_DB != ""
cs add $CSCOPE_DB
endif
set csverb
set cscopetag
set cscopequickfix=s-,g-,c-,d-,t-,e-,f-,i-
endif

"let Tlist can close windows at one time
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" Key map
" Presee F4 and you can open the NERDTree
nnoremap <silent> <F4> :NERDTree<CR>  
" Show function List with Tlist 
nnoremap <F12> :TlistToggle<CR>

"set autocomplet 
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby

filetype plugin on


map gn :bn<cr>
map gp :bp<cr>
map ff :CtrlP<cr>
map gt :buffers<cr>

let g:NERDTreeWinSize=12
