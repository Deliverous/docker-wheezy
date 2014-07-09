#!/bin/bash

cd /tmp/
/usr/sbin/debootstrap wheezy /tmp/wheezy 
/bin/tar --directory=/tmp/wheezy --create . | /usr/bin/docker import - deliverous/wheezy
docker push deliverous/wheezy
