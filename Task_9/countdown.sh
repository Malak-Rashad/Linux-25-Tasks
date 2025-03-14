#!/usr/bin/bash
function countdown(){
    num=$1
    while [ $num -ge 0 ]
    do
    echo $num
    sleep 1
    (( num-- ))
    done
    echo "Time's up!"
}
read -p "Enter a starting number: " start
countdown $start
