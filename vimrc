" Example Vim configuration.
"
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
" 
" Bundle 'gmarik/vundle'
" Bundle 'Headlights'

let mapleader = ","
let g:mapleader = ","

set shell=/bin/sh

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>
command! RSNIP :e! ~/.vim/bundle/snipmate.vim/snippets/ruby.snippets
" When vimrc is edited, reload it
" autocmd! bufwritepost .vimrc source ~/.vimrc


silent! call pathogen#infect()
silent! call pathogen#helptags()
silent! call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set pastetoggle=<F5>

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" UNCOMMENT TO USE
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('g:loaded_rvm')?rvm#statusline():''}\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

"set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

" Or use vividchalk
"colorscheme topfunky-light

syntax enable
set background=light
"colorscheme solarized
colorscheme hemisu

nmap <silent> <leader>n :nohlsearch<CR>

set hlsearch    " highlight all matched terms
" Pressing return clears highlighted search
:nnoremap <CR> :nohlsearch<CR>/<BS>

" When highlighting search terms, make sure text is contrasting color
":highlight Search ctermbg=yellow ctermfg=black
" " Do the same for gvim
":highlight Search guibg=yellow guifg=black


" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Tabbing
vmap <Tab> >gv
vmap <S-Tab> <gv

" Improved ESC
:nmap <Space> i
":imap <S-Space> <Esc>

" " Explorers
" nmap <silent> <Leader>f :LustyFilesystemExplorer<CR>
" nmap <silent> <Leader>r :LustyFilesystemExplorerFromHere<CR>
nmap <script> <silent> <unique> <Leader>b :BufExplorer<CR>

" Invisilist
"map <leader>l :set invlist

" Uncomment to use Jamis Buck's file opening plugin
"map <Leader>t :FuzzyFinderTextMate<Enter>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
"autocmd BufNewFile,BufRead *_spec.rb compiler rspec

"Fuzzy Finder Textmate setings
" let g:fuzzy_matching_limit=200
" let g:fuzzy_ceiling=10000
" let g:fuzzy_ignore="teamsite;tags;*.log;*.jpg;*.gif;*.png;.git/**/*;.svn;.svn/**/*;
" 
:set wildignore+=*.png,*.jpg,*.jpeg,*.gif,Gemfile.lock,**vendor/*,*.log,*.sqlite3,*.dump,**public/assets/*,*.gz,.DS_Store,**/tmp*
" let g:ctrlp_custom_ignore = {
"   \\ 'dir':  '/vendor$|/public/assets/$|\\.git$\\|\\.hg$\\|\\.svn$',
"   \\ 'file': '\\.exe$\\|\\.so$\\|\\.dll$',
"   \\ 'link': 'some_bad_symbolic_links',
"   \\ }
" map <F2> :NERDTreeToggle<CR>
" map <leader>f :CommandT<CR>
" map <leader>gv :CommandTFlush<cr>\\|:CommandT app/views<cr>
" map <leader>gc :CommandTFlush<cr>\\|:CommandT app/controllers<cr>
" map <leader>gm :CommandTFlush<cr>\\|:CommandT app/models<cr>
" map <leader>gh :CommandTFlush<cr>\\|:CommandT app/helpers<cr>
" map <leader>gl :CommandTFlush<cr>\\|:CommandT lib<cr>
" map <leader>gp :CommandTFlush<cr>\\|:CommandT public<cr>
"map <leader>gs :CommandTFlush<cr>\|:CommandT public/stylesheets<cr>

map <leader>f :CtrlP<CR>
map <leader>b :CtrlPBuffer<cr>
map <leader>m :CtrlPMRU<cr>
map <leader><leader> <C-^>

"Windowing tweaks
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" map <leader>j  <C-W>j
" map <leader>k <C-W>k
" map <leader>h <C-W>h
" map <leader>l <C-W>l

map <leader>c <C-W>c
map <leader>s <C-W>s
map <leader>v <C-W>v

map <F6> <C-W>w
map - <C-W>-
map + <C-W>+

"Quick line break
"map <S-Enter> O<Esc>
"map <CR> o<Esc>
map <F8> o<Esc>
map <F9> O<Esc>

command! FR set filetype=ruby

autocmd FileType ruby  set nowrap 
autocmd FileType slim  set nowrap 
au BufNewFile,BufRead *.hbs set filetype=html

imap <Leader>v  <C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR>
set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=10
set winminheight=10
set winheight=999

set t_ku=^[[A
set t_kd=^[[B
set t_kr=^[[C
set t_kl=^[[D

let g:CommandTCancelMap=['<C-c>', '<Esc>']

map <Leader>p  i<C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR><Esc>

let g:Powerline_symbols = 'fancy'

nnoremap gr gD:%s/<C-R>///g<left><left>
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <Leader>rn :call NumberToggle()<cr>
" au FocusLost * :set number
" au FocusGained * :set relativenumber

" if has("autocmd")
"   autocmd bufwritepost .vimrc source $MYVIMRC
" endif
 
command! -nargs=* Wrap set wrap linebreak nolist

vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

nnoremap <silent> [b :bprevious<CR> 
nnoremap <silent> ]b :bnext<CR> 
nnoremap <silent> [B :bfirst<CR> 
nnoremap <silent> ]B :blast<CR>

nnoremap <silent> <F10> :YRShow<CR>

nnoremap - :Switch<cr>
