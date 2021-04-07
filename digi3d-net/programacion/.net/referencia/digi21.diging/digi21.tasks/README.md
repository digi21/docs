# Digi21.Tasks

Este espacio de nombres proporciona tipos relacionados con tareas, resultados y progresos.

## Observaciones

Una tarea en este contexto es un error, advertencia o mensaje generado por alguna extensión y que habitualmente el operador ver en el [panel de tareas](../../../../../referencia/digi3d.net/paneles/tareas.md).

## Interfaces

|  |  |
| :--- | :--- |
| [ITask](itask/) | Este interfaz define los métodos y propiedades que implementan las distintas tareas de Digi3D.NET. |

## Clases

|  |  |
| :--- | :--- |
| [ProgressEventArgs](progresseventargs/) | Argumento de evento para los eventos que comunican que ha variado el progreso de una tarea. |
| [ResultsAddedEventArgs](resultsaddedeventargs/) | Argumento de evento para los eventos que comunican resultados. |
| [TaskAddedEventArgs](taskaddedeventargs/) | Argumento de evento para los eventos que añaden tareas. |
| [TaskBase](taskbase/) | Esta clase abstracta sirve como base para especializaciones de [ITask](itask/). |

## Enumeraciones

|  |  |
| :--- | :--- |
| [TaskSeverity](taskseverity.md) | Esta enumeración define los tipos de gravedad de un [ITask](itask/). |

## Delegados

|  |  |
| :--- | :--- |
| [ProgressEventHandler](progresseventhandler.md) | Define un tipo de delegado usado por para comunicar que ha variado el progreso de un proceso. |
| [ResultsAddedEventHandler](progresseventhandler.md) | Define un tipo de delegado usado por para comunicar un nuevo mensaje. |
| [TaskAddedEventHandler](taskaddedeventhandler.md) | Define un tipo de delegado usado por para comunicar que se ha añadido una tarea. |

