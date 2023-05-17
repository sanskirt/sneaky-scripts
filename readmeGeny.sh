#!/bin/bash

read -p "Number of questions: " numQuestions

cp template.md README.md

for ((i=1; i<=$numQuestions; i++)); do
	echo -e "\n## Question $i:\nFiles: \n***" >> README.md
done

echo "Completed, goodluck!"
