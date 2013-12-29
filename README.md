## Yiu Terran's vimfiles


Just clone this repository and use vundle to manage the plugins.

vim version >=7.3, vim 7.4 is recommended.

__All belowed steps are checked just under Unbuntu 12.10 x64__

### Config steps
1. Install python. The version of vim in ubuntu source center is vim 7.3 without python. so first we compile it ourself.
2. `python2.7-dev` is needed. However, you can just type `sudo apt-get build-dep vim` to install all dependencies.
3. Type `wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2` to get vim7.4. Uncompress it and type **./configure --with-features=huge --enable-rubyinterp --enable-pythoninterp --with-python-config-dir = /usr/lib/python2.7/config --enable-perlinterp --enable-cscope --prefix=/usr** to config make options. `/usr/lib/python2.7` should changed to your own python path.
4. Just type `make` `sudo make install` to install vim.
5. Install `git` and type `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle` to get vundle.
6. Clone this repository to get my vim config files, `git clone https://github.com/YiuTerran/vimfiles ~/.vim/`, and move the `.vimrc` to the right place. you can modify it as you need.
7. In vim, type `:BundleInstall` to install plugins.
8. `YouCompleteMe` is a perfect code-complete plugin except complex install steps. But for ubuntu x64, just type
```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```
9. That's not all, but you can work with this vim

