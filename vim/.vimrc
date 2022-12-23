set nocompatible
set number
set laststatus=2 " Status line
set nowrap
set encoding=utf-8

if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif


