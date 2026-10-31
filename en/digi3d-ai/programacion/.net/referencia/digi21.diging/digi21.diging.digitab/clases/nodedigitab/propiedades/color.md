# Color
<!-- id: color-2 -->
<!-- origen: d2b88fc0649f0532aa2470faf159228918d47894 -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Code color in the drawing window.

```csharp
public string Color { get; set; }
```

## Property value

`string` in one of these formats:

| Format | Example | Color |
| :--- | :--- | :--- |
| Number | `122` | Color at that index in the code table's [color palette](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/colores.md). The absolute value is used, and values above 255 are treated as 255. |
| `#RRGGBBAA` | `#FF0000FF` | Red, green, blue and alpha (opacity) components in hexadecimal, from `00` to `FF`. |

The property reads and writes the code's first representation.

## Exceptions

If the object is read-only (nonmodifiable code table or code already added using `AddCode`), assignment throws `InvalidOperationException`.
