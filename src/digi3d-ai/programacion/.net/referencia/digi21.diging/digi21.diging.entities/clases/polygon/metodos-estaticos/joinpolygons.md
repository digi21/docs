# JoinPolygons
<!-- id: joinpolygons -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve el polígono que resulta de unir los recintos de dos entidades.

```csharp
public static Polygon JoinPolygons(Entity a, Entity b)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `a` | Una línea cerrada (`ReadOnlyLine`) o un polígono (`ReadOnlyPolygon`). |
| `b` | Una línea cerrada (`ReadOnlyLine`) o un polígono (`ReadOnlyPolygon`). |

Los parámetros no se modifican.

## Valor devuelto

Un `Polygon` nuevo, que no pertenece a ningún archivo de dibujo. El método parte las dos entidades (contornos exteriores y huecos) por sus intersecciones, quita los tramos repetidos (los lados comunes) y forma la topología con los tramos restantes. El contorno exterior es el recinto que no está dentro de ningún otro, y los huecos son los huecos de ese recinto.

El polígono toma los códigos de la primera línea del contorno resultante, que puede proceder de `a` o de `b`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `Exception` | `a` o `b` no es una línea ni un polígono. El mensaje dice «primera entidad» también cuando la entidad incorrecta es `b`. |
| `Exception` | La unión forma más de un recinto que no está dentro de otro; por ejemplo, si `a` y `b` no se tocan. |
| `Exception` | El análisis topológico encuentra puntos dobles o arcos de un solo punto, o no hay datos suficientes para formar la topología. |
| `NullReferenceException` | `a` o `b` es `null`. |

## Ejemplo

Lee el ejemplo de [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/).
