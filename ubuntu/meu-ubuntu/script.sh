#!/bin/bash

## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;

## Atualizando o respositório ##
sudo apt update

## Download de programas externos ##
mkdir /home/$USER/Downloads/ProgramasShell

cd /home/$USER/Downloads/ProgramasShell

wget -c https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb

## Instalando todos os arquivos .deb baixados ##
sudo dpkg -i *.deb

## Voltando para o diretório $USER ##

cd ..
cd ..

## Atualizando o repositório, chacando dependencias e satisfazendo-as ##
sudo apt update && sudo apt upgrade
sudo apt-get update && sudo apt-get check && apt-get upgrade

## Adicionando repositórios PPA ##
sudo add-apt-repository ppa:inkscape.dev/stable
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable

## Instalando todos os codecs necessários para o Ubuntu ##
sudo apt install ubuntu-restricted-extras

## Instalando flatpaks ##
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub cc.arduino.IDE2
flatpak install flathub com.bitwarden.desktop
flatpak install flathub com.obsproject.Studio
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub com.sublimetext.three
flatpak install flathub io.github.mimbrero.WhatsAppDesktop
flatpak install flathub nl.hjdskes.gcolor3
flatpak install flathub org.gnome.Calendar
flatpak install flathub org.gnome.design.Contrast
flatpak install flathub org.telegram.desktop
flatpak install flathub org.mozilla.firefox
flatpak install flathub com.slack.Slack
flatpak install flathub io.github.Figma_Linux.figma_linux
flatpak install flathub org.videolan.VLC
flatpak install flathub org.gimp.GIMP
flatpak install flathub org.qbittorrent.qBittorrent
flatpak install flathub org.libreoffice.LibreOffice
flatpak install flathub com.google.Chrome
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.visualstudio.code
flatpak install flathub org.stellarium.Stellarium
flatpak install flathub ua.org.brezblock.q4wine
flatpak install flathub com.github.micahflee.torbrowser-launcher

## Instalando apps por apt install ##
sudo apt install qbittorrent
sudo apt install git
sudo apt install inkscape
sudo apt install virtualbox
sudo apt install htop
sudo apt install snapd
sudo apt install unzip
sudo apt install wine
sudo apt install gcc
sudo apt install python3
sudo apt install python3-pip
sudo apt install php
sudo apt install neofetch

## Instalando apps por snap ##
sudo snap install authy
sudo snap install winbox
sudo snap install visualg
sudo snap install notion-snap

sudo apt update && sudo apt upgrade && sudo apt dist-upgrade

echo "CONCLUÍDO!"
