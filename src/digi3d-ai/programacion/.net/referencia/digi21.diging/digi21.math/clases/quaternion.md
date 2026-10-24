# Quaternion
<!-- id: quaternion -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Cuaternión de rotación: cuatro componentes `W`, `X`, `Y` y `Z` que representan una rotación en el espacio. Es el tipo de [ReadOnlyText.Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/orientation.md) y de [Text.Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/orientation.md).

```csharp
public struct Quaternion
```

Un cuaternión (*quaternion*) unitario representa la rotación de un ángulo θ alrededor de un eje con vector director unitario (ux, uy, uz) con las componentes `W` = cos(θ/2), `X` = ux·sin(θ/2), `Y` = uy·sin(θ/2) y `Z` = uz·sin(θ/2). Por ejemplo, la rotación de 90° alrededor del eje X es `new Quaternion(Math.Cos(Math.PI / 4), Math.Sin(Math.PI / 4), 0.0, 0.0)`.

`Quaternion` es un tipo de valor: una asignación copia las cuatro componentes. Una propiedad que devuelve un `Quaternion`, como `Text.Orientation`, devuelve una copia: para cambiar la orientación del texto, asigna el cuaternión modificado a la propiedad.

La estructura no normaliza las componentes. `Text.Orientation` normaliza el cuaternión cuando se le asigna.

El valor por defecto de la estructura, `default(Quaternion)` o `new Quaternion()`, tiene las cuatro componentes a 0 y no representa ninguna rotación. Si se asigna ese valor a `Text.Orientation`, el texto almacena [Identity](#propiedades-estáticas).

La estructura no define los operadores `==` y `!=`. `Equals`, heredado de `ValueType`, compara las cuatro componentes sin tolerancia. Los cuaterniones `q` y `-q` representan la misma rotación, pero `Equals` los considera distintos.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| `Quaternion(double w, double x, double y, double z)` | Crea el cuaternión (`w`, `x`, `y`, `z`). No normaliza las componentes. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `double W { get; set; }` | Componente real. |
| `double X { get; set; }` | Componente imaginaria i. |
| `double Y { get; set; }` | Componente imaginaria j. |
| `double Z { get; set; }` | Componente imaginaria k. |

## Propiedades estáticas

| Propiedad | Descripción |
| :--- | :--- |
| `Quaternion Identity { get; }` | Cuaternión identidad (1, 0, 0, 0): la rotación nula. Un texto con esta orientación está en el plano XY. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `string ToString()` | Devuelve `(W, X, Y, Z)`. Los números se formatean con la referencia cultural invariable (`CultureInfo.InvariantCulture`), con el punto como separador decimal, sea cual sea la referencia cultural actual: `Quaternion.Identity` se escribe `(1, 0, 0, 0)`. |

## Ejemplo

El [ejemplo de Text.Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/orientation.md#ejemplo) crea un texto vertical con un `Quaternion` y escribe la orientación con `ToString`.
