# DrawingView

Módulo: `digi3d`

Representa la **ventana de dibujo** de Digi3D.NET. Es el objeto central de un guion en el
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

## Geometrías: añadir y borrar

| Método | Descripción |
|---|---|
| `add(geometry)` | Añade una geometría al archivo de dibujo activo. Lanza error si ya pertenece a un archivo. |
| `add(geometries)` | Añade una lista de geometrías. |
| `delete(geometry)` | Borra una geometría. |
| `delete(geometries)` | Borra un iterable o una lista de geometrías. |

```python
linea = digi3d.Line(["CARR"], [(0, 0, 0), (10, 0, 0)])
view.add(linea)

# Borrar las geometrías marcadas como eliminadas
view.delete(g for g in view if g.deleted)
```

## Órdenes

| Miembro | Tipo | Descripción |
|---|---|---|
| `run_command(command)` | método | Ejecuta una orden por su nombre. |
| `add_command(command)` | método | Ejecuta una orden ([PythonCommand](python-command.md)) y la inicializa. |
| `command_push(command, send_on_lost_event_to_current_command=True)` | método | Apila una orden ([Command](command.md)) en el tope de la pila. Acepta también el nombre de la orden (`str`). |
| `command_pop()` | método (`bool`) | Quita la orden activa de la pila; devuelve `True` si queda otra. |
| `command_top` | propiedad (L) | La orden actual ([Command](command.md)). |

## Transformación de coordenadas

| Método | Devuelve | Descripción |
|---|---|---|
| `to_geo(coordinates)` | `tuple` | Transforma unas coordenadas del sistema de la ventana a geográficas (EPSG:4326); devuelve `(longitud, latitud)`. |
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
| `files` | iterable | Archivos de referencia cargados ([DrawingFile](../referencia/digi21.base/drawingfile.md)). |
| `drawing_file` | `DrawingFile` | Archivo de dibujo activo. |
| `digi_tab` | `dict` | Diccionario `{código: DigiTabNode}` de la tabla activa. |
| `geographic_calculator` | [GeographicCalculator](geographic-calculator.md) | Calculadora geográfica de la ventana. |
| `topologies` | `dict` | Diccionario `{nombre: [Topology]}` de las topologías cargadas. |
| `camera` | [Camera](../referencia/digi21.base/camera.md) | Cámara activa (lectura/escritura). |
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

## Modos de búsqueda y tentativo

| Propiedad | Tipo | Descripción |
|---|---|---|
| `search_mode` | `int` | Modo de búsqueda activo. |
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

## Otros métodos

| Método | Descripción |
|---|---|
| `close()` | Cierra la ventana activa. |

## Véase también

- [Funciones del módulo](functions.md) — `current_view`.
- [Referencia: Geometrías](../referencia/digi21.base/geometry.md)
