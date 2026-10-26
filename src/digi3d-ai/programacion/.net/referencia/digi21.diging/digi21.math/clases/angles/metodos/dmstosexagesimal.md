# DMSToSexagesimal
<!-- id: dmstosexagesimal -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Compone un ángulo en grados sexagesimales con fracción decimal a partir de grados, minutos, segundos y signo. Es la operación inversa de [SexagesimalToDMS](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/sexagesimaltodms.md). Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static void DMSToSexagesimal(int degrees, int minutes, double seconds, bool east, out double sexagesimal)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `degrees` | Grados. |
| `minutes` | Minutos. |
| `seconds` | Segundos, con fracción decimal. |
| `east` | `true` para un ángulo positivo (este o norte); `false` para un ángulo negativo (oeste o sur). |
| `sexagesimal` | Resultado: `degrees + minutes / 60 + seconds / 3600`, con signo negativo si `east` es `false`. |

El método no comprueba los rangos: los valores de `minutes` mayores que 59 minutos y los de `seconds` mayores que 59 segundos también se incorporan al cálculo. Pasa `degrees`, `minutes` y `seconds` sin signo: con `east` igual a `false`, un `degrees` negativo se convierte en positivo y el término de los grados en `sexagesimal` es positivo en vez de negativo.

## Ejemplo

```csharp
Angles.DMSToSexagesimal(3, 42, 9.0, false, out var sexagesimal);
Console.WriteLine(sexagesimal); // ≈ -3.7025
```
