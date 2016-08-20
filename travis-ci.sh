#!/bin/bash

set -x

./virtualfb.sh
glxinfo -display `cat virtualfb.DISPLAY`

if [[ $? != 0 ]]; then
  echo "Test failure"
  exit 1
fi
