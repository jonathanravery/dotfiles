autocmd FileType phtml set ft=html.phtml " For SnipMate      
autocmd FileType markdown set ft=html.markdown " For SnipMate
:autocmd FileType php noremap <C-J> :!$HOME/bin/php %<CR>    
autocmd FileType php set omnifunc=phpcomplete#CompletePHP    
                                                             
syntax on                                                    
filetype on                                                  
filetype plugin on                                           
                                                             
set autoindent                                               
set hlsearch                                                 
set smartindent                                              
set showmatch                                                
set number                                                   
set tabstop=2                                                
set softtabstop=2                                            
set shiftwidth=2                                             
set noexpandtab                                              
set incsearch                                                
set ignorecase                                               
set autoread                                                 
set textwidth=0                                              
set bs=2                                                     
set background=dark                                          
set maxmempattern=2000000                                    
set wildmode=longest,list
                                                             
let NERDTreeQuitOnOpen=1                                     
                                                             
map <C-c> :NERDTreeToggle<CR>                                
map <C-k> :nohlsearch<CR>                                    
                                                             
nnoremap <C-> <C-^>                                          
                                                             
nmap \diff <Plug>VCSDiff                                     
                                                             
let g:syntastic_enable_signs=1                               
let g:syntastic_auto_loc_list=1                              
                                                             
au BufWinLeave * mkview                                      
au BufWinEnter * silent loadview                             
                                                             
let mapleader = ","                                          
set wildignore+=*Zend*,.git,*bundles*                        
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Use one of the following to define the camel characters.
" Stop on capital letters.
let g:camelchar = "A-Z"
" Also stop on numbers.
let g:camelchar = "A-Z0-9"
" Include '.' for class member, ',' for separator, ';' end-statement,
" and <[< bracket starts and "'` quotes.
let g:camelchar = "A-Z0-9.,;:{([`'\""
nnoremap <silent><S-Left> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
nnoremap <silent><S-Right> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
inoremap <silent><S-Left> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
inoremap <silent><S-Right> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
" vnoremap <silent><S-Left> :<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>v`>o
" vnoremap <silent><S-Right> <Esc>`>:<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>v`<o
