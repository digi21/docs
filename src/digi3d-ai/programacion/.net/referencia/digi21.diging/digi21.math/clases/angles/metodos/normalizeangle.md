# NormalizeAngle
<!-- id: normalizeangle -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Lleva un ángulo en radianes al intervalo [0, 2π]. Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double NormalizeAngle(this double radians)
```

El ensamblado instalado con Digi3D.AI declara el método sin `this`: llámalo como `Angles.NormalizeAngle(valor)`.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `radians` | Ángulo en radianes. |

## Devuelve

El ángulo equivalente entre 0 y 2π, ambos incluidos: 2π se devuelve como 2π, no como 0. Un argumento `NaN` devuelve `NaN`.

El método suma 2π mientras el ángulo es negativo y resta 2π mientras es mayor que 2π. Con un argumento infinito el bucle no termina, y con un argumento de valor absoluto muy grande el número de iteraciones es `|radians| / 2π`.

## Ejemplo

```csharp
Console.WriteLine(Angles.NormalizeAngle(3 * Math.PI));   // π
Console.WriteLine(Angles.NormalizeAngle(-Math.PI / 2)); // 3π/2
```
