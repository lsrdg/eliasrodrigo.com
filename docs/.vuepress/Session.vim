let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git/eliasrod.gitlab.io/docs/.vuepress
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +70 theme/layouts/Layout.vue
badd +161 theme/components/Navbar.vue
badd +6 ~/git/eliasrod.gitlab.io/docs/README.md
badd +5 config.js
badd +271 theme/components/Home.vue
badd +1 term://.//5077:/bin/bash
badd +11 ~/git/eliasrod.gitlab.io/package.json
badd +8 styles/palette.styl
badd +1 theme/index.js
badd +3 theme/components/Footer.vue
badd +1 theme/components/SocialIcons.vue
badd +13 ~/git/eliasrod.gitlab.io/docs/webhat/README.md
badd +1 ~/git/eliasrod.gitlab.io/docs/shows
badd +1 ~/git/eliasrod.gitlab.io/docs/shows/README.md
badd +1 ~/git/eliasrod.gitlab.io/docs/workshops
argglobal
%argdel
$argadd theme/layouts/Layout.vue
edit ~/git/eliasrod.gitlab.io/docs/shows/README.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 62 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 73 + 68) / 136)
argglobal
setlocal fdm=expr
setlocal fde=Foldexpr_markdown(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
let s:l = 6 - ((5 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 026|
lcd ~/git/eliasrod.gitlab.io/docs/.vuepress
wincmd w
argglobal
if bufexists("~/git/eliasrod.gitlab.io/docs/.vuepress/theme/components/SocialIcons.vue") | buffer ~/git/eliasrod.gitlab.io/docs/.vuepress/theme/components/SocialIcons.vue | else | edit ~/git/eliasrod.gitlab.io/docs/.vuepress/theme/components/SocialIcons.vue | endif
if &buftype ==# 'terminal'
  silent file ~/git/eliasrod.gitlab.io/docs/.vuepress/theme/components/SocialIcons.vue
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 57 - ((1 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
57
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 62 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 73 + 68) / 136)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=15 winwidth=30 winminheight=1 winminwidth=5 shortmess=filnxtToOFI
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
