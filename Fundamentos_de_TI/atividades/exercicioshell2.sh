#!/bin/bash
if [ $# -eq 0 ]
    then
    echo "Digite um número:"
    read x
    echo "Digite outro número:"
    read y
    if [ $x -eq $y ]
    then
        echo "$x e $y são iguais."
    elif [ $x -gt $y ]
    then
        echo "$x é maior que $y."
    elif [ $x -lt $y ]
    then
        echo "$x é menor que $y."
    fi
else
    echo "Parâmetros insuficientes."
fi
