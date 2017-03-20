init:
	git submodule update --init --recursive
	ln -fs `pwd`/vim ~/.vim
	ln -fs `pwd`/vimrc ~/.vimrc

sync:
	git pull
	git push
