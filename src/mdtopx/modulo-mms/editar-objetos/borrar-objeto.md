# Borrar objeto
<!-- id: borrar-objeto -->

[Ficha de herramientas MMS Editar objetos](./)

Borra uno o varios objetos de la nube de puntos junto con sus puntos. Se seleccionan en la vista igual que las entidades con la herramienta **Borrar**: primero se marcan los objetos y después se confirma el borrado.

La herramienta solo está activa en las nubes de puntos que tienen objetos visibles. Los objetos se muestran con [**Mostrar**](encender-apagar-objetos.md).

## Marcar los objetos

* **Clic** sobre un objeto, en uno de sus puntos o en su contorno: marca ese objeto.
* **Arrastrar una ventana**: marca los objetos que quedan enteros dentro de la ventana. Los que sobresalen no se marcan.
* **Mayús + clic** o **Mayús + ventana**: añade objetos a los ya marcados o quita los que ya estaban marcados.
* **Botón derecho** después de pinchar un objeto: lo sustituye por el que está detrás, en esas mismas coordenadas. Cada pulsación busca el siguiente. Si no hay más objetos detrás, suena un aviso y el objeto deja de estar marcado.

Los puntos de los objetos marcados quedan seleccionados en la vista.

## Borrar los objetos marcados

* **Clic** (sin Mayús): borra los objetos marcados y sus puntos.
* **Supr**: también los borra.
* **Botón derecho** sin objeto pinchado, o **Esc**: cancela la ventana y quita las marcas.

El borrado se puede deshacer, y al deshacer se recuperan los objetos y sus puntos.

## Objetos que se quedan sin puntos

Los objetos también desaparecen cuando se quedan sin puntos por otras herramientas: al borrar con **Supr** todos los puntos de un objeto, o al borrar toda su clase con [Borrar según clasificación](../../modulo-laser/segun-clasificacion-lidar/borrar-segun-clasificacion.md) o con **Borrar clases** del [Panel LiDAR](../../introduccion/paneles-de-la-aplicacion/panel-lidar.md). Cada objeto tiene puntos de una sola clase, así que al borrar una clase entera desaparecen todos sus objetos.

Vea también:

* [Información de objeto](informacion-objeto-nube.md)
* [Lista de objetos](lista-de-objetos.md)
