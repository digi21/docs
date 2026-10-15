# MoveEventArgs
<!-- id: digi21.diging.plugin.command.moveeventargs -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Command`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Datos del evento `Move` de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md), que se produce cuando el usuario desplaza el cursor en la ventana de dibujo.

```csharp
public class MoveEventArgs : EventArgs
```

## Constructores

```csharp
public MoveEventArgs(Point3D coordinates, InputDeviceButton button)
```

Crea los datos del evento con los valores de los parámetros, que se devuelven en `Coordinates` y `Button`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `Point3D Coordinates { get; }` | Coordenadas terreno del cursor. |
| `InputDeviceButton Button { get; }` | Botón del dispositivo de entrada pulsado durante el desplazamiento: `None` si no hay ninguno, `Data`, `Snap` o `Cancel`. Lee [InputDeviceButton](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevicebutton.md). |

Si hay un botón pulsado y no ha pasado el tiempo de espera configurado desde la última pulsación del botón de dato, Digi3D.AI no produce el evento.

## Ejemplo

La orden de ejemplo de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md#ejemplo) usa `Coordinates` en el manejador de `Move` para mostrar la distancia al primer punto en la barra de estado.
