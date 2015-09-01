#!/bin/bash
apt-get -y update

# install tsung
apt-get -y install emacs24-nox git tsung

echo ************** env **************
env

echo ************** pwd **************
pwd

echo ************** ls home **************
ls /home/
