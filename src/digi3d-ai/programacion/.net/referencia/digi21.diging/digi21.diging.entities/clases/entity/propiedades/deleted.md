# Deleted
<!-- id: deleted -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si la entidad está marcada como eliminada.

```csharp
public bool Deleted { get; }
```

## Valor de la propiedad

`true` si la entidad está marcada como eliminada.

[IDrawingFile.Delete](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md) marca la entidad como eliminada, pero la entidad sigue en el archivo de dibujo, y los archivos de dibujo la devuelven al recorrer sus entidades. Para quitar las entidades eliminadas, se crea un archivo nuevo sin ellas; es lo que hace la orden [COMPRIMIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md) de Digi3D.AI.

`Clone()` copia el valor de `Deleted`.
