# Sensores fotogramétricos
<!-- id: sensores-fotogrametricos -->

![Pestaña Sensores fotogramétricos del cuadro de diálogo Nuevo proyecto](../../../../images/nuevo-proyecto-sensores-fotogrametricos.png)

Esta pestaña del cuadro de diálogo [Nuevo proyecto](README.md) abre un modelo fotogramétrico en una ventana fotogramétrica. El modelo se guarda en un archivo de modelo (`.d3d`), que indica el sensor y los archivos del modelo (imágenes, orientaciones, cámara…).

## Campos

* **Cargar un archivo de modelo fotogramétrico existente**: abre un archivo `.d3d` creado previamente.
  * **Lista de archivos**: los últimos diez archivos de modelo abiertos o creados con **OK** en esta pestaña. Los archivos que ya no existen no aparecen.
  * **...**: selecciona otro archivo `.d3d`. El cuadro de diálogo de selección se abre en la última carpeta utilizada en Digi3D.AI. Esa carpeta la actualizan este botón, el campo **Directorio de trabajo** y otros cuadros de diálogo de selección de archivos del programa.
  * **Rejilla de propiedades**: muestra, sin permitir modificarlas, las propiedades del archivo seleccionado: el tipo de sensor, el directorio de trabajo y los parámetros del sensor. Así se puede comprobar qué va a cargar el archivo antes de abrirlo. Si el archivo no se puede leer, la rejilla muestra el motivo. Con el sensor WMS solo se muestran el tipo de sensor y el directorio.
* **Crear un archivo de modelo fotogramétrico nuevo**: crea un archivo `.d3d` y lo abre.
  * **Directorio de trabajo**: carpeta en la que se crea el archivo del modelo. Al abrir el cuadro de diálogo muestra la carpeta del último modelo creado.
  * **Tipo de sensor**: el sensor del modelo.
  * **Propiedades del sensor**: los parámetros del sensor elegido. Cada sensor pide los suyos; por ejemplo, el sensor Cónico pide el archivo de aerotriangulación y las imágenes izquierda y derecha.
* **OK**: abre el archivo seleccionado, o crea el archivo nuevo con el nombre del modelo que proporciona el sensor y lo abre. Si en **Crear un archivo de modelo fotogramétrico nuevo** no se ha elegido ningún **Tipo de sensor**, no se crea ningún archivo y se abre el archivo seleccionado en la lista de **Cargar un archivo de modelo fotogramétrico existente**.
* **Cancel**: cierra el cuadro de diálogo sin abrir nada.
