# Selección del sistema de coordenadas

El botón **…** de **Sistema de coordenadas origen** o de **Sistema de coordenadas destino** abre el cuadro **Seleccionar sistema de referencia de coordenadas**.

El cuadro tiene tres zonas:

* A la izquierda, la lista de categorías.
* A la derecha, la zona de selección de la categoría activa.
* Debajo, el panel de detalles y los botones **Copiar WKT**, **Exportar .prj…** y **Memorizar**.

Para seleccionar un sistema, elígelo y pulsa **Seleccionar**, o haz doble clic sobre él. El botón **Seleccionar** solo se activa cuando hay un sistema válido elegido. **Cancelar** cierra el cuadro sin cambiar el sistema.

Al volver a abrir el cuadro, el programa muestra la categoría y las opciones con las que se seleccionó el sistema actual.

## Categorías

| Categoría | Contenido |
|---|---|
| Geográfico 2D | Sistemas geográficos de dos dimensiones del catálogo EPSG. |
| Geográfico 3D | Sistemas geográficos de tres dimensiones del catálogo EPSG. |
| Proyectado | Sistemas proyectados del catálogo EPSG. |
| Vertical | Sistemas verticales del catálogo EPSG. |
| Compuesto (H+V) | Combinación de un sistema horizontal y uno vertical. |
| Manual (WKT) | Sistema definido por un texto WKT. |
| Favoritos | Sistemas guardados con el botón **Memorizar**. |

## Buscar un sistema

Las categorías Geográfico 2D, Geográfico 3D, Proyectado y Vertical muestran todos los sistemas de su tipo, ordenados por código EPSG. El cuadro **Buscar por código EPSG o nombre…** filtra la lista mientras se escribe:

* Cada palabra escrita debe aparecer en el nombre o en el código del sistema, en cualquier orden.
* La búsqueda no distingue mayúsculas de minúsculas e ignora espacios y signos de puntuación dentro de cada palabra.

Ejemplo: `WGS84 30N` encuentra `WGS 84 / UTM zone 30N`.

## Sistema compuesto

La categoría **Compuesto (H+V)** muestra dos listas:

* **Sistema de coordenadas horizontal**: sistemas proyectados, geográficos 2D y geográficos 3D.
* **Sistema de coordenadas vertical**: sistemas verticales.

Cada lista tiene su propio cuadro de búsqueda, con las mismas reglas que el apartado anterior. El sistema resultante se llama `horizontal + vertical`.

Si se marca **Vertical desconocido**, la lista vertical se desactiva y el sistema seleccionado es solo el horizontal.

## Sistema definido por WKT

La categoría **Manual (WKT)** permite usar un sistema que no está en el catálogo EPSG:

1. Pega el texto WKT del sistema en el cuadro de texto, o pulsa **Importar .prj…** para leerlo de un archivo `.prj`, `.wkt` o `.txt`.
2. Pulsa **Validar**. Si el WKT es válido, el panel de detalles muestra el nombre del sistema. Si no lo es, muestra el error.

Al importar un archivo, el programa valida el WKT sin pulsar **Validar**.

## Favoritos

El botón **Memorizar** guarda el sistema elegido en la lista de favoritos, con su nombre. La categoría **Favoritos** muestra esa lista ordenada por nombre. El botón **Quitar** borra de la lista el favorito seleccionado.

## Panel de detalles

El panel de detalles muestra del sistema elegido:

* El nombre.
* El código EPSG, el tipo y la zona de uso.
* El datum, el meridiano de origen y el elipsoide.
* La **Orientación de ejes**.
* El texto WKT, en la sección desplegable **WKT**.

## Orientación de ejes

La lista **Orientación de ejes** tiene tres opciones:

* **Estándar**: el orden de ejes que define el catálogo EPSG. Entre paréntesis se muestra cuál es ese orden para el sistema elegido.
* **Este-Norte**.
* **Norte-Este**.

La lista solo está activa para los sistemas geográficos y proyectados de las categorías Geográfico 2D, Geográfico 3D y Proyectado. La orientación elegida cambia el orden en que se escriben y se leen los valores en la ventana principal.

## Copiar y exportar la definición del sistema

* **Copiar WKT** copia al portapapeles el texto WKT del sistema elegido.
* **Exportar .prj…** guarda el texto WKT en un archivo `.prj` (proyección ESRI) o `.wkt`.
