#!/bin/bash

set -x

ldd /usr/bin/Xvfb
ldd /usr/bin/glxinfo

./virtualfb.sh
glxinfo -display `cat virtualfb.DISPLAY`
./virtualfb.sh

ls -l /var/log

if [[ $? != 0 ]]; then
  echo "Test failure"
  exit 1
fi
