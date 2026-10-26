# Disjoint
<!-- id: disjoint-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si la línea y el área son disjuntas.

![Línea disjunta de un área](../../../../../../../../../images/lineaareanocoincidentes1.png)

```csharp
public static bool Disjoint(ReadOnlyLine line, ReadOnlyLine area)
public static bool Disjoint(ReadOnlyLine line, ReadOnlyPolygon area)
```

| Parámetro | Descripción |
| :--- | :--- |
| `line` | Línea. |
| `area` | Área: una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) cerrada o un [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |

## Valor devuelto

### Disjoint(ReadOnlyLine, ReadOnlyLine)

`true` si se cumplen las dos condiciones:

* Ningún vértice de `line` coincide con un vértice de `area`, o las cajas envolventes en planta no se tocan.
* No todos los vértices de `line` están dentro de `area`.

La sobrecarga solo descarta las líneas con todos sus vértices dentro del área. El método también devuelve `true` si la línea tiene unos vértices dentro del área y otros fuera, sin vértices comunes con el área.

### Disjoint(ReadOnlyLine, ReadOnlyPolygon)

Sigue el criterio de la sobrecarga anterior, con los huecos:

* Si las cajas envolventes en planta de `line` y de `area` no se tocan, devuelve `true`.
* Si un vértice de `line` coincide con un vértice del anillo exterior o de un hueco, devuelve `false`.
* En otro caso, devuelve `true` salvo que todos los vértices de `line` estén dentro del polígono. Un vértice dentro de un hueco está fuera del polígono.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `line` o `area` es `null`. |
