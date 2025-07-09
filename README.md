# dataVault

Este script de Bash realiza una copia de seguridad de un directorio de origen, la comprime y la cifra utilizando AES-256. El archivo de copia de seguridad se guarda en el directorio de destino especificado por el usuario.

## Funcionalidades

El programa realiza las siguientes acciones:

1. **Solicita los directorios de origen y destino**
    - El script solicita al usuario los directorios de origen y destino para realizar la copia de seguridad.

2. **Verifica la existencia de los directorios**
    - El script comprueba si los directorios de origen y destino existen. Si el directorio de destino no existe, lo crea automáticamente.

3. **Realiza y comprime la copia de seguridad**
    - El script realiza una copia de seguridad del directorio de origen y la comprime en un archivo `.tar.gz`.

4. **Cifra la copia de seguridad**
    - El archivo comprimido se cifra utilizando el algoritmo AES-256-CBC, con una clave predefinida (`contrasenya_secreta`).

5. **Verifica el éxito de la operación**
    - El script verifica si la copia de seguridad se realizó correctamente y proporciona un mensaje de éxito o error.

## Uso

1. Clona o descarga el script en tu máquina.
2. Asegúrate de tener permisos de ejecución:
    ```bash
    chmod +x dataVault.sh
    ```
3. Ejecuta el script:
    ```bash
    ./dataVault.sh
    ```
4. Introduce los directorios de origen y destino cuando se te solicite.

## Requisitos

- El script utiliza los comandos `tar`, `openssl` y `mkdir`. Asegúrate de que estos comandos estén disponibles en tu sistema.
- El script cifra la copia de seguridad con AES-256 utilizando una clave predefinida. Puedes modificar la clave de cifrado directamente en el script si lo deseas

## Notas

- El script crea un archivo de copia de seguridad con un nombre que incluye la fecha y hora actuales, lo que asegura que cada copia sea única.
- Si el directorio de destino no existe, el script lo crea automáticamente.
- La copia de seguridad es cifrada utilizando una clave fija en el script. Considera cambiarla por una más segura o hacerla configurable si lo prefieres.
- Si la operación de copia de seguridad falla, se mostrará un mensaje de error y el script terminará.

## Licencia

Este proyecto está bajo la Licencia MIT.
