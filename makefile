init:
	git submodule update --init --recursive
	ln -fs `pwd`/vim ~/.vim
	ln -fs `pwd`/vimrc ~/.vimrc
	ln -fs `pwd`/tern-config ~/.tern-config
	ln -fs `pwd`/ctags ~/.ctags

sync:
	git pull
	git push
