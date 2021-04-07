# ITask

Espacio de nombres: [Digi21.Tasks](../)  
Ensamblado: [Digi21.DigiNG](../../)

Este interfaz define los métodos y propiedades que implementan las distintas tareas de Digi3D.NET.

```csharp
public interface ITask
```

Tipos derivados: [TaskBase](../taskbase/)

## Propiedades

|  |  |
| :--- | :--- |
| [Children](propiedades/childs.md) | Devuelve un array subtareas. |
| [Module](propiedades/module.md) | Devuelve el nombre del módulo que generó la tarea. |
| [DrawingFile](propiedades/drawingfile.md) | Devuelve la ruta del archivo de dibujo que provocó que se generara la tarea. |
| [Severity](propiedades/severity.md) | Devuelve un [TaskSeverity ](../taskseverity.md)indicando el tipo de tarea. |
| [Title](propiedades/title.md) | Devuelve el título de la tarea. |

## Métodos

|  |  |
| :--- | :--- |
| [Execute\(\)](metodos/execute.md) | Fuerza la ejecución de la tarea. |

