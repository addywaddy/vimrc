" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'spolu/dwm.vim'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-haml'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'pangloss/vim-javascript'
Bundle 'ddollar/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/taglist.vim'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-cucumber'
Bundle 'timcharper/textile.vim'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-markdown'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-endwise'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/syntastic'
Bundle 'walm/jshint.vim'
Bundle 'jpalardy/vim-slime'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'vim-ruby/vim-ruby'
Bundle 'morhetz/gruvbox'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'wookiehangover/jshint.vim'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'sjl/vitality.vim'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-dispatch'
Bundle 'thoughbot/vim-rspec'
Bundle 'dhruvasagar/vim-table-mode'
Bundle 'othree/html5.vim'
Bundle 'majutsushi/tagbar'
Bundle 'evanmiller/nginx-vim-syntax'
Bundle 'chrisbra/csv.vim'
Bundle 'sickill/vim-pasta'
Bundle 'itchyny/calendar.vim'

set guifont=Inconsolata_for_Powerline:h17
let g:airline_powerline_fonts = 1
if has('gui_running')
  noremap <D-1> 1gt
  noremap <D-2> 2gt
  noremap <D-3> 3gt
  noremap <D-4> 4gt
  noremap <D-5> 5gt
  noremap <D-6> 6gt
  noremap <D-7> 7gt
  noremap <D-8> 8gt
  noremap <D-9> 9gt
  Bundle 'thanthese/Tortoise-Typing'
endif

" Set the Leader key
let mapleader=","
let maplocalleader=","

" 256 colors please
let &t_Co=256

" Resizing splits is still easier with the mouse, AFAIAC
:set mouse=a

syntax enable

set wrap
set nocompatible
set number
set ruler
syntax on
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·
highlight SpecialKey term=standout ctermbg=yellow guibg=yellow

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,coverage/,tmp/,log/
set wildignore+=*/doc/*

" Status bar
set laststatus=2

" Syntaxes
  au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,*.pill}    set ft=ruby

"au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.less set ft=css

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

let g:ctrlp_custom_ignore = 'git\|tmp'

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Directories for swp files
"set backupdir=~/.vim/backup
"set directory=~/.vim/backup

" Sod backups and swaps
set nobackup
set noswapfile

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Show (partial) command in the status line
set showcmd

" Turn off those bells!
set noeb vb t_vb=
au GUIEnter * set vb t_vb=


" Powerline Fancy stuff
let g:Powerline_symbols = 'fancy'

" Tab navigation
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 9gt

" Tags
map<Leader>t :TlistToggle<Cr>

" Simple Markdown generation

map <Leader>m :!markdown % > /tmp/test.html && open -a "Google Chrome" /tmp/test.html<Cr>

imap <C-e> <C-o>$
imap <C-a> <C-o>0
noremap j gj
noremap k gk

" Reindent when pasting
:nnoremap p ]p

"let g:snippets_dir="~/.vim/bundle/snipmate.vim/snippets/,~/.vim/snippets/"

" Styling for tab menu
hi TabLineFill ctermfg=black ctermbg=black
hi TabLine ctermfg=black ctermbg=gray
hi TabLineSel ctermfg=Red ctermbg=black

" Reload vimrc
map <Leader>v :e ~/.vim/vimrc<cr>
map <Leader>s :source ~/.vim/vimrc<cr>

" Ack
map <Leader>f :Ack! 

" splits
map <D-d> :split<cr>
map <D-D> :vsplit<cr>

" Navigation
map <Leader>e :Vexplore %:h<cr>

" Slime config
let g:slime_target = "tmux"

" Netrw default listing style
let g:netrw_liststyle = 3
" Netrw files to hide
let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_hide=1

colorscheme gruvbox
set background=dark
set colorcolumn=100
   
highlight SpecialKey ctermfg=2

" Rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let @a='ilet!:^[vt S)f=r{A }^['
function! ConvertLocalToLet()
  normal 0^ilet!:vt S)f=r{A }
endfunction

function! ConvertHashRockets()
  %s/\v:([^'|"][^ ]+) +\=\> +([^,|\}|\)]+)/\1: \2/g
endfunction

function! ConvertToExpect()
  normal iexpectlv/.shouldhS)%fscwto
endfunction

function! MultiLineArgs()
  normal f(aV:s/,/,\r/g$V%=f(V%:Tabularize /:\zs:nohf(%i
endfunction

let g:rspec_command = "!zeus rspec --no-color {spec}"

" vim-rspec mappings
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>rs :call RunNearestSpec()<CR>

" open sesame
map <Leader>h :!herein<CR>
