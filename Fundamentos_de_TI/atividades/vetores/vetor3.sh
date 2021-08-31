#!/bin/bash

i=0
x=0
while [ $x -ne 1 ]
do
    echo "Digite um nome:"
    read nome
    if [ $nome = "parar" ]
    then
        x=1
        echo "\nNomes digitados: ${vetor[@]}\n${#vetor[@]} nomes foram digitados."
    else
        x=2
        echo ""
    fi
    vetor[$i]=$nome
    i=$(($i+1))
done
