# Orientación interna
<!-- id: orientacion-interna -->

La orientación interna es la que le permite a Digi3D.AI relacionar las coordenadas fiduciales que aparecen en el certificado de calibración de la cámara con las coordenadas píxel de dichas marcas fiduciales en la imagen.

Ya no es habitual el tener que realizar orientaciones internas, pues la inmensa mayoría de imágenes que vas a utilizar son digitales y Digi3D.AI calcula de forma automática las orientaciones internas si la cámara es digital, pero las imágenes del ejemplo **Bronchales** son analógicas, de modo que Digi3D.AI requiere que realicemos una orientación interna pues no sabe cómo se ubicó el negativo en el escáner a la hora de escanear las imágenes.

Para saber si el modelo cargado tiene la orientación interna realizada, abre el menú **Ventana fotogramétrica/Orientaciones**. Las opciones **Orientación interna (izquierda)** y **Orientación interna (derecha)** aparecen marcadas si la imagen correspondiente tiene una orientación interna medida.

Digi3D.AI calcula la orientación interna con una transformación afín, que necesita al menos tres marcas fiduciales medidas que no estén alineadas. El panel **Orientación interna** se describe en la orden [ORI\_INTERNA\_I](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-i.md).

