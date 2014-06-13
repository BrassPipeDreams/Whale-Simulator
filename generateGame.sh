#!/bin/bash

# Little script to make my task on generating the game file easier.
#
# Author: Rafael C. Nunes
# Date: 06/14/2014


SRCFILES=src/*.lua
FILES=*.lua
LIB=libs/*
ASSETS=assets/*/*
GAME=out/whale-sim.love

if ls -U out/* > /dev/null; then
	rm out/whale-sim.love #removing any previous game launcher before generating another.
fi

zip -j whale-sim.zip $SRCFILES > /dev/null
unzip whale-sim.zip > /dev/null
rm whale-sim.zip #removing the old zip file
zip whale-sim $FILES $LIB $ASSETS > /dev/null
rm *.lua

mv whale-sim.zip out/whale-sim.love

echo "DONE! NOW, GO ENJOY THE GAME. ;)"
