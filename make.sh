#!/bin/bash
set -x 

TGZ=debian.tgz
sudo debootstrap --variant=minbase wheezy wheezy
sudo tar -cz  -C wheezy --numeric-owner . > $TGZ

docker build -t deliverous/wheezy .
