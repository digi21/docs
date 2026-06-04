# Tareas

Módulo: `digi3d`

Las **tareas** son entradas que se muestran en el panel de tareas de Digi3D.NET. Al hacer
doble clic sobre ellas se ejecuta una acción (mostrar un cuadro de diálogo, desplazar la
ventana a unas coordenadas, etc.). Se añaden con
[`add_task()`](functions.md#paneles-de-resultados-y-tareas).

## TaskBase

Clase base de todas las tareas. No se instancia directamente.

## TaskMessageBox

Tarea que, al hacer doble clic, muestra un cuadro de diálogo.

```python
TaskMessageBox(title, description, drawingFile="", module="", type=TaskType.Error)
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `title` | `str` | Título de la tarea. |
| `description` | `str` | Descripción / mensaje. |
| `drawingFile` | `str` | Archivo de dibujo asociado (opcional). |
| `module` | `str` | Módulo asociado (opcional). |
| `type` | [TaskType](enumerations.md#tasktype) | Tipo (info/aviso/error). |

## TaskGotoCoordinates

Tarea que, al hacer doble clic, desplaza la ventana de dibujo a unas coordenadas.

```python
TaskGotoCoordinates(coordinates, title, description, drawingFile="", module="", type=TaskType.Error)
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `coordinates` | `tuple` | Coordenadas `(x, y, z)` o `(x, y)` de destino. |
| `title` | `str` | Título de la tarea. |
| `description` | `str` | Descripción / mensaje. |
| `drawingFile` | `str` | Archivo de dibujo asociado (opcional). |
| `module` | `str` | Módulo asociado (opcional). |
| `type` | [TaskType](enumerations.md#tasktype) | Tipo (info/aviso/error). |

## Ejemplo

```python
import digi3d

digi3d.show_tasks(True)
digi3d.add_task(digi3d.TaskGotoCoordinates(
    (430000, 4480000, 700),
    "Vértice sospechoso",
    "La curva de nivel sube y baja en este punto",
    type=digi3d.TaskType.Warning))
```

## Véase también

- [Funciones del módulo](functions.md#paneles-de-resultados-y-tareas) — `add_task`, `show_tasks`, `clear_tasks`.
- [TaskType](enumerations.md#tasktype)
