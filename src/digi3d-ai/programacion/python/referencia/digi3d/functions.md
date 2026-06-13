# Funciones del módulo

Módulo: `digi3d`

Funciones disponibles directamente en el módulo `digi3d`.

## current_view

```python
current_view() -> DrawingView
```

Devuelve la [DrawingView](drawing-view.md) activa (o `None` si no hay ninguna). Es el
punto de entrada habitual de un guion.

## Mensajes y avisos

| Función | Descripción |
|---|---|
| `music(type=MusicType.Beep)` | Hace sonar uno de los sonidos estándar ([MusicType](enumerations.md#musictype)). |
| `print_statusbar(message)` | Escribe un mensaje en la barra de estado. |
| `show_ballon(title, body, icon=BallonType.Info, time=1000)` | Muestra un globo informativo temporal ([BallonType](enumerations.md#ballontype)). |
| `progress(value=-1)` | Actualiza la barra de progreso (porcentaje). |
| `ask_question(question)` |Muestra un diálogo modal Sí/No<br>devuelve `True` o `False`.|
| `show_info(message)` | Muestra un diálogo modal con información para el usuario. |

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
- [Tareas](tasks.md)
- [Enumeraciones](enumerations.md)
