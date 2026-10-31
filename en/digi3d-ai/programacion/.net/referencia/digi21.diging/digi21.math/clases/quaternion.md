# Quaternion
<!-- id: quaternion -->
<!-- origen: a72d28b446e5a151e5871487638dc29f1ff7d220 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Rotation quaternion: four components `W`, `X`, `Y` and `Z` representing a rotation in space. This is the type of [ReadOnlyText.Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/orientation.md) and [Text.Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/orientation.md).

```csharp
public struct Quaternion
```

A unit quaternion represents a rotation by angle θ around an axis with unit direction vector (ux, uy, uz), using components `W` = cos(θ/2), `X` = ux·sin(θ/2), `Y` = uy·sin(θ/2) and `Z` = uz·sin(θ/2). For example, the 90° rotation around the X axis is `new Quaternion(Math.Cos(Math.PI / 4), Math.Sin(Math.PI / 4), 0.0, 0.0)`.

`Quaternion` is a value type: assignment copies all four components. A property returning a `Quaternion`, such as `Text.Orientation`, returns a copy: to change the text's orientation, assign the modified quaternion to the property.

The structure does not normalize the components. `Text.Orientation` normalizes the quaternion when it is assigned.

The structure's default value, `default(Quaternion)` or `new Quaternion()`, has all four components set to 0 and represents no rotation. If this value is assigned to `Text.Orientation`, the text stores [Identity](#static-properties).

The structure does not define the `==` and `!=` operators. `Equals`, inherited from `ValueType`, compares all four components without tolerance. The quaternions `q` and `-q` represent the same rotation, but `Equals` considers them different.

## Constructors

| Constructor | Description |
| :--- | :--- |
| `Quaternion(double w, double x, double y, double z)` | Creates the quaternion (`w`, `x`, `y`, `z`). Does not normalize the components. |

## Properties

| Property | Description |
| :--- | :--- |
| `double W { get; set; }` | Real component. |
| `double X { get; set; }` | Imaginary component i. |
| `double Y { get; set; }` | Imaginary component j. |
| `double Z { get; set; }` | Imaginary component k. |

## Static properties

| Property | Description |
| :--- | :--- |
| `Quaternion Identity { get; }` | Identity quaternion (1, 0, 0, 0): zero rotation. Text with this orientation lies in the XY plane. |

## Methods

| Method | Description |
| :--- | :--- |
| `string ToString()` | Returns `(W, X, Y, Z)`. Numbers are formatted using the invariant culture (`CultureInfo.InvariantCulture`), with a period as the decimal separator, regardless of the current culture: `Quaternion.Identity` is written as `(1, 0, 0, 0)`. |

## Example

The [Text.Orientation example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/orientation.md#example) creates vertical text with a `Quaternion` and writes the orientation using `ToString`.
