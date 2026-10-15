# Id
<!-- id: id -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Identificador del registro de la base de datos enlazado con el código: el valor de la clave principal del registro en la tabla [Table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/table.md).

```csharp
public int? Id { get; }
```

## Valor de la propiedad

El identificador, o `null` si el código no tiene registro asignado. En un código leído de un archivo de dibujo también vale `null` si el identificador del registro es un GUID.

El valor se asigna en el constructor; no se puede cambiar.
