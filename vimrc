"" Avoid creating temporal swp files
set noswapfile

"" Add current folder recursively to the find path
set path+=**

" Reload files changed outside vim
set autoread

"" Deactivate beep sound
set novisualbell
set noerrorbells

"" Indentation and colours
filetype plugin on
syntax on
set expandtab
set tabstop=4
set cindent
set shiftwidth=4
set autoindent
set showmatch

"" Line number, and cursor position
set numberwidth=5
set ruler

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"" Tab behaviour
set wildmenu
set wildmode=full

"" Custom Keymap for tabs
map ,t : tabnew<cr>
map ,w : tabnext<cr>
map ,q : tabprevious<cr>
map ,f : tabfind

"" Set History buffer to 100 commands
set history=100

"" F2 save and exit
map <F2> :wall<cr>:make<cr>

"" Highlighted and incremental search
set incsearch
set hlsearch
nnoremap <silent> <leader>, :noh<cr>
set showmatch

"" Custom status line
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [HEX=\%02.2B]\ [X=%04l\ Y=%03v]\ [LEN=%L]
set cursorline
hi CursorLine cterm=NONE ctermbg=DarkBlue ctermfg=white

"" Always open in the last edited position
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Use tab to jump between blocks
nnoremap <tab> %
vnoremap <tab> %

"" Relative numbers and toggle
function! NumberToggle()
  if(&relativenumber == 1 && &number == 1)
    set number
    set norelativenumber
  elseif(&number == 1)
    set nonumber
    set norelativenumber
  else
    set number
    set relativenumber
  endif
endfunc

set number
set relativenumber
nnoremap <C-n> :call NumberToggle()<cr>

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"" Tags
command! MakeTags !ctags -R .

"" Custom colorscheme
colorscheme koehler
set guifont=Monaco:h14
