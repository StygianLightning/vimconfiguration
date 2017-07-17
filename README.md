# README #

### What is this repository for? ###

Synchronise your Vim settings on different machines.

### Set-up ###

Run a command line as admin and make a symbolic link from the .vimrc file in the repository to 
%userprofile%\vimfiles\vimrc (no dot on Windows!)
Assuming the repository path is D:\VimConfiguration\, the command would be
mklink C:\Users\XXX\vimfiles\vimrc D:\VimConfiguration\.vimrc

