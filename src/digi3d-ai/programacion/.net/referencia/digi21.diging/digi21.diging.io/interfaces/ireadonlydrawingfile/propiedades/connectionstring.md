# ConnectionString
<!-- id: connectionstring -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Cadena de conexión de la base de datos asociada al archivo de dibujo.

```csharp
string ConnectionString { get; }
```

## Valor de la propiedad

`string`: cadena de conexión de la base de datos, o `string.Empty` si el archivo no tiene base de datos. Las tablas de esa base de datos se consultan con [IDrawingFile.DatabaseTables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/databasetables.md).
