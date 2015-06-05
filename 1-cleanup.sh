#!/bin/bash
set -e

########################################################
# Remove Drupal non-development stuff from Ubuntu 14.04
# Run only if you want to reduce the size of your system
# or if you don't need this software.
########################################################

# 0mb
sudo apt-get autoremove

# 305mb - Libre Office
sudo apt-get purge libreoffice-gnome  libreoffice-draw  libreoffice-help-en-us  libreoffice-style-tango  libreoffice-impress  libreoffice-math  libreoffice-gtk  libreoffice-common  uno-libs3  python-uno  libreoffice-style-human  ure  libreoffice-base-core  libreoffice-calc  libreoffice-emailmerge  libreoffice-core  libreoffice-writer

#  18mb - Games
sudo apt-get purge aisleriot gnome-sudoku mahjongg gnomine

#   6mb - Bluetooth
sudo apt-get purge bluez-alsa gir1.2-gnomebluetooth-1.0 bluez-gstreamer pulseaudio-module-bluetooth bluez-cups bluez gnome-bluetooth gnome-user-share

#  6.9mb - Shotwell photo manager
sudo apt-get purge shotwell
#   6mb - Example videos and stuff
sudo apt-get purge example-content
# rhythymbox
sudo apt-get purge rhythmbox rhythmbox-data rhythmbox-plugin-magnatune gir1.2-rb-3.0 rhythmbox-mozilla rhythmbox-plugin-zeitgeist rhythmbox-plugin-cdrecorder rhythmbox-plugins

#   Unity media lens
sudo apt-get purge unity-lens-video unity-scope-video-remote unity-scope-musicstores unity-lens-music

#   422k - Screen savers
sudo apt-get purge gnome-screensaver
#  3.2mb - speech synthesis
sudo apt-get purge espeak speech-dispatcher espeak-data libespeak1
#   1.7mb - Bittorrent client
sudo apt-get purge transmission-common transmission-gtk
#   ubuntuone
sudo apt-get remove --purge ubuntuone-*

#   remotedesktop
sudo apt-get purge vino remmina-common remmina-plugin-rdp remmina-plugin-vnc remmina
#   Etc
sudo apt-get purge usb-creator-gtk checkbox-gtk jockey-common jockey-gtk #computer-janitor-gtk

#  Async communications: microblog client, email client
sudo apt-get purge empathy empathy-common nautilus-sendto-empathy telepathy-indicator folks-common telepathy-logger telepathy-gabble telepathy-haze telepathy-idle telepathy-salut telepathy-mission-control-5
sudo apt-get purge thunderbird* pt-get evolution-common libevolution libfolks-eds25 empathy

# Realtime Communications: IM, VOIP, & IRC
sudo apt-get purge gwibber gwibber-service libgwibber-gtk2 gwibber-service-identica gwibber-service-twitter gwibber-service-facebook libgwibber2

# User guide
sudo apt-get purge gnome-user-guide ubuntu-docs

#  63mb - Printing
sudo apt-get purge cups cups-bsd cups-client cups-common ghostscript ghostscript-x ghostscript-cups cups-driver-gutenprint python-cups system-config-printer-common system-config-printer-gnome system-config-printer-udev foo2zjs foomatic-db-engine foomatic-filters min12xxw openprinting-ppds pnm2ppa pxljr splix hplip-data hplip hpijs libcupsmime1 libcupsdriver1 libgutenprint2 libcupsppdc1
# 15mb - Scanner drivers
sudo apt-get purge sane-utils simple-scan libsane libsane-hpaio

sudo apt-get purge thunderbird*

# remove packages that were automatically installed to satisfy dependencies for other packages and are now no longer needed.

sudo apt-get autoremove 

# clear out the local repository of retrieved package files. It removes everything but the lock file from /var/cache/apt/archives/ and /var/cache/apt/archives/partial/.

sudo apt-get clean

# Went too far and I removed the control center. Adding it back.
sudo apt-get install gnome-control-center
sudo apt-get install unity-control-center-signon

# Tweak some annoyances

# Get back some decent scroll bars.
gsettings set com.canonical.desktop.interface scrollbar-mode normal

# Show username on panel.
gsettings set com.canonical.indicator.session show-real-name-on-panel true

