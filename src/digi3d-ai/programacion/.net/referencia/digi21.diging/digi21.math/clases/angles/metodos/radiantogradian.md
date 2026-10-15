# RadianToGradian
<!-- id: radiantogradian -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Convierte un ángulo de radianes a grados centesimales. Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double RadianToGradian(this double radian)
```

El ensamblado instalado con Digi3D.AI declara el método sin `this`: llámalo como `Angles.RadianToGradian(valor)`.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `radian` | Ángulo en radianes. |

## Devuelve

`radian * 200 / π`. El resultado no se normaliza.

## Ejemplo

```csharp
Console.WriteLine(Angles.RadianToGradian(Math.PI)); // 200
```
