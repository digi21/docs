# Archivos de orientación interna

Al aceptar la orientación interna se crea un archivo con el mismo nombre que la imagen que acabamos de orientar pero con extensión _.in.xml_ en el directorio de proyecto del modelo fotogramétrico.

Este archivo almacena el resultado de la orientación interna así como las medidas realizadas por el usuario. Si eliminas un archivo de orientación interna, al volver a cargar el modelo fotogramétrico se indicará \(mediante el botón correspondiente en la barra de herramientas de la ventana fotogramétrica, al no permanecer este pulsado\) que no se ha podido cargar dicha orientación interna.

Es necesario que finalices los pasos de [Orientación interna de la cámara derecha](OrientacionInternaDeLaCamaraDerecha.html) antes de ejecutar los siguientes pasos para comprobar los archivos que se han generado:

1. Abre un **Explorador de archivos** \(puedes hacerlo pulsando la combinación de teclas **Windows + E**\).
2. Localiza la ubicación del proyecto de **Bronchales**.
3. Comprueba que se han creado los archivos **107.in.xml** y **108.in.xml**.
4. Elimina el archivo **108.in.xml**.
5. Vuelve a Digi3D.NET. Si tenías el modelo fotogramétrico cargado, cierra la ventana fotogramétrica.
6. Vuelve a cargar el modelo 107-108 y comprueba que el botón **D** de la barra de herramientas de la ventana fotogramétrica no está pulsado. Esto es así porque no se ha podido localizar el archivo **108.in.xml**.
7. Cierra la ventana fotogramétrica.
8. Recupera el archivo eliminado de la papelera de reciclaje.
9. Vuelve a abrir el modelo 107-108 y comprueba que ahora el botón **D** de la barra de herramientas de la ventana fotogramétrica está pulsado.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Archivos%20de%20orientacion%20interna.mp4" %}



