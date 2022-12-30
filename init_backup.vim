:set number relativenumber
:set nu rnu
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard+=unnamedplus
:set expandtab

:autocmd Filetype javascript setlocal ts=2 sw=2 expandtab

call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/dbext.vim'
Plug 'eliba2/vim-node-inspect'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}

set encoding=UTF-8
call plug#end()

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fa <cmd>Telescope git_files<cr>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>tt :NERDTreeFind<cr>
nnoremap <leader>tb :TagbarToggle<cr>
nnoremap <leader>aa :call CocActionAsync('runCommand', 'editor.action.organizeImport')<cr>
nnoremap <leader>af :call CocActionAsync('runCommand', 'editor.action.formatDocument')<cr>
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <D-v> "+p
nnoremap <silent><F4> :NodeInspectStart<cr>
nnoremap <silent><F5> :NodeInspectRun<cr>
nnoremap <silent><F6> :NodeInspectConnect("127.0.0.1:9229")<cr>
nnoremap <silent><F7> :NodeInspectStepInto<cr>
nnoremap <silent><F8> :NodeInspectStepOver<cr>
nnoremap <silent><F9> :NodeInspectToggleBreakpoint<cr>
nnoremap <silent><F10> :NodeInspectStop<cr>
:colorscheme gruvbox-baby

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

set guifont=MesloLGS\ NF:h20

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

let NERDTreeShowHidden=1
