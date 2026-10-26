# Owner
<!-- id: owner -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Archivo de dibujo al que pertenece la entidad.

```csharp
public IDrawingFile Owner { get; }
```

## Valor de la propiedad

El [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/) del que se leyó la entidad o al que se añadió, o `null` si la entidad no pertenece a ningún archivo: una entidad creada con un constructor que aún no se ha añadido a un archivo, o una copia hecha con `Clone()`.

Mientras `Owner` no es `null`, la entidad es de solo lectura ([ReadOnly](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/readonly.md)). Un archivo de dibujo no admite entidades que pertenecen a otro archivo: añade la copia que devuelve `Clone()`.
