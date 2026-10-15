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

El método calcula las intersecciones de esta entidad con `limit`, forma los recintos que delimitan los tramos resultantes de las dos y se queda con los recintos cuyo punto interior no está fuera de esta entidad:

| Tipo | Resultado |
| :--- | :--- |
| `ReadOnlyLine`, `Line` cerrada en X, Y | Una `Line` cerrada por cada recinto. Si `limit` no corta la línea, la enumeración está vacía. |
| `ReadOnlyLine`, `Line` abierta | En la versión 26.0.0, la enumeración está siempre vacía. Lee la nota de este apartado. |
| `ReadOnlyPolygon`, `Polygon` | Un `Polygon`, con sus huecos, por cada recinto; los recintos que quedan dentro de un hueco del polígono no se devuelven. Si `limit` no corta el contorno ni los huecos, solo se divide el polígono cuando `limit` está completamente dentro de él. Si el resultado es un único polígono, la enumeración está vacía. |

> En la versión 26.0.0, `Clip` de una línea abierta devuelve siempre una enumeración vacía: la función interna que divide la línea recibe por valor las listas de tramos que debería rellenar, de modo que el método no recibe ningún tramo.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La entidad es una línea con menos de 2 vértices. |
| `Exception` | El análisis topológico de los tramos encuentra puntos dobles o arcos de un solo punto, o no tiene datos suficientes para formar recintos. El mensaje está en el idioma de la interfaz de Digi3D.AI. |

## Ejemplo

El [ejemplo de IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/#ejemplo) divide un polígono por una línea cerrada.
