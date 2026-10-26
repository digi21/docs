# Orientación interna
<!-- id: orientacion-interna -->

La orientación interna es la que le permite a Digi3D.AI relacionar las coordenadas fiduciales que aparecen en el certificado de calibración de la cámara con las coordenadas píxel de dichas marcas fiduciales en la imagen.

Digi3D.AI calcula automáticamente las orientaciones internas si la cámara es digital. Las imágenes del ejemplo **Bronchales** son analógicas, por lo que debes realizar una orientación interna: Digi3D.AI no dispone de información sobre la posición del negativo en el escáner durante el escaneo.

Para saber si el modelo cargado tiene la orientación interna realizada, abre el menú **Ventana fotogramétrica**. Las opciones **Orientación interna (izquierda)** y **Orientación interna (derecha)** aparecen marcadas si la imagen correspondiente tiene una orientación interna medida.

Digi3D.AI calcula la orientación interna con una transformación afín, que necesita al menos tres marcas fiduciales medidas que no estén alineadas. El panel **Orientación interna** se describe en la orden [ORI\_INTERNA\_I](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-i.md).

