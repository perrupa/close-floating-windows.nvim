fun! s:close_floating_windows() abort
  for win in nvim_tabpage_list_wins(tabpagenr())
    if !empty(get(nvim_win_get_config(win), 'relative', ''))
      call nvim_win_close(win, v:true)
    endif
  endfor
endf

command! -bar CloseFloatingWindows call s:close_floating_windows()
