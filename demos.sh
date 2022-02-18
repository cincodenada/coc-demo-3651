echo "vim without .vimrc" > dir_a/file
vim -u NONE -S demo.vim
echo "vim with coc.nvim" > dir_a/file
vim -u mini.vim -S demo.vim
echo "nvim without .vimrc" > dir_a/file
nvim -u NONE -S demo.vim
echo "nvim with coc.nvim" > dir_a/file
nvim -u mini.vim -S demo.vim
