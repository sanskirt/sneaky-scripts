#!/bin/bash

dir="/home/anricht/TrashCan"

size=$(du -sh "$dir" | awk '{print $1}')

read -p "Which file should be trashed: " inputFile

mv $inputFile /home/anricht/TrashCan

echo "Success, trash can stats: $size / 50gb "
