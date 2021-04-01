# Archivos de orientación relativa

Al aceptar la orientación relativa, se crea un archivo con el nombre _\(foto izquierda\) - \(foto derecha\).rel.xml_ en el directorio del proyecto del modelo fotogramétrico.

Este archivo almacena el resultado de la orientación relativa así como las medidas realizadas por el usuario. Si eliminas un archivo de orientación relativa, al volver a cargar el modelo fotogramétrico se indicará \(mediante el botón correspondiente en la barra de herramientas de la ventana fotogramétrica, al no permanecer este pulsado\) que no se ha podido cargar dicha orientación relativa.

Es necesario que finalices los pasos de [Midiendo la orientación relativa manualmente](MidiendoLaOrientacionRelativaManualmente.html) antes de ejecutar los siguientes pasos para comprobar los archivos que se han generado:

1. Abre un **Explorador de archivos** \(puedes hacerlo pulsando la combinación de teclas **Windows + E**\).
2. Localiza la ubicación del proyecto de **Bronchales**.
3. Comprueba que se ha creado el archivo **107-108.rel.xml**.
4. Elimina el archivo **107-108.rel.xml**.
5. Vuelve a Digi3D.NET. Si tenías el modelo fotogramétrico cargado, cierra la ventana fotogramétrica.
6. Vuelve a cargar el modelo 107-108 y comprueba que el botón **R** de la barra de herramientas de la ventana fotogramétrica no está pulsado. Esto es así porque no se ha podido localizar el archivo **107-108.rel.xml**.
7. Cierra la ventana fotogramétrica.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Archivos%20de%20orientacion%20relativa.mp4" %}



