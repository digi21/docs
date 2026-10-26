# Digi21.Tasks
<!-- id: digi21.tasks -->

Espacio de nombres del ensamblado [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/) con los tipos de tareas, resultados y progreso.

Una tarea es un error, una advertencia o un mensaje que genera una extensión o un archivo de dibujo. Digi3D.AI muestra las tareas en el [panel de tareas](/digi3d-ai/referencia/paneles/tareas.md); una extensión las añade con [Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md). Los archivos de dibujo ([Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md)) notifican sus tareas, sus resultados y su progreso con los eventos `TaskAdded`, `ResultsAdded` y `ProgressChanged`, que usan los delegados de este espacio de nombres.

## Interfaces

| Interfaz | Descripción |
| :--- | :--- |
| [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) | Miembros de una tarea: título, gravedad, archivo de dibujo, módulo, subtareas y la acción que se ejecuta con un doble clic en el panel de tareas. |

## Clases

| Clase | Descripción |
| :--- | :--- |
| [ProgressEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/progresseventargs/) | Argumento de un evento `ProgressEventHandler`: porcentaje de progreso. |
| [ResultsAddedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/resultsaddedeventargs/) | Argumento de un evento `ResultsAddedEventHandler`: texto informativo. |
| [TaskAddedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskaddedeventargs/) | Argumento de un evento `TaskAddedEventHandler`: tarea nueva. |
| [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) | Clase base abstracta que implementa `ITask` salvo el método `Execute`. |

## Enumeraciones

| Enumeración | Descripción |
| :--- | :--- |
| [TaskSeverity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md) | Gravedad de una tarea: `Error`, `Warning` o `Message`. |

## Delegados

| Delegado | Descripción |
| :--- | :--- |
| [ProgressEventHandler](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/delegados/progresseventhandler.md) | Delegado de los eventos que notifican un porcentaje de progreso. |
| [ResultsAddedEventHandler](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/delegados/resultsaddedeventhandler.md) | Delegado de los eventos que notifican un texto informativo. |
| [TaskAddedEventHandler](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/delegados/taskaddedeventhandler.md) | Delegado de los eventos que notifican una tarea nueva. |

El [ejemplo de TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#ejemplo) usa todos los tipos de este espacio de nombres.
