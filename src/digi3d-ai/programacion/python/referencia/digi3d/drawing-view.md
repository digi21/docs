# DrawingView
<!-- id: drawing-view -->

Módulo: `digi3d`

Representa la **ventana de dibujo** de Digi3D.AI. Es el objeto central de un guion en el
panel: da acceso a las geometrías cargadas, las órdenes, la configuración de dibujo y los
servicios de la vista.

Se obtiene con [`current_view()`](functions.md#current_view):

```python
import digi3d

view = digi3d.current_view()
```

## Acceso a las geometrías

La ventana se comporta como una secuencia con **todas** las geometrías de **todos** los
archivos de dibujo cargados:

| Operación | Descripción |
|---|---|
| `len(view)` | Número total de geometrías. |
| `view[i]` | Geometría en la posición `i`. |
| `for geometry in view:` | Recorre todas las geometrías. |

> Las geometrías que devuelve son propiedad de la aplicación: no se pueden reasignar
> (`view[i] = ...` lanza `TypeError`).

### Geometrías de cada archivo

`view.files` es la lista de archivos cargados: el primero es el archivo de dibujo y los demás son los
archivos de referencia. La propiedad [`file`](../digi21.base/geometry.md#propiedades) de cada geometría
devuelve el archivo que la contiene.

Cada `view.files[i]` es un [DrawingFile](../digi21.base/drawingfile.md) que se recorre en memoria:
`for g in view.files[i]`, `len(view.files[i])` y `view.files[i][j]` devuelven las geometrías del
archivo, incluidas las borradas, en el mismo orden que `view`.

```python
import collections
import digi3d

view = digi3d.current_view()

# Número de geometrías de cada archivo cargado
por_archivo = collections.Counter(g.file.path for g in view if g.file is not None)
for ruta, cantidad in por_archivo.items():
    print(f"{ruta}: {cantidad} geometrías")

# Geometrías de un archivo de referencia concreto
referencia = view.files[1]
print(len(referencia))
borradas = [g for g in referencia if g.deleted]
```

Ejemplo: localizar en qué archivo están las geometrías alejadas de la zona de trabajo, que hacen que el
zoom extendido muestre la cartografía como un punto.

```python
import math
import statistics
import digi3d

view = digi3d.current_view()
geometrias = [g for g in view if not g.deleted]

# Centro de la zona de trabajo: la mediana de los centros de las geometrías
cx = statistics.median((g.min[0] + g.max[0]) / 2 for g in geometrias)
cy = statistics.median((g.min[1] + g.max[1]) / 2 for g in geometrias)

for g in geometrias:
    distancia = math.hypot((g.min[0] + g.max[0]) / 2 - cx, (g.min[1] + g.max[1]) / 2 - cy)
    if distancia > 20000:
        archivo = g.file.path if g.file is not None else "(sin archivo)"
        print(f"{distancia / 1000:.1f} km  {[c.code for c in g.codes]}  {archivo}")
```

## Geometrías: añadir, borrar y recuperar

| Método | Descripción |
|---|---|
| `add(geometry)` | Añade una geometría al archivo de dibujo activo. Lanza error si ya pertenece a un archivo. |
| `add(geometries)` | Añade una lista de geometrías. |
| `delete(geometry)` | Borra una geometría. |
| `delete(geometries)` | Borra un iterable o una lista de geometrías. |
| `recover(geometry)` | Recupera una geometría borrada. |
| `recover(geometries)` | Recupera un iterable o una lista de geometrías borradas. |
| `replace(original, new)` | Sustituye `original` por `new` en una sola operación. Devuelve la geometría almacenada, o `None` si no ha sustituido nada. Consulta [Sustituir una geometría](#sustituir-una-geometría). |

> En Digi3D.AI **borrar no elimina realmente** la geometría: solo la **marca como borrada** (lo
> indica la propiedad `deleted` de la [geometría](../digi21.base/geometry.md)). Por eso se
> puede **recuperar** con `recover`. Pasar una **lista** a `delete`/`recover` es bastante más rápido
> que llamarlos de una en una, pero las versiones de lista de `add` y `delete` no ejecutan los
> controles de calidad ni avisan a las extensiones.

```python
linea = digi3d.Line(["CARR"], [(0, 0, 0), (10, 0, 0)])
view.add(linea)

# Borrar en bloque, y poder deshacerlo si hace falta
seleccion = [g for g in view if g.has_code("020123")]
view.delete(seleccion)
# ... si algo va mal:
view.recover(seleccion)
```

### Sustituir una geometría

Las geometrías del dibujo son de solo lectura: para cambiar una, se crea un clon con `clone()`, se modifica el
clon y se sustituye la original por él con `replace(original, new)`. `replace` borra la original y añade la
nueva con las mismas comprobaciones que `add(geometry)`: controles de calidad, extensiones, base de datos y
exportador del formato.

- Devuelve la geometría almacenada. Normalmente es `new`, pero puede ser otra si una extensión o un control de
  calidad la cambia al almacenarla.
- Devuelve `None` y no cambia nada si `original` ya estaba borrada o no se ha podido borrar.
- Devuelve `None` y recupera `original` si Digi3D.AI rechaza `new`, por ejemplo porque el formato del archivo
  de dibujo no admite su código.
- Si `original` pertenece a otro archivo cargado, no se borra: `new` se añade sin más.

Recoge primero las geometrías en una lista y recorre la lista, no la vista: `replace` añade geometrías al
archivo de dibujo que se está recorriendo.

```python
textos = [g for g in view if isinstance(g, digi3d.Text) and not g.deleted]
for texto in textos:
    clon = texto.clone()
    clon.rotation = 0.0
    if view.replace(texto, clon) is None:
        print("No se ha podido sustituir un texto")
view.redraw()
```

## Tabla de códigos

La ventana da acceso a la tabla de códigos (`digi.tab`) del proyecto con la propiedad
[`digitab`](#propiedades-de-información) (la tabla como secuencia de
[DigiTabNode](../digi21.base/digitabnode.md)) y con `digi_tab` (un diccionario
`{código: DigiTabNode}`).

| Método | Devuelve | Descripción |
|---|---|---|
| `find_codes(concept)` | `list[str]` | Códigos cuyo código, descripción, etiquetas o alias contienen el concepto (sin distinguir mayúsculas ni acentos). |

`find_codes` es la forma cómoda de localizar geometrías por concepto sin conocer sus códigos
de antemano:

```python
# Zoom al primer edificio del dibujo
codigos = view.find_codes("edificio")          # p. ej. ['050146', '050147', ...]
for g in view:
    if any(c.code in codigos for c in g.codes):
        view.zoom_geometry(g)
        break
```

> `find_codes` consulta la tabla de códigos del proyecto (el catálogo). Que un código exista
> no implica que haya geometrías que lo usen en el dibujo cargado.

## Órdenes

| Miembro | Tipo | Descripción |
|---|---|---|
| `run_command(command)` | método | Ejecuta una orden por su nombre. |
| `add_command(command)` | método | Ejecuta una orden ([PythonCommand](python-command.md)) y la inicializa. |
| `command_push(command, send_on_lost_event_to_current_command=True)` | método | Apila una orden ([Command](command.md)) en el tope de la pila. Acepta también el nombre de la orden (`str`). |
| `command_pop()` | método (`bool`) |Quita la orden activa de la pila<br>devuelve `True` si queda otra.|
| `command_top` | propiedad (L) | La orden actual ([Command](command.md)). |

## Transformación de coordenadas

| Método | Devuelve | Descripción |
|---|---|---|
| `to_geo(coordinates)` | `tuple` |Transforma unas coordenadas del sistema de la ventana a geográficas (EPSG:4326)<br>devuelve `(longitud, latitud)`.|
| `project(coordinates)` | `float` \| `None` | Proyecta las coordenadas sobre el terreno y devuelve la `z` resultante (o `None` si no se puede). Acepta `(x, y, z)`, `(x, y)` o `x, y`. |

```python
lon, lat = view.to_geo((430000, 4480000, 700))
z = view.project((430000, 4480000))
```

## Zoom y redibujado

| Método | Descripción |
|---|---|
| `redraw()` | Fuerza a regenerar la ventana de dibujo. |
| `zoom_extents()` | Hace un zoom a la extensión total. |
| `zoom_geometry(geometry)` | Hace un zoom a la geometría indicada. |

## Diálogos

| Método | Devuelve | Descripción |
|---|---|---|
| `ask_code(title, allow_multiple_selection=False)` | `tuple[str]` | Muestra el diálogo de selección de código y devuelve los códigos elegidos. |

## Propiedades de información

| Propiedad | Tipo | Descripción |
|---|---|---|
| `min` | `tuple` | Coordenadas mínimas `(x, y, z)` de la ventana. |
| `max` | `tuple` | Coordenadas máximas `(x, y, z)` de la ventana. |
| `cursor_coordinates` | `tuple` | Coordenadas `(x, y, z)` del cursor. |
| `wkt` | `str` | Cadena WKT del sistema de coordenadas de la ventana. |
| `epsg_codes` | `tuple` | `(epsg_horizontal, epsg_vertical)`. |
| `files` | iterable | Archivos de referencia cargados ([DrawingFile](../digi21.base/drawingfile.md)). |
| `drawing_file` | `DrawingFile` | Archivo de dibujo activo. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) |Tabla de códigos activa del proyecto (secuencia de [DigiTabNode](../digi21.base/digitabnode.md))<br>la posición de cada nodo coincide con el `digitab_index` de los códigos de las geometrías.|
| `digi_tab` | `dict` | Diccionario `{código: DigiTabNode}` de la tabla activa. |
| `geographic_calculator` | [GeographicCalculator](geographic-calculator.md) | Calculadora geográfica de la ventana. |
| `topologies` | `dict` | Diccionario `{nombre: [Topology]}` de las topologías cargadas. |
| `camera` | [Camera](../digi21.base/camera.md) | Cámara activa (lectura/escritura). |
| `epsilon` | `float` | Valor de epsilon configurado. |

## Valores activos de dibujo

| Propiedad | Tipo | Descripción |
|---|---|---|
| `codes` | `list[str]` | Códigos activos. |
| `active_scale` | `tuple` | Factor de escala `(x, y, z)` de inserción de bloques. |
| `active_distance` | `float` | Distancia activa. |
| `secondary_active_distance` | `float` | Distancia activa secundaria. |
| `text_height` | `float` | Altura de texto activa. |
| `active_angle` | `float` | Ángulo activo. |
| `equidistance` | `float` | Equidistancia. |
| `drawing_scale` | `tuple` | Escala de dibujo para la representación de símbolos y patrones. |
| `text_justification` | `int` | Justificación de texto activa, de 0 a 8, con los valores de [TextJustification](../digi21.base/textjustification.md). Variable JT. |
| `active_z` | `float` | Coordenada Z que se usa cuando `fixed_z` está activada. Variable Z. |
| `elevation_point_codes` | `str` | Código con el que se registran automáticamente las cotas altimétricas y, opcionalmente, código de su texto. Variable COD_COTAS. |
| `force_active_codes` | `bool` | Asigna los códigos activos a todas las geometrías que crea cualquier orden. Variable FORZAR_CODIGO_ACTIVO. |
| `force_active_angle` | `bool` | Asigna el ángulo activo a todos los textos que crea cualquier orden. Variable FORZAR_AA_ACTIVA. |
| `force_text_height` | `bool` | Asigna la altura de texto activa a todos los textos que crea cualquier orden. Variable FORZAR_AT_ACTIVA. |
| `force_text_justification` | `bool` | Asigna la justificación de texto activa a todos los textos que crea cualquier orden. Variable FORZAR_JT_ACTIVA. |

## Visualización

| Propiedad | Tipo | Descripción |
|---|---|---|
| `background_color` | `int` | Color de fondo. |
| `unknown_color` | `int` | Color de las geometrías con código desconocido. |
| `show_solid_polygons` | `bool` | Activa/desactiva el relleno de geometrías cerradas. |
| `blending` | `bool` | Activa/desactiva la mezcla de colores. |
| `show_deleted` | `bool` | Muestra las geometrías marcadas como eliminadas. |
| `show_pattern` | `bool` | Muestra los patrones. |
| `cursor_size` | `int` | Tamaño del cursor. |
| `decimal_count` | `int` | Número de decimales a mostrar en las coordenadas. |
| `lock_coordinate_z` | `bool` | Bloquea/desbloquea la coordenada Z. |
| `show_virtual` | `bool` | Muestra las geometrías virtuales. Variable VER_VIRTUALES. Llama a `redraw()` para ver el cambio. |
| `show_non_virtual` | `bool` | Muestra las geometrías no virtuales. Variable VER_NO_VIRTUALES. Llama a `redraw()` para ver el cambio. |
| `show_pattern_photogrammetric` | `bool` | Muestra los patrones de línea en la ventana fotogramétrica. Variable PATRONS. |
| `extra_weight` | `int` | Grosor que se suma a las geometrías de la ventana de dibujo. Variable GROSOR. Llama a `redraw()` para ver el cambio. |
| `extra_weight_photogrammetric` | `int` | Grosor que se suma a los vectores de la ventana fotogramétrica. Variable GROSORS. |
| `show_contour_step` | `bool` | Muestra el paso de curvas. Variable MOSTRAR_PASO_CURVAS. |
| `dynamic_representation_while_drawing` | `bool` | Aplica la representación dinámica a la geometría que se está dibujando. Variable APLICAR_REPRESENTACION_DINAMICA_GEOMETRIA_DIBUJANDO. |

## Modos de búsqueda y tentativo

| Propiedad | Tipo | Descripción |
|---|---|---|
| `search_mode` | `int` | Modo de búsqueda activo: el primero de `search_modes`. Al asignarlo, queda como único modo. |
| `search_modes` | `list[int]` | Modos de búsqueda activos, que el tentativo prueba en orden. Variable MODOB. Necesita al menos un modo. |
| `snap_texts` | `bool` | El tentativo busca también textos. Variable TENTATIVO_TEXTOS. |
| `auto_search_mode` | `bool` | Modo de búsqueda automático. |
| `exhaustive_auto_search_mode` | `bool` | Modo de búsqueda automático exhaustivo. |
| `verify_snap` | `bool` | Verificación de tentativo. |
| `goto_snap` | `bool` | Ir al tentativo. |
| `finalize_line_when_snap` | `bool` | Finaliza la línea al tentativar. |
| `cut_lines_when_snap` | `bool` | Corta las líneas al tentativar. |
| `insert_vertex_when_snap` | `bool` | Inserta vértice al tentativar. |

## Al finalizar una línea

| Propiedad | Tipo | Descripción |
|---|---|---|
| `close_line_when_finish_line` | `bool` | Cierra la línea al finalizar. |
| `generalize_line_when_finish_line` | `bool` | Generaliza la línea al finalizar. |
| `parallelize_line_when_finish_line` | `bool` | Paraleliza la línea al finalizar. |
| `smooth_line_when_finish_line` | `bool` | Suaviza la línea al finalizar. |
| `generalization_tolerance` | `float` | Tolerancia de generalización. |
| `angular_tolerance` | `float` | Tolerancia angular de generalización. |

## Otras opciones

| Propiedad | Tipo | Descripción |
|---|---|---|
| `fixed_xy` | `bool` | Bloquea las coordenadas X, Y. |
| `fixed_z` | `bool` | Bloquea la coordenada Z. |
| `continuous_mode_increment` | `float` | Distancia para el modo continuo. |
| `input_device` | [InputDevice](enumerations.md#inputdevice) | Dispositivo de entrada. |
| `auto_panning_mouse` | `bool` | Zoom centrado automático con el ratón. |
| `auto_panning_photogrammetric_window` | `bool` | Zoom centrado automático en la ventana fotogramétrica. |
| `overlap` | `float` | Porcentaje de solape en el zoom centrado automático. |
| `automatic_mode` | `bool` | Modo automático. |
| `repeat` | `bool` | Repetición automática de comandos. |
| `block_repeat` | `bool` | Bloquea el mecanismo de repetición. |
| `beep` | `bool` | Activa las señales acústicas. Variable PITA. |
| `dtm_moves_z` | `bool` | Actualiza la coordenada Z cuando el cursor pasa sobre los modelos digitales del terreno cargados. Variable MDT_MUEVE_Z. |
| `dtm_moves_photogrammetric_window` | `bool` | Los modelos digitales del terreno cargados modifican la coordenada Z de la ventana fotogramétrica. Variable MDT_MUEVE_DIGI3D. |
| `force_store_geometries_without_database_link` | `bool` | Almacena las geometrías que no se han podido enlazar con la base de datos. Variable FORZAR_ALMACENAR_GEOMETRIAS_SIN_ENLACE_BBDD. |
| `create_topologies_in_reference_files` | `bool` | Crea las topologías también en los archivos de referencia. Variable CREAR_TOPOLOGIAS_ARCHIVOS_REFERENCIA. |
| `spacemouse_speed_xyz` | `float` | Velocidad del SpaceMouse en X, Y y Z. Variable VELOCIDAD_SPACEMOUSE_XYZ. |
| `spacemouse_speed_rotation` | `float` | Velocidad de rotación del SpaceMouse. Variable VELOCIDAD_SPACEMOUSE_ROTACION. |

## Otros métodos

| Método | Descripción |
|---|---|
| `close()` | Cierra la ventana de dibujo y sus archivos, igual que cuando la cierra el usuario. Las geometrías ya están guardadas en los archivos, así que no se pierde nada. Devuelve `False` si la ventana sigue abierta porque el usuario ha cancelado el aviso de geometrías borradas. Después de cerrarla, no uses este objeto. |

## Véase también

- [Funciones del módulo](functions.md) — `current_view`.
- [Referencia: Geometrías](../digi21.base/geometry.md)
