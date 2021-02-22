let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/git/eliasrod.gitlab.io/docs/.vuepress
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +73 theme/layouts/Layout.vue
badd +161 theme/components/Navbar.vue
badd +6 ~/git/eliasrod.gitlab.io/docs/README.md
badd +5 config.js
badd +14 theme/components/Home.vue
badd +1 term://.//5077:/bin/bash
badd +11 ~/git/eliasrod.gitlab.io/package.json
badd +8 styles/palette.styl
badd +1 theme/index.js
badd +3 theme/components/Footer.vue
badd +1 theme/components/SocialIcons.vue
badd +13 ~/git/eliasrod.gitlab.io/docs/webhat/README.md
badd +1 ~/git/eliasrod.gitlab.io/docs/shows
badd +6 ~/git/eliasrod.gitlab.io/docs/shows/README.md
badd +1 ~/git/eliasrod.gitlab.io/docs/workshops
argglobal
%argdel
$argadd theme/layouts/Layout.vue
edit theme/components/SocialIcons.vue
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 57 - ((1 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
57
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0&& getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=15 winwidth=30 winminheight=1 winminwidth=5 shortmess=filnxtToOFI
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
