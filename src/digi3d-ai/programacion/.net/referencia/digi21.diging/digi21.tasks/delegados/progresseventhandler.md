# ProgressEventHandler
<!-- id: progresseventhandler -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Delegado de los eventos que notifican el porcentaje de progreso de una operación, como el evento `ProgressChanged` de [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md).

```csharp
public delegate void ProgressEventHandler(object sender, ProgressEventArgs e);
```

| Parámetro | Descripción |
| :--- | :--- |
| `sender` | Objeto que genera el evento. |
| `e` | [ProgressEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/progresseventargs/) con el porcentaje en `Progress`. |

## Ejemplo

El [ejemplo de TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#ejemplo) declara un evento de este tipo y se suscribe a él.
