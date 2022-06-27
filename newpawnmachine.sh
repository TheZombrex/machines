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

if [ $opcion_commit -eq 1  ]
then
	mensaje="Nueva máquina de HackTheBox añadida"
else
	mensaje="Nueva máquina de VulnHub añadida"
fi
 
echo "El mensaje del commit será: $mensaje"

echo "$maquina" >> README.md

git add -A 

git commit -m "$mensaje"

git push
