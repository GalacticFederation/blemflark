
Debian
====================
This directory contains files used to package blemflarkd/blemflark-qt
for Debian-based Linux systems. If you compile blemflarkd/blemflark-qt yourself, there are some useful files here.

## blemflark: URI support ##


blemflark-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install blemflark-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your blemflark-qt binary to `/usr/bin`
and the `../../share/pixmaps/blemflark128.png` to `/usr/share/pixmaps`

blemflark-qt.protocol (KDE)

