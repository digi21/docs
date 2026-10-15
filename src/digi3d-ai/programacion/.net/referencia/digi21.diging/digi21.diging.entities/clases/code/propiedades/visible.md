# Visible
<!-- id: visible -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Máscara de bits de los tipos de entidad que se muestran con este código en la ventana de dibujo.

```csharp
public uint Visible { get; set; }
```

## Valor de la propiedad

Cada bit corresponde a un tipo de entidad. Una entidad se muestra en la ventana de dibujo si alguno de sus códigos tiene activo el bit de su tipo y la entidad no está oculta ([Entity.Hidden](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/hidden.md)). El resultado se lee en [Entity.Visible](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/visible.md).

| Bit | Tipo de entidad |
| :--- | :--- |
| `0x1` | Línea |
| `0x2` | Punto |
| `0x4` | Texto |
| `0x8` | Complejo |
| `0x10` | Polígono |
| `0x20` | Complejo puntual |

`0xFFFFFFFF` muestra todos los tipos y `0` no muestra ninguno. Los constructores asignan `0xFFFFFFFF`, salvo `Code(string, int?, int?)`, que asigna `1` (lee [Constructores](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/constructores.md)).

`Code` es una estructura: asignar `Visible` en un elemento de `Entity.Codes` modifica una copia. Asigna después la copia a `Entity.Codes[i]`.

## Ejemplo

```csharp
// Oculta los puntos con el primer código de la línea, y muestra el resto de tipos.
var código = línea.Codes[0];
código.Visible = 0xFFFFFFFF & ~0x2u;
línea.Codes[0] = código;
```
