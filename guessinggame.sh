#Guessing Game
Echo "How many files are in the current directory?" 

read -p 'Enter a guess: ' guess

numlines=$(ls | wc -l)

function guessNum {
	if [[ $2 -gt $1 ]]
	then
		echo "Your guess was too high"
	else
		echo "Your guess was too low"
	fi
	read -p "Please enter a new guess: " newguess
	let guess=$newguess
}

while [[ $guess -ne $numlines ]]
do
        guessNum $numlines $guess
done

echo "Congratulations! You guessed correctly!"
