# ArmA 3 Unix Launcher

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/8a144e12d9cc4cde90616f0e3f282322)](https://www.codacy.com/manual/muttleyxd/arma3-unix-launcher?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=muttleyxd/arma3-unix-launcher&amp;utm_campaign=Badge_Grade), <img src="https://cdn0.iconfinder.com/data/icons/tab-bar-ios-and-wp8-vector-icons/48/linux-512.png" height="32">  [![Build Status](https://cloud.drone.io/api/badges/muttleyxd/arma3-unix-launcher/status.svg)](https://cloud.drone.io/muttleyxd/arma3-unix-launcher), <img src="https://cdn3.iconfinder.com/data/icons/flat-icons-web/40/Apple-512.png" height="32"> [![Build Status](https://muttleyxd.semaphoreci.com/badges/arma3-unix-launcher.svg?style=shields)](https://muttleyxd.semaphoreci.com/projects/arma3-unix-launcher)

ArmA 3 Launcher for Linux and Mac.
Since Bohemia didn't port their launcher to Linux and Mac and existing launcher didn't satisfy my needs I decided to create my own.

## Table of contents

* [Installing](#installing)
    * [From package](#from-package)
    * [Building from source](#building-from-source)
* [Launch parameters](#launch-parameters)


## Installing

### From package

For Debian based distributions (Debian, Ubuntu), Arch based distributions (Arch, Manjaro) and Mac OS X there are packages available in [releases tab!](https://github.com/muttleyxd/arma3-unix-launcher/releases)

For Arch based distributions there's an AUR package available - it's called `arma3-linux-launcher-git`

    yay -S arma3-linux-launcher-git

### Building from source

Requirements:
- GCC 8 or newer (Clang with C++17 support should work too)
- CMake 3.11
- Qt5 with SVG support
- fmt (optional)

#### Debian based (Debian, Ubuntu)
    apt install cmake qt5-default libqt5widgets5 libqt5svg5 libqt5svg5-dev libfmt-dev

#### Arch based (Arch Linux, Manjaro)
    pacman -S cmake fmt qt5-base qt5-svg

#### Mac OS X
    brew install gcc cmake qt

#### Build process
    git clone https://github.com/muttleyxd/arma3-unix-launcher.git
    cd arma3-unix-launcher
    mkdir build
    cd build
    cmake ..
    make

After that you can launch with

    ./src/arma3-unix-launcher


### Launch parameters

```
Usage: arma3-unix-launcher [options] 

Optional arguments:
-h --help          	show this help message and exit
-l --list-presets  	list available mod presets
-p --preset-to-run 	preset to run, launcher will start Arma with given mods and exit
--server-ip        	server ip to connect to, usable only with --preset-to-run
--server-port      	server port to connect to, usable only with --preset-to-run
--server-password  	server pasword to connect to, usable only with --preset-to-run
-v --verbose       	verbose mode which enables more logging
```

Example:
```
arma3-unix-launcher --preset-to-run testmod --server-ip 127.0.0.1 --server-port 1234 --server-password asdasd
```
