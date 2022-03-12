" --------------- copy & paste (VIM in WSL) ---------------------
" old (https://stackoverflow.com/questions/44480829/how-to-copy-to-clipboard-in-vim-of-bash-on-windows)
" copy (write) highlighted text to .vimbuffer
" vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
" map <C-v> :r ~/.vimbuffer<CR>

" new (scroll down on stack overflow post to see comment explanation for this method)
autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' |  clip.exe')

" ----------------- turn off bell ------------------
"turn off bell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" ----------------- text formatting ---------------
set wrap
set linebreak
set nolist  " list disables linebreak"
set textwidth=0

" ----------------- 
