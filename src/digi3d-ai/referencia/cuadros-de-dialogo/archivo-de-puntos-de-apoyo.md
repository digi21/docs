# Archivo de puntos de apoyo
<!-- id: archivo-de-puntos-de-apoyo -->

![Cuadro de diálogo Archivo de puntos de apoyo](../../../images/archivo-de-puntos-de-apoyo.png)

Este cuadro de diálogo indica el archivo con las coordenadas terreno de los puntos de apoyo y su sistema de referencia de coordenadas. Lo abren la orden [ORI\_ABSOLUTA](../ventana-fotogrametrica/ordenes/o/ori-absoluta.md), la medida de aerotriangulación ([AEROTRI](../ventana-fotogrametrica/ordenes/a/aerotri.md)) y la orientación de los sensores monoscópicos:

* al empezar, si el modelo no tiene archivo de puntos de apoyo o no se puede leer;
* al pulsar el botón para cambiar el archivo de puntos de apoyo en el panel de la orientación.

## Campos

* **Archivo de puntos de apoyo**: ruta del archivo. El botón **...** permite buscarlo entre los archivos `.xyz`, `.pnt`, `.ctl` y `.txt`.
* **Sistema de referencia de coordenadas**: el sistema en el que están las coordenadas del archivo. El botón **...** abre el cuadro de diálogo de selección del sistema de referencia.
* **Aceptar**: utiliza el archivo y el sistema indicados.
* **Cancelar**: cierra el cuadro de diálogo. Si se abrió al empezar la orientación, la orden termina.
