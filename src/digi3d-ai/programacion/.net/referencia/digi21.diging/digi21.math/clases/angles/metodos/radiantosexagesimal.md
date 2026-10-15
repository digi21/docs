# RadianToSexagesimal
<!-- id: radiantosexagesimal -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Convierte un ángulo de radianes a grados sexagesimales con fracción decimal. Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double RadianToSexagesimal(this double radian)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `radian` | Ángulo en radianes. |

## Devuelve

`radian * 180 / π`. El resultado no se normaliza. Para obtener grados, minutos y segundos, pasa el resultado a [SexagesimalToDMS](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/sexagesimaltodms.md).

## Ejemplo

```csharp
Console.WriteLine(Angles.RadianToSexagesimal(Math.PI)); // 180
```
