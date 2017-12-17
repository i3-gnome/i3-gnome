# i3-gnome [![License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](http://choosealicense.com/licenses/mit/) [![Maintenance](https://img.shields.io/maintenance/yes/2017.svg)]()

Allows you to use i3-wm with GNOME 3 Session infrastructure.

# What exactly?
With `i3-gnome` you get along with i3 (Window Manager) and GNOME (Desktop Environment) instead of metacity (the default window manager of GNOME).

See [more](https://github.com/lvillani/i3-gnome/issues/10).

# Requirements
* i3-wm
* GNOME (gdm, libgdm)

# Installation
* For Arch users see the [AUR package](https://aur.archlinux.org/packages/i3-gnome/) for a more easy installation.

Using `make`:
* download the repo.
* on the terminal go to the repo directory.
* `make install`

# State
* Using flawlessy on GNOME 3.26.2

# Tips & Tricks
Add this lines to your `~/.config/i3/config`:
```
exec --no-startup-id /usr/lib/gnome-settings-daemon/gsd-xsettings
exec_always --no-startup-id gnome-power-manager
```
And you'll have more integration about `GNOME Settings Daemon` and GNOME power manager.

More about `gsd-xsettings` [here](https://bugs.archlinux.org/task/53800).

# Troubleshooting
* Report issues.
* Visit all the closed issues (mostly FAQ). 

# Contributing
We accept contributions. Any help is greatly appreciated.

