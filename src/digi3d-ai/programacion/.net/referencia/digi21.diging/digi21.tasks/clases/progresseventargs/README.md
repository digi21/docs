# ProgressEventArgs
<!-- id: progresseventargs -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Argumento de un evento [ProgressEventHandler](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/delegados/progresseventhandler.md): porcentaje de progreso de una operación.

```csharp
public class ProgressEventArgs : EventArgs
```

Los archivos de dibujo ([Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md)) lo envían en su evento `ProgressChanged`.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| [ProgressEventArgs(int)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/progresseventargs/constructores.md) | Crea el argumento con el porcentaje `progress`. Un valor negativo se guarda como 0. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [Progress](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/progresseventargs/propiedades/progress.md) | Porcentaje de progreso. Nunca es negativo. |

## Ejemplo

El [ejemplo de TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#ejemplo) envía y recibe `ProgressEventArgs`.
