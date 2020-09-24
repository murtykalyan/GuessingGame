#!/usr/bin/env bash

function game(){
    ans=$(ls -la |grep "^-"|wc -l)
    echo "Welcome to the GuessingGame"
    n=0
    add=1
    while true;
    do
        echo "Guess the number of files?"
        read guess
        n=`expr $n + $add`
        if echo $guess | egrep -q '^[0-9]+$'; then
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
        else
            echo "Please enter number, Wrong format detected"
        fi
    done
}

game
