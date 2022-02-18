" Set up left window
e dir_a/file
lcd dir_b

" Move to right window
bot vnew ../demo.vim

" Moving to the left window should trigger the strange behavior
" in nvim with coc.nvim, but not in nvim without coc.nvim.
" vim doesn't show this behavior in either case.
