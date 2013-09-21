all: bootstrap links

links:
	cp -a ./vim/. ~/.vim
	cp -a ./vimrc ~/.vimrc

bootstrap:
	mkdir ~/.vim/backup
	mkdir ~/.vim/tmp

destroy:
	rm ~/.vimrc
	rm -r ~/.vim
