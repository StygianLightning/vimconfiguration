:compiler cargo

" Rust settings
let g:rustfmt_autosave=1

nmap <leader>c :make c<CR>
nmap <leader>r :make r<CR>
nmap <leader>b :make b<CR>
nmap <leader>t :make t<CR>

" Rust Debugger Setup https://github.com/sakhnik/nvim-gdb 
"
" We're going to define single-letter keymaps, so don't try to define them
" in the terminal window.  The debugger CLI should continue accepting text commands.
function! NvimGdbNoTKeymaps()
  tnoremap <silent> <buffer> <esc> <c-\><c-n>
endfunction

let g:nvimgdb_config_override = {
  \ 'key_next': 'n',
  \ 'key_step': 's',
  \ 'key_finish': 'f',
  \ 'key_continue': 'c',
  \ 'key_until': 'u',
  \ 'key_breakpoint': 'b',
  \ 'set_tkeymaps': "NvimGdbNoTKeymaps",
  \ }

let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }
