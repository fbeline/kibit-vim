function s:getKibitResponse(output)
  let l:start = stridx(a:output, "Consider using:")
  let l:end = strlen(a:output)

  return strpart(a:output, l:start, l:end)
endfunction

function! s:Kibit()
  let l:cmd = "lein kibit " . @%
  let l:output = system(l:cmd)

  if l:output =~ "Consider using:"
    vsplit __Kibit_Result__
    normal! ggdG
    setlocal buftype=nofile
    let l:result = s:getKibitResponse(l:output)
    call append(0, split(l:result, '\v\n'))
    return
  endif

  echom "kibit found no improvements"

endfunction

command! Kibit call s:Kibit()
