# Add

Espacio de nombres: [Digi21.DigiNG.IO](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Añade geometrías al archivo de dibujo.

## Sobrecargas

|  |  |
| :--- | :--- |
| [Add\(Entity\)](add.md#add-entity) | Añade una [Entity](../../../digi21.diging.entities/entity/) al archivo de dibujo. |
| [Add\(Entity, IDictionary&lt;string, IDictionary&lt;string, object&gt;&gt;\)](add.md#add-entity-idictionary-less-than-string-idictionary-less-than-string-object-greater-than-greater-than) | Añade una [Entity](../../../digi21.diging.entities/entity/) junto con datos de base de datos. |
| [Add\(Complex\)](add.md#add-complex) | Añade una geometría de tipo [Complex](../../../digi21.diging.entities/complex/). |
| [Add\(IEnumerable&lt;Entity&gt;\)](add.md#add-ienumerable-less-than-entity-greater-than) | Añade una enumeración de [Entity](../../../digi21.diging.entities/entity/). |
| [Add\(Line\)](add.md#add-line) | Añade una geometría de tipo [Line](../../../digi21.diging.entities/line/). |
| [Add\(Point\)](add.md#add-point) | Añade una geometría de tipo [Point](../../../digi21.diging.entities/point/). |
| [Add\(Polygon\)](add.md#add-polygon) | Añade una geometría de tipo [Polygon](../../../digi21.diging.entities/polygon/). |
| [Add\(Text\)](add.md#add-text) | Añade una geometría de tipo [Text](../../../digi21.diging.entities/text/). |

## Add\(Entity\)

Añade una [Entity](../../../digi21.diging.entities/entity/) al archivo de dibujo.

```csharp
void Add(Entity entity);
```

### Parámetros

`entity` [Entity](../../../digi21.diging.entities/entity/)  
Geometría para añadir al archivo de dibujo.

## Add\(Entity, IDictionary&lt;string, IDictionary&lt;string, object&gt;&gt;\)

Añade una [Entity](../../../digi21.diging.entities/entity/) junto con datos de base de datos.

```csharp
void Add(Entity entity, IDictionary<string, IDictionary<string, object>> databaseAttributes);
```

### Parámetros

`entity` [Entity](../../../digi21.diging.entities/entity/)  
Geometría para añadir al archivo de dibujo.

`databaseAttributes` [IDictionary&lt;string, IDictrionary&lt;string, object&gt;&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2?view=net-5.0)  
Diccionario con los campos a almacenar en la base de datos para cada uno de los códigos de la geometría.

## Add\(Complex\)

Añade una geometría de tipo [Complex](../../../digi21.diging.entities/complex/).

```csharp
 ReadOnlyComplex Add(Complex complex);
```

### Parámetros

`complex` [Complex](../../../digi21.diging.entities/complex/)  
Complejo para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyComplex](../../../digi21.diging.entities/readonlycomplex/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(IEnumerable&lt;Entity&gt;\)

Añade una enumeración de [Entity](../../../digi21.diging.entities/entity/).

```csharp
void Add(IEnumerable<Entity> entities);
```

### Parámetros

`entities` [IEnumerable&lt;Entity&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerator-1?view=net-5.0)  
Geometrías para añadir al archivo de dibujo.

## Add\(Line\)

Añade una geometría de tipo [Line](../../../digi21.diging.entities/line/).

```csharp
ReadOnlyLine Add(Line line);
```

### Parámetros

`line` [Line](../../../digi21.diging.entities/line/)  
Línea para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyLine](../../../digi21.diging.entities/readonlyline/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(Point\)

Añade una geometría de tipo [Point](../../../digi21.diging.entities/point/).

```csharp
ReadOnlyPoint Add(Point point);
```

### Parámetros

`point` [Point](../../../digi21.diging.entities/point/)  
Punto para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyPoint](../../../digi21.diging.entities/readonlypoint/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(Polygon\)

Añade una geometría de tipo [Polygon](../../../digi21.diging.entities/polygon/).

```csharp
ReadOnlyPolygon Add(Polygon polygon);
```

### Parámetros

`polygon` [Polygon](../../../digi21.diging.entities/polygon/)  
Polígono para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyPolygon](../../../digi21.diging.entities/readonlypolygon/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(Text\)

Añade una geometría de tipo [Text](../../../digi21.diging.entities/text/).

```csharp
 ReadOnlyText Add(Text text);
```

### Parámetros

`text` [Text](../../../digi21.diging.entities/text/)  
Texto para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyText](../../../digi21.diging.entities/readonlytext/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

















