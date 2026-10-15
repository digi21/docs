# ResultsAddedEventArgs
<!-- id: resultsaddedeventargs -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Argumento de un evento [ResultsAddedEventHandler](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/delegados/resultsaddedeventhandler.md): texto informativo de una operación.

```csharp
public class ResultsAddedEventArgs : EventArgs
```

Los archivos de dibujo ([Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md)) lo envían en su evento `ResultsAdded`.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| [ResultsAddedEventArgs(string)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/resultsaddedeventargs/constructores.md) | Crea el argumento con el texto `message`. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [Message](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/resultsaddedeventargs/propiedades/message.md) | Texto informativo. |

## Ejemplo

El [ejemplo de TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#ejemplo) envía y recibe `ResultsAddedEventArgs`.
