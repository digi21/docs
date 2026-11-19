# Panel Proyecto
<!-- id: panel-proyecto -->

[Paneles de la aplicación](/mdtopx/introduccion/paneles-de-la-aplicacion/)

Este panel muestra los proyectos abiertos y los archivos que conforman cada uno de ellos.

Cada proyecto abierto es una rama del árbol, en el orden en que se abrieron. Dentro de cada proyecto, los archivos vendrán agrupados en función de su naturaleza:

* TIN
* DEM
* Dibujos
* Imágenes
* Viales

El orden en que se muestran los archivos será el de su inserción en el proyecto. Si se desea modificar este orden, se puede utilizar la herramienta **Ordenar ficheros** de la cinta de herramienta [Editar Proyecto](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-proyecto/editar-proyecto.md).

La barra de herramientas contiene las siguientes posibilidades:

* **Insertar elemento**: Pulsando sobre este icono, se podrán insertar elementos nuevos. Estos elementos se mostrarán agrupados según su tipología. Si el archivo es una nube de puntos, al insertar un archivo nuevo se presentará un [cuadro de diálogo](../../otras-herramientas/division-por-hojas.md) que da la posibilidad de una subdivisión previa.
* **Eliminar elemento**: Pulsado este icono se podrán eliminar los elementos seleccionados.
* **Visibilidad**: Pulsando este icono se podrán visualizar los elementos seleccionados, sobre la ventana del documento del proyecto. Para que se visualicen, además deberán estar cargados. Si un elemento es visible, su icono contendrá una "bombilla".
* **Cargar elemento**: Pulsando este icono se leerán los elementos seleccionados, teniéndolos activos en memoria. Que el archivo este cargado no significa que se visualice. Si el elemento está cargado, su nombre aparecerá en negrita.
* **Abrir elemento**: Pulsando este icono se podrá abrir el elemento seleccionado en una nueva ventana, independiente del proyecto.
* [**Información del elemento**](../../otras-herramientas/editar-elementos/informacion-de-elemento-de-proyecto.md): Pulsando icono se mostrará información del elemento actualmente seleccionado.

Además, pulsando con el botón derecho del ratón sobre cada elemento se dan las opciones de hacer visible, cargar, abrir, eliminar o mostrar información.

Mediante las teclas \[CTRL] y \[MAY] se pueden seleccionar varios elementos de la lista.

## Varios proyectos abiertos

* El **proyecto actual** es el que tiene su nombre en negrita. Es aquel sobre el que actúan la barra de herramientas del panel y las herramientas de la cinta.
* Al pulsar sobre un archivo de otro proyecto, ese proyecto pasa a ser el actual y se quita la selección de los demás. La selección no mezcla archivos de proyectos distintos.
* Al activar la ventana de un proyecto (por ejemplo, desde su pestaña), ese proyecto pasa a ser el actual y se marca de nuevo su selección.
* Al cerrar un proyecto, su rama desaparece del árbol. Sin ningún proyecto abierto, el árbol queda desactivado.
* El árbol conserva los grupos desplegados de cada proyecto cuando su contenido cambia (al insertar o eliminar archivos).

## El panel y el documento activo

* Al pulsar sobre el panel (sobre un archivo, sobre un hueco del árbol o sobre la pestaña del panel), se activa el documento del proyecto, aunque la selección no cambie. El foco del teclado se queda en el panel, para seguir usando las flechas, \[SUPR] o \[INSERT].
* Al abrir un archivo con doble clic, su ventana se activa y recibe el foco, de modo que se puede usar directamente la herramienta seleccionada.
* Si una herramienta lanzada desde el proyecto genera un documento nuevo (por ejemplo, un dibujo), ese documento pasa a ser el activo y recibe el foco, y se muestra el panel correspondiente a su tipo (por ejemplo, el [panel LiDAR](panel-lidar.md)).
* El archivo del **documento activo** aparece resaltado en azul, con un fondo azul claro, en todos los proyectos que lo contienen. Si está seleccionado, se muestra con los colores de la selección.

## Arrastrar archivos al panel

Los archivos que se arrastran desde el Explorador de Windows y se sueltan en el panel se insertan en el proyecto de la rama sobre la que se sueltan (si se sueltan fuera de las ramas, en el proyecto actual), igual que con **Insertar elemento**. Si no hay ningún proyecto abierto, los archivos se abren como documentos.
