# Compare
<!-- id: compare -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Compara dos nombres de código con los comodines de Digi3D.AI.

```csharp
public static bool Compare(string codeNameA, string codeNameB)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `codeNameA` | Primer nombre. Admite comodines. |
| `codeNameB` | Segundo nombre. Admite comodines. |

## Valor devuelto

`true` si los dos nombres coinciden. Los nombres se recorren carácter a carácter desde el principio:

- Si en la posición actual cualquiera de los dos nombres tiene `*`, devuelve `true` sin comparar el resto.
- Si uno de los nombres se termina antes que el otro, devuelve `false`.
- `?` en cualquiera de los dos nombres coincide con cualquier carácter.
- El resto de caracteres se comparan sin convertir mayúsculas ni minúsculas.

Dos nombres vacíos son iguales.

| `codeNameA` | `codeNameB` | Resultado |
| :--- | :--- | :--- |
| `020400` | `02*` | `true` |
| `020400` | `02??00` | `true` |
| `020400` | `0204` | `false` |
| `02*` | `020400` | `true` |

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `codeNameA` o `codeNameB` es `null`. |

## Ejemplo

```csharp
foreach (var código in entidad.Codes)
{
    if (Code.Compare(código.Name, "02*"))
        Console.WriteLine($"{código.Name} pertenece al grupo de altimetría");
}
```

Las colecciones de códigos usan la misma comparación en [CodeCollection.IndexOf](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/codecollection/).
