# Clip
<!-- id: clip -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Divide la entidad por una línea límite y devuelve las partes como entidades nuevas. Es un método de [IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/).

```csharp
IEnumerable<Entity> Clip(ReadOnlyLine limit)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `limit` | Línea por la que se divide la entidad. Puede ser abierta o cerrada. No se modifica. |

## Valor devuelto

Una enumeración de entidades nuevas sin archivo de dibujo (`Owner` es `null`), de lectura y escritura, con los códigos de esta entidad. Esta entidad no se modifica.

El método calcula las intersecciones de esta entidad con `limit`. Si la entidad es una línea abierta, el método divide la línea por las intersecciones calculadas. Si la entidad es una línea cerrada o un polígono, el método forma los recintos delimitados por los tramos de la entidad y de la línea límite, y devuelve los recintos cuyo punto interior no está fuera de esta entidad:

| Tipo | Resultado |
| :--- | :--- |
| `ReadOnlyLine`, `Line` cerrada en X, Y | Una `Line` cerrada por cada recinto. Si `limit` no corta la línea, la enumeración está vacía. |
| `ReadOnlyLine`, `Line` abierta | Los tramos en que `limit` parte esta línea: con N intersecciones, N + 1 líneas, incluidos el tramo inicial y el final. `limit` no se parte. Si `limit` no corta la línea, la enumeración está vacía. |
| `ReadOnlyPolygon`, `Polygon` | Un `Polygon`, con sus huecos, por cada recinto; los recintos que quedan dentro de un hueco del polígono no se devuelven. Si `limit` no corta el contorno ni los huecos, solo se divide el polígono cuando `limit` está completamente dentro de él. Si el resultado es un único polígono, la enumeración está vacía. |

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La entidad es una línea con menos de 2 vértices. |
| `Exception` | El análisis topológico de los tramos encuentra puntos dobles o arcos de un solo punto, o no tiene datos suficientes para formar recintos. El mensaje está en el idioma de la interfaz de Digi3D.AI. |

## Ejemplo

El [ejemplo de IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/#ejemplo) divide un polígono por una línea cerrada.
