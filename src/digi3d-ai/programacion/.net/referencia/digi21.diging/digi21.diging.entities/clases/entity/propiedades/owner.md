# Owner

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Devuelve el archivo de dibujo al que pertenece el [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

```csharp
public IDrawingFile Owner { get; }
```

## Valor de la propiedad

[IDrawingFile](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/)

Archivo de dibujo al que pertenece la geometría o `null` en caso de que la geometría no pertenezca a ningún archivo de dibujo.

## Observaciones

Al almacenar una geometría en un archivo de dibujo, inmediatamente esta se convierte en una geometría de solo lectura, de manera que ya no se podrán utilizar las propiedades de asignación.

Para saber si una geometría es de solo lectura podemos utilizar la propiedad [ReadOnly](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/readonly.md).



