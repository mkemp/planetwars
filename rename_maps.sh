#!/bin/bash

for f in $(find maps/* | grep -P 'map\d.txt'); do
    mv $f maps/map00$(echo $f | cut -c 9-)
done

for f in $(find maps/* | grep -P 'map\d\d.txt'); do
    mv $f maps/map0$(echo $f | cut -c 9-)
done