init:
	git submodule update --init --recursive
	ln -fs `pwd`/vim ~/.vim
	ln -fs `pwd`/vimrc ~/.vimrc
	ln -fs `pwd`/tern-config ~/.tern-config
	ln -fs `pwd`/ctags ~/.ctags
	ln -fs `pwd`/tmux.conf ~/.tmux.conf

sync:
	git pull
	git push
