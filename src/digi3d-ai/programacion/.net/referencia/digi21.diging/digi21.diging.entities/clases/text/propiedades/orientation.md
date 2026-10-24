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

## La dirección en planta va en Rotation

Asigna a `Rotation` la dirección de la línea base en planta y usa `Orientation` solo para inclinar el texto fuera del plano XY, sin giro alrededor del eje Z. Para un texto en una fachada con la línea base a 30° en planta, asigna `Rotation = 30.0` y `Orientation = new Quaternion(1.0, 1.0, 0.0, 0.0)`, no `Rotation = 0.0` con un cuaternión que incluya los 30°. Las órdenes de Digi3D.AI y los importadores de DWG/DXF, DGN y Geomedia guardan los textos siempre de esta forma.

Las dos formas dibujan el texto igual, pero el texto conserva el cuaternión asignado y no traslada a `Rotation` su giro alrededor del eje Z. Con un cuaternión que gira alrededor del eje Z:

- `Rotation` no es la dirección del texto en planta. Asignar `Rotation = a` deja la línea base a `a` grados más el ángulo en planta que el cuaternión da por sí solo a la línea base.
- Los formatos que solo guardan el giro (BIN, VEC, GeoJSON y PDF) escriben el texto con la dirección de `Rotation`. Consulta [Orientación de los textos en los archivos de dibujo](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md#orientación-de-los-textos-en-los-archivos-de-dibujo).
- Un texto del plano XY con un cuaternión que solo gira alrededor del eje Z cuenta como orientado. El formato BIND lo guarda en un registro `Digi21.DigiNG.Text2`, y las versiones de Digi3D anteriores a ese registro no cargan el texto.

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
