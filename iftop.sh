#!/bin/bash

# @reference: http://www.vpser.net/manage/iftop.html

SRC=/usr/local/src
INSTALL=/usr/local

# Dependence
yum -y install flex byacc  libpcap ncurses ncurses-devel libpcap-devel

# Download & Install
wget http://www.ex-parrot.com/pdw/iftop/download/iftop-0.17.tar.gz -P $SRC
tar -zxvf $SRC/iftop-0.17.tar.gz -C $SRC
cd $SRC/iftop-0.17
./configure
make && make install
