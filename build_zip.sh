#!/bin/bash

if [ -f entry.zip ]; then
    rm entry.zip
    echo "Removed old zip"
fi

if [ -d .build ]; then
    rm -r .build
    echo "Removed old build directory"
fi

echo "Creating build directory..."
mkdir .build
cp src/*.java .build/

echo "Compiling src files..."
javac .build/*.java

echo "Building zip..."
cd .build && zip ../entry.zip *

echo "done"

