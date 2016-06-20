"init
"execute "normal gg0\<C-v>G$\"*y"  
if !exists('g:smartcopy_mode') 
	let g:smartcopy_mode=0
endif
if !exists('g:smartcopy_boards')
	let	g:smartcopy_boards='*'
endif
"execute "badd __smartcopy_tmp__"
"execute "bdelete  __smartcopy_tmp__"

call smartcopy#change_to_cv()
