# Table
<!-- id: table-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Número de la tabla de la base de datos que guarda el registro enlazado con el código.

```csharp
public int? Table { get; }
```

## Valor de la propiedad

El número de tabla, o `null` si el código no está enlazado con la base de datos.

El número de tabla es el que la tabla tiene en la tabla de catálogo de la base de datos (`CATDBS` o `MSCATALOG`). La propiedad [DatabaseTables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/databasetables.md) del archivo de dibujo devuelve el nombre y el número de cada tabla.

El valor se asigna en el constructor; no se puede cambiar.
