# Owner

Espacio de nombres: [Digi21.DigiNG.Entities](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Devuelve el archivo de dibujo al que pertenece el [Entity](../).

```csharp
public IDrawingFile Owner { get; }
```

## Valor de la propiedad

[IDrawingFile](../../../digi21.diging.io/idrawingfile/)

Archivo de dibujo al que pertenece la geometría o `null` en caso de que la geometría no pertenezca a ningún archivo de dibujo.

## Observaciones

Al almacenar una geometría en un archivo de dibujo, inmediatamente esta se convierte en una geometría de solo lectura, de manera que ya no se podrán utilizar las propiedades de asignación.

Para saber si una geometría es de solo lectura podemos utilizar la propiedad [ReadOnly](readonly.md).



