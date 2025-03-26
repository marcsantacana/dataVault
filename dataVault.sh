echo " "
echo "Activitat 3: Script de Còpia de Seguretat	4"
echo " "
echo "Iniciant programa..."
sleep 3
echo " "
		
# Demana a l'usuari els directoris d'origen i de destí
read -p "Introdueix el directori d'origen: " origen
read -p "Introdueix el directori de destí: " desti

# Comprova si els directoris existeixen
if [ ! -d "$origen" ]; then
  echo "El directori d'origen no existeix."
    exit 1
fi

if [ ! -d "$desti" ]; then
	echo "El directori de destí no existeix. Creant-lo..."
	mkdir -p "$desti"
fi

# Nom del fitxer de còpia de seguretat
backup_file="$desti/backup_$(date +%Y%m%d%H%M%S).tar.gz"

# Realitza la còpia de seguretat i la comprimeix
tar -czf - "$origen" | openssl enc -aes-256-cbc -e -out "$backup_file" -k "contrasenya_secreta"

# Comprova si la còpia de seguretat ha estat exitosa
if [ $? -eq 0 ]; then
	echo "Còpia de seguretat realitzada amb èxit: $backup_file"
else
	echo "Hi ha hagut un error en fer la còpia de seguretat."
	exit 1
fi
echo " "
echo "Tancant programa..."
sleep 3
echo " "
