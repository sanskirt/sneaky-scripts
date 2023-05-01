#!/bin/bash

read -p "Number of questions: " numQuestions

cp template.md readme.md

for ((i=1; i<=$numQuestions; i++)); do
	echo -e "\n## Question $i:\nFiles: \n***" >> readme.md
done

echo "Completed, goodluck!"
