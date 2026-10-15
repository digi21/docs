# ResultsAddedEventHandler
<!-- id: resultsaddedeventhandler -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Delegado de los eventos que notifican un texto informativo, como el evento `ResultsAdded` de [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md).

```csharp
public delegate void ResultsAddedEventHandler(object sender, ResultsAddedEventArgs e);
```

| Parámetro | Descripción |
| :--- | :--- |
| `sender` | Objeto que genera el evento. |
| `e` | [ResultsAddedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/resultsaddedeventargs/) con el texto en `Message`. |

## Ejemplo

El [ejemplo de TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#ejemplo) declara un evento de este tipo y se suscribe a él.
