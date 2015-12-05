# i3-gnome

[![Build Status](http://img.shields.io/travis/lvillani/i3-gnome.svg?style=flat)](https://travis-ci.org/lvillani/i3-gnome)
[![License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](http://choosealicense.com/licenses/mit/)

--------------------------------------------------------------------------------

Allows you to use i3-wm with GNOME 3 Session infrastructure on Ubuntu 12.04 and Ubuntu 14.04.

## Usage

Install i3-gnome from its PPA:

    sudo add-apt-repository -y ppa:lvillani/i3
    apt-get update
    apt-get install -y i3-gnome

At this point you have to log-out from your current session. You should see a new session type
called "i3 + GNOME" in your display manager. Choose it and log back in.

__NOTE__: The PPA also contains i3 4.8 for Ubuntu Trusty.

The PPA supports the following Ubuntu versions:

* Ubuntu 12.04
* Ubuntu 14.04

Non-LTS Ubuntu releases are not supported and will never be.
