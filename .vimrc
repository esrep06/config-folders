syntax on
set background=dark
set smartindent
set tabstop=4
set shiftwidth=4
set number
set mouse=a
set backspace=indent,eol,start
set relativenumber
set guicursor=n-v-c-i:block
set expandtab
set ai
set hlsearch
set ruler

" color asu1dark
color badwolf 

highlight Comment ctermfg=230
highlight LineNr ctermfg=160

" Use homebrew's clangd
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
" Plug 'ycm-core/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'mg979/vim-visual-multi'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'paretje/nvim-man'
Plug 'Eric-Song-Nop/vim-glslx'

call plug#end() 

let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

lua << END
require('lualine').setup()
END

