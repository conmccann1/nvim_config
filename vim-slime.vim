" vim-slime
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
" fix paste issues in ipython
let g:slime_python_ipython = 1
" always send text to the top-right pane in the current tmux tab without asking
"let g:slime_default_config = {
"	\ 'socket_name': get(split($TMUX, ','), 0),
"	\ 'target_pane': '{top-right}'}
let g:slime_default_config = {
	\ 'socket_name': 'default',
	\ 'target_pane': 'slime_out.0'}
let g:slime_dont_ask_default = 1


