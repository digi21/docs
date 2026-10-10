# Sensores fotogramétricos
<!-- id: sensores-fotogrametricos -->

![Pestaña Sensores fotogramétricos del cuadro de diálogo Nuevo proyecto](../../../../images/nuevo-proyecto-sensores-fotogrametricos.png)

Esta pestaña del cuadro de diálogo [Nuevo proyecto](README.md) abre un modelo fotogramétrico en una ventana fotogramétrica. El modelo se guarda en un archivo de modelo (`.d3d`), que indica el sensor y los archivos del modelo (imágenes, orientaciones, cámara…).

## Campos

* **Cargar un archivo de modelo fotogramétrico existente**: abre un archivo `.d3d` creado previamente.
  * **Lista de archivos**: los últimos diez archivos de modelo abiertos o creados con **Aceptar** en esta pestaña. Los archivos que ya no existen no aparecen.
  * **...**: selecciona otro archivo `.d3d`, lo añade a la lista si no estaba y lo selecciona. El cuadro de diálogo de selección se abre en la última carpeta utilizada en Digi3D.AI. Esa carpeta la actualizan este botón, el campo **Directorio de trabajo** y otros cuadros de diálogo de selección de archivos del programa.
  * **Rejilla de propiedades**: muestra, sin permitir modificarlas, las propiedades del archivo seleccionado: el tipo de sensor, el directorio de trabajo y los parámetros del sensor. Así se puede comprobar qué va a cargar el archivo antes de abrirlo. Si el archivo no se puede leer, la rejilla muestra el motivo. Con el sensor [Web Map Service](../../ventana-fotogrametrica/sensores/wms.md), la rejilla muestra los valores guardados en el archivo sin conectar con el servidor.
  * **Crear uno nuevo a partir de este**: prepara un modelo nuevo con los datos del archivo seleccionado. Solo está disponible cuando la rejilla muestra las propiedades de un archivo que se ha podido leer. Al pulsarlo, Digi3D.AI marca **Crear un archivo de modelo fotogramétrico nuevo** y rellena **Directorio de trabajo**, **Tipo de sensor** y las propiedades del sensor con los valores del archivo, que se pueden modificar. Por ejemplo, para crear el modelo `109-110` a partir del modelo `108-109` del sensor Cónico, basta con cambiar las imágenes: el archivo de aerotriangulación y el directorio de trabajo se conservan. Se copian los datos que el sensor guarda en el archivo de modelo, también los que la rejilla no muestra, como los archivos de cámara del sensor Cónico. No se copian la última posición del cursor, el factor de escala ni los giros aplicados a las imágenes.
* **Crear un archivo de modelo fotogramétrico nuevo**: crea un archivo `.d3d` y lo abre.
  * **Directorio de trabajo**: carpeta en la que se crea el archivo del modelo. Al abrir el cuadro de diálogo muestra la carpeta del último modelo creado.
  * **Tipo de sensor**: el sensor del modelo.
  * **Propiedades del sensor**: los parámetros del sensor elegido. Cada sensor pide los suyos; por ejemplo, el sensor Cónico pide el archivo de aerotriangulación y las imágenes izquierda y derecha.
* **Aceptar**: abre el archivo seleccionado, o crea el archivo nuevo con el nombre del modelo que proporciona el sensor y lo abre. Si en el directorio de trabajo ya existe un archivo con ese nombre, Digi3D.AI escribe en él los datos del sensor sin pedir confirmación. Si el modelo nuevo se ha preparado con **Crear uno nuevo a partir de este** y su archivo es el mismo que el del modelo copiado (por ejemplo, porque no se ha cambiado ningún dato), Digi3D.AI muestra un aviso y el cuadro de diálogo sigue abierto. Si en **Crear un archivo de modelo fotogramétrico nuevo** no se ha elegido ningún **Tipo de sensor**, no se crea ningún archivo y se abre el archivo seleccionado en la lista de **Cargar un archivo de modelo fotogramétrico existente**. Con el sensor Web Map Service, si no se ha elegido una **Capa**, Digi3D.AI muestra el mensaje «Elige una capa del servidor WMS.», selecciona la propiedad **Capa** y el cuadro de diálogo sigue abierto.
* **Cancelar**: cierra el cuadro de diálogo sin abrir nada.
