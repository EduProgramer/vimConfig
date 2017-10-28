set nocompatible              " be iMproved, required
filetype off                  " required

no <down> ddp
no <up> ddkP
no <left> <Nop>
no <right> <Nop>

set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

set relativenumber
set scrolloff=17

"imap { {}<ESC>i<CR><CR><ESC>kA<Tab>


" -----------------  PLUGIMS SECTIOM ----------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" ---------------------------------------------------------



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

 " better key bindings for UltiSnipsExpandTrigger
 let g:UltiSnipsExpandTrigger = "<tab>"
 let g:UltiSnipsJumpForwardTrigger = "<tab>"
 let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" easy-motion
Plugin 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0
nmap f <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1

" auto-close
Plugin 'Townk/vim-autoclose'

" airlinebar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" powerbar fonts
Plugin 'powerline/fonts'
"let g:airline_powerline_fonts = 1
let g:airline_theme='simple'

" ---------------------------------------------------------
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
