all: bootstrap plug links

PLUG_URL := https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

bootstrap:
	mkdir -p ~/.vim/autoload
	mkdir -p ~/.vim/backup
	mkdir -p ~/.vim/tmp

links:
	cp -a ./vimrc ~/.vimrc

plug:
	curl -sfLo ~/.vim/autoload/plug.vim $(PLUG_URL)

destroy:
	rm ~/.vimrc
	rm -r ~/.vim
