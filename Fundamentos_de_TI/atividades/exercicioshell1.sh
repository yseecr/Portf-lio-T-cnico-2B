#!/bin/bash
if [ $# -eq 0 ]
then
	echo "Digite um número inteiro:"
	read x
	if [ $# -eq 0 ];then
		echo "vazio"
	elif [ $x-gt 0];then
		echo "positivo"
	elif [ $x -lt 0 ];then
		echo "negativo"
	elif [$x -eq 0 ];then
		echo "nulo"
	fi
elif [ $3 -eq 1 ]
then
	if [ $1 -gt 0 ];then
		echo "positivo"
	elif [ $1 -lt 0 ];then
		echo "negativo"
	elif [ $1 -eq 0 ];then
		echo "nulo"
	fi
else
	echo "parametros insuficientes"
fi

