A minimal reproduction of coc.nvim issue #3651

`demos.sh` will run four scenarios in sequence:

1. vim without a .vimrc
1. vim with `mini.vim` as .vimrc
1. nvim without a .vimrc
1. nvim with `mini.vim` as .vimrc

In each scenario it will run `demo.vim`:

1. Set autochdir (for non-`.vimrc` scenarios)
1. Open `dir_a/file`
1. Change the window directory to `dir_b` (`:lcd dir_b`)
1. Open `demo.vim` in a vertical split to the right

You can then check the behavior of switching to the left window before exiting
and running the next scenario. For me, in all cases except the last, the
behavior is as expected: switching to the left window changes the directory to
`dir_a`, resulting in a file path of `file` for that window.

In the last case, in addition to that, after a brief delay the displayed path
switches to `~/demo/dir_a/file`, and the current directory changes to `dir_b`.

Note: this assumes coc.nvim is at ~/.vim/plugged/coc.nvim, change `mini.vim`
accordingly if you're not using Plug, or want to use a different coc.nvim
