# ITrimable
<!-- id: itrimmable -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Recinto al que se le puede restar el área de otro recinto.

```csharp
public interface ITrimable
```

Tipos que la implementan: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) (y [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/)) y [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) (y [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)).

## Métodos

| Miembro | Descripción |
| :--- | :--- |
| [`IEnumerable<Polygon> Trim(ReadOnlyLine limit, bool coordinateZFromThisEntity)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimmable/metodos/trim.md) | Devuelve, como polígonos nuevos, las partes de esta entidad que no están dentro de `limit`. |

## Ejemplo

El [ejemplo de IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/#ejemplo) usa `Trim` para obtener la parte de una parcela que queda fuera de un límite.
