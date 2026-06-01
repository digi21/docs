# Add

Espacio de nombres: [Digi21.DigiNG.IO](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.io/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Añade geometrías al archivo de dibujo.

## Sobrecargas

|  |  |
| :--- | :--- |
| [Add\(Entity\)](add.md#add-entity) | Añade una [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) al archivo de dibujo. |
| [Add\(Entity, IDictionary&lt;string, IDictionary&lt;string, object&gt;&gt;\)](add.md#add-entity-idictionary-less-than-string-idictionary-less-than-string-object-greater-than-greater-than) | Añade una [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) junto con datos de base de datos. |
| [Add\(Complex\)](add.md#add-complex) | Añade una geometría de tipo [Complex](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/). |
| [Add\(IEnumerable&lt;Entity&gt;\)](add.md#add-ienumerable-less-than-entity-greater-than) | Añade una enumeración de [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/). |
| [Add\(Line\)](add.md#add-line) | Añade una geometría de tipo [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md). |
| [Add\(Point\)](add.md#add-point) | Añade una geometría de tipo [Point](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/). |
| [Add\(Polygon\)](add.md#add-polygon) | Añade una geometría de tipo [Polygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/). |
| [Add\(Text\)](add.md#add-text) | Añade una geometría de tipo [Text](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/). |

## Add\(Entity\)

Añade una [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) al archivo de dibujo.

```csharp
void Add(Entity entity);
```

### Parámetros

`entity` [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/)  
Geometría para añadir al archivo de dibujo.

## Add\(Entity, IDictionary&lt;string, IDictionary&lt;string, object&gt;&gt;\)

Añade una [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) junto con datos de base de datos.

```csharp
void Add(Entity entity, IDictionary<string, IDictionary<string, object>> databaseAttributes);
```

### Parámetros

`entity` [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/)  
Geometría para añadir al archivo de dibujo.

`databaseAttributes` [IDictionary&lt;string, IDictrionary&lt;string, object&gt;&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2?view=net-5.0)  
Diccionario con los campos a almacenar en la base de datos para cada uno de los códigos de la geometría.

## Add\(Complex\)

Añade una geometría de tipo [Complex](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/).

```csharp
 ReadOnlyComplex Add(Complex complex);
```

### Parámetros

`complex` [Complex](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/)  
Complejo para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyComplex](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(IEnumerable&lt;Entity&gt;\)

Añade una enumeración de [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

```csharp
void Add(IEnumerable<Entity> entities);
```

### Parámetros

`entities` [IEnumerable&lt;Entity&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerator-1?view=net-5.0)  
Geometrías para añadir al archivo de dibujo.

## Add\(Line\)

Añade una geometría de tipo [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md).

```csharp
ReadOnlyLine Add(Line line);
```

### Parámetros

`line` [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md)  
Línea para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(Point\)

Añade una geometría de tipo [Point](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/).

```csharp
ReadOnlyPoint Add(Point point);
```

### Parámetros

`point` [Point](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/)  
Punto para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(Polygon\)

Añade una geometría de tipo [Polygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/).

```csharp
ReadOnlyPolygon Add(Polygon polygon);
```

### Parámetros

`polygon` [Polygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)  
Polígono para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyPolygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(Text\)

Añade una geometría de tipo [Text](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/).

```csharp
 ReadOnlyText Add(Text text);
```

### Parámetros

`text` [Text](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/)  
Texto para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyText](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

















