" Vundle
set nocompatible
filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
"call vundle#begin()
Plug 'VundleVim/Vundle.vim'

" Not sure
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'vim-scripts/L9'

" Syntax
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-ruby/vim-ruby'
Plug 'othree/html5.vim'
Plug 'chr4/nginx.vim'
Plug 'chrisbra/csv.vim'
Plug 'tpope/vim-markdown'
Plug 'guns/vim-clojure-static'
Plug 'w0rp/ale'
Plug 'kien/rainbow_parentheses.vim'
Plug 'bhurlow/vim-parinfer'
Plug 'tpope/vim-unimpaired'
Plug 'tomlion/vim-solidity'

" Text manipulation
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'michaeljsmith/vim-indent-object'
Plug 'ddollar/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-endwise'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'jiangmiao/auto-pairs'
Plug 'dhruvasagar/vim-table-mode'
Plug 'itchyny/calendar.vim'
Plug 'gcmt/wildfire.vim'
Plug 'lmeijvogel/vim-yaml-helper'
Plug 'jgdavey/vim-blockle'
Plug 'junegunn/vim-easy-align'
Plug 'triglav/vim-visual-increment'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-eunuch'
Plug 'sickill/vim-pasta'

" Search / Rreplace
Plug 'terryma/vim-multiple-cursors'
Plug 'haya14busa/incsearch.vim'
Plug 'kien/ctrlp.vim'
Plug '/usr/local/opt/fzf'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/taglist.vim'

" Autocomplete
Plug 'ervandew/supertab'

" Color Schemes
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plug 'morhetz/gruvbox'
Plug 'MichaelMalick/vim-colors-bluedrake'
Plug 'aereal/vim-colors-japanesque'
Plug 'roosta/srcery'
Plug 'gummesson/stereokai.vim'
Plug 'rakr/vim-one'
Plug 'aliou/moriarty.vim'
Plug 'chriskempson/base16-vim'
Plug 'jacoborus/tender'
Plug 'daylerees/colour-schemes', {'rtp': 'vim/'}
Plug 'fenetikm/falcon'

Plug 'elmcast/elm-vim'
Plug 'dkprice/vim-easygrep'

" VCS
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'

" Status
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Utils
Plug 'janko-m/vim-test'

" Snippets
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Clojure
Plug 'tpope/vim-salve'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'

"call vundle#end()
call plug#end()


set guifont=Sauce\ Code\ Powerline\ Light:h13
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
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
  colorscheme base16-solarflare
  set lines=50
  set columns=200
else
  colorscheme Tomorrow-Night-Eighties
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
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,coverage/,tmp/,log/,node_modules/
set wildignore+=*/.git/*,*/log/*,*/node_modules/*,*/tmp/*,*/coverage/*,*/doc/*

" Status bar
set laststatus=2

" Syntaxes
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,*.pill}    set ft=ruby

" Spelling
au BufRead,BufNewFile {*.md,*.txt} setlocal spell
"au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.less set ft=css
au BufRead,BufNewFile *.adoc set ft=asciidoc
au BufRead,BufNewFile *.boot set ft=clj
au BufNewFile,BufRead *.orgy setfiletype org

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

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

set background=dark
set colorcolumn=100
set tw=100
highlight SpecialKey ctermfg=2
map <Leader>bl :set background=light<CR>
map <Leader>bd :set background=dark<CR>

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

function! MultiLineHash()
  normal :s/,/,\r/g/)il%ava)=:noh
endfunction

function! Slurp()
  normal ldwhPl
endfunction

function! ChangeQuotes()
  normal cs"'
endfunction

" open sesame
map <Leader>h :!herein<CR>

" regenerate ctags
map <Leader>c :!ctags -R --sort=yes --exclude=.git --exclude=node_modules --exclude=public $(git rev-parse --show-toplevel)<CR>

" close other splits
map <Leader>d :only<CR>

" Maximise current split
nnoremap <C-W>[ <C-W>\| <C-W>_
" Equalise splits
nnoremap <C-W>] <C-W>=

:set diffopt+=vertical

" GStatus
map <Leader>g :Gstatus<CR>

" Asciidoc Preview
map <Leader>ap ! asciidoctor %<CR>
map <Leader>sw :call Slurp()<CR>
map <Leader>hml :call MultiLineHash()<CR>
" Vim Test
let test#strategy = "iterm"
let test#ruby#rspec#executable = 'rspring'

nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>
nmap <silent> <leader>aa :AV<CR>
nmap <silent> <leader>' :call ChangeQuotes()<CR>
nmap <silent> <leader>j :e ~/Documents/journal.txt<CR>

set grepprg=ag\ --nogroup\ --nocolor

call airline#parts#define_function('ALE', 'ALEGetStatusLine')
call airline#parts#define_condition('ALE', 'exists("*ALEGetStatusLine")')

let g:ale_linters = {
\   'javascript': ['flow', 'standard'],
\}
let g:ale_pattern_options = {
\   '.*\.html.erb$': {'ale_enabled': 1}
\}

let g:airline_section_error = airline#section#create_right(['ALE'])
let g:ale_sign_warning = '🤖'
let g:ale_sign_error = '🤖'

"let g:calendar_google_calendar = 1
"let g:calendar_google_task = 1

"let g:jsx_ext_required = 0
"autocmd FileType javascript runtime! ftplugin/html/sparkup.vim

"let g:AutoPairsShortcuts = 0
"let b:AutoPairsMoveCharacter = ""
