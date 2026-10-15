# CreationTime
<!-- id: creationtime -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Fecha y hora de creación de la entidad.

```csharp
public DateTime CreationTime { get; }
```

## Valor de la propiedad

Fecha y hora con precisión de segundos y `DateTimeKind.Unspecified`.

- En una entidad creada con un constructor, o con `Clone()`, es la hora UTC del momento en que se creó el objeto.
- En una entidad leída de un archivo `.bin` o `.bind`, es la fecha que el archivo guarda con la entidad.
