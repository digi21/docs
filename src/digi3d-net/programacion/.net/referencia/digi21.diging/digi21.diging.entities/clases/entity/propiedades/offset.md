# Offset

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/) \
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)​‌

Devuelve el _offset_ en el que está almacenada la geometría representada por este [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) en el archivo de dibujo.

```csharp
public ulong Offset { get;  }‌
```

## Valor de la propiedad <a href="#valor-de-la-propiedad" id="valor-de-la-propiedad"></a>

[Uint64](https://docs.microsoft.com/en-us/dotnet/api/system.uint64?view=net-5.0)

‌Offset donde se ubica la geometría en el [IDrawingFile](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/) en caso de que la geometría esté almacenada en un archivo de dibujo.

Si la geometría no pertenece a ningún archivo de dibujo se lanzará una excepción de tipo [InvalidOperationException](https://docs.microsoft.com/en-us/dotnet/api/system.invalidoperationexception?view=net-5.0).
