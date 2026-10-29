# Referencia del módulo lop
<!-- id: lot-of-points-python-referencia -->

El módulo `lop` proporciona la interfaz de programación de aplicaciones (API) de Python para el visor y
para los comandos del kit de desarrollo de software (SDK). Un guion importa el módulo con:

```python
import lop
```

| Miembro | Tipo | Descripción |
|---|---|---|
| `lop.viewer` | `IViewer` | La vista: cámara, puntos, selección, ediciones, imágenes esféricas y estado visual. |
| `lop.run_command(id)` | función | Lanza la orden de identificador `id` (`str`), como si se pulsara su botón. |
| `lop.language` | `str` | Código de dos letras del idioma de la interfaz, como `"es"`. |

Cada llamada a `lop.viewer` y a `lop.run_command` se ejecuta en el hilo de la interfaz de Lot Of Points, y el guion
espera a que termine. Las listas que devuelve `lop.viewer` son copias: el guion no recorre una colección que la
aplicación pueda cambiar mientras tanto.

## lop.run_command

`lop.run_command(id)` lanza la orden igual que su botón del ribbon y retorna sin esperar a que termine la orden: una orden interactiva (medir,
seleccionar) queda esperando los clics del usuario, y un algoritmo sigue ejecutándose en segundo plano. La función no
hace nada en estos casos:

* El identificador no existe.
* La orden necesita una nube abierta y no hay ninguna.
* El botón de la orden está desactivado en ese momento.

| Identificador | Orden |
|---|---|
| `lop.view.top`, `lop.view.bottom`, `lop.view.front`, `lop.view.back`, `lop.view.left`, `lop.view.right` | Las vistas **Arriba**, **Abajo**, **Frontal**, **Atrás**, **Izquierda** y **Derecha**. |
| `lop.view.zoom-extents` | **Zoom extensión**. |
| `lop.view.origin` | **Ir a origen**. |
| `lop.view.deselect` | **Deseleccionar punto**. |
| `lop.view.points`, `lop.view.spheres` | **Ver puntos** y **Ver esferas**: alternan la visibilidad de los puntos y de las esferas, respectivamente. |
| `lop.view.save-viewpoint`, `lop.view.open-viewpoint` | **Guardar vista** y **Abrir vista**. |
| `lop.measure.distance`, `lop.measure.height`, `lop.measure.azimuth`, `lop.measure.angle` | **Dibujar distancia**, **Dibujar altura**, **Dibujar azimuth** y **Dibujar ángulo**. |
| `lop.measure.copy-coordinates` | **Copiar coordenadas**. |
| `lop.draw.point`, `lop.draw.line` | **Punto** y **Línea** de la pestaña **Dibujar**. |
| `lop.draw.undo`, `lop.draw.redo` | **Deshacer** y **Rehacer** del dibujo. |
| `lop.edit.sphere`, `lop.edit.polyline`, `lop.edit.box`, `lop.edit.plumbed-box`, `lop.edit.cylinder` | Las herramientas de selección **Esfera**, **Polilínea**, **Caja**, **Caja aplomada** y **Selección con cilindro**. |
| `lop.edit.delete`, `lop.edit.classify`, `lop.edit.isolate` | **Borrar**, **Clasificar** y **Aislar**, sobre una región seleccionada o una selección de puntos. |
| `lop.edit.restore` | **Restaurar**, únicamente sobre una región seleccionada. |
| `lop.edit.unisolate` | **Quitar aislamiento**, en **Vista aislada**. |
| `lop.edit.undo`, `lop.edit.redo` | **Deshacer** y **Rehacer** de la barra de título. |
| `lop.edit.export` | **Exportar editada**. |
| `lop.algorithm.` + identificador del algoritmo | El botón de un [algoritmo por teselas](../../algoritmos/README.md): `lop.algorithm.lop.example.height_classifier` es **Clasificar por altura**. |

## lop.viewer

`lop.viewer` es un objeto de .NET. Sus miembros tienen los nombres de .NET, en `PascalCase`. Las coordenadas del mundo
son absolutas, en el sistema de la nube. Las coordenadas de pantalla están en píxeles físicos del área de dibujo, con el
origen arriba a la izquierda.

### Cámara y encuadre

| Miembro | Tipo | Descripción |
|---|---|---|
| `Camera(position, lookDirection, up)` | método, `Point3D` × 3 | Coloca la cámara del visor para el siguiente fotograma. Ver la nota de abajo. |
| `Fov` | `float`, lectura y escritura | El campo de visión vertical de la cámara, en grados. |
| `SizeInPixels` | `ValueTuple[Int32, Int32]` | El ancho (`Item1`) y el alto (`Item2`) del área de dibujo, en píxeles. |
| `Domain` | `Box3D` | La caja de las nubes abiertas. |
| `NavigationReferencePoint` | `Point3D` o `None` | Un punto del nodo raíz de la primera nube para situar la cámara, si está disponible. |
| `NearClipDistanceCloudUnits`, `FarClipDistanceCloudUnits` | `float`, lectura y escritura | Distancias de la cámara a los planos de recorte cercano y lejano, en unidades de la nube. |

`Camera` aplica la posición y la orientación al dibujo del siguiente fotograma, sin actualizar el estado de cámara que utilizan las herramientas de navegación: el siguiente clic, el siguiente giro de
la rueda o la siguiente orden devuelven la vista a la posición de cámara que utilizan esas herramientas. Para cambiar la vista de
forma estable, usa las órdenes de vista con `lop.run_command` (`lop.view.top`, `lop.view.zoom-extents`...).

### Puntos bajo el cursor

| Miembro | Tipo | Descripción |
|---|---|---|
| `LocatePoint(x, y, radius)` | método → `Point3D` o `None` | El punto de la nube que se ve en el píxel (`x`, `y`), buscado dentro de un radio de `radius` píxeles. |
| `SelectedPoint` | `Point3D` o `None`, lectura y escritura | El punto que el visor muestra marcado. `None` quita la marca. |
| `PixelRay(x, y)` | método → `Ray3D` | El rayo que sale de la cámara por el píxel (`x`, `y`). |
| `PixelToCamera(x, y, cameraZ)` | método → `Point3D` | El píxel (`x`, `y`) a la profundidad `cameraZ`, en coordenadas de la cámara. |
| `CameraToPixel(point)` | método → `Point3D` | El punto `point` proyectado en la pantalla. |
| `FirstPointInCylinder(p1, p2, radius)` | método → `Point3D` o `None` | Devuelve el punto cargado más cercano a `p1` dentro del cilindro de eje `p1`–`p2` y radio `radius`. |

`LocatePoint` y `FirstPointInCylinder` buscan entre los puntos que el visor tiene cargados en ese momento, no entre
todos los puntos del archivo.

### Selección y ediciones

| Miembro | Tipo | Descripción |
|---|---|---|
| `SelectBySphere(center, radius)` | método | Selecciona los puntos de una esfera. Sustituye la selección anterior. |
| `SelectByCylinder(p1, p2, radius)` | método | Selecciona los puntos de un cilindro de eje `p1`–`p2` y radio `radius`. |
| `SelectByOrientedBox(origin, u, v, w)` | método | Selecciona los puntos de una caja orientada: el vértice `origin` y sus tres aristas `u`, `v` y `w`. |
| `SelectByPolyline(vertices, radius)` | método | Selecciona los puntos a menos de `radius` de una polilínea: un cilindro por tramo. `vertices` es una lista de .NET de `Point3D` ([Listas](#listas)). |
| `ClearSelection()` | método | Quita la selección. |
| `HasPointSelection` | `bool`, lectura | Indica que hay una selección de puntos dejada por un comando. |
| `LoadedSelectedPointCount` | `int`, lectura | Número de puntos seleccionados del nivel de detalle cargado. El hilo de dibujo cuenta los puntos: justo después de seleccionar, el valor puede no estar actualizado. |
| `ConfirmEdit(eventCode, actionKind, classCode)` | método → `int` | Anota la selección como un evento de edición con la acción `actionKind` (`EditAction`) y la clase `classCode` (0–255, solo para `EditAction.AssignClass`). Devuelve el número de nubes en las que se ha anotado. Lanza una excepción si no puede escribir el registro de ediciones. |
| `IsolateSelection()` | método → `bool` | Aísla la región seleccionada o los puntos seleccionados y limita las ediciones siguientes al aislamiento. |
| `RemoveIsolation()` | método | Quita el aislamiento. |
| `HasIsolation` | `bool`, lectura | Si hay una región o puntos aislados. |
| `EditingHistory` | lista de `WrittenEvent` | Los eventos escritos en los registros de ediciones de las nubes abiertas. |
| `EditableClouds` | lista de `str` | Rutas o direcciones de las nubes con registro de ediciones. La exportación del original editado admite únicamente nubes locales. |
| `ExportEditedOriginal(originalPath, outputLasPath, percent)` | método → `int` | Escribe en `outputLasPath` un archivo LAS (formato de intercambio de nubes de puntos) con el original y sus ediciones aplicadas. Devuelve el número de puntos escritos. `percent` puede ser `None`. |

`eventCode` es el código del evento en el registro; el historial traduce los códigos de selección y busca el nombre actual de los comandos. Las herramientas de selección de Lot Of Points usan `"Sphere"`,
`"Cylinder"`, `"Box"` y `"Polyline"`.

`ExportEditedOriginal` lee el archivo original entero. Desde un guion se ejecuta en el hilo de la interfaz, así que la
interfaz no responde hasta que termina.

### Imágenes esféricas

| Miembro | Tipo | Descripción |
|---|---|---|
| `SphericalPhotos` | lista de `ISphericalPhoto` | Las imágenes esféricas de las nubes abiertas. |
| `LocateSphere(x, y)` | método → `ISphericalPhoto` o `None` | La esfera que cruza el rayo del píxel (`x`, `y`). |
| `SphereRadius` | `float`, lectura y escritura | El radio con el que se dibujan las esferas, en unidades de la nube. |

### Estado visual

| Miembro | Tipo | Descripción |
|---|---|---|
| `PointsVisibility` | `bool` | **Ver puntos**. |
| `SphericalPhotoVisibility` | `bool` | **Ver esferas**. |
| `PointSizeScale` | `float` | Factor de **Tamaño del punto**. |
| `PointShape` | `int` | **Forma del punto**: 0 cuadrado, 1 redondo, 2 paraboloide. |
| `MaxProjectedPointSpacingPixels` | `float` | **Nivel de detalle**: separación máxima proyectada entre puntos, en píxeles. |
| `ColorAttribute` | `int` | **Color de los puntos**: un valor de `ColorAttribute`. |
| `ColorRamp` | `int` | **Escala de colores**: un valor de `ColorRamp`. |
| `EdlEnabled` | `bool` | **Sombreado por profundidad (EDL)**, del inglés *Eye-Dome Lighting*: oscurece cada píxel según la diferencia de profundidad con los píxeles vecinos. |
| `EdlStrength` | `float` | **Intensidad del sombreado**. |
| `MinimumMeasurementTextHeightPixels` | `float` | **Tamaño del texto (px)** de las medidas, en píxeles. |
| `DimensionLabelFlags` | `int` | **Etiquetas** de las medidas, como suma de valores: 1 distancia 3D, 2 distancia en planta, 4 desnivel, 8 coordenadas. |
| `SetStretch(automatic, min, max)` | método | **Rango de valores para el color** del atributo escalar: automático (`True`), o manual entre `min` y `max`. |
| `Stretch` | `ValueTuple[Boolean, Single, Single]` | El último estirado aplicado con `SetStretch`: automático, mínimo y máximo (`Item1`, `Item2`, `Item3`). |
| `ActualStretchRange(attribute)` | método → `ValueTuple[Double, Double]` | El rango que usaría el estirado automático para el atributo `attribute`, medido en la nube. |
| `HasCloudsWithColor` | `bool`, lectura | Si alguna nube abierta tiene color. |
| `SetBackgroundColor(color)`, `BackgroundColor` | método, `ColorRgba` | El color de fondo y el último que se ha aplicado. |
| `SetSphereColor(color)`, `SphereColor` | método, `ColorRgba` | El color de las esferas y el último que se ha aplicado. |
| `SetEditingVolumeColor(color)` | método | El color del volumen de la selección. |

Las propiedades sin «lectura» se leen y se escriben. Lot Of Points no guarda en su configuración el estado visual que
cambia un guion.

| `ColorAttribute` | Valor | En el ribbon |
|---|---|---|
| `Rgb` | 0 | RGB (componentes rojo, verde y azul) |
| `Classification` | 1 | Clasificación |
| `Intensity` | 2 | Intensidad |
| `Elevation` | 3 | Cota |
| `RgbByIntensity` | 4 | RGB × Intensidad |
| `ByCloud` | 5 | Por nube |
| `ReturnNumber` | 6 | Número de retorno |

| `ColorRamp` | Valor | En el ribbon |
|---|---|---|
| `Gray` | 0 | Escala de grises |
| `Rainbow` | 1 | Arcoíris |
| `Viridis` | 2 | Viridis |
| `Turbo` | 3 | Turbo |
| `BlueRed` | 4 | Azul-rojo |

### Otros miembros

Estos miembros los usan las herramientas interactivas de Lot Of Points:

| Miembro | Descripción |
|---|---|
| `TemporaryGeometry` | La vista previa de la herramienta activa: una geometría de `Geometries` (`Point`, `Polyline`, `Dimension`, `Azimuth`, `Angle`) o `None`. |
| `SelectedGeometry` | La geometría seleccionada, que el visor dibuja animada, o `None`. |
| `ShowEditingGuide(vertices)` | La línea que sigue al cursor mientras el usuario señala puntos para delimitar una región de selección. |
| `ShowEditingArrows(arrows, highlighted)` | Las flechas que mueven las caras de una caja de selección. |
| `RequestFirstLevelFraming(onArrive)` | Pide la medida del encuadre de la nube entera; la entrega a la función `onArrive` en un fotograma posterior. |
| `IsolatedExtentOnAxes(right, up, front)` | La región aislada medida en los ejes de la cámara, o `None` si no hay aislamiento. |

## Tipos

| Tipo | Se importa con | Miembros |
|---|---|---|
| `Point3D` | `from Geometries import Point3D` | `Point3D(x, y, z)`; `X`, `Y`, `Z` y `Length` (la longitud del vector). |
| `Box3D` | `from Lop.Core.Services import Box3D` | `Min` y `Max` (`Point3D`). |
| `Ray3D` | `from Lop.Core.Services import Ray3D` | `Origin` y `Direction` (`Point3D`). |
| `ColorRgba` | `from Lop.Core.Services import ColorRgba` | `ColorRgba(r, g, b, a)` con valores de 0 a 255; `ColorRgba.FromHex("#rrggbb")` o `"#aarrggbb"`; `R`, `G`, `B`, `A`; `ToHex()`. |
| `EditAction` | `from Lop.Core.Services import EditAction` | `EditAction.Delete`, `EditAction.Restore`, `EditAction.AssignClass`. |
| `WrittenEvent` | | `EventId` (identificador que expresa milisegundos desde el 1 de enero de 1970 a las 00:00:00 UTC), `EventCode` (el código del evento) y `Clouds` (el número de nubes). |
| `ISphericalPhoto` | | `Name`, `WorkingImagePath`, `Coordinates` (`Point3D`), `HasWorkingImages`, `HasThumbnail`, `OriginalPaths` (lista de `str`) y `ShowSphere` (`bool`, lectura y escritura: si su esfera se dibuja). |
| `ColorAttribute`, `ColorRamp` | `from Lop.Core.Models import ColorAttribute, ColorRamp` | Los valores de las tablas de [Estado visual](#estado-visual). `int(ColorAttribute.Classification)` da el número que esperan las propiedades. |

## Tipos de .NET en Python

`lop.viewer` es un objeto de .NET que pythonnet muestra a Python. Los miembros conservan los tipos
declarados en `IViewer` y las colecciones se adaptan mediante `UiProxy`:

### Listas

* Una lista que devuelve `lop.viewer` (`EditingHistory`, `EditableClouds`, `SphericalPhotos`) admite `for`, índices
  (`h[0]`), la propiedad `Count` y `list(...)`. Usa `.Count` o `len(list(...))` para obtener el recuento.
* Un parámetro de lista (`SelectByPolyline`) no admite una lista de Python. Pasa un array de .NET:

```python
import System
from Geometries import Point3D

vertices = System.Array[Point3D]([Point3D(0, 0, 0), Point3D(10, 0, 0)])
```

### Tuplas

`SizeInPixels`, `Stretch` y `ActualStretchRange` devuelven tuplas de .NET (`ValueTuple`). Sus elementos se leen con
`Item1`, `Item2` e `Item3`.

### Números, enumerados y None

* Un `int` de Python vale donde .NET espera un `float`, un `byte` o un entero sin signo.
* Las propiedades `ColorAttribute` y `ColorRamp` son enteros: asigna `int(ColorAttribute.Classification)` o el número.
* `None` vale donde .NET espera un objeto nulo (`SelectedPoint = None`, `percent=None`), y los métodos que pueden no
  encontrar nada devuelven `None`.

### Errores

Un error de Lot Of Points dentro de una llamada llega al guion como una excepción. Si el guion no captura la excepción, el panel
**Salida** muestra su tipo y su mensaje.

## Comandos de Python

### Declaración

```python
@lop.command(id, name, *, existing_tab_id="", new_tab_title="",
             ribbon_section="", description="", parameters=(), icon="",
             requirements=0, module="")
def command_function(host):
    ...
```

Exactamente uno de `existing_tab_id` y `new_tab_title` debe contener texto.
Los identificadores de pestañas existentes son `lop.tab.view`, `lop.tab.draw`, `lop.tab.edit` y
`lop.tab.classification`. `ribbon_section` determina la sección del plugin.
`icon` es la ruta de una imagen PNG (*Portable Network Graphics*), relativa a la carpeta del guion. La imagen debe medir 32 × 32 píxeles y contener un dibujo negro sobre fondo transparente.
El tamaño máximo del icono es 1.048.576 bytes. Un icono ilegible o inválido produce un aviso y el botón
usa el icono predeterminado.

`requirements` combina `lop.REQUIRES_OPEN_CLOUD`, `lop.REQUIRES_VISIBLE_CLOUD` y
`lop.REQUIRES_EDITABLE_CLOUD`. El programa habilita el botón y permite ejecutar el comando cuando se cumplen
todos los requisitos declarados por el comando. Con 0, el botón no depende de esos requisitos.
Una nube editable para este requisito necesita registro de ediciones e índices en el archivo original.

`module` es el módulo con licencia que requiere el comando, `prefijo.nombre` con letras de `a` a `z`, dígitos,
`.` y `-`. Con `""`, el comando no requiere licencia. Si module contiene texto, Lot Of Points solo muestra y
ejecuta el comando si una licencia activada en el equipo incluye el módulo indicado. Consulta [Publicar en la tienda de extensiones](../publicar-en-la-tienda.md).

```python
lop.Parameter(id, name, default, minimum, maximum, unit="",
              description="", settings_group=None, type="real")
```

`type` admite `"real"`, `"integer"` y `"boolean"`.
`settings_group` agrupa controles en **Configuración**; `host.parameter_value(id)` obtiene el valor
que el programa tomó al iniciar el comando.

### lop.Host

El programa entrega el anfitrión a la función del comando y mantiene ese anfitrión válido durante la ejecución.
Las llamadas que esperan puntos o teselas bloquean el hilo del comando y permiten que la interfaz atienda la navegación.

| Método | Resultado y condiciones |
|---|---|
| `log(message)` | Escribe una línea en **Salida**; si el contenido del panel está oculto, su pestaña parpadea hasta que el usuario muestra el panel **Salida**. |
| `status(message)` | Escribe en la barra de estado; una cadena vacía borra el mensaje. |
| `cancelled()` | `True` si se ha solicitado la cancelación. |
| `ask_point(prompt, accept_point=None)` | Devuelve un `Point`, o `None` al cancelar. |
| `points_in_sphere(center, radius, cloud_ids=None)` | Devuelve `Points`, o `None` al cancelar. |
| `select_points(points, indices)` | Sustituye la selección; devuelve `False` al cancelar o si se ha cerrado alguna nube de esos puntos. |
| `show_temporary_line(vertices, closed=False)` | Dibuja una polilínea temporal de secuencias `(x, y, z)`; una lista vacía la retira. |
| `class_name(classification)` | Nombre actual de la clase del panel **Clasificaciones**, o cadena vacía; exige un entero entre 0 y 255. |
| `clouds()` | Lista de `Cloud` en orden de **Capas**, o `None` al cancelar. |
| `process_tiles(cloud_ids, options, process_tile)` | `TilesSummary` al terminar, `None` al cancelar; lanza `ProcessTilesFailed` si falla. |
| `load_geopackage(geopackage_file_path)` | `True` si carga el archivo como capas; `False` al cancelar o fallar. **Salida** recoge el motivo del fallo. |
| `parameter_value(id)` | Valor del parámetro que el programa tomó al iniciar el comando; lanza `KeyError` si el identificador no existe. |

`ask_point` espera un clic sobre una nube visible y ofrece al filtro `accept_point(point, cloud)`
los candidatos no borrados que estén a 0,05 unidades de la nube o menos del punto pulsado.
El filtro recibe candidatos de todas las nubes abiertas, incluidas las ocultas, del más cercano al más lejano.
El filtro devuelve `True` para aceptar y `False` para probar el candidato siguiente; una excepción del filtro
se propaga al comando. Sin filtro, la función acepta el punto más cercano de las nubes visibles.
Si ningún candidato sirve, el programa espera otro clic. La consulta respeta el aislamiento.

`points_in_sphere` admite un `Point` o una secuencia `(x, y, z)` como centro.
El radio debe ser finito y mayor o igual que 0, en unidades de la nube.
Con `cloud_ids=None` o una lista vacía, la función consulta las nubes visibles.
Con identificadores explícitos, la función consulta las nubes indicadas que sigan abiertas, incluidas las ocultas.
La consulta obtiene todo el detalle, aplica las ediciones y el aislamiento, y excluye los puntos borrados.

`select_points` recibe índices enteros de un resultado de `points_in_sphere`.
Para convertir una máscara booleana en índices, usa `numpy.flatnonzero(mask)`.
La función rechaza índices negativos o mayores o iguales que el número de puntos.
La selección permanece al terminar el comando para aplicar **Borrar**, **Clasificar** o **Aislar**.
Una lista vacía de índices limpia la selección.

### Point, Points y Cloud

`Point` contiene `x`, `y`, `z`, `original_point_index`, `cloud_id`, `intensity`,
`classification`, `return_number`, `number_of_returns`, `red`, `green` y `blue`.
El identificador de nube permanece válido mientras la nube siga abierta.
El índice del original empieza en 0; `lop.UNKNOWN_ORIGINAL_POINT_INDEX` indica que la nube no conserva ese dato.

`Points` expone esas propiedades como columnas de `numpy` de solo lectura.
`len(points)` devuelve el recuento y `points[i]` devuelve un `Point`.
Las columnas comparten la memoria del resultado sin copiarla y conservan esa memoria mientras exista alguna
columna o el objeto `Points`. Python libera el resultado sin una llamada explícita a `release_points`.
`points.complete` vale `False` si algún nodo no se pudo leer o no llegó en el plazo de 2 minutos.

`Cloud` es una copia con `cloud_id`, `name`, `original_path`, `visible`, `remote`, `editable`,
`has_original_point_indices`, `extra_fields`, `box_min` y `box_max`.
Los límites son tuplas de tres coordenadas. La copia sigue siendo válida después de otra llamada a `clouds`,
aunque el estado de la nube pueda cambiar.

| Campo adicional | Contenido |
|---|---|
| `crs_wkt` | Sistema de referencia utilizado para la nube durante la sesión, expresado en WKT (*Well-Known Text*). |
| `horizontal_unit_name`, `vertical_unit_name` | Nombres de las unidades del primer eje de las componentes horizontal y vertical. |
| `horizontal_metres_per_unit`, `vertical_metres_per_unit` | Metros por unidad; 0 para unidades angulares o componentes locales o ausentes. |
| `vertical_axis_points_down` | Indica que el eje vertical apunta hacia abajo y Z representa una profundidad. |

El sistema utilizado es el de la nube si es conocido y no local; en otro caso, el del documento si existe.
Si no están disponibles ni el sistema conocido y no local de la nube ni el sistema del documento, se utiliza el sistema local de la nube o el sistema local desconocido.
Una componente local o ausente deja el nombre de unidad vacío. Si falla la obtención del sistema o de sus unidades, los campos de texto afectados quedan vacíos y los factores de metros por unidad afectados quedan a 0.

### TileOptions y process_tiles

```python
lop.TileOptions(tile_core_side_length_cloud_units=0.0,
                tile_overlap_width_cloud_units=0.0, required_extra_fields=0,
                point_order=lop.ORDER_ORIGINAL_POINT_INDEX,
                concurrent=False, read_only=False,
                estimated_peak_bytes_per_point=0.0)
```

El lado del núcleo debe ser mayor que 0 y no superar 10.000.000 de unidades de la nube.
El solape admite de 0 a 10.000.000 de unidades de la nube, ambos incluidos.
El lado predeterminado 0 debe sustituirse antes de ejecutar `process_tiles`.

`required_extra_fields` combina `lop.FIELD_GPS_TIME` y `lop.FIELD_POINT_SOURCE_ID`: tiempo del
sistema de posicionamiento global (GPS) e identificador de pasada.
`point_order` admite `lop.ORDER_ORIGINAL_POINT_INDEX` y `lop.ORDER_SOURCE_AND_GPS_TIME`;
el segundo orden exige los dos atributos adicionales.

El comando pasa a `process_tiles` los identificadores que elige de `clouds()`, también de nubes ocultas.
Cada nube debe estar abierta y aportar los atributos pedidos.
Para modificar puntos, cada nube necesita registro de ediciones e índices originales.
Con `read_only=True`, el programa no exige esos dos datos y entrega `result=None`.

`process_tile(tile, result, host)` recibe un `Tile`, un `TileResult` y un `TileHost`.
La función retorna sin código de estado. Una excepción provoca el fallo del procesamiento;
`KeyboardInterrupt` o la cancelación del anfitrión cancelan la tesela.

`concurrent=True` permite varias teselas en hilos diferentes, que se turnan para ejecutar Python con
el bloqueo global del intérprete (GIL, del inglés *Global Interpreter Lock*).
`estimated_peak_bytes_per_point` estima la memoria máxima que asigna el cálculo por punto.
El valor 0 aplica `lop.DEFAULT_PEAK_BYTES_PER_POINT`, que vale 1024 bytes por punto.

El programa muestra los resultados durante el procesamiento. Una llamada que confirma cambios en puntos
añade un evento al historial. El historial muestra el nombre actual del comando si está disponible, o el código.
`TilesSummary` contiene `reclassified_point_count`, `deleted_point_count` y `changed_cloud_count`.
La cancelación descarta los resultados de esa llamada. Un fallo al guardar puede dejar cambios confirmados
en algunas nubes.

Durante la llamada, el usuario no puede cerrar las nubes reservadas; puede abrir otras y cerrar nubes
no reservadas. Al cerrar Lot Of Points, el programa solicita la cancelación y espera hasta 3 segundos
a que terminen los hilos de comandos.

### Tile, TileResult y TileHost

`Tile` contiene las columnas de puntos, sin `cloud_id` por columna, y añade `in_core`, `gps_time`
y `point_source_id`. Los atributos adicionales valen `None` si las opciones no los piden.
Sus propiedades `point_count`, `core_min`, `core_max`, `tile_index`, `tile_count` y `cloud_id`
identifican la tesela. `len(tile)` devuelve `point_count`.

Cada columna de `Tile` es una copia de solo lectura que se crea al acceder a la columna por primera vez.
Una copia ya leída sigue siendo válida cuando termina la función de la tesela.
Leer por primera vez una columna existente de una tesela con puntos después de terminar la función lanza
`RuntimeError`.

`TileResult.classification` comienza con las clases de la tesela y `deleted` comienza con ceros.
La función puede modificar los arrays o sustituirlos por arrays de la misma longitud.
Las clases deben ser enteros de 0 a 255; un valor distinto de 0 en `deleted` marca el punto para borrar.
Cuando la función termina normalmente, el programa valida y copia al resultado nativo las columnas leídas
o asignadas. El programa guarda únicamente los resultados de los puntos del núcleo.

`TileHost` proporciona `report_tile_progress(fraction)`, `cancelled()`, `log(message)` y
`max_worker_thread_count()`. `report_tile_progress` recibe una fracción de progreso entre 0 y 1, ambos incluidos.
Después de terminar la función de la tesela, `cancelled()` devuelve `True`, los métodos de progreso
y registro no realizan acciones y `max_worker_thread_count()` conserva su valor.
