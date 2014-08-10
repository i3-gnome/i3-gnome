#
# Global Settings
#

INSTALL_ROOT = /
PREFIX = $(INSTALL_ROOT)/usr

#
# Installation Paths
#

# Fonts
PATH_ICONS_FONT = $(PREFIX)/share/fonts/truetype/icons.ttf

# Wallpapers
PATH_WALLPAPER_WTF = $(PREFIX)/share/backgrounds/WTF-Monokai.png

# i3 Configuration
PATH_I3_CONFIG = $(INSTALL_ROOT)/etc/xdg/i3/config
PATH_I3_STATUS_CONFIG = $(INSTALL_ROOT)/etc/xdg/i3status/config

# Session
PATH_I3_GNOME = $(PREFIX)/bin/i3-gnome
PATH_I3_GNOME_DESKTOP = $(PREFIX)/share/applications/i3-gnome.desktop
PATH_I3_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/i3-gnome.session
PATH_I3_GNOME_XSESSION = $(PREFIX)/share/xsessions/i3-gnome.desktop

#
# Targets
#

install:
	install -o root -g root -m0644 -D font/icons.ttf $(PATH_ICONS_FONT)

	fc-cache -f -r

	install -o root -g root -m0644 -D wallpaper/WTF-Monokai.png $(PATH_WALLPAPER_WTF)

	install -o root -g root -m0644 -D config/i3.config $(PATH_I3_CONFIG)
	install -o root -g root -m0644 -D config/i3status.config $(PATH_I3_STATUS_CONFIG)

	install -o root -g root -m0644 -D session/i3-gnome-xsession.desktop $(PATH_I3_GNOME_XSESSION)
	install -o root -g root -m0644 -D session/i3-gnome.desktop $(PATH_I3_GNOME_DESKTOP)
	install -o root -g root -m0644 -D session/i3-gnome.session $(PATH_I3_GNOME_SESSION)
	install -o root -g root -m0755 -D session/i3-gnome $(PATH_I3_GNOME)

	update-desktop-database -q


install-dev:
	ln -sfT $(shell pwd)/config/i3.config $(PATH_I3_CONFIG)
	ln -sfT $(shell pwd)/config/i3status.config $(PATH_I3_STATUS_CONFIG)

	ln -sfT $(shell pwd)/session/i3-gnome-xsession.desktop $(PATH_I3_GNOME_XSESSION)
	ln -sfT $(shell pwd)/session/i3-gnome.desktop $(PATH_I3_GNOME_DESKTOP)
	ln -sfT $(shell pwd)/session/i3-gnome.session $(PATH_I3_GNOME_SESSION)
	ln -sfT $(shell pwd)/session/i3-gnome $(PATH_I3_GNOME)


install-deps:
	apt-get -qy install dbus dconf-cli feh gnome-session gnome-settings-daemon i3


uninstall:
	rm -f $(PATH_I3_GNOME)
	rm -f $(PATH_I3_GNOME_DESKTOP)
	rm -f $(PATH_I3_GNOME_SESSION)
	rm -f $(PATH_I3_GNOME_XSESSION)

	rm -f $(PATH_I3_CONFIG)
	rm -f $(PATH_I3_STATUS_CONFIG)

	rm -f $(PATH_ICONS_FONT)
	rm -f $(PATH_WALLPAPER_WTF)


.PHONY: install install-deps install-dev uninstall
