# Orientation
<!-- id: orientation-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve o asigna la orientación en el espacio del [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/).

```csharp
public new Quaternion Orientation { get; set; }
```

## Valor de la propiedad

Un [Quaternion](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/quaternion.md) que se aplica al texto antes de [Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md), en el sistema local del texto. En un `Text` nuevo vale [Quaternion.Identity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/quaternion.md), (1, 0, 0, 0), y el texto está en el plano XY. La lectura devuelve el mismo valor que [ReadOnlyText.Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/orientation.md). La página de `ReadOnlyText.Orientation` explica el sistema local del texto, la composición con `Rotation` y las orientaciones más habituales.

Al asignar la propiedad:

- El texto almacena el cuaternión normalizado: las cuatro componentes divididas por la norma √(W² + X² + Y² + Z²). Por eso (1, 1, 0, 0) equivale a (cos 45°, sin 45°, 0, 0), la rotación de 90° alrededor del eje X. Si la norma difiere de 1 en 10⁻¹² o menos, el texto almacena el cuaternión sin modificarlo.
- Si la norma es 0, infinita o `NaN`, el texto almacena `Quaternion.Identity`. Es el caso del valor por defecto de la estructura, `default(Quaternion)`, que tiene las cuatro componentes a 0, y de un cuaternión con alguna componente infinita o `NaN`.
- El valor de `Rotation` no cambia. Asignar `Rotation` tampoco cambia el valor de `Orientation`.

`Quaternion` es un tipo de valor y la propiedad devuelve una copia. `texto.Orientation.X = 1.0` no compila (error CS1612): para cambiar una componente, asigna a la propiedad el cuaternión completo.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | Se asigna el valor y el texto es de solo lectura (`ReadOnly` es `true`). |

## Ejemplo

Este fragmento crea un texto en un plano vertical, con la línea base a 30° del eje X en planta:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.Math;

var fachada = new Text(new Code("080101"))
{
    Txt = "Fachada",
    Coordinate = new Point3D(450000.0, 4480000.0, 12.0),
    TextHeight = 2.5,
    Rotation = 30.0,
    // (1, 1, 0, 0) normalizado es (cos 45°, sin 45°, 0, 0): la rotación de 90° alrededor del eje X.
    Orientation = new Quaternion(1.0, 1.0, 0.0, 0.0),
};

Console.WriteLine(fachada.Orientation);   // (0.7071067811865475, 0.7071067811865475, 0, 0)
```
