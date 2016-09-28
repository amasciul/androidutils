#!/bin/bash

args=("$@")
adb shell input text ${args[0]}
