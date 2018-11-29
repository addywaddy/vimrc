let $FZF_DEFAULT_COMMAND='fd --type f'

call plug#begin()
" Colorschemes
Plug 'chriskempson/base16-vim'
" Alignment
Plug 'junegunn/vim-easy-align'
" Fuzzy find
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Status line
Plug 'itchyny/lightline.vim'
" Html markup completion
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Linter engine
Plug 'w0rp/ale'
" Surround commands
Plug 'tpope/vim-surround'
" Unix commands
Plug 'tpope/vim-eunuch'
" Sensible vimrc defaults
Plug 'tpope/vim-sensible'
" Git
Plug 'tpope/vim-fugitive'
" Rails
Plug 'tpope/vim-rails'
" Solidity
Plug 'tomlion/vim-solidity'
" Ruby blocks
Plug 'jgdavey/vim-blockle'
" Comments
Plug 'tpope/vim-commentary'
" Clojure
Plug 'tpope/vim-fireplace'
" Multiple cursors
Plug 'terryma/vim-multiple-cursors'
" Improved netrw
Plug 'tpope/vim-vinegar'
" do-end pairs
Plug 'tpope/vim-endwise'
" Session management
Plug 'tpope/vim-obsession'
" Autpairs
Plug 'jiangmiao/auto-pairs'
" Elm
Plug 'elmcast/elm-vim'
" Tab completion
Plug 'ervandew/supertab'
" Indentation-aware pasting
Plug 'sickill/vim-pasta'
" Indentation
Plug 'michaeljsmith/vim-indent-object'
" Test runner
Plug 'janko-m/vim-test'

call plug#end()

set guifont=Sauce\ Code\ Powerline\ Light:h13
set number
set linespace=2
set wrap
set nocompatible
set encoding=utf-8

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set colorcolumn=100
set tw=100

colorscheme base16-atlas
set termguicolors
let base16colorspace=256
" Set the Leader key
let mapleader=","
let maplocalleader=","

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

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

" FZF shortcut
noremap <C-p> :Files<CR>
noremap <C-b> :Buffers<CR>
map <Leader>f :Rg 


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
else
  noremap <Leader>1 1gt
  noremap <Leader>2 2gt
  noremap <Leader>3 3gt
  noremap <Leader>4 4gt
  noremap <Leader>5 5gt
  noremap <Leader>6 6gt
  noremap <Leader>7 7gt
  noremap <Leader>8 8gt
  noremap <Leader>9 9gt
endif

" Simple Markdown generation
map <Leader>m :! cp ~/.vim/markdown/bootstrap.min.css /tmp && echo "$(cat ~/.vim/markdown/head.html) `markdown %` $(cat ~/.vim/markdown/foot.html)" > /tmp/test.html && open -a "Google Chrome" /tmp/test.html<Cr>

" Reindent when pasting
:nnoremap p ]p

" Splits
map <D-D> :split<cr>
map <D-d> :vsplit<cr>
" close other splits
map <Leader>d :only<CR>
" Maximise current split
nnoremap <C-W>[ <C-W>\| <C-W>_
" Equalise splits
nnoremap <C-W>] <C-W>=
" Vim Test
let test#strategy = "iterm"
let test#ruby#rspec#executable = 'rspring'

nmap <silent> <leader>tn :TestNearest<CR>

" Sod backups and swaps
set nobackup
set noswapfile

" Syntaxes
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,*.pill}    set ft=ruby
au BufRead,BufNewFile {*.md,*.txt} setlocal spell
au BufNewFile,BufRead *.json set ft=javascript
au BufRead,BufNewFile *.less set ft=css
au BufRead,BufNewFile *.adoc set ft=asciidoc
au BufRead,BufNewFile *.boot set ft=clj
filetype plugin indent on

" Reload vimrc
map <Leader>v :e ~/.vim/vimrc<cr>
map <Leader>s :source ~/.vim/vimrc<cr>

" Show trailing whitespace in normal mode
highlight default link TrailingWhiteSpace Error
match TrailingWhiteSpace /\s\+$/
autocmd InsertEnter * hi link TrailingWhiteSpace Normal
autocmd InsertLeave * hi link TrailingWhiteSpace Error

" Use vertical diffs
set diffopt+=vertical
