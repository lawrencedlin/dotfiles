" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" ---------- Search Options----------
" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase
" Enable search highlighting
set hlsearch
" Enable searching as you type, rather than waiting till you press enter.
set incsearch


" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
:syntax on
" End of missing.csail.mit.edu vimrc options. My own custom settings
" ---------- Indentation Settings ----------
" New lines inherit indentation of previous line
set autoindent 
" Set tabs to be 4 spaces see 
" https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces/38461002
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
" When shifting lines, round indentation to nearest multiple of shiftwidth
set shiftround
" Keep cursor in the middle of screen always disable with au! VCenterCursor
"augroup VCenterCursor
"  au!
"  au BufEnter,WinEnter,WinNew,VimResized *,*.*
"        \ let &scrolloff=winheight(win_getid())/2
"augroup END

" ---------- UI Options----------
" Set column at 88, black code formatter default
set cc=88
" Set color of colorcolumn
highlight ColorColumn ctermbg=0 guibg=darkgreen

" Highlight cursor line
set cursorline

" Remove the underline from enabling cursorline:
highlight clear CursorLine

" Remove the underline from enabling cursorline:
"highlight clear CursorLine
hi CursorLine term=bold cterm=bold guibg=Grey40 

" Set line numbering to red background:
hi CursorLineNr   term=bold ctermfg=Yellow gui=bold guifg=Yellow

" Set window title to filename
set titlestring=%t
set title

" Always show cursor pos
set ruler

" Display command line tab autocomplete as menu
set wildmenu
set wildmode=list:longest
set wildignore=*.o,*~,*.pyc

" Show matching brackets when text indicator is over them
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile


" ---------- MISC ----------
"  Increase undo limit
set history=1000
" Spellcheck
" set spell
" Don't redraw while executing macros (good performance config)
set lazyredraw

" ---------- PLUGINS  ----------
" Pathogen package manager
execute pathogen#infect()

" Disable jedi autopopup on typing a dot
let g:jedi#popup_on_dot = 0
" Show call sign on vim command line show mode must be disabled for this
let g:jedi#show_call_signatures = 0
"set noshowmode

" Make supertab use jedi-vim autocomplete when editing python files
let g:SuperTabDefaultCompletionType = "context"

" ---------- Status line ----------
" Status line has errrors
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" Status line has filename
set statusline+=\ %f
" Always have status line open even if multiple buffers
set laststatus=2


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Run syntastic with Ctrl-w-e
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR>

autocmd FileType py,sh,bash setlocal commentstring=#\ %s


