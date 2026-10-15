# Offset
<!-- id: offset-2 -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Desplaza el objeto sumando un incremento a sus coordenadas. Método de [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

```csharp
void Offset(Point2D offset);
void Offset(Point3D offset);
void Offset(double x, double y);
void Offset(double x, double y, double z);
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `offset` | Incremento. Con [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md), el incremento en Z es 0. |
| `x`, `y`, `z` | Incremento en X, en Y y en Z. La sobrecarga sin `z` usa un incremento en Z de 0. |

Las cuatro sobrecargas tienen el mismo efecto con el mismo incremento: `Offset(new Point2D(x, y))`, `Offset(x, y)` y `Offset(x, y, 0)` son equivalentes.

`Point2D` y `Window2D` ignoran el incremento en Z. En `Line`, `Point` y `Text`, `Offset` recalcula las coordenadas mínimas y máximas de la entidad.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | En `Line`, `Point` y `Text`: la entidad pertenece a un archivo de dibujo (su propiedad `Owner` no es `null`). En `Window2D` y `Window3D`: la ventana no está inicializada (su propiedad `Valid` es `false`). |

## Ejemplo

El ejemplo de [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/) desplaza una línea, un texto y un `Point3D`.
