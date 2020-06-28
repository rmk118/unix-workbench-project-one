README.md: guessinggame.sh
	echo "Number of lines in the guessinggame.sh file: " > README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "Date and time at which make was run:" >> README.md
	date >> README.md
