# Add
<!-- id: add -->
<!-- origen: 71a93741df8b0bab8f7ab83e71f0d024336c1f9b -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Appends entities to the drawing file.

## Overloads

| Method | Description |
| :--- | :--- |
| `Add(Entity)` | Adds one entity. |
| `Add(IEnumerable<Entity>)` | Adds multiple entities in enumeration order. |
| `Add(Line), Add(Point), Add(Text), Add(Polygon), Add(Complex)` | Add an entity of that type and return it with its read-only type. |

After an entity is added, its `Owner` property is the file. An entity belonging to another file (its `Owner` is another file) cannot be added: add the copy returned by `Clone()`, which does not belong to any file.

## Add(Entity)

```csharp
void Add(Entity entity);
```

| Parameter | Description |
| :--- | :--- |
| `entity` | [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) to append to the file. |

## Add(IEnumerable&lt;Entity&gt;)

```csharp
void Add(IEnumerable<Entity> entities);
```

| Parameter | Description |
| :--- | :--- |
| `entities` | Entities to append to the file in enumeration order. |

If an entity belongs to another file, `Add` throws `InvalidOperationException` upon reaching that entity. The state of entities preceding the one causing the exception depends on the implementation: in [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), they have already been added; see each class's page.

## Add(Line), Add(Point), Add(Text), Add(Polygon), Add(Complex)

```csharp
ReadOnlyLine Add(Line line);
ReadOnlyPoint Add(Point point);
ReadOnlyText Add(Text text);
ReadOnlyPolygon Add(Polygon polygon);
ReadOnlyComplex Add(Complex complex);
```

| Parameter | Description |
| :--- | :--- |
| `line`, `point`, `text`, `polygon`, `complex` | [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/), [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/), [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) or [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/) to append to the file. |

Return value: the same instance received by the method, with the read-only type from which it derives: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/), [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/), [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/), [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) or [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/). These overloads call `Add(Entity)`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | The parameter is `null`. |
| `InvalidOperationException` | The entity belongs to another file, or the file is opened read-only in implementations checking [CanWrite](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canwrite.md) (such as `Bin`). |

## Example

The [IReadOnlyDrawingFile example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/#example) adds a copy of each point from another file to a file.
