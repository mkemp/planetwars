#!/bin/bash
mkdir -p .play/build
rm .play/build/*.class 2>/dev/null
javac src/*.java -d .play/build

path=.play/game/tcp
mkdir -p $path
rm $path/* 2>/dev/null
touch $path/MyBot.log

my_bot_name="MyBot"
my_bot="java -cp .:.play/build -Dlogger.directory=$path MyBot"

java -cp .:.play/build TCP "72.44.46.68" "995" "$my_bot_name" "$my_bot" "10000" >$path/stdout.log 2>$path/stderr.log &
tail -f $path/MyBot.log
