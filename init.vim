"INSTALACION DE PLUGINS

so C:\Users\artur\AppData\Local\nvim\coc.vim
call plug#begin()

Plug 'joshdick/onedark.vim' 			"tema1
Plug 'ghifarit53/tokyonight-vim'		"tema2
Plug 'morhetz/gruvbox'                          "tema3
Plug 'hzchirs/vim-material'

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'kyazdani42/nvim-web-devicons'

"Flutter - Dart
Plug 'natebosch/dartlang-snippets'
Plug 'tpope/vim-projectionist'
Plug 'dart-lang/dart-vim-plugin'
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'

"Blockchain

Plug 'luochen1990/rainbow' "Identacion de arcoiris
Plug 'Yggdroot/indentLine' 			"indentacion
Plug 'mattn/emmet-vim' 				"emmet para diseño web
Plug 'vim-airline/vim-airline'			"diseño de la barra en la cual se muestran los modos, la linea, etc.
Plug 'vim-airline/vim-airline-themes'		"temas para el vim-airline
Plug 'preservim/nerdtree'			"gestor de archivos en forma de arbol.
Plug 'christoomey/vim-tmux-navigator'		"poder navegar entre archivos abiertos
Plug 'jiangmiao/auto-pairs'			"autocompletado de llaves, corchetes, etc.
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocompletado con COC
Plug 'ryanoasis/vim-devicons'
Plug 'manasthakur/vim-commentor'  "Es para poder comentar el codigo con el comando GCC
Plug 'pangloss/vim-javascript' 			"JavaScript Support
Plug 'tpope/vim-surround'
"Plug 'Exafunction/codeium.vim'

call plug#end() 				"cerramos el llamado de los plugins
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"CONFIGURACIONES BASICAS
set list          			" Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping
set number 				"muestra los numeros de cada linea en la parte izquierda
set relativenumber 			"la distribucion de los numeros en lineas de manera relativa
set mouse=a 				"permite la interaccion con el mouse
set noshowmode				"me deja de mostrar el modo en el que estamos 'normal, insert, visual, etc'
syntax enable 				"activa el coloreado de sintaxis en algunos tipos de archivos como html, c, c++
set encoding=utf-8 			"permite setear la codificación de archivos para aceptar caracteres especiales
set sw=2 				"la indentación genera 4 espacios
set nowrap				"el texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
set noswapfile				"para evitar el mensaje que sale al abrir algunos archivos sobre swap.
set clipboard=unnamed			"para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y viceversa.
set t_co=256

"CONFIGURACIONES BASICAS(Temas)
set termguicolors 			"activa el true color en la terminal
"let g:gruvbox_contrast_dark= "hard"
"colorscheme gruvbox
colorscheme tokyonight
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"MAPEOS LET
"Mapeo(Configuracion de emmet-vim)
let g:user_emmet_leader_key=',' 				"mapeando la tecla lider por una coma, con esto se completa los tag con doble coma.

"Mapeo(Configuracion de vim-airline)
let g:airline#extensions#tabline#enabled = 1			"muestra la linea de pestaña en la que estamos buffer
let g:airline#extensions#tabline#formatter = 'unique_tail'	"muestra solo el nombre del archivo que estamos modificando
let g:airline#extensions#tabline#left_sep = '|'
"let g:airline_theme='wombat' "el tema de onedark airlineyy
"let g:airline_theme='atomic' "el tema de onedark airlineyy con tokyonight
let g:airline_theme='atomic' "el tema de onedark airlineyy
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.maxlinenr = '㏑ '
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.notexists = 'Ɇ'
    let g:airline_symbols.whitespace = 'Ξ'

    " powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = '☰ '
    "let g:airline_symbols.maxlinenr = ' '

":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"MAPEOS MAP

"Mapeo(Configuracion de nerdtree)
"mapeando el abrir y cerrar de nerdtree con nerdtreetoggle vemos los archivos en el arbol y podemos cerrarlo a la vez, map es la C mayuscula representa el control y -n la tecla n lo que indica que realizará la siguiente funcion de excribir el comando NERDTreeToggle y CR significa ENTER.
map <C-n> :NERDTreeToggle<CR>
"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"========================================================================================
"TELESCOPE
nnoremap <space>ff <cmd>Telescope find_files<CR>
nnoremap <space>fg <cmd>Telescope live_grep<CR>
nnoremap <space>fb <cmd>Telescope buffers<CR>
nnoremap <space>fh <cmd>Telescope help_tags<CR>
nnoremap <space>fs <cmd>Telescope git_status<CR>

"========================================================================================
"DART
let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length 120']

"Rainbow
nmap <leader>r :RainbowToggle<CR>
let g:rainbow_active = 1

"ENTRAR AL MODO INSERTAR DE MODO CORTADO
:imap ii <Esc>
