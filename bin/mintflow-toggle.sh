#!/bin/bash

EWW="$HOME/MintFlow/tools/eww/target/release/eww"

if $EWW active-windows | grep -q hub; then
    $EWW close hub
else
    $EWW open hub
fi
