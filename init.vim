call plug#begin()
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'mattn/emmet-vim'
Plug 'chun-yang/auto-pairs'
Plug 'preservim/nerdcommenter'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
call plug#end()

" My configs

:colorscheme onedark


" Toggle number style (absolute in insert mode):
" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
" :  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
" :augroup ENDset number

:imap kj <Esc>

:nnoremap <c-p> :Files <enter>
map <C-g> :Files

nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>l 
vnoremap <c-s> <Esc>:w<CR>

vnoremap p "_dP

noremap <C-o> :NERDTreeToggle<CR>

" OPTIONS
:set number
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set nowrap
:set autoindent
:set smartindent
:set splitbelow
:set splitright
:set ignorecase
:set cursorline
:set norelativenumber

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Vim EMMET
let g:user_emmet_leader_key=','
