# Clone
<!-- id: clone-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve una copia de lectura y escritura del complejo, que no pertenece a ningún archivo de dibujo.

```csharp
public new Complex Clone()
```

## Valor devuelto

Un [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/) con una copia de cada entidad del complejo, los códigos, `Color`, `Weight`, `FillColor` y `Deleted` de este complejo. Los datos que se copian y los que no se describen en [Entity.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md).

## Ejemplo

```csharp
// complejo es un ReadOnlyComplex leído de un archivo.
var copia = complejo.Clone();
if (copia.Entities.Count > 0)
    copia.Entities.RemoveAt(0);
```
