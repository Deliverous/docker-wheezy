#!/bin/bash
set -x 

TGZ=debian.tgz
if [ ! -f $TGZ ]; then
    sudo debootstrap --variant=minbase wheezy wheezy
    sudo tar -cz  -C wheezy --numeric-owner . > $TGZ
    sudo rm -rf wheezy
fi

docker build -t deliverous/wheezy .
