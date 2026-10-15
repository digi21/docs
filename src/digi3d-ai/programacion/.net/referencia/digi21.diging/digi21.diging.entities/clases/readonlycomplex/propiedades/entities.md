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

> En la versión 26.0.0, la propiedad lanza `InvalidCastException` siempre: devuelve el enumerador de las entidades convertido en `IEnumerable<Entity>`, y el enumerador no implementa esa interfaz. Para recorrer las entidades de un complejo leído de un archivo, recorre `Entities` de la copia que devuelve [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/metodos/clone.md). En un [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/), `Complex.Entities` oculta esta propiedad y funciona, salvo si se lee con una variable de tipo `ReadOnlyComplex`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidCastException` | Siempre, en la versión 26.0.0. |

## Ejemplo

```csharp
// complejo es un ReadOnlyComplex leído de un archivo.
foreach (var parte in complejo.Clone().Entities)
    Console.WriteLine(parte.GetType().Name);
```
