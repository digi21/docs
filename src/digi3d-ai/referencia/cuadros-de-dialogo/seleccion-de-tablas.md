# Selección de tablas
<!-- id: seleccion-de-tablas -->

![Cuadro de diálogo Selección de tablas](../../../images/seleccion-de-tablas.png)

Digi3D.AI muestra este cuadro de diálogo al abrir un archivo o una base de datos con varias capas o tablas de geometrías, si está activada la opción de preguntar por las capas a cargar de ese formato. Por ejemplo, la opción [Preguntar por capas al cargar](configuracion/geopackage/preguntar-por-capas-al-cargar.md) de GeoPackage.

## Campos

* **Lista de capas**: las capas del archivo, con el nombre de la capa y su número de entidades. Marca las capas que quieres abrir. Al abrir el cuadro de diálogo, todas las capas están marcadas. El nombre se muestra como *esquema.capa*; en los formatos sin esquemas, el esquema está vacío y el nombre empieza por un punto.
* **Todas** y **Ninguna**: marcan o desmarcan todas las capas.
* **Guardar**: guarda la lista de capas marcadas. Hay una sola lista guardada para todos los formatos: guardar en un formato sustituye la lista guardada en otro. Con **Esquemas** marcado, se guardan los nombres de los esquemas.
* **Cargar**: marca las capas guardadas con **Guardar** que existan en la lista y desmarca las demás. Así se repite la misma selección en otro archivo con las mismas capas. Con **Esquemas** marcado, compara la lista guardada con los nombres de los esquemas.
* **Esquemas**: muestra un elemento por esquema, con el total de entidades de sus capas, en lugar de una línea por capa. Marcar un esquema abre todas sus capas. Al marcar o desmarcar esta opción, la lista se vuelve a rellenar y todos sus elementos quedan marcados.
* **Aceptar**: abre las capas marcadas.

El cuadro de diálogo no tiene botón **Cancelar**. Pulsa **Esc** para cerrarlo sin aceptar. El efecto depende del formato:

* SHP y GeoPackage: no se carga ninguna capa.
* PostGIS: no se carga ninguna tabla.
* Geomedia: Digi3D.AI muestra el error «No se puede cargar el archivo si no se selecciona al menos una capa.».
