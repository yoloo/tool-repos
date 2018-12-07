#!/bin/bash

# 安装路径
# /my-repos

SOURCE_DIR=./
INSTALL_PREFIX=/my-repos

CPU=$(nproc)

# cmake-3.13.1
install_cmake()
{
    echo "Install cmake start"

    cd $SOURCE_DIR
    tar xvf cmake-3.13.1.tar.gz

    cd cmake-3.13.1

    ./configure --prefix=$INSTALL_PREFIX
    make -j $CPU
    make install

    cd ..
    echo "Install cmake done"
}

case $1 in
    cmake) install_cmake;;
    *) echo "$0 cmake |"
esac 
