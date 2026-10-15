# Compose
<!-- id: compose -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Crea un nombre de código sustituyendo caracteres de un nombre existente según un patrón con comodines.

```csharp
public static string Compose(string stringToCompose, string wildCard)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `stringToCompose` | Nombre de código de partida. |
| `wildCard` | Patrón. Cada carácter que no es `?` sustituye al carácter de la misma posición de `stringToCompose`; `?` conserva el carácter; `*` termina la sustitución. |

## Valor devuelto

Una cadena de la misma longitud que `stringToCompose` con los caracteres sustituidos.

| `stringToCompose` | `wildCard` | Resultado |
| :--- | :--- | :--- |
| `060400` | `07*` | `070400` |
| `060400` | `??05*` | `060500` |
| `060400` | `??????` | `060400` |

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentOutOfRangeException` | `wildCard` tiene, antes del primer `*`, más caracteres que `stringToCompose`. |
| `NullReferenceException` | `wildCard` es `null`. |

## Ejemplo

Si los códigos que empiezan por `06` son edificios en construcción y los que empiezan por `07` son los mismos edificios terminados, este fragmento obtiene el código del edificio terminado:

```csharp
var enConstrucción = "060400";
var terminado = Code.Compose(enConstrucción, "07*");
Console.WriteLine(terminado); // 070400
```
