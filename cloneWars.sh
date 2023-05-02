#!/bin/bash

gitUserName=""
gitToken=""
personalShortAns="pe"
personalLongAns="personal"
publicShortAns="pu"
publicLongAns="public"

read -p "Is the clone personal or public? \n The script accepts pe, personal or pu, public: " userInput

if [[ $userInput = $personalShortAns ]] || [[ $userInput = $personalLongAns ]]
then
	read -p "What is the name of your personal repo: " repoName
	git clone https://gitToken@github.com/$gitUserName/$repoName

elif [[ $userInput = $publicShortAns ]] || [[ $userInput = $publicLongAns ]]
then
	read -p "What is the public repo url: " publicUrl
	git clone $publicUrl
fi
