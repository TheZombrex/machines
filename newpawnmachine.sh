read -p "Introduce mombre de la maquina e informacion: " maquina

echo "La maquina añadida será: $maquina"

read -p "Añade un commit al archivo: " mensaje 
echo "El mensaje del commit será: $mensaje"

echo "$maquina" >> README.md

git add -A machines/

git commit -m "$mensaje"

git push
