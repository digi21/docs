# Estadísticas e imágenes
<!-- id: lot-of-points-studio-estadisticas-e-imagenes -->

La página **Proyectos** permite revisar el contenido de las nubes publicadas antes de abrirlas en el visor.
Al seleccionar un proyecto aparece un resumen del conjunto y, debajo, una fila por nube con sus datos y las
miniaturas de las imágenes disponibles.

## Interpretar las estadísticas

Studio calcula las estadísticas al preparar las nubes y las incorpora al catálogo al publicarlas. No necesitas
ejecutar una operación adicional para obtenerlas. Los catálogos antiguos pueden carecer de estos datos; volver
a publicar las nubes permite incorporarlos.

| Dato | Qué representa |
|---|---|
| Nubes | Número de entradas del proyecto. |
| Puntos | Puntos del nivel de detalle. El total del proyecto suma los datos de las nubes que tienen estadísticas. |
| Tamaño | Suma del índice y del archivo de puntos, expresada en bytes (B), kilobytes (KB), megabytes (MB) o gigabytes (GB). No incluye las imágenes ni el archivo de atributos adicionales. |
| Clases | Números de las clases presentes en la nube. No es un recuento de puntos por clase. |
| Tomas fotográficas | Número de tomas asociadas a la nube o al proyecto. Cada toma con seis caras de un cubo (*cubemap*) cuenta una vez, a partir de su archivo de orientación. |

El número de puntos corresponde a la caché preparada. Como la creación del nivel de detalle descarta los puntos
repetidos exactos, puede ser menor que el indicado en el archivo original.

Mantén el puntero sobre la fila de una nube para consultar sus mínimos y máximos en X, Y y Z. Cuando el original
usa LAS (formato de intercambio de nubes de puntos) o LAZ (LAS comprimido) y se ha podido leer su cabecera, la caja se obtiene de esos límites. Para los demás formatos puede
mostrarse el dominio del nivel de detalle: el cubo que contiene la nube. En ese caso, Studio muestra «Los límites mostrados corresponden al cubo del nivel de detalle; no están ajustados a los puntos.».

## Imágenes asociadas a los escaneos

Los archivos E57 pueden aportar panorámicas esféricas o tomas formadas por seis caras (*cubemap*). Se admiten
imágenes JPEG (*Joint Photographic Experts Group*) y PNG (*Portable Network Graphics*): durante la importación, las PNG se preparan como JPEG para utilizarlas en Studio y en el visor.

Los archivos PTX de escaneos en cuadrículas pueden acompañarse de fotografías JPEG con extensión JPG situadas junto al archivo de puntos. Para un único escaneo se utiliza
`<nombre>.jpg`; para varios, `<nombre>.0000.jpg`, `<nombre>.0001.jpg`, etc. Las imágenes deben estar disponibles
cuando se prepara la caché. Los formatos LAS, LAZ, PTS (puntos en texto) y PCD (*Point Cloud Data*) no aportan imágenes esféricas.

Al publicar una nube, Studio incluye sus fotografías, los datos que sitúan cada toma y las miniaturas necesarias
para reconocerlas. Debajo de cada nube, la galería muestra una miniatura por toma. En los cubemaps se utiliza una
de las caras para representar la toma, aunque se publican las seis caras y sus miniaturas para el visor.

Las miniaturas conservan las proporciones de cada imagen y su nombre aparece al mantener el puntero sobre ellas.
Para recorrer las fotografías desde su posición de toma, abre el [proyecto en Lot Of Points](compartir-proyectos.md).
