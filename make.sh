#!/bin/bash
set -x 

TGZ=debian.tgz
sudo debootstrap --variant=minbase wheezy wheezy
sudo tar -cz  -C wheezy --numeric-owner . > $TGZ
sudo rm -rf wheezy

docker build -t deliverous/wheezy .
