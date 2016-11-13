"" Custom colorscheme
colorscheme ron

"" Deactivate beep sound
set vb
set noerrorbells

"" Indentation and colours
filetype plugin on
syntax on
set expandtab
set tabstop=4
set cindent
set shiftwidth=2
set autoindent
set showmatch

"" Line number, and cursor position
set number
set ruler

"" Bash behaviour
set wildmode=longest,list:longest

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

"" Custom status line
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [HEX=\%02.2B]\ [X=%04l\ Y=%03v]\ [LEN=%L]
set cursorline

"" Always open in the last edited position
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"" Activate mouse
set mouse=a

"" Pathogen
execute pathogen#infect()

