# StatusBar
<!-- id: statusbar -->

Espacio de nombres: `Digi21.Digi3D`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Barra de estado de la ventana principal de Digi3D.AI: el texto de la barra y su barra de progreso.

```csharp
public class StatusBar
```

La clase no tiene constructores públicos. La instancia se obtiene con [Digi3D.StatusBar](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md).

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Text { set; }` | Escribe el texto en la barra de estado. Las órdenes la usan para indicar al usuario qué tiene que hacer, por ejemplo «Selecciona la línea límite». Una cadena vacía muestra el mensaje de reposo de la aplicación. Si el usuario ha activado la opción de configuración «Texto a voz en barra de estado», Digi3D.AI pronuncia el texto con [Digi3D.SynthesizeVoice](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md). Desde un hilo que no es el de la interfaz de usuario, Digi3D.AI envía el texto a ese hilo. |
| `Progress ProgressBar { get; }` | [Barra de progreso](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/progress.md) de la barra de estado. Devuelve siempre la misma instancia. |

## Ejemplo

El ejemplo de [Progress](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/progress.md) usa `Text` y `ProgressBar`.
