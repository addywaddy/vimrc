" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'L9'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-haml'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'pangloss/vim-javascript'
Plugin 'ddollar/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/taglist.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-cucumber'
Plugin 'timcharper/textile.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-endwise'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/syntastic'
Plugin 'jpalardy/vim-slime'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'vim-ruby/vim-ruby'
Plugin 'morhetz/gruvbox'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'wookiehangover/jshint.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sjl/vitality.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'othree/html5.vim'
Plugin 'majutsushi/tagbar'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'chrisbra/csv.vim'
Plugin 'sickill/vim-pasta'
Plugin 'itchyny/calendar.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'mhinz/vim-signify'
Plugin 'lmeijvogel/vim-yaml-helper'
Plugin 'jgdavey/vim-blockle'
Plugin 'junegunn/vim-easy-align'
Plugin 'haya14busa/incsearch.vim'
Plugin 'asciidoc/asciidoc'
Plugin 'ngmy/vim-rubocop'
Plugin 'janko-m/vim-test'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

set guifont=Inconsolata_for_Powerline:h15
set guifont=Sauce_Code_Powerline_Light:h14
let g:airline_powerline_fonts = 1

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
au BufRead,BufNewFile *.adoc set ft=asciidoc

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

let g:ctrlp_custom_ignore = 'git\|tmp'

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}

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

map <Leader>m :! cp ~/.vim/markdown/bootstrap.min.css /tmp && echo "$(cat ~/.vim/markdown/head.html) `markdown %` $(cat ~/.vim/markdown/foot.html)" > /tmp/test.html && open -a "Google Chrome" /tmp/test.html<Cr>

imap <C-e> <C-o>$
imap <C-a> <C-o>0
noremap j gj
noremap k gk

" Reindent when pasting
:nnoremap p ]p

" Styling for tab menu
hi TabLineFill ctermfg=black ctermbg=black
hi TabLine ctermfg=black ctermbg=gray
hi TabLineSel ctermfg=Red ctermbg=black

" Reload vimrc
map <Leader>v :e ~/.vim/vimrc<cr>
map <Leader>s :source ~/.vim/vimrc<cr>

" Ack
map <Leader>f :Ack! 
" Use ag instead
let g:ackprg = 'ag --nogroup --nocolor --column'

" splits
map <D-D> :split<cr>
map <D-d> :vsplit<cr>

" Navigation
map <Leader>e :Vexplore %:h<cr>
map <Leader>y :YamlGoToKey! 

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

function! Slurp()
  normal ldwhPl
endfunction

" open sesame
map <Leader>h :!herein<CR>

" regenerate ctags
map <Leader>c :!ctags --languages=ruby -R $(git rev-parse --show-toplevel) --exclude=.git<CR>

" close other splits
map <Leader>d :only<CR>
:set diffopt+=vertical

" GStatus
map <Leader>g :Gstatus<CR>

" Asciidoc Preview
map <Leader>ap ! asciidoctor %<CR>
map <Leader>sw :call Slurp()<CR>

" Vim Test
let test#strategy = "iterm"
let test#ruby#rspec#executable = 'zeus rspec'
