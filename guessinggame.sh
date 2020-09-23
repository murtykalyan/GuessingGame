#!/usr/bin/env bash

function game(){
    ans=$(ls -l |grep "^-"|wc -l)
    echo "Welcome to the GuessingGame"
    n=0
    add=1
    while true;
    do
        echo "Guess the number of files?"
        read guess
        n=`expr $n + $add`
        if [ $guess -gt $ans ]
        then
            echo "Your guess exceeds than the number of files!"
        elif [ $guess -lt $ans ]
        then
            echo "Your guess value is less than the number of files!"
        else
            echo "Hurrayy, Your guess is correct. You took $n times to guess correctly."
        break;
        fi
    done
}

game
