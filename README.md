ledebin
==============

OpenWrt firmware patching and repackaging tools

### Installation

    # Install required software
    sudo apt-get install squashfs-tools build-essential autoconf automake libtool liblzma-dev zlib1g-dev ccache libglib2.0-dev git gawk unzip libncurses5-dev openssl  # for Ubuntu

    # Compile utilities and install
    git clone --depth=1 https://github.com/fumiama/ledebin.git ledebin
    cd ledebin
    make
    make install

### Usage

     openwrt-repack.sh <ROM_file> [options] ...    patch firmware <ROM_file> and repackage
     openwrt-repack.sh -c                          clean temporary and target files
     
    Options:
     -o <output_file>          filename of newly built firmware
     -r <package>              remove opkg package (can be multiple)
     -i <package>              install package with ipk file path or URL (can be multiple)
     -e                        enable root login
     -w                        enable wireless by default
     -x <commands>             execute commands after all other operations
