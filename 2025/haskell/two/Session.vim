let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/dev/twentytwentyone/2025/haskell/two
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +14 ~/dev/twentytwentyone/2025/haskell/two/app/Main.hs
badd +35 ~/.local/state/nvim/lsp.log
badd +7 ../../../2021/src/twentytwentyone/three.hs
badd +1 data.txt
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/dev/twentytwentyone/2025/haskell/two/app/Main.hs
argglobal
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent>  <Cmd>lua vim.lsp.buf.signature_help()
nnoremap <buffer> <silent> h <Cmd>lua vim.lsp.codelens.get() 
nnoremap <buffer> <silent> t <Cmd>Lspsaga lsp_finder 
nmap <buffer> <silent> q ]dc
nnoremap <buffer> <silent> e <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> r <Cmd> LspRestart 
nnoremap <buffer> <silent> c <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> d :lua require"telescope.builtin".diagnostics()
vnoremap <buffer> <silent>  fq :'<,'>Neoformat! graphql
nnoremap <buffer> <silent>  e <Cmd> Lspsaga show_line_diagnostics 
nnoremap <buffer> <silent>  D <Cmd>lua vim.lsp.buf.type_definition()
nnoremap <buffer> <silent> K <Cmd>Lspsaga hover_doc
nnoremap <buffer> <silent> [d <Cmd>lua vim.diagnostic.goto_prev()
nnoremap <buffer> <silent> ]d <Cmd>lua vim.diagnostic.goto_next()
nnoremap <buffer> <silent> gr :lua require"telescope.builtin".lsp_references()
nnoremap <buffer> <silent> gi :lua require"telescope.builtin".lsp_implementations()
nnoremap <buffer> <silent> gh <Cmd>Lspsaga hover_doc
nnoremap <buffer> <silent> gd :lua require"telescope.builtin".lsp_definitions()
nnoremap <buffer> <silent> gD <Cmd>lua vim.lsp.buf.declaration()
nnoremap <buffer> <silent> <C-X>h <Cmd>lua vim.lsp.codelens.get() 
nnoremap <buffer> <silent> <C-X>t <Cmd>Lspsaga lsp_finder 
nmap <buffer> <silent> <C-X>q ]dc
nnoremap <buffer> <silent> <M-e> <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> <C-X>e <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> <C-X>r <Cmd> LspRestart 
nnoremap <buffer> <silent> <M-.> <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <C-.> <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <C-X>c <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <F2> <Cmd> Lspsaga rename 
nnoremap <buffer> <silent> <C-X>d :lua require"telescope.builtin".diagnostics()
nnoremap <buffer> <silent> <C-K> <Cmd>lua vim.lsp.buf.signature_help()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=120
setlocal comments=s1fl:{-,mb:-,ex:-},:--
setlocal commentstring=--\ %s
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haskell'
setlocal filetype=haskell
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=v:lua.vim.lsp.formatexpr()
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=jcroql
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,'
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=v:lua.vim.lsp.omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=no
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statuscolumn=
setlocal statusline=%#lualine_a_normal#\ NORMAL\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_b_normal#\ \ main\ %#lualine_transitional_lualine_b_normal_to_lualine_c_normal#%<%#lualine_c_normal#\ Main.hs\ %#lualine_c_normal#%=%#lualine_c_normal#\ utf-8\ %#lualine_c_normal#\ \ %#lualine_x_filetype_DevIconHs_normal#\ \ %#lualine_c_normal#haskell\ %#lualine_transitional_lualine_b_normal_to_lualine_c_normal#%#lualine_b_normal#\ 83%%\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_a_normal#\ \ \ 5:1\ \ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haskell'
setlocal syntax=haskell
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=v:lua.vim.lsp.tagfunc
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 4 - ((3 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 0
tabnext
edit ~/dev/twentytwentyone/2025/haskell/two/app/Main.hs
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
balt ~/.local/state/nvim/lsp.log
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent>  <Cmd>lua vim.lsp.buf.signature_help()
nnoremap <buffer> <silent> h <Cmd>lua vim.lsp.codelens.get() 
nnoremap <buffer> <silent> t <Cmd>Lspsaga lsp_finder 
nmap <buffer> <silent> q ]dc
nnoremap <buffer> <silent> e <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> r <Cmd> LspRestart 
nnoremap <buffer> <silent> c <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> d :lua require"telescope.builtin".diagnostics()
vnoremap <buffer> <silent>  fq :'<,'>Neoformat! graphql
nnoremap <buffer> <silent>  e <Cmd> Lspsaga show_line_diagnostics 
nnoremap <buffer> <silent>  D <Cmd>lua vim.lsp.buf.type_definition()
nnoremap <buffer> <silent> K <Cmd>Lspsaga hover_doc
nnoremap <buffer> <silent> [d <Cmd>lua vim.diagnostic.goto_prev()
nnoremap <buffer> <silent> ]d <Cmd>lua vim.diagnostic.goto_next()
nnoremap <buffer> <silent> gr :lua require"telescope.builtin".lsp_references()
nnoremap <buffer> <silent> gi :lua require"telescope.builtin".lsp_implementations()
nnoremap <buffer> <silent> gh <Cmd>Lspsaga hover_doc
nnoremap <buffer> <silent> gd :lua require"telescope.builtin".lsp_definitions()
nnoremap <buffer> <silent> gD <Cmd>lua vim.lsp.buf.declaration()
nnoremap <buffer> <silent> <C-X>h <Cmd>lua vim.lsp.codelens.get() 
nnoremap <buffer> <silent> <C-X>t <Cmd>Lspsaga lsp_finder 
nmap <buffer> <silent> <C-X>q ]dc
nnoremap <buffer> <silent> <M-e> <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> <C-X>e <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> <C-X>r <Cmd> LspRestart 
nnoremap <buffer> <silent> <M-.> <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <C-.> <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <C-X>c <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <F2> <Cmd> Lspsaga rename 
nnoremap <buffer> <silent> <C-X>d :lua require"telescope.builtin".diagnostics()
nnoremap <buffer> <silent> <C-K> <Cmd>lua vim.lsp.buf.signature_help()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=120
setlocal comments=s1fl:{-,mb:-,ex:-},:--
setlocal commentstring=--\ %s
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haskell'
setlocal filetype=haskell
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=v:lua.vim.lsp.formatexpr()
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=jcroql
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,'
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=v:lua.vim.lsp.omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=no
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statuscolumn=
setlocal statusline=%#lualine_a_normal#\ NORMAL\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_b_normal#\ \ main\ %#lualine_transitional_lualine_b_normal_to_lualine_c_normal#%<%#lualine_c_normal#\ Main.hs\ %#lualine_c_normal#%=%#lualine_c_normal#\ utf-8\ %#lualine_c_normal#\ \ %#lualine_x_filetype_DevIconHs_normal#\ \ %#lualine_c_normal#haskell\ %#lualine_transitional_lualine_b_normal_to_lualine_c_normal#%#lualine_b_normal#\ Bot\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_a_normal#\ \ 14:35\ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haskell'
setlocal syntax=haskell
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=v:lua.vim.lsp.tagfunc
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=%#SagaFolder#\ %*%#SagaFolderName#app%*%#SagaSep#\ ���\ %*%#DevIconHs#\ %*%#SagaFileName#Main.hs%#SagaSep#\ ���\ %*%#SagaFile#\ Main%#SagaSep#\ ���\ %*%#SagaFunction#󰡱\ parseReport
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 10 - ((9 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("../../../2021/src/twentytwentyone/three.hs", ":p")) | buffer ../../../2021/src/twentytwentyone/three.hs | else | edit ../../../2021/src/twentytwentyone/three.hs | endif
if &buftype ==# 'terminal'
  silent file ../../../2021/src/twentytwentyone/three.hs
endif
balt ~/dev/twentytwentyone/2025/haskell/two/app/Main.hs
vnoremap <buffer> hr :Gitsigns reset_hunk
nnoremap <buffer> hr :Gitsigns reset_hunk
vnoremap <buffer> hs :Gitsigns stage_hunk
nnoremap <buffer> hs :Gitsigns stage_hunk
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent>  <Cmd>lua vim.lsp.buf.signature_help()
nnoremap <buffer> <silent> h <Cmd>lua vim.lsp.codelens.get() 
nnoremap <buffer> <silent> t <Cmd>Lspsaga lsp_finder 
nmap <buffer> <silent> q ]dc
nnoremap <buffer> <silent> e <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> r <Cmd> LspRestart 
nnoremap <buffer> <silent> c <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> d :lua require"telescope.builtin".diagnostics()
vnoremap <buffer> <silent>  fq :'<,'>Neoformat! graphql
nnoremap <buffer> <silent>  e <Cmd> Lspsaga show_line_diagnostics 
nnoremap <buffer> <silent>  D <Cmd>lua vim.lsp.buf.type_definition()
nnoremap <buffer> <silent> K <Cmd>Lspsaga hover_doc
nnoremap <buffer> <silent> [d <Cmd>lua vim.diagnostic.goto_prev()
nnoremap <buffer> <silent> ]d <Cmd>lua vim.diagnostic.goto_next()
nnoremap <buffer> <silent> gr :lua require"telescope.builtin".lsp_references()
nnoremap <buffer> <silent> gi :lua require"telescope.builtin".lsp_implementations()
nnoremap <buffer> <silent> gh <Cmd>Lspsaga hover_doc
nnoremap <buffer> <silent> gd :lua require"telescope.builtin".lsp_definitions()
nnoremap <buffer> <silent> gD <Cmd>lua vim.lsp.buf.declaration()
xnoremap <buffer> ih :Gitsigns select_hunk
onoremap <buffer> ih :Gitsigns select_hunk
vnoremap <buffer> <C-G>hr :Gitsigns reset_hunk
nnoremap <buffer> <C-G>hr :Gitsigns reset_hunk
vnoremap <buffer> <C-G>hs :Gitsigns stage_hunk
nnoremap <buffer> <C-G>hs :Gitsigns stage_hunk
nnoremap <buffer> <silent> <C-X>h <Cmd>lua vim.lsp.codelens.get() 
nnoremap <buffer> <silent> <C-X>t <Cmd>Lspsaga lsp_finder 
nmap <buffer> <silent> <C-X>q ]dc
nnoremap <buffer> <silent> <M-e> <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> <C-X>e <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> <C-X>r <Cmd> LspRestart 
nnoremap <buffer> <silent> <M-.> <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <C-.> <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <C-X>c <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <F2> <Cmd> Lspsaga rename 
nnoremap <buffer> <silent> <C-X>d :lua require"telescope.builtin".diagnostics()
nnoremap <buffer> <silent> <C-K> <Cmd>lua vim.lsp.buf.signature_help()
vnoremap <buffer> ® :Gitsigns reset_hunk
nnoremap <buffer> ® :Gitsigns reset_hunk
vnoremap <buffer> ª :Git add %
nnoremap <buffer> ª :Git add %
vnoremap <buffer> ü :Gitsigns undo_stage_hunk
nnoremap <buffer> ü :Gitsigns undo_stage_hunk
vnoremap <buffer> ß :Gitsigns stage_hunk
nnoremap <buffer> ß :Gitsigns stage_hunk
vnoremap <buffer> π :Gitsigns preview_hunk_inline
nnoremap <buffer> π :Gitsigns preview_hunk_inline
vnoremap <buffer> ∫ <Cmd>lua require"gitsigns".blame_line{full=true}
nnoremap <buffer> ∫ <Cmd>lua require"gitsigns".blame_line{full=true}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=120
setlocal comments=s1fl:{-,mb:-,ex:-},:--
setlocal commentstring=--\ %s
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haskell'
setlocal filetype=haskell
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=v:lua.vim.lsp.formatexpr()
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=jcroql
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,'
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=v:lua.vim.lsp.omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=no
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statuscolumn=
setlocal statusline=%#lualine_a_normal#\ NORMAL\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_b_normal#\ \ main\ %#lualine_transitional_lualine_b_normal_to_lualine_c_normal#%<%#lualine_c_normal#\ Main.hs\ %#lualine_c_normal#%=%#lualine_c_normal#\ utf-8\ %#lualine_c_normal#\ \ %#lualine_x_filetype_DevIconHs_normal#\ \ %#lualine_c_normal#haskell\ %#lualine_transitional_lualine_b_normal_to_lualine_c_normal#%#lualine_b_normal#\ Bot\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_a_normal#\ \ 14:35\ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haskell'
setlocal syntax=haskell
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=v:lua.vim.lsp.tagfunc
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=%#SagaFolder#\ %*%#SagaFolderName#twentytwentyone%*%#SagaSep#\ ���\ %*%#DevIconHs#\ %*%#SagaFileName#three.hs
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 15 - ((10 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("data.txt", ":p")) | buffer data.txt | else | edit data.txt | endif
if &buftype ==# 'terminal'
  silent file data.txt
endif
balt ../../../2021/src/twentytwentyone/three.hs
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=120
setlocal comments=fb:-,fb:*,n:>
setlocal commentstring=
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'text'
setlocal filetype=text
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcqj
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=no
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statuscolumn=
setlocal statusline=%#lualine_a_normal#\ NORMAL\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_b_normal#\ \ main\ %#lualine_transitional_lualine_b_normal_to_lualine_c_normal#%<%#lualine_c_normal#\ Main.hs\ %#lualine_c_normal#%=%#lualine_c_normal#\ utf-8\ %#lualine_c_normal#\ \ %#lualine_x_filetype_DevIconHs_normal#\ \ %#lualine_c_normal#haskell\ %#lualine_transitional_lualine_b_normal_to_lualine_c_normal#%#lualine_b_normal#\ Bot\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_a_normal#\ \ 14:35\ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'text'
setlocal syntax=text
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
wincmd =
tabnext
edit ~/dev/twentytwentyone/2025/haskell/two/app/Main.hs
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
balt ~/.local/state/nvim/lsp.log
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent>  <Cmd>lua vim.lsp.buf.signature_help()
nnoremap <buffer> <silent> h <Cmd>lua vim.lsp.codelens.get() 
nnoremap <buffer> <silent> t <Cmd>Lspsaga lsp_finder 
nmap <buffer> <silent> q ]dc
nnoremap <buffer> <silent> e <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> r <Cmd> LspRestart 
nnoremap <buffer> <silent> c <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> d :lua require"telescope.builtin".diagnostics()
vnoremap <buffer> <silent>  fq :'<,'>Neoformat! graphql
nnoremap <buffer> <silent>  e <Cmd> Lspsaga show_line_diagnostics 
nnoremap <buffer> <silent>  D <Cmd>lua vim.lsp.buf.type_definition()
nnoremap <buffer> <silent> K <Cmd>Lspsaga hover_doc
nnoremap <buffer> <silent> [d <Cmd>lua vim.diagnostic.goto_prev()
nnoremap <buffer> <silent> ]d <Cmd>lua vim.diagnostic.goto_next()
nnoremap <buffer> <silent> gr :lua require"telescope.builtin".lsp_references()
nnoremap <buffer> <silent> gi :lua require"telescope.builtin".lsp_implementations()
nnoremap <buffer> <silent> gh <Cmd>Lspsaga hover_doc
nnoremap <buffer> <silent> gd :lua require"telescope.builtin".lsp_definitions()
nnoremap <buffer> <silent> gD <Cmd>lua vim.lsp.buf.declaration()
nnoremap <buffer> <silent> <C-X>h <Cmd>lua vim.lsp.codelens.get() 
nnoremap <buffer> <silent> <C-X>t <Cmd>Lspsaga lsp_finder 
nmap <buffer> <silent> <C-X>q ]dc
nnoremap <buffer> <silent> <M-e> <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> <C-X>e <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> <C-X>r <Cmd> LspRestart 
nnoremap <buffer> <silent> <M-.> <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <C-.> <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <C-X>c <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <F2> <Cmd> Lspsaga rename 
nnoremap <buffer> <silent> <C-X>d :lua require"telescope.builtin".diagnostics()
nnoremap <buffer> <silent> <C-K> <Cmd>lua vim.lsp.buf.signature_help()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=120
setlocal comments=s1fl:{-,mb:-,ex:-},:--
setlocal commentstring=--\ %s
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haskell'
setlocal filetype=haskell
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=v:lua.vim.lsp.formatexpr()
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=jcroql
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,'
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=v:lua.vim.lsp.omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statuscolumn=
setlocal statusline=%#lualine_a_command#\ COMMAND\ %#lualine_transitional_lualine_a_command_to_lualine_b_command#%#lualine_b_command#\ \ main\ %#lualine_transitional_lualine_b_command_to_lualine_c_normal#%<%#lualine_c_normal#\ Main.hs\ %#lualine_c_normal#%=%#lualine_c_normal#\ utf-8\ %#lualine_c_normal#\ \ %#lualine_x_filetype_DevIconHs_command#\ \ %#lualine_c_normal#haskell\ %#lualine_transitional_lualine_b_command_to_lualine_c_normal#%#lualine_b_command#\ 93%%\ %#lualine_transitional_lualine_a_command_to_lualine_b_command#%#lualine_a_command#\ \ 14:1\ \ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haskell'
setlocal syntax=haskell
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=v:lua.vim.lsp.tagfunc
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=%#SagaFolder#\ %*%#SagaFolderName#app%*%#SagaSep#\ ���\ %*%#DevIconHs#\ %*%#SagaFileName#Main.hs%#SagaSep#\ ���\ %*%#SagaFile#\ Main
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 14 - ((13 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("../../../2021/src/twentytwentyone/three.hs", ":p")) | buffer ../../../2021/src/twentytwentyone/three.hs | else | edit ../../../2021/src/twentytwentyone/three.hs | endif
if &buftype ==# 'terminal'
  silent file ../../../2021/src/twentytwentyone/three.hs
endif
balt ~/dev/twentytwentyone/2025/haskell/two/app/Main.hs
vnoremap <buffer> hr :Gitsigns reset_hunk
nnoremap <buffer> hr :Gitsigns reset_hunk
vnoremap <buffer> hs :Gitsigns stage_hunk
nnoremap <buffer> hs :Gitsigns stage_hunk
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent>  <Cmd>lua vim.lsp.buf.signature_help()
nnoremap <buffer> <silent> h <Cmd>lua vim.lsp.codelens.get() 
nnoremap <buffer> <silent> t <Cmd>Lspsaga lsp_finder 
nmap <buffer> <silent> q ]dc
nnoremap <buffer> <silent> e <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> r <Cmd> LspRestart 
nnoremap <buffer> <silent> c <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> d :lua require"telescope.builtin".diagnostics()
vnoremap <buffer> <silent>  fq :'<,'>Neoformat! graphql
nnoremap <buffer> <silent>  e <Cmd> Lspsaga show_line_diagnostics 
nnoremap <buffer> <silent>  D <Cmd>lua vim.lsp.buf.type_definition()
nnoremap <buffer> <silent> K <Cmd>Lspsaga hover_doc
nnoremap <buffer> <silent> [d <Cmd>lua vim.diagnostic.goto_prev()
nnoremap <buffer> <silent> ]d <Cmd>lua vim.diagnostic.goto_next()
nnoremap <buffer> <silent> gr :lua require"telescope.builtin".lsp_references()
nnoremap <buffer> <silent> gi :lua require"telescope.builtin".lsp_implementations()
nnoremap <buffer> <silent> gh <Cmd>Lspsaga hover_doc
nnoremap <buffer> <silent> gd :lua require"telescope.builtin".lsp_definitions()
nnoremap <buffer> <silent> gD <Cmd>lua vim.lsp.buf.declaration()
xnoremap <buffer> ih :Gitsigns select_hunk
onoremap <buffer> ih :Gitsigns select_hunk
vnoremap <buffer> <C-G>hr :Gitsigns reset_hunk
nnoremap <buffer> <C-G>hr :Gitsigns reset_hunk
vnoremap <buffer> <C-G>hs :Gitsigns stage_hunk
nnoremap <buffer> <C-G>hs :Gitsigns stage_hunk
nnoremap <buffer> <silent> <C-X>h <Cmd>lua vim.lsp.codelens.get() 
nnoremap <buffer> <silent> <C-X>t <Cmd>Lspsaga lsp_finder 
nmap <buffer> <silent> <C-X>q ]dc
nnoremap <buffer> <silent> <M-e> <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> <C-X>e <Cmd>lua vim.diagnostic.open_float()
nnoremap <buffer> <silent> <C-X>r <Cmd> LspRestart 
nnoremap <buffer> <silent> <M-.> <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <C-.> <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <C-X>c <Cmd>Lspsaga code_action 
nnoremap <buffer> <silent> <F2> <Cmd> Lspsaga rename 
nnoremap <buffer> <silent> <C-X>d :lua require"telescope.builtin".diagnostics()
nnoremap <buffer> <silent> <C-K> <Cmd>lua vim.lsp.buf.signature_help()
vnoremap <buffer> ® :Gitsigns reset_hunk
nnoremap <buffer> ® :Gitsigns reset_hunk
vnoremap <buffer> ª :Git add %
nnoremap <buffer> ª :Git add %
vnoremap <buffer> ü :Gitsigns undo_stage_hunk
nnoremap <buffer> ü :Gitsigns undo_stage_hunk
vnoremap <buffer> ß :Gitsigns stage_hunk
nnoremap <buffer> ß :Gitsigns stage_hunk
vnoremap <buffer> π :Gitsigns preview_hunk_inline
nnoremap <buffer> π :Gitsigns preview_hunk_inline
vnoremap <buffer> ∫ <Cmd>lua require"gitsigns".blame_line{full=true}
nnoremap <buffer> ∫ <Cmd>lua require"gitsigns".blame_line{full=true}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=120
setlocal comments=s1fl:{-,mb:-,ex:-},:--
setlocal commentstring=--\ %s
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haskell'
setlocal filetype=haskell
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=v:lua.vim.lsp.formatexpr()
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=jcroql
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,'
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=v:lua.vim.lsp.omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=no
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statuscolumn=
setlocal statusline=%#lualine_a_command#\ COMMAND\ %#lualine_transitional_lualine_a_command_to_lualine_b_command#%#lualine_b_command#\ \ main\ %#lualine_transitional_lualine_b_command_to_lualine_c_normal#%<%#lualine_c_normal#\ Main.hs\ %#lualine_c_normal#%=%#lualine_c_normal#\ utf-8\ %#lualine_c_normal#\ \ %#lualine_x_filetype_DevIconHs_command#\ \ %#lualine_c_normal#haskell\ %#lualine_transitional_lualine_b_command_to_lualine_c_normal#%#lualine_b_command#\ 93%%\ %#lualine_transitional_lualine_a_command_to_lualine_b_command#%#lualine_a_command#\ \ 14:1\ \ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haskell'
setlocal syntax=haskell
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=v:lua.vim.lsp.tagfunc
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=%#SagaFolder#\ %*%#SagaFolderName#twentytwentyone%*%#SagaSep#\ ���\ %*%#DevIconHs#\ %*%#SagaFileName#three.hs
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
wincmd =
tabnext 3
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
