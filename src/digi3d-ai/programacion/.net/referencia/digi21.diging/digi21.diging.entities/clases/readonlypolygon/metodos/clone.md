# Clone
<!-- id: clone-5 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve una copia de lectura y escritura del polígono. La copia no pertenece a ningún archivo de dibujo.

```csharp
public new Polygon Clone()
```

## Valor devuelto

Un [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) con el contorno exterior, una copia de cada hueco, los códigos, `Color`, `Weight`, `FillColor` y `Deleted` de este polígono. Los datos que se copian y los que no se copian se describen en [Entity.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md).

## Ejemplo

```csharp
// polígono es un ReadOnlyPolygon leído de un archivo.
var copia = polígono.Clone();
copia.Holes.Clear();
```
