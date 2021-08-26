#!/bin/bash 
var=$(ls -l $1)
permR=${var:7:1}
if [ $permR == 'r' ]
then
	echo "tem permissão para ler"
else
	echo "n tem permisão para ler"
fi
permW=${var:8:1}
if [ $permW == 'w' ]
then
	echo "tem permissão para escrever"
else
	echo "n tem permissão para escrever"
fi
permX=${var:9:1}
if [ $permX == 'x' ]
then
	echo "tem permissão para executar"
else
	echo "n tem permissão para executar"
fi

