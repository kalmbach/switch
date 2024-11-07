#!/bin/bash

OUTPUT_DIR=~/.local/bin

while getopts ":o:" option; do
  case $option in
    o) OUTPUT_DIR=$OPTARG
  esac
done

cd /tmp
wget -O switch "https://raw.githubusercontent.com/kalmbach/switch/refs/heads/main/switch"
chmod a+x switch 
mkdir -p $OUTPUT_DIR
mv switch $OUTPUT_DIR

echo "Installed in $OUTPUT_DIR/switch"
