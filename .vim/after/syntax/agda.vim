function! ReloadSyntax()
  syntax clear
  runtime syntax/agda.vim
  let f = expand('%:h') . "/." . expand('%:t') . ".vim"
  if filereadable(f)
    exec "source " . escape(f, '*')
  endif
endfunction

call ReloadSyntax()

map ,rs :call ReloadSyntax()<CR>

imap <buffer> \forall ∀
imap <buffer> \to →
imap <buffer> \lambda λ
imap <buffer> \Sigma Σ
imap <buffer> \exists ∃
imap <buffer> \equiv ≡ 
