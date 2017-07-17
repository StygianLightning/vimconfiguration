# README #

### What is this repository for? ###

Synchronise your Vim settings on different machines.

### Set-up ###

The vimrc file lives under %userprofile%\vimfiles\vimrc on Windows (note that there's no dot), so you only need to create a symbolic link and you're done.
Assuming the repository path is D:\VimConfiguration\, the command would be
mklink /J C:\Users\XXX\vimfiles D:\VimConfiguration

