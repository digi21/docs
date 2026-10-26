# Add
<!-- id: add -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Añade entidades al final del archivo de dibujo.

## Sobrecargas

| Método | Descripción |
| :--- | :--- |
| `Add(Entity)` | Añade una entidad. |
| `Add(IEnumerable<Entity>)` | Añade varias entidades, en el orden de la enumeración. |
| `Add(Line), Add(Point), Add(Text), Add(Polygon), Add(Complex)` | Añaden una entidad de ese tipo y la devuelven con su tipo de solo lectura. |

Después de añadir una entidad, su propiedad `Owner` es el archivo. Una entidad que pertenece a otro archivo (su `Owner` es otro archivo) no se puede añadir: añade la copia que devuelve `Clone()`, que no pertenece a ningún archivo.

## Add(Entity)

```csharp
void Add(Entity entity);
```

| Parámetro | Descripción |
| :--- | :--- |
| `entity` | [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) que se añade al final del archivo. |

## Add(IEnumerable&lt;Entity&gt;)

```csharp
void Add(IEnumerable<Entity> entities);
```

| Parámetro | Descripción |
| :--- | :--- |
| `entities` | Entidades que se añaden al final del archivo, en el orden de la enumeración. |

Si una entidad pertenece a otro archivo, `Add` lanza `InvalidOperationException` al llegar a esa entidad. El estado de las entidades anteriores a la que provoca la excepción depende de la implementación: en [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md) ya están añadidas; lee la página de cada clase.

## Add(Line), Add(Point), Add(Text), Add(Polygon), Add(Complex)

```csharp
ReadOnlyLine Add(Line line);
ReadOnlyPoint Add(Point point);
ReadOnlyText Add(Text text);
ReadOnlyPolygon Add(Polygon polygon);
ReadOnlyComplex Add(Complex complex);
```

| Parámetro | Descripción |
| :--- | :--- |
| `line`, `point`, `text`, `polygon`, `complex` | [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/), [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/), [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) o [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/) que se añade al final del archivo. |

Valor devuelto: la misma instancia que recibe el método, con el tipo de solo lectura del que deriva: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/), [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/), [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/), [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) o [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/). Estas sobrecargas llaman a `Add(Entity)`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | El parámetro es `null`. |
| `InvalidOperationException` | La entidad pertenece a otro archivo, o el archivo está abierto en solo lectura en las implementaciones que comprueban [CanWrite](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canwrite.md) (por ejemplo `Bin`). |

## Ejemplo

El [ejemplo de IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/#ejemplo) añade a un archivo la copia de cada punto de otro archivo.
