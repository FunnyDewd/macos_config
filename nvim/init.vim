set guifont=Victor\ Mono:h18
set background=dark
set nocompatible
syntax enable
filetype plugin on
set noswapfile
set noshowmode
set laststatus=2
set number
set relativenumber
set numberwidth=5
 
set spell
set cursorline
" set cursorcolumn
set showmatch
set visualbell
 
set hlsearch
set smartcase
set ignorecase
set incsearch
set wildmenu
" set autochdir
" set wildignore+=*/tmp/*,*/node_modules/*,*/build/*,*/distribution/*,*/assembly/*
 
set autoindent
set smartindent
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
 
call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'alvan/vim-closetag'
  Plug 'tpope/vim-surround'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
  Plug 'pangloss/vim-javascript'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'mattn/emmet-vim'
  "Plug 'leafgarland/typescript-vim'
  "Plug 'peitalin/vim-jsx-typescript'
  "Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  "Plug 'jparise/vim-graphql'
call plug#end()
colorscheme gruvbox
 
let g:ctrlp_custom_ignore='node_modules\|assembly\|build\|reports'
 
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx'
 
" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xml,*.xhtml,*.js,*.jsx,*.ts,*.tsx'
 
" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,js,jsx,ts,tsx'
 
" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xml,xhtml,jsx,js,ts,tsx'
 
" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1
 
" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
 
" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'
 
" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
 
