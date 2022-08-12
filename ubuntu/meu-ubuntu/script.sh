#!/bin/bash

## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;

## Atualizando o respositório ##
sudo apt update

## Download de programas externos ##
mkdir /home/$USER/Downloads/ProgramasShell

cd /home/$USER/Downloads/ProgramasShell

## Download do Chrome ##
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

## Download do Discord ##
wget -c https://dl.discordapp.net/apps/linux/0.0.19/discord-0.0.19.deb

## Download Google Earth ##
wget -c https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb

## Download VS Code ##
wget -c https://az764295.vo.msecnd.net/stable/6d9b74a70ca9c7733b29f0456fd8195364076dda/code_1.70.1-1660113095_amd64.deb

## Instalando todos os arquivos .deb baixados ##
sudo dpkg -i *.deb

## Adicionando repositório de drivers gráficos ##
sudo apt-add-repository ppa:graphics-drivers/ppa && sudo apt update

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

## Instalando apps por apt install ##
sudo apt install virtualbox
sudo apt install htop
sudo apt install snapd

## Instalando apps por snap ##
sudo snap install slack --classic
sudo snap install authy
sudo snap install winbox

sudo apt update && sudo apt dist-upgrade

echo "Chegamos ao final."
