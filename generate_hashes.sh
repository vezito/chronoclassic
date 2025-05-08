#!/bin/bash

rm -f hashes.txt

for i in data/*.kom
do
    if test -f "$i"
    then
	sha256sum "$i"
        sha256sum "$i" | cut -d' ' -f1 >> hashes.txt
    fi
done

sha256sum banner.png
sha256sum banner.png | cut -d' ' -f1 >> hashes.txt

sha256sum data/start.bat
sha256sum data/start.bat | cut -d' ' -f1 >> hashes.txt
