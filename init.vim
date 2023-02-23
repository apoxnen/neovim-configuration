set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set noswapfile              " disable creating swap file

if exists('g:vscode')
    " VSCode extension
else
    " call plug#begin('~/.local/share/nvim/site/autoload/plug.vim')
    call plug#begin('~/.config/nvim/plugins')
     Plug 'morhetz/gruvbox' " Theme
     " Plug 'dracula/vim' " Theme
     Plug 'ryanoasis/vim-devicons' " Adds file type icons to Vim plugins
     " Plug 'SirVer/ultisnips' " The ultimate snippet solution for Vim. -
     " disabled for now as causes some python issues on macos.
     Plug 'sheerun/vim-polyglot' " A collection of language packs for Vim.
     Plug 'honza/vim-snippets' " Connects to multiple snippet repos
     Plug 'scrooloose/nerdtree' " Explorer
     Plug 'preservim/nerdcommenter' " Comment functions
     Plug 'mhinz/vim-startify' " A fancy start screen for Vim.
     Plug 'neoclide/coc.nvim', {'branch': 'release'} " Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers.
     Plug 'vim-airline/vim-airline' " Lean & mean status/tabline
    call plug#end()

    " Use tab for trigger completion with characters ahead and navigate
    " NOTE: There's always complete item selected by default, you may want to enable
    " no select by `"suggest.noselect": true` in your configuration file
    " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
    " other plugin before putting this into your config
    inoremap <silent><expr> <TAB>
          \ coc#pum#visible() ? coc#pum#next(1) :
          \ CheckBackspace() ? "\<Tab>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

    " Make <CR> to accept selected completion item or notify coc.nvim to format
    " <C-g>u breaks current undo, please make your own choice
    inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                                  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

    " Color schemes
     set termguicolors
    if (has("termguicolors"))
     set termguicolors
     endif
     syntax enable
     " colorscheme evening
    colorscheme gruvbox
    " open new split panes to right and below
    set splitright
    set splitbelow

    let NERDTreeShowHidden=1

    " Normal mode remappings
    nnoremap <C-q> :q!<CR>
    nnoremap <F4> :bd<CR>
    nnoremap <F5> :NERDTreeToggle<CR>
    nnoremap <F6> :sp<CR>:terminal<CR>

    " Tabs
    nnoremap <S-Tab> gT
    nnoremap <Tab> gt
    nnoremap <silent> <S-t> :tabnew<CR>
    tnoremap <Esc> <C-\><C-n>
endif
