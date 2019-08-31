### What is this repository for? 

Synchronise Vim settings.

### Set-up

The vimrc file lives under %userprofile%\vimfiles\vimrc on Windows (note that there's no dot), so you only need to create a symbolic link and you're done.
Assuming the repository path is D:\VimConfiguration\, the command would be
mklink /J C:\Users\XXX\vimfiles D:\VimConfiguration

To install the plugins, simply execute :PlugInstall

### Keep your vimrc clean:
https://vim.fandom.com/wiki/Keep_your_vimrc_file_clean

### Compiler
Compiler:
https://vim.fandom.com/wiki/Autoselect_the_right_compiler_using_the_filetype
e.g. https://users.rust-lang.org/t/solved-vim-neovim-rust-how-to-run-cargo-check/26071

