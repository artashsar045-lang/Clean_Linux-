#!/bin/bash

# Progress bar function


echo "Cleaning Linux System... "


sudo apt clean 
sudo apt autoclean 
sudo apt autoremove 


sudo rm -rf /tmp/* 
rm -rf ~/.cache/* 
rm -rf ~/.local/share/Trash/* 

echo "Cleaning system logs older 14 days..."
sudo journalctl --vacuum-time=14d > /dev/null 2>&1


echo "Removing empty files older than 3 days..."
find /tmp -type f -empty -mtime +3 -delete 2>/dev/null
find ~/.cache -type f -empty -mtime +3 -delete 2>/dev/null
find ~/.local/share/Trash -type f -empty -mtime +3 -delete 2>/dev/null

echo "Finish"

