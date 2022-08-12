#!/bin/bash

## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;

## Atualizando o respositório ##
sudo apt update

## Download de programas externos ##
mkdir /home/$USER/Downloads/ProgramasShell

cd /home/$USER/Downloads/ProgramasShell

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -c https://dl.discordapp.net/apps/linux/0.0.19/discord-0.0.19.deb
wget -c https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
wget -c https://az764295.vo.msecnd.net/stable/6d9b74a70ca9c7733b29f0456fd8195364076dda/code_1.70.1-1660113095_amd64.deb

## Instalando todos os arquivos .deb baixados ##
sudo dpkg -i *.deb

## Atualizando o repositório, chacando dependencias e satisfazendo-as ##
sudo apt update && sudo apt upgrade
sudo apt-get update && sudo apt-get check && apt-get upgrade

## Adicionando repositórios PPA ##
sudo apt-add-repository ppa:graphics-drivers/ppa
sudo add-apt-repository ppa:inkscape.dev/stable
## sudo add-apt-repository ppa:libreoffice/ppa ##

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

## Instalando apps por apt install ##
sudo apt install git
sudo apt install inkscape
sudo apt install virtualbox
sudo apt install htop
sudo apt install snapd
## pip, pip3, python3 ##

## Instalando apps por snap ##
sudo snap install authy
sudo snap install winbox
sudo snap install visualg

sudo apt update && sudo apt upgrade && sudo apt dist-upgrade

echo "CONCLUÍDO!"

## Atualizações futuras do script vão incluir: Tor Browser ##
