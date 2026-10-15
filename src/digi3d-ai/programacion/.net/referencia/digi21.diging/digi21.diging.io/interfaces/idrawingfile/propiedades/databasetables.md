# DatabaseTables
<!-- id: databasetables -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Tablas de la base de datos asociada al archivo de dibujo.

```csharp
IDictionary<string, int> DatabaseTables { get; }
```

## Valor de la propiedad

`IDictionary<string, int>`: la clave es el nombre de la tabla y el valor es su número de tabla en la base de datos. El diccionario está vacío si el archivo no tiene base de datos ([ConnectionString](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/connectionstring.md) vacía).

Cada lectura de la propiedad crea un diccionario nuevo: modificar el diccionario no cambia la base de datos.
