hi  Comment  ctermfg=6
"auto exec ruby and coffee script with F5 , remeber to save file before launching
autocmd FileType ruby nmap <F5> :!ruby %<cr>
autocmd FileType coffee nmap <F5> :!coffee %<cr>
set encoding=utf-8 
set fileencoding=utf-8 

colorscheme elflord            
set smartindent
set tabstop=4
set expandtab  
set shiftwidth=4
"make it autoreload
set autoread 

"auto move it last time the position you viewed
"make vim save and load the folding of the document each time it loads"
""also places the cursor in the last place that it was left."
au BufWinLeave * mkview
au BufWinEnter * silent loadview

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
nnoremap <silent> <F3> :!/usr/bin/env python %<CR>
" Show function List with Tlist 
nnoremap <F12> :TlistToggle<CR>

" Map ctrl+q to ctrlw+ctrlw
"
"nnoremap <silent> <C-q>  :<C-w><C-w>

"switch in splitted window
map <c-d> <c-w>l
map <c-a> <c-w>h

"set highlight
set hlsearch

"set autocomplet 
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby

filetype plugin on


map gn :bn<cr>
map gp :bp<cr>
map ff :CtrlP<cr>
map gt :buffers<cr>
"set NerdTreeSize
let g:NERDTreeWinSize=12


set nocompatible " explictly get out of vi-compatible mode

set background=dark " we plan to use a dark background

syntax on " syntax highlighting on

set number " turn on line numbers

set ruler "always show current position along the bottom

set incsearch " do highlight as you type you search phrase

set ignorecase " case insensitive by default

set smartcase " if there are caps, go case-sensitive

"python
let Tlist_Auto_Highlight_Tag=1  
let Tlist_Auto_Open=1  
let Tlist_Auto_Update=1  
let Tlist_Display_Tag_Scope=1  
let Tlist_Exit_OnlyWindow=1  
let Tlist_Enable_Dold_Column=1  
let Tlist_File_Fold_Auto_Close=1  
let Tlist_Show_One_File=1  
let Tlist_Use_Right_Window=1  
let Tlist_Use_SingleClick=1  


"Python
"
"enable folding
set foldmethod=indent
set foldlevel=99


"Rope vim

let $PYTHONPATH .= ":~/install/ropehg/rope:~/install/ropehg/ropemode:~/install/ropehg/ropevim"
source ~/install/ropehg/ropevim/ropevim.vim
let g:pymode_rope_goto_def_newwin = "new"
let ropevim_vim_completion=1
"Use Ctrl + ] . to autocomple
inoremap <C-]> <C-R>=RopeCodeAssistInsertMode()<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

"auto ident with newline
imap <C-Return> <CR><CR><C-o>k<Tab>


"auto import python template
autocmd bufnewfile *.py 0r ~/py_lib/tmpl.py


"add ctrlp.vim setting
"
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
