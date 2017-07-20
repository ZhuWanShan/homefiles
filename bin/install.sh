#!/usr/bin/env bash

# ==== Functions ==========

print_help(){
    echo "Help"

}

home(){
    local DOT_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
    echo $DOT_HOME
}

install_vim(){
    echo "---------------Instal Vim Config -----------------"
    mkdir -p ~/.vim
    echo "cp $DOT_HOME/vim/vimrc ~/.vimrc"
    cp $DOT_HOME/vim/vimrc ~/.vimrc
    echo "cp -R $DOT_HOME/vim/autoload ~/.vim"
    cp -R $DOT_HOME/vim/autoload ~/.vim
    echo "---------------Finshed-----------------"
}
# =======================



# ============ Variables ===================

DOT_HOME=`home`

# ==========================================

case $1 in
    vim)
        install_vim
        ;;
    *)
        print_help
        ;;
esac
