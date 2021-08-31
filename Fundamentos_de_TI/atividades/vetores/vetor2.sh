#!/bin/bash

nomes=("Renan" "Thiago" "Maria Alice")
x=0
while [ $x -ne 3 ]
do
    echo "Oi, eu sou ${nomes[$x]}!"
    x=$(($x+1))
done
