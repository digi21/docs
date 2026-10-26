# Introducción
<!-- id: lot-of-points-introduccion -->

Una nube de puntos representa un objeto o un terreno mediante sus coordenadas tridimensionales. Lot Of Points
permite explorar esa representación, medir sobre ella, dibujar geometrías y corregir la clasificación de sus
puntos. Puedes trabajar con varias nubes a la vez: todas aparecen en la misma vista y cada una conserva su entrada
en el panel **Capas**.

## Abrir una nube

Pulsa **Abrir nubes de puntos o capas vectoriales** en el panel **Capas** y elige los archivos con
los que quieres trabajar. Lot Of Points admite los siguientes formatos:

| Formato | Extensión | Contenido |
|---|---|---|
| LAS (formato de intercambio de nubes de puntos) | `.las` | Nube de puntos. |
| LAZ (LAS comprimido) | `.laz` | Nube de puntos en formato LAS comprimido. |
| E57 | `.e57` | Nube de puntos, que puede incluir imágenes esféricas. |
| PTX (escaneos en cuadrículas) | `.ptx` | Nube de puntos, que puede tener imágenes JPEG (*Joint Photographic Experts Group*, extensión JPG) asociadas a sus escaneos. |
| PTS (puntos en texto) | `.pts` | Nube de puntos. |
| PCD (*Point Cloud Data*) | `.pcd` | Nube de puntos. |
| GeoPackage | `.gpkg` | Capas vectoriales, una por tabla. |

Si no existe una caché válida de la nube local, Lot Of Points prepara su **nivel de detalle**, o LOD
(*level of detail*), al abrirla. Esta organización de los puntos permite cargar solo los que necesita la vista en cada momento,
sin mantener la nube entera en memoria. El resultado queda en una caché que se reutiliza en las aperturas siguientes.

En el panel **Capas**, la casilla de cada nube permite mostrarla u ocultarla. Al mantener el puntero sobre su fila
puedes consultar la ruta o el localizador uniforme de recursos (URL) de origen, el número de puntos del nivel de detalle y los límites de sus coordenadas.
Los archivos GeoPackage aparecen en el mismo panel, con sus capas dentro.

## Explorar y representar los puntos

La pestaña **Visualización** reúne las herramientas para desplazarte por la nube y cambiar cómo se dibuja.
**Desplazar la cámara** permite mover la vista a partir de un punto de la nube; **Orbitar** gira alrededor del punto
que señales, y **Rotar la cámara** cambia la dirección en la que miras. **Zoom extensión** vuelve a encuadrar el
conjunto visible o, si has aislado una región, esa región.

También puedes navegar con los botones del ratón. De forma predeterminada, arrastrar con el izquierdo permite
orbitar, con el central gira la cámara y con el derecho desplaza la vista. La rueda acerca o aleja la cámara, y el
doble clic izquierdo la lleva hacia el punto o la esfera señalados. Estas acciones se pueden cambiar en la página
**Ratón** de **Configuración**, accesible mediante el engranaje de la barra de título.

Si utilizas un ratón 3D de 3Dconnexion, también puedes desplazar y girar la cámara con él.

La representación de los puntos ayuda a interpretar la nube. En **Color de los puntos** puedes elegir el color de origen por componentes rojo, verde y azul (RGB), la clasificación, la cota, la intensidad, el número de retorno o un color por nube. Los controles de
**Tamaño del punto** y **Forma del punto** permiten ajustar su aspecto. En el panel **Clasificaciones** puedes
mostrar u ocultar clases y cambiar sus nombres y colores.

Guarda un encuadre al que quieras volver con **Guardar la vista actual**, en el panel **Vistas**.
Cada vista conserva la posición y la orientación de la cámara para recuperar ese encuadre más adelante.

Utiliza **Guardar vista** para guardar también las nubes abiertas y los ajustes de representación. Este comando
crea un archivo de escena `.lopview`, que puedes recuperar con **Abrir vista**.

## Consultar las imágenes esféricas

Las imágenes esféricas permiten mirar el entorno desde la posición en la que se tomó una fotografía. El panel
**Esferas** muestra las imágenes asociadas a las nubes abiertas, y **Ver esferas**, en la pestaña **Visualización**,
permite representar sus posiciones en la vista. Con la configuración predeterminada del ratón, un doble clic
izquierdo sobre una esfera entra en su imagen. También puedes usar **Ir a la foto más cercana de este lado** y señalar un punto
de la nube: el programa busca la toma más cercana a ese punto entre las situadas del mismo lado que la cámara.

Dentro de la imagen puedes girar la vista y cambiar el zoom con la rueda. Para volver a la nube, pulsa **Esc** o el
botón **Salir** que aparece sobre la vista.

Los archivos E57 pueden contener panorámicas esféricas o tomas formadas por las seis caras de un cubo (*cubemap*),
con imágenes en formato JPEG o PNG (*Portable Network Graphics*). En los PTX, las fotografías se leen de archivos JPG situados junto al archivo
de puntos: `<nombre>.jpg` para un único escaneo, o `<nombre>.0000.jpg`, `<nombre>.0001.jpg`, etc., cuando hay varios.
Los formatos LAS, LAZ, PTS y PCD no aportan imágenes esféricas.

## Medir y dibujar

La pestaña **Dibujar** permite medir distancias, alturas, azimutes y ángulos señalando puntos de la nube. Por
ejemplo, **Dibujar distancia** pide dos puntos y crea una medida con la distancia tridimensional, la distancia en
planta y el desnivel entre ambos. **Copiar coordenadas** permite llevar las coordenadas de un punto al portapapeles.

Para dibujar puntos y líneas necesitas una capa vectorial compatible. Puedes abrir un GeoPackage existente o
crearlo con **Nueva capa a partir de un esquema** en el panel **Capas**. El esquema define las tablas y sus campos;
al elegir una tabla para dibujar, el panel **Atributos a digitalizar** permite indicar los valores que acompañarán
a las nuevas geometrías. El panel **Geometrías** muestra las geometrías de la tabla seleccionada.

## Editar una nube

La edición comienza delimitando la zona de trabajo. La pestaña **Herramientas de selección** ofrece cinco herramientas:
**Esfera**, **Polilínea**, **Caja**, **Caja aplomada** y **Selección con cilindro**.
Al completar una selección por región, el programa muestra **Acciones**.
**Borrar** registra el borrado de los puntos de la región seleccionada; **Clasificar** asigna una clase a los puntos de esa región, y **Restaurar** recupera los puntos borrados
de la región. Los comandos de extensiones también pueden dejar una selección de puntos: esa selección admite
**Borrar**, **Clasificar** y **Aislar**; **Restaurar** requiere una región.

**Aislar** limita la vista a la región o a los puntos seleccionados. El programa activa la pestaña contextual
**Vista aislada**, dentro de **Herramientas de aislamiento**. Pulsa **Quitar aislamiento** en esa pestaña
para volver a mostrar los puntos que el aislamiento ocultaba. Las ediciones siguientes se limitan a la región
o a los puntos aislados.

El programa guarda las modificaciones locales en `<nube>.edits.log`, junto al original y con su extensión
incluida: por ejemplo, `terreno.las.edits.log`. Cuando una edición utiliza una tabla por punto, Lot Of Points guarda
`<nube>.edits.<identificador>.table` junto al registro. El archivo original conserva su contenido.

La barra de título contiene **Deshacer**, **Rehacer** e **Historial**, a la izquierda de **Configuración**.
**Deshacer** y **Rehacer** se deshabilitan cuando no hay una edición que deshacer o rehacer.
**Historial** muestra «Todavía no hay ediciones registradas.» si no tiene eventos.
Si una edición asigna una clase que no aparecía en **Clasificaciones**, el panel incorpora esa clase.

Pulsa **Exportar editada** para obtener un archivo LAS con los cambios de una nube local.
La exportación lee el archivo original; el comando excluye las nubes remotas de sus opciones.

Los [comandos por teselas](algoritmos/README.md) también pueden modificar clases y borrar puntos.
Cada comando elige qué nubes procesa y puede incluir las ocultas. Durante `process_tiles`, el usuario
no puede cerrar las nubes reservadas, pero puede abrir otras y cerrar las no reservadas.
Los botones de los comandos propios que requieren un documento se deshabilitan cuando no hay ninguna nube abierta.

## Abrir nubes publicadas en Azure

[Lot Of Points Studio](../lot-of-points-studio/README.md) prepara y publica nubes de puntos e imágenes esféricas en
Azure. Para abrirlas en Lot Of Points, pulsa **Añadir nubes de puntos remotas (Azure)** en el panel **Capas** e introduce la ruta o URL del
catálogo: un archivo `.json` que enumera las nubes publicadas.

Estas nubes se leen por *streaming*: el visor solicita los nodos del nivel de detalle a medida que los necesita,
sin descargar antes la nube completa. Las miniaturas de las imágenes se descargan al abrir el catálogo; el original
de cada fotografía se obtiene al entrar en ella.

Las nubes remotas admiten ediciones locales cuando tienen registro de ediciones e índices de cada punto
en el original. Lot Of Points guarda esos registros en `%AppData%\edits\<nube>_<huella>\cloud.edits.log`
y las tablas en `cloud.edits.<identificador>.table`, en la misma carpeta.
La carpeta depende de la dirección de la nube sin la consulta de autorización; renovar la autorización de acceso no cambia
la carpeta de ediciones de la nube. Las ediciones locales no modifican los datos publicados en Azure.

Los comandos por teselas pueden elegir nubes remotas. El modo de solo lectura no requiere registro
de ediciones ni índices originales. Para regenerar el nivel de detalle de una nube remota que no conserva
los índices, prepara y publica de nuevo la nube con Studio.

## Automatizar tareas

El panel [Python](programacion/python/README.md) permite escribir y ejecutar guiones dentro del programa. Con el
módulo `lop` puedes consultar y modificar propiedades del visor, trabajar con la selección y las ediciones o lanzar
órdenes por su identificador. Para añadir comandos que pidan puntos, seleccionen puntos o procesen teselas, consulta el
[kit de desarrollo de software (SDK) de C y C++](programacion/c-cpp/README.md) o los
[comandos de Python](programacion/python/referencia.md#comandos-de-python).

## Nivel de detalle

La caché de cada archivo local se guarda en una subcarpeta de `%TEMP%\LOP\LiDAR`. Su nombre incluye la fecha de
modificación del archivo y la versión del formato del nivel de detalle. Si cambia el archivo, el programa crea una
caché nueva la próxima vez que lo abres.

| Archivo de la caché | Contenido |
|---|---|
| `<nombre>.index` | Cabecera y árbol de nodos (*octree*). |
| `<nombre>.index.points` | Puntos de cada nodo. |
| `<nombre>.index.atributos` | Número de registro de cada punto en el original y, para LAS y LAZ, atributos adicionales como el tiempo del sistema de posicionamiento global (GPS, `gps_time`) y el identificador de pasada (`point_source_id`). |

Al crear el nivel de detalle se descartan los puntos repetidos exactos, por lo que su recuento puede ser menor que
el indicado en la cabecera del original.

Los comandos que modifican puntos por teselas necesitan los índices originales del archivo
`.index.atributos`. Los comandos de solo lectura pueden trabajar sin esos índices.
Si una nube local carece de ese archivo, cierra la nube, borra únicamente su subcarpeta de
`%TEMP%\LOP\LiDAR` y abre el original para regenerar el nivel de detalle.

## Cerrar el programa

Al cerrar Lot Of Points con hilos de comandos de extensiones en ejecución, el programa solicita su
cancelación, muestra «Cancelando los comandos de las extensiones antes de cerrar Lot Of Points…» y
espera hasta 3 segundos a que terminen los hilos. El programa no permite iniciar comandos durante esa espera.
