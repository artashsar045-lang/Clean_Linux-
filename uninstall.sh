!/bin/bash

echo "Unistall clean_linux app"

delete="/home/Artash/clean_linux"

if [ -f $delete ]; then
	sudo rm $delete
	echo "Clean_linux deleted"
else
	echo "File not found"
fi

desktop="$HOME/Desktop/clean_linux.desktop"

if [ -f "$desktop" ]; then
    rm "$desktop"
    echo "Deleted desktop clean_linux"
else
    echo "File not found"
fi