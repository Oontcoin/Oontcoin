
Debian
====================
This directory contains files used to package oontcoind/oontcoin-qt
for Debian-based Linux systems. If you compile oontcoind/oontcoin-qt yourself, there are some useful files here.

## oontcoin: URI support ##


oontcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install oontcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your oontcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/oontcoin128.png` to `/usr/share/pixmaps`

oontcoin-qt.protocol (KDE)

