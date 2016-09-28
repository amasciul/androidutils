#!/bin/bash

args=("$@")
adb shell pm list packages | grep "${args[0]}" | cut -d ':' -f2 | tr '\r' ' ' | xargs -t -r -n1   adb uninstall
