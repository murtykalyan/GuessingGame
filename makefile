#/usr/bin/env bash

README.md: guessinggame.sh
	touch README.md
	echo "# GuessingGame" > README.md
	echo "The date and time at which makefile was run is $$(date)" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
