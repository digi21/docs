# Archivos de orientación absoluta
<!-- id: archivos-orientacion-absoluta -->

Al aceptar la orientación absoluta, se crea un archivo con el nombre _\(foto izquierda\) - \(foto derecha\).absl.xml_ en el directorio del proyecto del modelo fotogramétrico.

El archivo de orientación absoluta almacena el resultado de la orientación absoluta así como las medidas realizadas por el usuario. Si eliminas un archivo de orientación absoluta, al volver a cargar el modelo fotogramétrico el botón correspondiente de la barra de herramientas de la ventana fotogramétrica aparecerá sin pulsar \(lo que indica que no se ha podido cargar la orientación absoluta\).

Digi3D.AI también crea una carpeta denominada **Aerotriangulación** con dos archivos de extensión ._f_ en formato [PatB](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/camara-conica/extensiones/patb.md) que contienen las fotocoordenadas de los puntos que has medido. Digi3D.AI crea un archivo ._f_ por cada imagen y utiliza los archivos ._f_ para mostrar en la ventana fotogramétrica los puntos medidos y para determinar durante la orientación absoluta si un punto ya se midió en una foto y, en caso afirmativo, en qué posición de la foto se midió.

También se crea una carpeta denominada **Instantáneas** con una captura de pantalla de cada uno de los puntos que has medido. Se crean dos instantáneas por cada punto, una de cada imagen. Puedes crear un efecto de _stop motion_ y visualizarlas en 2.5 dimensiones si las cargas y cambias rápidamente de una a otra.

Es necesario que finalices los pasos de [Midiendo la primera orientación absoluta de un proyecto](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-absoluta/midiendo-primera-orientacion-absoluta-proyecto.md) antes de ejecutar los siguientes pasos para comprobar los archivos que se han generado:

1. Abre un **Explorador de archivos** \(puedes hacerlo pulsando la combinación de teclas **Windows + E**\).
2. Localiza la ubicación del proyecto de **Bronchales**.
3. Comprueba que se ha creado el archivo **107-108.abs.xml**.
4. Comprueba que se ha creado la carpeta **Aerotriangulación** y que contiene dos archivos: **107.f** y **108.f**.
5. Comprueba que se ha creado la carpeta **Instantáneas** y que contiene las instantáneas de los puntos medidos.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Archivos%20de%20orientacion%20absoluta.mp4" caption="" type="video/mp4"></video>

