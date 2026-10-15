# NormalizeAngle
<!-- id: normalizeangle -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Lleva un ángulo en radianes al intervalo [0, 2π]. Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double NormalizeAngle(this double radians)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `radians` | Ángulo en radianes. Tiene que ser un número finito. |

## Devuelve

El ángulo equivalente entre 0 y 2π, ambos incluidos. Un valor dentro de [0, 2π] se devuelve sin cambios: 2π se devuelve como 2π, no como 0. Un valor fuera de ese intervalo se sustituye por el resto de dividirlo entre 2π, con el signo del dividendo (la función `fmod` de C); si el resto es negativo, se le suma 2π. Un múltiplo negativo de 2π devuelve `+0`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentOutOfRangeException` | `radians` es `NaN`, `+∞` o `−∞`. |

## Ejemplo

```csharp
Console.WriteLine(Angles.NormalizeAngle(3 * Math.PI));   // π
Console.WriteLine(Angles.NormalizeAngle(-Math.PI / 2)); // 3π/2
```
