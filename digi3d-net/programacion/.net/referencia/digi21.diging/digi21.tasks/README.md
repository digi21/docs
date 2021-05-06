# Digi21.Tasks

Este espacio de nombres proporciona tipos relacionados con tareas, resultados y progresos.

## Observaciones

Una tarea en este contexto es un error, advertencia o mensaje generado por alguna extensión y que habitualmente el operador ver en el [panel de tareas](../../../../../referencia/digi3d.net/paneles/tareas.md).

## Interfaces

|  |  |
| :--- | :--- |
| [ITask](interfaces/itask/) | Este interfaz define los métodos y propiedades que implementan las distintas tareas de Digi3D.NET. |

## Clases

|  |  |
| :--- | :--- |
| [ProgressEventArgs](clases/progresseventargs/) | Argumento de evento para los eventos que comunican que ha variado el progreso de una tarea. |
| [ResultsAddedEventArgs](clases/resultsaddedeventargs/) | Argumento de evento para los eventos que comunican resultados. |
| [TaskAddedEventArgs](clases/taskaddedeventargs/) | Argumento de evento para los eventos que añaden tareas. |
| [TaskBase](clases/taskbase/) | Esta clase abstracta sirve como base para especializaciones de [ITask](interfaces/itask/). |

## Enumeraciones

|  |  |
| :--- | :--- |
| [TaskSeverity](enumeraciones/taskseverity.md) | Esta enumeración define los tipos de gravedad de un [ITask](interfaces/itask/). |

## Delegados

|  |  |
| :--- | :--- |
| [ProgressEventHandler](delegados/progresseventhandler.md) | Define un tipo de delegado usado por para comunicar que ha variado el progreso de un proceso. |
| [ResultsAddedEventHandler](delegados/progresseventhandler.md) | Define un tipo de delegado usado por para comunicar un nuevo mensaje. |
| [TaskAddedEventHandler](delegados/taskaddedeventhandler.md) | Define un tipo de delegado usado por para comunicar que se ha añadido una tarea. |

