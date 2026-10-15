# Hidden
<!-- id: hidden -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Oculta la entidad en la ventana de dibujo.

```csharp
public bool Hidden { get; set; }
```

## Valor de la propiedad

`true` si la entidad está oculta. Con `Hidden` a `true`, [Visible](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/visible.md) vale `false`.

El descriptor `set` no comprueba si la entidad es de solo lectura: se puede asignar en una entidad leída de un archivo de dibujo. `Clone()` no copia el valor.
