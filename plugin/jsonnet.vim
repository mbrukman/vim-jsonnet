

" A plugin for jsonnet files.
" Install useful tools for *.jsonnet and *.libsonnet files







function! s:fmtAutosave()
  " Jsonnet code formatting on save
  if get(g:, "jsonnet_fmt_on_save", 1)
    call jsonnet#Format()
  endif
endfunction


" auto group and clear inside prevents multiple registration of the same
" auto commands
augroup vim-jsonnet
   autocmd!
   autocmd BufWritePre *.jsonnet call s:fmtAutosave()
   autocmd BufWritePre *.libsonnet call s:fmtAutosave()
augroup END

