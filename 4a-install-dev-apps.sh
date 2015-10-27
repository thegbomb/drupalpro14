#!/bin/bash

##################################################
# Install Desktop development apps in Ubuntu 14.04
##################################################

# SCRIPT VARIABLES
WWWOwner="drupalpro"                # user
DIRHome="/home/$WWWOwner"           # user home path
VER_GEANY_SCHEMES="1.22"            # Version of colorschemes for geany
OPT_APTGET="-y"                     # APT-GET options

# Install Desktop development apps
sudo apt-get $OPT_APTGET install gitg meld nautilus-compare guake geany diodon synaptic indicator-multiload gksu

# Setup GEANY
[ ! -d $DIRHome/.config/geany ] && sudo -u $WWWOwner -g $WWWOwner mkdir -p $DIRHome/.config/geany
sudo -u $WWWOwner -g $WWWOwner git clone https://github.com/codebrainz/geany-themes.git $DIRHome/.config/geany/codebrainz
cd $DIRHome/.config/geany/codebrainz
git checkout tags/$VER_GEANY_SCHEMES
sudo -u $WWWOwner -g $WWWOwner mkdir -p $DIRHome/.config/geany/colorschemes
sudo -u $WWWOwner -g $WWWOwner ln -s $DIRHome/.config/geany/codebrainz/colorschemes/* $DIRHome/.config/geany/colorschemes/

# Install Filezilla
sudo apt-get $OPT_APTGET install filezilla

