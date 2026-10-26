# Clone
<!-- id: clone-3 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve una copia de lectura y escritura de la línea. La copia no pertenece a ningún archivo de dibujo.

```csharp
public new Line Clone()
```

## Valor devuelto

Una [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/) con los vértices, los códigos, `Color`, `Weight`, `FillColor` y `Deleted` de esta línea. Los datos que se copian y los que no se copian se describen en [Entity.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md).

## Ejemplo

```csharp
// línea es una ReadOnlyLine leída de un archivo.
var copia = línea.Clone();
copia.ChangeDirection();
```
