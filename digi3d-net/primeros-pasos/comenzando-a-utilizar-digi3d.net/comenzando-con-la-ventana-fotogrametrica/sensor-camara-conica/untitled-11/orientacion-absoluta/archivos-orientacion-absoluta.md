# Archivos De Orientacion Absoluta

Al aceptar la orientación absoluta, se crea un archivo con el nombre _\(foto izquierda\) - \(foto derecha\).absl.xml_ en el directorio del proyecto del modelo fotogramétrico.

Este archivo almacena el resultado de la orientación absoluta así como las medidas realizadas por el usuario. Si eliminas un archivo de orientación absoluta, al volver a cargar el modelo fotogramétrico se indicará \(mediante el botón correspondiente en la barra de herramientas de la ventana fotogramétrica, al no permanecer este pulsado\) que no se ha podido cargar dicha orientación absoluta.

También se crea una carpeta denominada **Aerotriangulación** donde se han creado dos archivos con extensión ._f_ que son archivos en formato [PatB](archivos-orientacion-absoluta.md) y contienen las fotocoordenadas de los puntos que hemos medido. Verás que hay uno por cada imagen. Estos archivos se utilizan para mostrar en la ventana fotogramétrica los puntos medidos y sirven a la orientación absoluta para saber si un determinado punto ya se midió en una foto y en caso afirmativo, la posición dentro de esa foto donde está el punto.

También se crea una carpeta denominada **Instantáneas** con una captura de pantalla de cada uno de los puntos que has medido. Se crean dos instantáneas por cada punto, una de cada imagen. Puedes crear un efecto de _stop motion_ y visualizarlas en 2.5 dimensiones si las cargas y cambias rápidamente de una a otra.

Es necesario que finalices los pasos de [Midiendo la primera orientación absoluta de un proyecto](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/primeros-pasos/comenzando-a-utilizar-digi3d.net/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/untitled-11/orientacion-absoluta/MidiendoLaPrimeraOrientacionAbsolutaDeUnProyecto.html) antes de ejecutar los siguientes pasos para comprobar los archivos que se han generado:

1. Abre un **Explorador de archivos** \(puedes hacerlo pulsando la combinación de teclas **Windows + E**\).
2. Localiza la ubicación del proyecto de **Bronchales**.
3. Comprueba que se ha creado el archivo **107-108.abs.xml**.
4. Comprueba que se ha creado la carpeta **Aerotriangulación** y que contiene dos archivos: **107.f** y **108.f**.
5. Comprueba que se ha creado la carpeta **Instantáneas** y que contiene las instantáneas de los puntos medidos.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Archivos%20de%20orientacion%20absoluta.mp4" caption="" %}

