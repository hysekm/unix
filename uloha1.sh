#!/bin/bash
if [ -d "$1" ]; then
echo "adresar"
elif [ -f "$1" ]; then
echo "soubor"
elif [ -b "$1" ]; then
echo "blokove zarizeni"
elif [ -c "$1" ]; then
echo "znakove zarizeni"
elif [ -h "$1" ]; then
echo "symbolicky link"
elif [ -S "$1" ]; then
echo "socket"
elif [ -p "$1" ]; then
echo "roura"
