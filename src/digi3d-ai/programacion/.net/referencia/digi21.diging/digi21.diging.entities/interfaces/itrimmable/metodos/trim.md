# Trim
<!-- id: trim-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve las partes de la entidad que no están dentro de una línea límite cerrada, como polígonos nuevos. Es un método de [ITrimable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimmable/).

```csharp
IEnumerable<Polygon> Trim(ReadOnlyLine limit, bool coordinateZFromThisEntity)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `limit` | Recinto que se resta de esta entidad. No se modifica. |
| `coordinateZFromThisEntity` | `true` para calcular la Z de los vértices del resultado a partir de esta entidad; `false` para calcularla a partir de `limit`. |

## Valor devuelto

Una enumeración de [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) nuevos sin archivo de dibujo (`Owner` es `null`), con los códigos de esta entidad, también en sus huecos. Esta entidad no se modifica.

El método calcula las intersecciones de esta entidad con `limit`, forma los recintos que delimitan los tramos resultantes de las dos y devuelve cada recinto que está dentro de esta entidad y no está dentro de `limit`. Para decidirlo, analiza el centroide de cada recinto.

- Si `limit` no corta esta entidad y está fuera de ella, el resultado es un polígono con la geometría de esta entidad. Si `limit` la cubre por completo, la enumeración está vacía.
- Si esta entidad es una línea abierta, la enumeración está vacía: ningún recinto queda dentro de ella.
- Si `limit` no está cerrada, ningún recinto queda dentro de `limit` y el método devuelve todas las partes de esta entidad divididas por `limit`.

Cálculo de la Z: el método triangula el contorno exterior (y, en un polígono, los huecos) de la entidad elegida con `coordinateZFromThisEntity`, y a cada vértice del contorno exterior del resultado le asigna la Z del vértice de la triangulación con las mismas X e Y o, si no coincide con ninguno, la Z interpolada en el triángulo que lo contiene. Los vértices que no caen en ningún triángulo y los vértices de los huecos del resultado conservan la Z de los tramos.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `Exception` | El análisis topológico de los tramos encuentra puntos dobles o arcos de un solo punto, o no tiene datos suficientes para formar recintos. El mensaje está en inglés. |

## Ejemplo

El [ejemplo de IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/#ejemplo) usa `Trim` con un polígono y un límite cerrado.
