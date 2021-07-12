## Goal

To synchronise Vim/NeoVim settings.

## Set-up

Under Linux: The NeoVim configuration should live under ~/.config/nvim.

```
# Create the NeoVim configuration folder if it doesn't exist yet.
mkdir -pv ~/.config/nvim
# Create a symbolic link to this project's vimrc file
ln -s vimrc ~/.config/nvim/init.vim
# Link after/ folder 
# TODO: is this a remnant from the VIM configuration? Should this be `autoload` instead of `after`? It seems to work, and nvim should be backwards compatible in this regard.
ln -s after/ ~/.config/nvim/after

# Vim-Plug for NeoVim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy ideavimrc file - this sources the NeoVim configuration file for the IntelliJ IdeaVim plugin.
cp ./ideavimrc ~/.ideavimrc
```

To install the plugins, simply execute `:PlugInstall` inside (Neo)Vim.

### Windows
This hasn't been tested under Windows in a long time. In particular, this has not been updated for NeoVim. 

Original NeoVim instructions:
The vimrc file lives under %userprofile%\vimfiles\vimrc on Windows (note that there's no dot), so you only need to create a symbolic link and you're done.
Assuming the repository path is D:\VimConfiguration\, the command would be
mklink /J C:\Users\XXX\vimfiles D:\VimConfiguration

## Links
### Keep your vimrc clean:
https://vim.fandom.com/wiki/Keep_your_vimrc_file_clean

### Compiler
Compiler:
https://vim.fandom.com/wiki/Autoselect_the_right_compiler_using_the_filetype
e.g. https://users.rust-lang.org/t/solved-vim-neovim-rust-how-to-run-cargo-check/26071


