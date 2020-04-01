let $FZF_DEFAULT_COMMAND='fd --type f'
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
call plug#begin()
" Colorschemes
Plug 'chriskempson/base16-vim'
Plug 'lmintmate/blue-mood-vim'
Plug 'dracula/vim'
" Alignment
Plug 'junegunn/vim-easy-align'
" Fuzzy find
Plug '/usr/local/opt/fzf'
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
Plug 'airblade/vim-gitgutter'
" Rails
Plug 'tpope/vim-rails'
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
" Tab completion
Plug 'ervandew/supertab'
" Indentation-aware pasting
Plug 'sickill/vim-pasta'
" Indentation
Plug 'michaeljsmith/vim-indent-object'

" Search
Plug 'wincent/ferret'

" Test runner
Plug 'janko-m/vim-test'

Plug 'jpalardy/vim-slime'

Plug 'christianrondeau/vim-base64'

" Scratch pad
Plug 'metakirby5/codi.vim'

" Syntax
" CSV highlighting
" Elm
" Solidity
" UML diagrams
" Plug 'aklt/plantuml-syntax'
" Plug 'tomlion/vim-solidity'
" Plug 'Zaptic/elm-vim'
" Plug 'chrisbra/csv.vim'
" Plug 'posva/vim-vue'
" Plug 'leafgarland/typescript-vim'
" Plug 'elixir-editors/vim-elixir'
" Plug 'hashivim/vim-terraform'
Plug 'sheerun/vim-polyglot'

call plug#end()

set guifont=Roboto\ Mono:h14
set number
set linespace=2
set wrap
set linebreak
set nocompatible
set encoding=utf-8

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set colorcolumn=120
set tw=100

" Hide scrollbars
set guioptions=
" Hide title and icons
set notitle
set noicon

" Set the Leader key
let mapleader=","
let maplocalleader="\\"

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

au BufNewFile,BufRead *.json set ft=json

au BufRead,BufNewFile *.less set ft=css
au BufRead,BufNewFile *.adoc set ft=asciidoc
au BufRead,BufNewFile *.boot set ft=clj
au BufNewFile,BufRead *.orgy setfiletype org

" FZF
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" bind K to grep word under cursor

let g:ackprg = 'rg --vimgrep --no-heading'
let g:fzf_history_dir = '~/.fzf/history'
noremap <C-p> :Files<CR>
noremap <C-b> :Buffers<CR>
noremap <C-,> :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
map <Leader>f :Ack 

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
  color base16-paraiso
else
  set termguicolors
  set background=dark
  color base16-paraiso
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
map <Leader>m :! echo "`markdown %`" > /tmp/test.html && open -a "Google Chrome" /tmp/test.html<Cr>

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
let test#ruby#rails#executable = 'rails test -p'
function! DockerTransform(cmd) abort
  return 'docker exec -it payment-api '. a:cmd
endfunction

function! DefaultTransform(cmd) abort
  return  a:cmd
endfunction

let g:test#custom_transformations = {'docker': function('DockerTransform'), 'default': function('DefaultTransform')}
let g:test#transformation = 'docker'
let g:test#strategy = 'vimterminal'
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" Sod backups and swaps
set nobackup
set noswapfile

" Syntaxes
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,*.pill}    set ft=ruby
au BufRead,BufNewFile {*.md,*.txt} setlocal spell
au BufRead,BufNewFile *.less set ft=css
au BufRead,BufNewFile *.adoc set ft=asciidoc
au BufRead,BufNewFile *.boot set ft=clj
filetype plugin indent on

" Sparkup for other filetypes
autocmd FileType {vue,vuejs,jsx,js,ts,es6} runtime! plugged/sparkup/vim/ftplugin/html/sparkup.vim

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

function! ChangeQuotes()
  normal cs"'
endfunction
nmap <silent> <leader>' :call ChangeQuotes()<CR>
" regenerate ctags
map <Leader>ct :!ctags -R --sort=yes --exclude=.git --exclude=tmp --exclude=node_modules --exclude=public $(git rev-parse --show-toplevel)<CR>

let g:slime_target = "vimterminal"

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitroot', 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitroot': 'LightlineGitRoot',
      \   'gitbranch': 'fugitive#head',
      \   'filename': 'LightlineFilename',
      \ },
      \ }
set noshowmode

" Autopairs remaps Ctrl-u, which I use for writing umlauts on OSC with an en-US keyboard.
let g:AutoPairsMoveCharacter = ''
silent! iunmap ¨

" Turn off the bells
set noeb
set belloff=all
" ESC is now in touchbar so need to remap
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>

nnoremap <C-s> :w<CR>

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

function! LightlineGitRoot()
  let git_dir = fnamemodify(get(b:, 'git_dir'), ':h')
  let root = fnamemodify(git_dir, ':t')

  return root
endfunction

let g:vue_pre_processors = ['typescript']

set shell=/bin/bash

function! NextColorScheme()
endfunction
