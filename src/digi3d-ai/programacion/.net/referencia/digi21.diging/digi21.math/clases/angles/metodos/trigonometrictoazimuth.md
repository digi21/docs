# TrigonometricToAzimuth
<!-- id: trigonometrictoazimuth -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Convierte un ángulo trigonométrico (ángulo desde el este, en sentido contrario a las agujas del reloj) en un azimut (ángulo desde el norte, en el sentido de las agujas del reloj). Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double TrigonometricToAzimuth(this double radians)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `radians` | Ángulo trigonométrico en radianes. |

## Devuelve

El azimut en radianes: `π/2 − radians`, normalizado al intervalo [0, 2π] con el mismo cálculo que [NormalizeAngle](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/normalizeangle.md). A diferencia de `NormalizeAngle`, el método no lanza excepciones: un argumento `NaN` devuelve `NaN`, `+∞` devuelve `−∞` y `−∞` devuelve `+∞`.

## Ejemplo

```csharp
// Ángulo trigonométrico de 0° (eje X): azimut de 90°.
var azimut = Angles.TrigonometricToAzimuth(0.0);
Console.WriteLine(Angles.RadianToSexagesimal(azimut)); // ≈ 90
```
