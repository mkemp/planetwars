#!/bin/bash

SHOW_GAME=tools/ShowGame.jar

f="maps/map$1.txt"
path=.play/game/$(echo $f | cut -c 6- | cut -d '.' -f 1)
echo "$f: $(grep Wins $path/stderr.log) ($(grep Turn $path/stderr.log | tail -n 1))"
java -jar $SHOW_GAME <$path/stdout.log &
