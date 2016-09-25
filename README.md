## Yiu Terran's vimfiles

1. `sudo apt-get install vim`, `sudo apt-get build-dep vim`
2.  wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
3. `tar xf vim-7.4.tar.bz2`
4. configure --with-features=huge --enable-rubyinterp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config --enable-perlinterp --enable-cscope --prefix=/usr
5. `make`
6. `sudo make install`
7. `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\`
8.  in vim, input `:PlugInstall`
9.  if you want to use `Autoformat` plugin, remember to install `astyle`,`python-autopep8` and other packages it use.
10. That's not all, but you can work with this vim

