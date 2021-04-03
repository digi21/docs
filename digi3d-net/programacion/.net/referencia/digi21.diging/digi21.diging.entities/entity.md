# Entity

Espacio de nombres: [Digi21.DigiNG.Entities](./)  
Ensamblado: [Digi21.DigiNG](../)

Esta clase abstracta es la clase base común de todas las clases que implementan geometrías.

```csharp
public abstract class Entity : IWindow3D, ICloneable, IDisposable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → Entity

Tipos derivados: [ReadOnlyComplex](readonlycomplex.md), [ReadOnlyLine](readonlyline.md), [ReadOnlyPoint](readonlypoint.md), [ReadOnlyPolygon](readonlypolygon.md), [ReadOnlyText](readonlytext.md).

Implementa: [ICloneable](icloseable.md), [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0), [IWindow3D](../digi21.math/iwindow3d/)

