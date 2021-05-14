# Add

Espacio de nombres: [Digi21.DigiNG.IO](../../../)  
Ensamblado: [Digi21.DigiNG](../../../../)

Añade geometrías al archivo de dibujo.

## Sobrecargas

|  |  |
| :--- | :--- |
| [Add\(Entity\)](add.md#add-entity) | Añade una [Entity](../../../../digi21.diging.entities/clases/entity/) al archivo de dibujo. |
| [Add\(Complex\)](add.md#add-complex) | Añade una geometría de tipo [Complex](../../../../digi21.diging.entities/clases/complex/). |
| [Add\(IEnumerable&lt;Entity&gt;\)](add.md#add-ienumerable-less-than-entity-greater-than) | Añade una enumeración de [Entity](../../../../digi21.diging.entities/clases/entity/). |
| [Add\(Line\)](add.md#add-line) | Añade una geometría de tipo [Line](../../../../digi21.diging.entities/clases/line/). |
| [Add\(Point\)](add.md#add-point) | Añade una geometría de tipo [Point](../../../../digi21.diging.entities/clases/point/). |
| [Add\(Polygon\)](add.md#add-polygon) | Añade una geometría de tipo [Polygon](../../../../digi21.diging.entities/clases/polygon/). |
| [Add\(Text\)](add.md#add-text) | Añade una geometría de tipo [Text](../../../../digi21.diging.entities/clases/text/). |

## Add\(Entity\)

Añade una [Entity](../../../../digi21.diging.entities/clases/entity/) al archivo de dibujo.

```csharp
void Add(Entity entity);
```

### Parámetros

`entity` [Entity](../../../../digi21.diging.entities/clases/entity/)  
Geometría para añadir al archivo de dibujo.

## Add\(Complex\)

Añade una geometría de tipo [Complex](../../../../digi21.diging.entities/clases/complex/).

```csharp
 ReadOnlyComplex Add(Complex complex);
```

### Parámetros

`complex` [Complex](../../../../digi21.diging.entities/clases/complex/)  
Complejo para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyComplex](../../../../digi21.diging.entities/clases/readonlycomplex/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(IEnumerable&lt;Entity&gt;\)

Añade una enumeración de [Entity](../../../../digi21.diging.entities/clases/entity/).

```csharp
void Add(IEnumerable<Entity> entities);
```

### Parámetros

`entities` [IEnumerable&lt;Entity&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerator-1?view=net-5.0)  
Geometrías para añadir al archivo de dibujo.

## Add\(Line\)

Añade una geometría de tipo [Line](../../../../digi21.diging.entities/clases/line/).

```csharp
ReadOnlyLine Add(Line line);
```

### Parámetros

`line` [Line](../../../../digi21.diging.entities/clases/line/)  
Línea para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyLine](../../../../digi21.diging.entities/clases/readonlyline/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(Point\)

Añade una geometría de tipo [Point](../../../../digi21.diging.entities/clases/point/).

```csharp
ReadOnlyPoint Add(Point point);
```

### Parámetros

`point` [Point](../../../../digi21.diging.entities/clases/point/)  
Punto para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyPoint](../../../../digi21.diging.entities/clases/readonlypoint/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(Polygon\)

Añade una geometría de tipo [Polygon](../../../../digi21.diging.entities/clases/polygon/).

```csharp
ReadOnlyPolygon Add(Polygon polygon);
```

### Parámetros

`polygon` [Polygon](../../../../digi21.diging.entities/clases/polygon/)  
Polígono para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyPolygon](../../../../digi21.diging.entities/clases/readonlypolygon/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

## Add\(Text\)

Añade una geometría de tipo [Text](../../../../digi21.diging.entities/clases/text/).

```csharp
 ReadOnlyText Add(Text text);
```

### Parámetros

`text` [Text](../../../../digi21.diging.entities/clases/text/)  
Texto para añadir al archivo de dibujo.

## Devuelve

[ReadOnlyText](../../../../digi21.diging.entities/clases/readonlytext/)  
Geometría solo lectura correspondiente a la geometría que se acaba de almacenar, pues las geometrías una vez se almacenan en un archivo de dibujo no se pueden modificar.

















