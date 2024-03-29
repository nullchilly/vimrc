call plug#begin()
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'
Plug 'liuchengxu/vim-clap'
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
call plug#end()

lua << EOF
require("catppuccin").setup {
	color_overrides = {
		mocha = {
			base = "#000000",
		},
	},
}
EOF

colorscheme catppuccin-mocha

let g:lightline = { 'colorscheme': 'catppuccin' }
let g:clap_theme = 'catppuccin'

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
autocmd VimEnter * silent !echo -ne "\e[2 q"
set ttimeoutlen=0
set noexpandtab
set shiftwidth=2
set smartindent
set number
set relativenumber

nnoremap <C-n> :NERDTreeToggle<CR>
