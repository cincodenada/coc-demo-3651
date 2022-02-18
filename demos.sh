echo "vim without coc.nvim" > dir_a/file
vim -u vimrc_no_coc.vim -S demo.vim
echo "vim with coc.nvim" > dir_a/file
vim -u vimrc_with_coc.vim -S demo.vim
echo "nvim without coc.nvim" > dir_a/file
nvim -u vimrc_no_coc.vim -S demo.vim
echo "nvim with coc.nvim" > dir_a/file
nvim -u vimrc_with_coc.vim -S demo.vim
