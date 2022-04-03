set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc " load any vim exclusive config settings

call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'ambv/black'
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }

" Javascript/Typescript
Plug 'pangloss/vim-javascript' " JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.
Plug 'leafgarland/typescript-vim' " Syntax file and other settings for TypeScript.
Plug 'yuezk/vim-js' " A Vim syntax highlighting plugin for JavaScript and Flow.js
Plug 'maxmellon/vim-jsx-pretty' " The React syntax highlighting and indenting plugin for vim. Also supports the typescript tsx file.
Plug 'mattn/emmet-vim' " provides support for expanding abbreviations.
Plug 'moll/vim-node' " provides node support in vim
Plug 'styled-components/vim-styled-components', { 'branch': 'main' } " Styled components support
Plug 'jparise/vim-graphql' "GraphQL file detection, syntax highlighting, and indentation.

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'onsails/lspkind-nvim'
" Plug 'github/copilot.vim'
Plug 'nvim-lua/lsp_extensions.nvim'

" Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
" Plug 'tjdevries/nlua.nvim'
" Plug 'tjdevries/lsp_extensions.nvim'

" Neovim Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
" Plug 'romgrk/nvim-treesitter-context'

" Debugger Plugins
Plug 'mfussenegger/nvim-dap'
Plug 'Pocco81/DAPInstall.nvim'
Plug 'szw/vim-maximizer'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'rust-lang/rust.vim'
Plug 'darrikonn/vim-gofmt'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'theprimeagen/vim-be-good'
Plug 'tpope/vim-projectionist'
Plug 'tomlion/vim-solidity'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sharkdp/fd'
Plug 'BurntSushi/ripgrep'
Plug 'jremmen/vim-ripgrep'


Plug 'vim-conf-live/vimconflive2021-colorscheme'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'

" HARPOON!!
Plug 'mhinz/vim-rfc'

" prettier
Plug 'sbdchd/neoformat'

" json
Plug 'elzr/vim-json'
" should I try another status bar???
"  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Plug 'hoob3rt/lualine.nvim'

Plug 'nathom/filetype.nvim'
" NERDTree
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'scrooloose/nerdtree-project-plugin' " some weird error with this one
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'
" NERDCommenter
Plug 'preservim/nerdcommenter'

" codi (quokka equivalent)
Plug 'metakirby5/codi.vim'

" code spellcheck
Plug 'kamykn/spelunker.vim'

" Jump to any location specified by two characters.
Plug 'justinmk/vim-sneak'

Plug 'sickill/vim-monokai'
Plug 'ackyshake/Spacegray.vim'

Plug 'qxxxb/vim-searchhi'
Plug 'haya14busa/vim-asterisk'
call plug#end()




" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu

set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set background=dark
"colorscheme dracula
colorscheme gruvbox-baby
"colorscheme gruvbox
"colorscheme monokai
"colorscheme spacegray


"highlight Normal guibg=none
set clipboard+=unnamedplus

let mapleader = " "

" MAPPINGS

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>= :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>[ :resize +5<CR>
nnoremap <Leader>' :resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>nf :Neoformat<CR>
nnoremap <C-Left> :tabprevious<CR>                                                                            
nnoremap <C-Right> :tabnext<CR>
"nnoremap <C-j> :tabprevious<CR>                                                                            
"nnoremap <C-k> :tabnext<CR>

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" COC-def/ref/gfiles
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)



" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>y  "+y

" Paste from clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" make Y behave like everything else
nnoremap Y y$

" keep centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap [ [<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc> :m .+1<CR>==
inoremap <C-k> <esc> :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" add new line without leaving normal mode
nnoremap <Leader>o o<Esc>0"_D
nnoremap <Leader>O O<Esc>0"_D


if executable('rg')
    let g:rg_derive_root='true'
endif


if has ('autocmd')
  " at the start of each group delete all autocmds inside the current augroup everytime we source rc files
  "augroup vimrc
    "autocmd!  
    "autocmd bufwritepost .vimrc source ".vimrc" | redraw!
    "autocmd bufwritepost init.vim source $MYVIMRC | redraw!
  "augroup END

  augroup zshrc
    autocmd!
    autocmd bufwritepost .zshrc execute ":!source .zshrc" | redraw!
  augroup END

  augroup tmuxconf
    autocmd!
    " source tmux conf every time .tmux.conf is saved.
    autocmd bufwritepost .tmux.conf execute ":!tmux source-file %" | redraw!
    autocmd bufwritepost .tmux.local.conf execute ":!tmux source-file %" | redraw!
  augroup END

  augroup prettier
    autocmd!
    autocmd bufwritepost *\.\(js\|jsx\|ts\|tsx\|json\|prettierrc\|vim\|yml\) Neoformat
  augroup END

  augroup runByFileType
    autocmd!
    autocmd FileType ts nmap <Leader>r :execute '!ts-node ' . shellescape(expand("%"))
    
    autocmd FileType js nmap <Leader>r :execute '!node ' . shellescape(expand("%"))<CR>
  augroup END

  augroup yanker
    autocmd!
    autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' |  clip.exe')
  augroup END

  augroup nerdytree
    autocmd!
    " Exit Vim if NERDTree is the only window remaining in the only tab.
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
  augroup END

  augroup cocGroup
    " Highlight the symbol and its references when holding the cursor.
    autocmd CursorHold * silent call CocActionAsync('highlight')
  augroup END

  augroup PatchDiffHighlightGroup
    autocmd!
    autocmd FileType diff syntax enable
  augroup END

  augroup NoSimultaneousEdits
    autocmd!
    autocmd SwapExists * let v:swapchoice = 'o'
    autocmd SwapExists * echomsg ErrorMsg
    autocmd SwapExists * echo 'Duplicate edit session (readonly)'
    autocmd SwapExists * echohl None
  augroup END


endif

set autochdir

" i go insane when i do ctrl + w + q and accidentally close my tab
map <C-w>q <Nop>

" ---------Plugin Configs---------
" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" neoformat/prettier
let g:neoformat_try_node_exe = 1

" NERDCommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Vim searchhi
nmap n <Plug>(searchhi-n)
nmap N <Plug>(searchhi-N)
" nmap gd <Plug>(searchhi-gd)" already used by coc
nmap gD <Plug>(searchhi-gD)

map * <Plug>(asterisk-*)<Plug>(searchhi-update)
map # <Plug>(asterisk-#)<Plug>(searchhi-update)
map g* <Plug>(asterisk-g*)<Plug>(searchhi-update)
map g# <Plug>(asterisk-g#)<Plug>(searchhi-update)

map z* <Plug>(asterisk-z*)<Plug>(searchhi-update)
map z# <Plug>(asterisk-z#)<Plug>(searchhi-update)
map gz* <Plug>(asterisk-gz*)<Plug>(searchhi-update)
map gz# <Plug>(asterisk-gz#)<Plug>(searchhi-update)

vmap n <Plug>(searchhi-v-n)
vmap N <Plug>(searchhi-v-N)
" vmap gd <Plug>(searchhi-v-gd) already used by coc
vmap gD <Plug>(searchhi-v-gD)

nmap <silent> <C-L> <Plug>(searchhi-clear-all)
vmap <silent> <C-L> <Plug>(searchhi-v-clear-all)

"nmap / <Plug>(searchhi-/)
"nmap ? <Plug>(searchhi-?)

"vmap / <Plug>(searchhi-v-/)
"vmap ? <Plug>(searchhi-v-?)


" Vim asterisk
let g:asterisk#keeppos = 1

nnoremap <silent> n n:call HLNext(0.1)<cr>
" Damian Conway's Die Blinkënmatchen: highlight matches
nnoremap <silent> N N:call HLNext(0.1)<cr>

function! HLNext (blinktime)
  let target_pat = '\c\%#'.@/
  let ring = matchadd('ErrorMsg', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  call matchdelete(ring)
  redraw
endfunction

highlight Cursor guifg=red guibg=#D7AF00
highlight iCursor guifg=black guibg=Gray
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" swap semicolon and colon
nnoremap ; :
nnoremap : ;







