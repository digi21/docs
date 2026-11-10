# Juntar nubes
<!-- id: juntar-nubes -->

[Generar Proyecto](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-proyecto/generar-proyecto.md)

Esta herramienta une en un solo fichero varias nubes de puntos de un proyecto. Las nubes pueden ser LAS, LAZ o E57, y el resultado se guarda en LAS, LAZ o E57, sea cual sea el formato de las nubes de partida.

Las nubes no se cargan en memoria: se leen y se escriben por bloques, así que se pueden unir nubes muy grandes (un E57 de decenas de GB) sin que haga falta memoria para tenerlas enteras. El proyecto no cambia: el fichero unido solo se escribe en disco, y si se quiere trabajar con él se añade al proyecto o se abre aparte.

La herramienta está en la ficha [Proyecto](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-proyecto/), en el grupo **Generar**. Solo se activa si el proyecto tiene alguna nube LAS, LAZ o E57.

## Cuadro de diálogo

* **Nubes que se unen**: la lista de las nubes LAS, LAZ y E57 del proyecto, con el número de puntos de cada una (el de su cabecera). Se unen las que estén marcadas, en el orden de la lista. Si hay archivos seleccionados en el proyecto, salen marcados solo esos; si no, salen todos. Los botones de debajo de la lista desmarcan o marcan todas.
* **Formato de salida**: LAS, LAZ (LAS comprimido) o E57. Al cambiarlo, cambia la extensión del fichero de salida. Si se escribe el nombre con una de esas extensiones, al aceptar manda la extensión escrita; con cualquier otra extensión, o sin ella, se añade la del formato elegido.
* **Fichero de salida**: el nombre del fichero unido. Se propone *Nube unida de &lt;proyecto&gt;.las* en la carpeta del proyecto. Un nombre sin carpeta se guarda en la carpeta del proyecto. Con el botón **...** se elige el fichero en un cuadro de diálogo de Windows.

Al aceptar:

* El fichero de salida no puede ser una de las nubes que se unen: el cuadro de diálogo pide otro nombre.
* Si el fichero de salida ya existe, se pregunta si se quiere reemplazar.

## Qué se guarda

Cada punto conserva sus coordenadas, su clasificación, su intensidad, su color, su tiempo GPS y su número de retorno (y el número de retornos de su pulso). El fichero de salida guarda el color, la intensidad y el tiempo GPS si los tiene alguna de las nubes de partida.

En LAS y LAZ, las coordenadas se guardan con los decimales de las preferencias de MDTopX (los mismos que usa Preprocesar LiDAR). Si las coordenadas de las nubes no caben en un LAS con esos decimales, la unión no empieza y se avisa: hay que usar menos decimales.

## Durante la unión

La barra de progreso avanza con los puntos escritos, y la unión se puede cancelar. Si se cancela o algo falla (una nube que no se puede leer, el disco lleno...), no queda fichero de salida a medias: se borra lo escrito.

En la ventana de información se ve el resultado: el fichero escrito y su número de puntos, o el motivo por el que no se ha podido unir. Si la lectura de una nube se corta antes del final (un fichero dañado), la unión sigue con las demás y se avisa de que de esa nube faltan puntos.

Vea también:

* [Herramientas Proyectos](README.md)
* [Proyectos de MDTopX](../operaciones-con-archivos/proyectos-de-mdtopx.md)
