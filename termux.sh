#!/bin/sh

printf "========== start =========="
termux-setup-storage
# termux-change-repo

printf "\n\n========== install some packages [total 11] =========="
pkg upgrade
pkg install git zsh vim wget python golang openjdk-17 alist termux-api tur-repo openssh
pkg install code-server
printf "\n\n========== successfully install packages =========="

printf "\n\n========== install ohmyzsh =========="
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
printf "\n\n========== successfully install ohmyzsh =========="
