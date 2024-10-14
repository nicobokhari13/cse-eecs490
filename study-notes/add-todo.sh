#!/bin/sh

for file in *; do

    if ! grep -q "*Attended*" $file; then
        echo "TODO: watch lecture for handwritten notes" >> $file
    fi
done
