#!/bin/sh
# Or you could do
# :set spellang=sv
# :set spell
# and vim will download the files for you

if [ -z "$1" ]; then
    echo "Usage: $0 <lang>"
    echo "Example for sv (Swedish):"
    echo "$0 sv"
    exit
fi

wget ftp://ftp.vim.org/pub/vim/runtime/spell/$1.utf-8.spl
wget ftp://ftp.vim.org/pub/vim/runtime/spell/$1.utf-8.sug
