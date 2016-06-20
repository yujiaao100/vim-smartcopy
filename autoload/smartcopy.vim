function! smartcopy#change_to_cv()
		execute "badd __smartcopy_tmp__"
		let num=bufnr('__smartcopy_tmp__')
		execute num+"bufdo normal! gg\"*p"
		execute num+"bufdo normal! gg0\<C-v>G$\"ay"
		execute "bdelete  __smartcopy_tmp__"
endfunction
