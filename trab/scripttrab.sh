#!/bin/bash

option=5

while [ $option != 0 ]

do

echo "Escolha uma opcao:"

echo "1 - Listar Conteúdo da pasta atual

      2 - Ver conteúdo de um arquivo

      3 - Testar se uma URL está no ar

      0 - Sair"



read option



if [ $option -eq 1 ]; 

then

	clear

	ls

fi



if [ $option -eq 2 ]; 

then

	clear

	echo "informe o caminho do arquivo: "

	read arq

	cat $arq

fi



if [ $option -eq 3 ]; 

then

	clear

	echo "informe a url: "	

	read url

	ping -q -c 5 $url

	if [ $? -eq 0 ]; then

		

		echo "a URL $URL está no ar"

		echo " "

		echo " "

	

	else

		echo "a URL $URL não está no ar"

		echo " "

		echo " "

	fi 

fi

done
