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
| GeoTIFF (TIFF georreferenciado, *Tagged Image File Format*) | `.tif`, `.tiff` | Ortofoto. |
| Modelos de objetos (OBJ) | `.obj` | Modelo de triángulos con texturas o colores difusos. |

Si no existe una caché válida de la nube local, Lot Of Points prepara su **nivel de detalle**, o LOD
(*level of detail*), al abrirla. Esta organización de los puntos permite cargar solo los que necesita la vista en cada momento,
sin mantener la nube entera en memoria. El resultado queda en una caché que se reutiliza en las aperturas siguientes.

En el panel **Capas**, la casilla de cada nube permite mostrarla u ocultarla. Al mantener el puntero sobre su fila
puedes consultar la ruta o el localizador uniforme de recursos (URL) de origen, el número de puntos del nivel de detalle y los límites de sus coordenadas.
Los archivos GeoPackage aparecen en el mismo panel, con sus capas dentro.

## Cargar carpetas

Arrastra archivos o carpetas desde el Explorador al panel **Capas**. El programa agrupa las ortofotos,
los GeoPackage y los modelos de cada carpeta en el orden de sus nombres, sin recorrer las subcarpetas.
Las nubes de puntos y los archivos soltados individualmente aparecen en la raíz del panel.
Los archivos con extensiones no admitidas se ignoran.

La casilla de una carpeta muestra u oculta sus elementos. Al quitar la carpeta, el programa retira sus
elementos del panel y del visor. Una carpeta sin elementos cargados desaparece del panel.

## Cargar ortofotos

Abre las ortofotos GeoTIFF (`.tif` o `.tiff`) desde **Capas**, al arrastrarlas al panel o desde la línea de comandos.
La fila de cada ortofoto en **Capas** muestra el tamaño de la imagen en píxeles, una casilla de visibilidad y un aspa para quitar la ortofoto.
El formato GeoTIFF incorpora la georreferenciación a la imagen.

El visor coloca la imagen con la matriz `ModelTransformationTag`, que admite planos verticales, o con
`ModelPixelScaleTag` y `ModelTiepointTag`. En el segundo caso, la imagen queda a la cota del punto de correspondencia.
El programa supone que la ortofoto utiliza el sistema de referencia de la nube: no lee archivos `.tfw`
ni la etiqueta `GeoKeyDirectory`, ni aplica el desplazamiento de medio píxel de `RasterPixelIsPoint`.

Si la imagen tiene canal alfa, el visor utiliza su transparencia. Si la imagen no tiene canal alfa, el visor utiliza el valor numérico
de `GDAL_NODATA`, o 0 si no obtiene un valor numérico. Cuando ese valor es un entero entre 0 y 255, ambos incluidos,
el visor hace transparentes los píxeles cuyos tres canales de color coinciden con él.

El visor conserva las ortofotos al añadir o quitar nubes y las elimina al cerrar el documento.
Las escenas `.lopview` no guardan las ortofotos ni las capas GeoPackage.

## Cargar modelos

Abre los modelos `.obj` desde **Capas**, al arrastrarlos al panel o dentro de una carpeta, o desde la línea de comandos.
La fila de cada modelo en **Capas** muestra una casilla de visibilidad y el número de triángulos del modelo. El visor dibuja los modelos
cuando hay nubes abiertas y conserva los modelos al añadir o quitar nubes, hasta retirarlos o cerrar el documento.

El lector admite vértices (`v`), coordenadas de textura (`vt`), caras (`f`) y materiales (`mtllib` y `usemtl`).
El lector divide las caras poligonales en triángulos y utiliza la textura `map_Kd` o, si falta,
el color difuso `Kd` del material. El visor dibuja las dos caras de cada triángulo. Si el material tiene textura, el visor no dibuja los píxeles de la textura con alfa menor que 0,5.
Los nombres de los archivos de materiales y texturas se buscan en codificación Unicode de 8 bits (UTF-8) y en Windows-1252.

El origen del modelo procede del último comentario válido `# origen X Y Z` del archivo.
Si falta ese comentario, el lector utiliza la primera línea no comentada con tres números de `<nombre>_origen.txt`.
Si ninguna fuente proporciona un origen, utiliza `(0, 0, 0)`.

## Sistema de referencia de las nubes

Antes de abrir las nubes, Lot Of Points consulta el sistema de referencia escrito en WKT (*Well-Known Text*)
en el archivo `.prj` del nivel de detalle: en la caché local o junto a los datos publicados de la nube remota.
Si una nube remota carece del `.prj` publicado, el programa consulta la elección guardada en el equipo.
El programa acepta un WKT válido o con componente horizontal local; este último identifica un sistema desconocido.

Si la caché de una nube local no proporciona un sistema aceptado, el programa busca el sistema en el original:

| Formato | Fuente del sistema de referencia |
|---|---|
| LAS o LAZ | WKT del registro 2112; si no es válido, WKT obtenido de las claves GeoTIFF. |
| E57 | WKT de `coordinateMetadata` o sistema identificado por su código EPSG (*European Petroleum Survey Group*). |
| PTX, PTS o PCD | Archivo `.prj` junto al original, con el mismo nombre y sustituyendo solo la última extensión. |

El programa copia el sistema obtenido al `.prj` de la caché. Los `.prj` junto al original solo se leen para
PTX, PTS y PCD locales. El lector admite WKT de versión 2 de 2019 (WKT2:2019) con conjuntos de datums (`ENSEMBLE`)
y los sistemas compuestos que contienen componentes horizontal y vertical.

Si ninguna fuente proporciona un sistema aceptado, el programa solicita una elección para esas nubes
y preselecciona el sistema del documento, si existe. El selector permite indicar que el sistema es desconocido,
incluso cuando se abre con otro sistema preseleccionado.
La elección se guarda en el `.prj` local o en un archivo del equipo para una nube remota.
**Cancelar** deja sin sistema asignado durante la sesión las nubes para las que el programa pide una elección; el programa vuelve a pedir el sistema al reabrir esas nubes.
Un `.prj` que declara el sistema desconocido se reutiliza sin preguntar.

El sistema del documento corresponde a la primera nube de **Capas** con un sistema conocido y no local.
Lot Of Points rechaza las nubes nuevas cuyo sistema conocido y no local no sea equivalente al del documento
y muestra un aviso con una línea por nube. Lot Of Points exige que los componentes horizontales del sistema de la nube
nueva y del sistema del documento sean equivalentes, y compara los componentes verticales solo si los dos sistemas tienen
componente vertical.

La información de capa muestra **Sistema de referencia** con el nombre del sistema conocido o **Desconocido**.
Para una nube con sistema desconocido, el programa utiliza el sistema del documento durante la sesión
y lo muestra entre paréntesis cuando está disponible.
Si falla la consulta del sistema, el programa comunica el error en la barra de estado y continúa la apertura.
Al aplicar una escena de arranque desde la línea de comandos, el programa no solicita el sistema al usuario.

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

Pulsa **Esc** para quitar el foco de la tira de pestañas del ribbon.

La representación de los puntos ayuda a interpretar la nube. En **Color de los puntos** puedes elegir el color de origen por componentes rojo, verde y azul (RGB), la clasificación, la cota, la intensidad, el número de retorno o un color por nube. Los controles de
**Tamaño del punto** y **Forma del punto** permiten ajustar su aspecto. En el panel **Clasificaciones** puedes
mostrar u ocultar clases y cambiar sus nombres y colores.

Guarda un encuadre al que quieras volver con **Guardar la vista actual**, en el panel **Vistas**.
Cada vista conserva la posición y la orientación de la cámara para recuperar ese encuadre más adelante.

Utiliza **Guardar vista** para guardar también las nubes abiertas y los ajustes de representación. Este comando
crea un archivo de escena `.lopview`, que puedes recuperar con **Abrir vista**.

## Fondo de la vista

Selecciona **Cielo** en el grupo **Fondo** de **Visualización** para utilizar uno de los 28 cielos.
El desplegable agrupa los cielos por categorías con encabezados que no se pueden elegir.
El catálogo contiene 15 cielos con sol bajo y 13 con sol alto.
El selector de color de fondo está en **Fondo** y permanece deshabilitado mientras haya un cielo seleccionado.
Selecciona **Ninguno** en **Cielo** para habilitar el selector de color de fondo.

El programa descarga las seis caras del cielo cuando no están en `%LOCALAPPDATA%\lop\Skyboxes`
y reutiliza los archivos guardados en aperturas posteriores. Si la descarga falla, el visor muestra el color de fondo
y comunica el error en la barra de estado. El cielo sigue seleccionado y el selector de color continúa deshabilitado
hasta elegir **Ninguno**. Si una cara no se puede decodificar, el visor muestra el color de fondo.

El programa conserva el cielo entre documentos y vuelve a intentar cargar el cielo guardado al iniciarse.
Las escenas `.lopview` guardan el cielo; al abrir una escena sin ese dato, el visor conserva el cielo actual.

## Abrir mapas en el punto señalado

El grupo **Mapa** de **Visualización** contiene el botón **Google Maps**.
Al pulsar la flecha del botón **Google Maps**, el programa muestra un menú con las órdenes **Google Street View**, **Bing Maps**, **OpenStreetMap** y **SIGPAC**
(Sistema de Información Geográfica de Parcelas Agrícolas).
El botón y las entradas solo se habilitan si el documento tiene un sistema de referencia conocido y no local.

1. Pulsa **Google Maps**, o pulsa la flecha del botón y elige otro servicio en el menú.
2. Señala y confirma un punto de la nube.

El programa convierte el punto a latitud y longitud en grados del sistema geodésico mundial de 1984 (WGS 84)
y abre la posición en el navegador predeterminado. **Bing Maps** utiliza la vista aérea.
El programa escribe la latitud y la longitud en las direcciones con seis decimales y punto como separador decimal.
Si falla la transformación, la barra de estado muestra un mensaje con el nombre del sistema y el motivo.

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

Los GeoPackage de medidas y de capas nuevas declaran el sistema de referencia del documento.
Si el programa puede crear el sistema del archivo a partir de un código EPSG, utiliza ese código y una definición WKT de versión 1.
Para otros sistemas, el archivo utiliza la definición del documento con `srs_id = 100000`.
Si el documento carece de sistema, el archivo declara un sistema cartesiano desconocido con `srs_id = -1`.

### Valores de los esquemas

El editor de esquemas guarda el valor almacenado de cada valor permitido y el valor inicial o macro de cada campo.
Los valores numéricos y booleanos de los esquemas se guardan como texto.

El botón **+** de la lista de valores posibles crea `value` como valor almacenado y etiqueta.
Si ese valor ya existe en el campo, crea el primero disponible entre `value 2`, `value 3` y los siguientes.
**Guardar** comprueba todos los esquemas antes de escribir archivos.
Si un campo repite un valor almacenado, el editor no guarda ningún esquema ni cambia el esquema activo.
El mensaje junto a **Guardar** identifica el esquema, la tabla, el campo y el valor repetido.

La creación de una capa también rechaza los valores almacenados repetidos de un campo, incluso en esquemas
editados a mano. El programa muestra el error en la barra de estado e intenta borrar el GeoPackage incompleto.

## Editar una nube

La edición comienza delimitando la zona de trabajo. La pestaña **Herramientas de selección** ofrece cinco herramientas:
**Esfera**, **Polilínea**, **Caja**, **Caja aplomada** y **Selección con cilindro**.
Al completar una selección por región, el programa muestra **Acciones**.
**Borrar** registra el borrado de los puntos de la región seleccionada; **Clasificar** asigna una clase a los puntos de esa región, y **Restaurar** recupera los puntos borrados
de la región. Los comandos de extensiones también pueden dejar una selección de puntos: esa selección admite
**Borrar**, **Clasificar** y **Aislar**; **Restaurar** requiere una región.

Los radios, profundidades y márgenes de selección se expresan en unidades de la nube.
La distancia entre la cámara y el punto seleccionado se expresa en unidades de la nube. En las velocidades de movimiento
con teclado y de traslación con SpaceMouse, la unidad de longitud también es la de la nube: pies si la nube utiliza pies.

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
| `<nombre>.prj` | Sistema de referencia de la nube expresado en WKT. |

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
