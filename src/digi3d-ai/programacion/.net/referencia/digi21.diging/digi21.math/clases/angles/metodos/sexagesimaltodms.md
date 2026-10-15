# SexagesimalToDMS
<!-- id: sexagesimaltodms -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Descompone un ángulo en grados sexagesimales con fracción decimal en grados, minutos, segundos y signo. Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static void SexagesimalToDMS(this double sexagesimal, out int degrees, out int minutes, out double seconds, out bool east)
```

El ensamblado instalado con Digi3D.AI declara el método sin `this`: llámalo como `Angles.SexagesimalToDMS(valor, out …)`.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `sexagesimal` | Ángulo en grados sexagesimales con fracción decimal. |
| `degrees` | Parte entera de \|`sexagesimal`\|. |
| `minutes` | Parte entera de los minutos de \|`sexagesimal`\|, entre 0 y 59. |
| `seconds` | Segundos restantes, con fracción decimal. |
| `east` | `true` si `sexagesimal` es mayor que 0. Con `sexagesimal` igual a 0 vale `false`. |

`degrees`, `minutes` y `seconds` son siempre positivos o 0: el signo se devuelve en `east`. Para longitudes, `true` significa este; para latitudes, norte.

Los segundos arrastran el error de redondeo de la fracción decimal: 3,7025° devuelve 8,99999… segundos en lugar de 9. Redondea `seconds` al número de decimales que muestres.

## Ejemplo

```csharp
Angles.SexagesimalToDMS(-3.7025, out var grados, out var minutos, out var segundos, out var positivo);
// grados = 3, minutos = 42, segundos ≈ 9, positivo = false
Console.WriteLine($"{grados} {minutos} {segundos} {positivo}");
```
