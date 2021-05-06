# TaskBase

Espacio de nombres: [Digi21.Tasks](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Esta clase abstracta sirve como base para especializaciones de [ITask](../../interfaces/itask/).

```csharp
public abstract class TaskBase : ITask
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [EventArgs ](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0)→ TaskBase

Tipos derivados: [TaskAnimateEntity](../../../../digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md), [TaskEntityGotoPoint](../../../../digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskentitygotopoint.md), [TaskGotoPoint](../../../../digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md), [TaskMessageBox](../../../../digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskmessagebox.md), [TaskZoomEntity](../../../../digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskzoomentity.md)

Implementa: [ITask](../../interfaces/itask/)

## Constructores

|  |  |
| :--- | :--- |
| [TaskBase\(\)](constructores.md#taskbase) | Inicializa una nueva instancia de [TaskBase](./). |
| [TaskBase\(string, TaskSeverity\)](constructores.md#taskbase-string-taskseverity) | Inicializa una nueva instancia de [TaskBase](./) asignándole un título y parámetro de gravedad. |
| [TaskBase\(string, TaskSeverity, string, string\)](constructores.md#taskbase-string-taskseverity-string-string) | Inicializa una nueva instancia de [TaskBase](./) asignándole un título, parámetro de gravedad, nombre de archivo de dibujo y nombre del módulo. |
| [TaskBase\(string, TaskSeverity, string, string, ITask\[\]\)](constructores.md#taskbase-string-taskseverity-string-string-itask) | Inicializa una nueva instancia de [TaskBase](./) asignándole un título, parámetro de gravedad, nombre de archivo de dibujo, nombre del módulo y subtareas. |

## Propiedades

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><a href="../../interfaces/itask/propiedades/childs.md">Children</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un array subtareas.</p>
        <p>(Heredado de <a href="../../interfaces/itask/">ITask</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../interfaces/itask/propiedades/module.md">Module</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el nombre del m&#xF3;dulo que gener&#xF3; la tarea.</p>
        <p>(Heredado de <a href="../../interfaces/itask/">ITask</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../interfaces/itask/propiedades/drawingfile.md">DrawingFile</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la ruta del archivo de dibujo que provoc&#xF3; que se generara
          la tarea.</p>
        <p>(Heredado de <a href="../../interfaces/itask/">ITask</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../interfaces/itask/propiedades/severity.md">Severity</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un <a href="../../enumeraciones/taskseverity.md">TaskSeverity </a>indicando
          el tipo de tarea.</p>
        <p>(Heredado de <a href="../../interfaces/itask/">ITask</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../interfaces/itask/propiedades/title.md">Title</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el t&#xED;tulo de la tarea.</p>
        <p>(Heredado de <a href="../../interfaces/itask/">ITask</a>)</p>
      </td>
    </tr>
  </tbody>
</table>

## Métodos

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><a href="../../interfaces/itask/metodos/execute.md">Execute()</a>
      </td>
      <td style="text-align:left">
        <p>Fuerza la ejecuci&#xF3;n de la tarea.</p>
        <p>(Heredado de <a href="../../interfaces/itask/">ITask</a>)</p>
      </td>
    </tr>
  </tbody>
</table>

