# Entities
<!-- id: entities-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entidades del complejo.

```csharp
public IEnumerable<Entity> Entities { get; }
```

## Valor de la propiedad

Las entidades del complejo, en orden, del tipo de cada una. Las entidades de un complejo que pertenece a un archivo de dibujo tienen como `Owner` ese archivo y son de solo lectura.

Cada llamada a `GetEnumerator` crea un enumerador nuevo. `MoveNext` lanza `InvalidOperationException` si el número de entidades del complejo cambia durante el recorrido. En un [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/), `Complex.Entities` oculta esta propiedad y devuelve una colección de lectura y escritura.

## Ejemplo

```csharp
// complejo es un ReadOnlyComplex leído de un archivo.
foreach (var parte in complejo.Entities)
    Console.WriteLine(parte.GetType().Name);
```
