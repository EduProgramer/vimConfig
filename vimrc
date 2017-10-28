set nocompatible              " be iMproved, required
filetype off                  " required

no <down> ddp
no <up> ddkP
no <left> <Nop>
no <right> <Nop>

imap { {}<ESC>i<CR><CR><ESC>kA<Tab>
" -----------------  PLUGIMS SECTIOM ----------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



"NERDTree 
Plugin 'scrooloose/nerdtree'

"snippets and auto complition
" PLUGINS
Bundle 'ervandew/supertab'
"YMC is clang dependet had to be compiled see github for instructions
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" COMGIURATION
 let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
" make YCM compatible with UltiSnips (using supertab)
 let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
 let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
 let g:SuperTabDefaultCompletionType = '<C-n>'

" " better key bindings for UltiSnipsExpandTrigger
 let g:UltiSnipsExpandTrigger = "<tab>"
 let g:UltiSnipsJumpForwardTrigger = "<tab>"
 let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" -----------------  PLUGIMS SECTIOM ----------------------

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
