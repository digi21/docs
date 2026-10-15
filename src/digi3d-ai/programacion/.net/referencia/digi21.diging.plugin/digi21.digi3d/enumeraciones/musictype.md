# MusicType
<!-- id: musictype -->

Espacio de nombres: `Digi21.Digi3D`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Sonido que reproduce [Digi3D.Music](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md). Son los sonidos que usa Digi3D.AI en sus propias órdenes.

```csharp
public enum MusicType
```

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Beep` | 0 | Sonido de dato. Con la salida por el altavoz del equipo, es un pitido de 2500 Hz y 10 ms. |
| `EndOfLongProcess` | 1 | Sonido de fin de orden. Con la salida por el altavoz del equipo, es un pitido de 1500 Hz y 50 ms. |
| `Error` | 2 | Sonido de error. Con la salida por el altavoz del equipo, son tres pitidos descendentes de 200 ms. |

Si el usuario ha configurado archivos de sonido en lugar del altavoz, Digi3D.AI reproduce el archivo asignado a cada tipo de sonido.

## Ejemplo

El ejemplo de [Digi3D](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md) reproduce `MusicType.EndOfLongProcess`.
