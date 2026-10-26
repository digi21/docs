# Funciones del módulo
<!-- id: functions -->

Módulo: `digi3d`

Funciones disponibles directamente en el módulo `digi3d`.

## current_view

```python
current_view() -> DrawingView
```

Devuelve la [DrawingView](drawing-view.md) activa (o `None` si no hay ninguna). Es el
punto de entrada habitual de un guion. Si la ventana activa es la ventana fotogramétrica, devuelve la
ventana de dibujo abierta.

## Abrir un dibujo

```python
open_drawing(path, code_table=None, scale=None, register_increment=None, equidistance=None,
             text_height=None, tolerance=None, z_correction=None, sigma=None, crs_wkt=None,
             references=None) -> DrawingView
```

Abre un archivo de dibujo en una ventana de dibujo nueva y devuelve su [DrawingView](drawing-view.md).
Hace lo mismo que el cuadro de abrir dibujo, sin mostrarlo. Si el archivo no existe, el formato lo
crea.

Digi3D.AI abre un solo dibujo a la vez: si ya hay uno abierto, la función lanza `RuntimeError`.
Cierra el dibujo abierto con [`DrawingView.close()`](drawing-view.md#otros-métodos) antes de abrir otro dibujo.

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo de dibujo. La carpeta tiene que existir. |
| `code_table` | `str` | Ruta de la tabla de códigos. El archivo tiene que existir. |
| `scale` | `float` | Escala de visualización de los patrones. |
| `register_increment` | `float` | Incremento de registro. |
| `equidistance` | `float` | Equidistancia entre curvas de nivel. |
| `text_height` | `float` | Altura de los textos. |
| `tolerance` | `float` | Tolerancia de generalización. |
| `z_correction` | `float` | Corrección de Z. |
| `sigma` | `float` | Sigma. |
| `crs_wkt` | `str` | Sistema de coordenadas de la ventana de dibujo, en WKT. |
| `references` | `list[str]` | Archivos de referencia que se cargan. Si no se indica `references`, se cargan los archivos de referencia guardados con el dibujo. Un archivo que no estaba guardado queda guardado con el dibujo, igual que cuando cargas ese archivo. |

Los argumentos que no se pasan toman los últimos valores usados en el cuadro de abrir dibujo. Los que
se pasan quedan como últimos valores usados, igual que con el cuadro; si el dibujo no se puede abrir,
Digi3D.AI restaura los valores anteriores. Las opciones del formato son las últimas que se usaron con
ese formato.

## Abrir sin cuadros de diálogo

`open_drawing`, `open_project`, `load_model` y `open_photogrammetric_file` no muestran ningún cuadro de
diálogo, para que un guion o un cliente MCP no se quede esperando a que el usuario conteste. Cuando
Digi3D.AI preguntaría algo al usuario, la función toma la respuesta indicada en la tabla y escribe un aviso que
empieza por `Warning:` en la salida del guion:

| Situación | Respuesta |
|---|---|
| Un archivo de referencia no existe. | No se carga; el resto del dibujo se abre. |
| La tabla de códigos no se puede cargar. | El dibujo no se abre. |
| Hay que elegir la transformación entre dos sistemas de coordenadas y no hay ninguna guardada. | El archivo no se carga. Ábrelo una vez desde Digi3D.AI para elegirla; después se usa la guardada. |
| Varios formatos pueden leer el archivo. | El archivo no se carga. |
| El archivo no tiene sistema de coordenadas. | Se obtiene el mismo resultado que al cancelar el cuadro de selección del sistema de coordenadas. |
| Hay que elegir las capas o tablas del archivo. | El archivo no se carga. |
| El proyecto fotogramétrico no tiene sistema de coordenadas. | Se carga con un sistema local, sin crear el archivo `.prj`. |
| Cualquier otro mensaje con botones. | La función elige No, cancelar o abortar, según los botones del mensaje. |

Si `open_drawing` falla, el mensaje de la excepción incluye los avisos. Las órdenes de inicio que
ejecutan la tabla de códigos y el dibujo al abrir la ventana también reciben las respuestas indicadas en la tabla.

Algunos cuadros no se pueden evitar todavía y siguen esperando al usuario: el aviso de licencia, la
petición del sistema de coordenadas de un modelo de cámara cónica cuya aerotriangulación no lo tiene y
la elección del sistema de coordenadas de un GeoPackage que tiene varios.

```python
import digi3d

view = digi3d.current_view()
if view is not None:
    view.close()
view = digi3d.open_drawing(r"C:\Proyectos\hoja2.bin", code_table=r"C:\Proyectos\tabla.tab")
```

## Ventana fotogramétrica y proyectos

### photogrammetric_view

```python
photogrammetric_view() -> PhotogrammetricView | None
```

Devuelve la [ventana fotogramétrica](photogrammetric-view.md) activa, o `None` si no hay ninguna.

### open_photogrammetric_file

```python
open_photogrammetric_file(path) -> PhotogrammetricView
```

Abre un archivo de modelo fotogramétrico (`.d3d`) en una ventana fotogramétrica nueva y la devuelve.
Lanza `ValueError` si el archivo no es `.d3d` y `RuntimeError` si Digi3D.AI no puede abrirlo.

### open_project

```python
open_project(path) -> bool
```

Carga un proyecto fotogramétrico en el panel de proyectos, igual que el botón **Cargar** del panel.
Devuelve `False` si no se ha cargado; Digi3D.AI muestra el motivo al usuario. Si el proyecto no tiene
sistema de coordenadas, Digi3D.AI se lo pide al usuario y la función espera la respuesta.

### project

```python
project() -> dict | None
```

Devuelve el proyecto cargado en el panel de proyectos, o `None` si no hay ninguno:

| Clave | Tipo | Descripción |
|---|---|---|
| `file` | `str` | Ruta del archivo del proyecto. |
| `viewpoint` | `str` | Punto de vista seleccionado en el panel. |
| `viewpoints` | `list[str]` | Puntos de vista del proyecto. |
| `models` | `list[dict]` | En un proyecto de modelos, los modelos del punto de vista seleccionado: `strip` (pasada), `name` (nombre) y `loadable` (si se puede cargar). |
| `photos` | `list[str]` | En un proyecto de fotos, los nombres de las fotos. |

### load_model

```python
load_model(name, new_window=False) -> bool
```

Carga un modelo del proyecto, igual que un clic en un modelo del panel de proyectos. En un proyecto de
fotos, el nombre del modelo es `izquierda-derecha`, con los nombres de dos fotos distintas.

- Si hay una ventana fotogramétrica abierta, el modelo sustituye al de esa ventana y se carga en
  segundo plano **después de que termine el guion**. Comprueba
  [`model_name`](photogrammetric-view.md#modelo-cargado) en un guion posterior.
- Si no hay ninguna ventana, o con `new_window=True`, abre una ventana fotogramétrica nueva antes de
  devolver el control al guion.

Lanza `RuntimeError` si no hay ningún proyecto cargado y `ValueError` si el proyecto no tiene ese
modelo en el punto de vista seleccionado o si el panel muestra el modelo deshabilitado. Devuelve
`False` si no ha podido empezar la carga.

```python
import digi3d

if digi3d.open_project(r"C:\Proyectos\vuelo.d3dprj"):
    modelos = digi3d.project()["models"]
    digi3d.load_model(modelos[0]["name"])
```

## Mensajes y avisos

| Función | Descripción |
|---|---|
| `music(type=MusicType.Beep)` | Hace sonar uno de los sonidos estándar ([MusicType](enumerations.md#musictype)). |
| `print_statusbar(message)` | Escribe un mensaje en la barra de estado. |
| `show_ballon(title, body, icon=BallonType.Info, time=1000)` | Muestra un globo informativo temporal ([BallonType](enumerations.md#ballontype)). |
| `progress(value=-1)` | Actualiza la barra de progreso (porcentaje). |
| `ask_question(question)` |Muestra un cuadro de diálogo modal Sí/No.<br>Devuelve `True` o `False`.|
| `show_info(message)` | Muestra un cuadro de diálogo modal con información para el usuario. |

## Paneles de resultados y tareas

| Función | Descripción |
|---|---|
| `show_results(show=True)` | Muestra u oculta el panel de resultados. |
| `clear_results()` | Limpia el panel de resultados. |
| `add_result(message, scroll=True, update=True)` | Añade una línea al panel de resultados. |
| `get_results()` | Devuelve el contenido del panel de resultados (`str`). |
| `show_tasks(show=True)` | Muestra u oculta el panel de tareas. |
| `clear_tasks()` | Limpia el panel de tareas. |
| `add_task(task)` | Añade una [tarea](tasks.md) al panel de tareas. |

## Diálogo de archivo

```python
ask_file(load, filetypes, title=None) -> str | None
```

Muestra un cuadro de diálogo de abrir/guardar archivo y devuelve la ruta elegida (o
`None` si se cancela).

| Argumento | Tipo | Descripción |
|---|---|---|
| `load` | `bool` | `True` para abrir, `False` para guardar. |
| `filetypes` | `list[tuple]` | Lista de pares `(descripción, extensión)`, p. ej. `[("AutoCAD DWG", "*.dwg")]`. |
| `title` | `str` | Título del diálogo (opcional). |

## Utilidades de geometría

| Función | Devuelve | Descripción |
|---|---|---|
| `same_coordinates(a, b)` | `bool` | Indica si dos coordenadas son idénticas teniendo en cuenta el sigma activo. Acepta `(x,y,z)`, `(x,y)` o un único valor. |
| `non_connected(geometries)` | `list` | Devuelve los extremos no conectados: lista de `(geometría, índice_de_vértice)` cuyo vértice inicial/final no comparte nodo con ningún otro. |
| `get_intersections(geometry, geometries)` | `dict` | Vértices de `geometry` que coinciden con vértices de otras geometrías: `{(x, y): {geometría: índice_de_vértice}}`. |

## Ejemplo

```python
import digi3d

view = digi3d.current_view()

digi3d.show_results(True)
digi3d.add_result(f"La ventana tiene {len(view)} geometrías")

if digi3d.ask_question("¿Continuar?"):
    digi3d.music(digi3d.MusicType.End)
```

## Véase también

- [DrawingView](drawing-view.md)
- [PhotogrammetricView](photogrammetric-view.md)
- [Tareas](tasks.md)
- [Enumeraciones](enumerations.md)
