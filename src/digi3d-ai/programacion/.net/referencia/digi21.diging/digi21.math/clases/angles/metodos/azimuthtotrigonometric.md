# AzimuthToTrigonometric
<!-- id: azimuthtotrigonometric -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Convierte un azimut (ángulo desde el norte, en el sentido de las agujas del reloj) en un ángulo trigonométrico (ángulo desde el este, en sentido contrario a las agujas del reloj). Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double AzimuthToTrigonometric(this double radians)
```

El ensamblado instalado con Digi3D.AI declara el método sin `this`: llámalo como `Angles.AzimuthToTrigonometric(valor)`.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `radians` | Azimut en radianes. |

## Devuelve

El ángulo trigonométrico en radianes: `5π/2 − radians`, normalizado al intervalo [0, 2π] con [NormalizeAngle](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/normalizeangle.md). Con un argumento infinito el método no termina.

## Ejemplo

```csharp
// Azimut de 30° (desde el norte, sentido horario): 60° trigonométricos.
var trigonometrico = Angles.AzimuthToTrigonometric(Angles.SexagesimalToRadian(30.0));
Console.WriteLine(Angles.RadianToSexagesimal(trigonometrico)); // ≈ 60
```
