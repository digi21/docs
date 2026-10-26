# Clone
<!-- id: clone -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve una copia de la entidad. La copia no pertenece a ningún archivo de dibujo y, por tanto, se puede modificar.

```csharp
public Entity Clone()
```

Cada clase derivada declara con `new` un `Clone()` que devuelve el tipo de lectura y escritura: [ReadOnlyLine.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/metodos/clone.md) devuelve `Line`, [ReadOnlyPolygon.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/metodos/clone.md) devuelve `Polygon`, [ReadOnlyComplex.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/metodos/clone.md) devuelve `Complex`, `ReadOnlyPoint.Clone` devuelve `Point` y `ReadOnlyText.Clone` devuelve `Text`. El método que se ejecuta depende del tipo de la variable: `Entity.Clone()` llama al `Clone()` de la clase derivada y además copia los atributos de los códigos (lee la tabla). `ICloneable.Clone()` llama a `Entity.Clone()`.

## Valor devuelto

Una entidad nueva del tipo de lectura y escritura, con `Owner` a `null` y `ReadOnly` a `false`.

| Dato | Copia |
| :--- | :--- |
| Coordenadas, huecos de un polígono y entidades de un complejo | Se copian. |
| `Color`, `Weight`, `FillColor` y `Deleted` | Se copian. |
| `Codes` | Se copian los nombres, las tablas, los identificadores y la visibilidad. |
| `Code.Attributes` de cada código | Con `Entity.Clone()`: un `Dictionary<string, object>` nuevo con una copia de los atributos de cada código. Con el `Clone()` de la clase derivada: un diccionario de solo lectura con los atributos que guarda la entidad nativa (los de una entidad leída de un archivo); los atributos asignados en .NET a los códigos no se copian. |
| `Attributes` | Diccionario de solo lectura con los atributos que guarda la entidad nativa (los de una entidad leída de un archivo). Los atributos asignados en .NET no se copian. Para cambiarlos, asigna otro diccionario. |
| `UserData` y `Hidden` | No se copian. |

## Ejemplo

```csharp
// línea es una ReadOnlyLine leída de un archivo: la copia es una Line.
var copia = línea.Clone();
copia.Points.Add(new Point3D(0, 0, 0));
```
