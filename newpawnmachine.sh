read -p "Introduce mombre de la maquina e informacion: " maquina

maquina="- $maquina"

echo "La maquina añadida será: $maquina"

echo "¿De que plataforma es la máquina?"
echo
echo "-----------------"
echo "| 1. HackTheBox |"
echo "| 2. VulnHub    |"
echo "-----------------"
echo
read -p "Escoge una opción: " opcion_commit

echo "Introduce el nombre de la documentación"
echo
echo "---------------"
echo " Ej: Breakout.pdf"
echo "---------------"
echo
read -p "Nombre de la documentación: " documentacion


if [ $opcion_commit -eq 1  ]
then
	mensaje="Nueva máquina de HackTheBox añadida"
	echo "El mensaje del commit será: $mensaje"
	echo "$maquina   ![   ](https://github.com/TheZombrex/machines/blob/main/icons/octicons/Wiki.svg) <a href='https://github.com/TheZombrex/machines/blob/main/docs/htb/$documentacion'>Documentación</a>" >> HTBMachines.md
	cat Header.md > README.md
	cat HTBMachines.md >> README.md
	echo "" >> README.md
	cat VulnHubMachines.md >> README.md

else
	echo "Introduce el enlace a la máquina"
	echo
	echo "-----------------------------------------------------------"
	echo " Ej: https://www.vulnhub.com/entry/empire-breakout,751/"
	echo "---------------------------------------------------------"
	echo
	read -p "Introduce el enlace a la máquina: " enlace

	mensaje="Nueva máquina de VulnHub añadida"
	echo "El mensaje del commit será: $mensaje"
        echo "$maquina   ![   ](https://github.com/TheZombrex/machines/blob/main/icons/octicons/Wiki.svg) <a href='https://github.com/TheZombrex/machines/blob/main/docs/vulnhub/$documentacion'>Documentación</a> ![   ](https://github.com/TheZombrex/machines/blob/main/icons/octicons/link.png) <a href='$enlace'>Máquina</a>" >> VulnHubMachines.md
				cat Header.md > README.md
				cat HTBMachines.md >> README.md
				echo "" >> README.md
        cat VulnHubMachines.md >> README.md

fi

git add -A

git commit -m "$mensaje"

git push -f
