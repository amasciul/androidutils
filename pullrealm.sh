#!/bin/bash

args=("$@")

if [ $# -eq 0 ]
  then
    echo "No package name supplied"
    exit 1
fi

adb shell "run-as ${args[0]} cp /data/data/${args[0]}/files/default.realm  /sdcard/"
adb pull /sdcard/default.realm
adb shell "rm /sdcard/default.realm"
