#!/bin/bash

clear

option=0

while [ $option -ne 3 ]
do
	echo "Escolha uma opção: "
	echo ""
	echo "1) Vim "
	echo "2) Nano "
	echo "3) Sair"
	echo ""
	echo -e "\e[31m---------------------------------------\e[0m"
	echo ""
	read option

	case $option in
		1)
			echo ""
			echo "Vim é um editor de texto com base no antigo vi, lançado em 1991. Basicamente é um vi melhorado."
			echo ""
			echo "Deseja executar o vim? (s/n)"
			echo ""
			read resposta0
			[ "$resposta0" = "s" ] || [ "$resposta0" = "S" ] && vim || { echo ""; echo "Ok, o vim não será executado!"; }
			;;
		2)
			echo ""
			echo "Nano é um editor de texto escrito em C, lançado em 1999."
			echo ""
			echo "Deseja executar o nano? (s/n)"
			echo ""
			read resposta1
			[ "$resposta1" = "s" ] || [ "$resposta1" = "S" ] && nano || { echo ""; echo "Ok, o vim não será executado!"; }
			;;
		3)
			echo ""
			echo "Você saiu do programa!"
			exit
			;;

		*)	
			echo ""
			echo "Opção inválida!"
			;;
	esac
echo ""
echo "Pressione qualquer tecla para continuar..."
read
clear
done
