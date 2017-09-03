function! s:Kibit()
  let l:cmd = "lein kibit " . @%
  let result = system(l:cmd)

  if !empty(result)
    vsplit __Kibit_Result__
    normal! ggdG
    setlocal buftype=nofile
    call append(0, split(result, '\v\n'))
    return
  endif

  echom "kibit found no improvements"

endfunction

command! Kibit call s:Kibit()
