au BufNewFile,BufRead *.lsc setf lightscript
au BufNewFile,BufRead *.lsx setf lightscript
au BufNewFile,BufRead *.light.js setf lightscript
au BufNewFile,BufRead *.light.jsx setf lightscript

fun! s:SelectLightScript()
  if getline(1) =~# '^#!.*/bin/\%(env\s\+\)\?lsc-node\>'
    set ft=lightscript
  endif
endfun
au BufNewFile,BufRead * call s:SelectLightScript()
