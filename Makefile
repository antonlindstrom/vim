all: bootstrap links

links:
	cp -a ./vim/. ~/.vim
	cp -a ./vimrc ~/.vimrc

bootstrap:
	mkdir -p ~/.vim/backup
	mkdir -p ~/.vim/tmp

destroy:
	rm ~/.vimrc
	rm -r ~/.vim
