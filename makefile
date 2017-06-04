init:
	git submodule update --init --recursive
	ln -fs `pwd`/vim ~/.vim
	ln -fs `pwd`/vimrc ~/.vimrc
	ln -fs `pwd`/tern-config ~/.tern-config

sync:
	git pull
	git push
