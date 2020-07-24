#!/usr/bin/env bash
#File : guessinggame.sh

count=$(ls -1 | wc -l)

function correct_guess {        # One function
	if [[ $1 -lt $count ]]          # One if statement 
	then
		echo "Too low!"
	elif [[ $1 -gt $count ]]
	then
		echo "Too high!"
	else
		echo ""
		echo "Congratualations! You guessed right!"
	fi
}

while [[ $count -ne $response ]]    # One loop
do
	echo "How many files are there in this directory :"
	read response
	# echo "You entered: $response"
	echo $(correct_guess $response $count)
	echo ""
done


