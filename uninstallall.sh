#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi


args=("$@")
adb shell pm list packages | grep "${args[0]}" | cut -d ':' -f2 | tr '\r' ' ' | xargs -t -n1 adb uninstall
