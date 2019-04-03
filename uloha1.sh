#!/bin/sh
if [ "$1" == "--typ" ]
then
if [ -d "$2" ]
then
echo "adresar"
exit 0
fi
if [ -f "$2" ]
then
echo "soubor"
exit 0
fi
if [ -b "$2" ]
then
echo "blokove zarizeni"
exit 0
fi
if [ -c "$2" ]
then
echo "znakove zarizeni"
exit 0
fi
if [ -h "$2" ]
then
echo "symbolicky link"
exit 0
fi
if [ -S "$2" ]
then
echo "socket"
exit 0
fi
if [ -p "$2" ]
then
echo "roura"
exit 0
fi
if [ ! -e $2 ]
then
echo "neexistuje"
exit 1
fi
elif [ "$1" == "--help " ]
then
echo "Pouziti: uloha1.sh [--typ|--help] [cesta_k_suboru]"
exit 0
fi
