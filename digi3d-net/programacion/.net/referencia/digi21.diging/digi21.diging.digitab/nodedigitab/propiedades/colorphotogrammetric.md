# ColorPhotogrammetric

Espacio de nombres: [Digi21.DigiNG.DigiTab](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Devuelve o asigna el color del código en la ventana fotogramétrica.

```csharp
public string ColorPhotogrammetric { get; set; }
```

## Valor de la propiedad

[String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)

Color de la tabla de códigos.

## Observaciones

Si el color es una cadena con un número entre 0 y 255 como por ejemplo `122` se utilizará el color correspondiente en la [paleta de colores](../../../../../../../referencia/editor-de-tablas-de-codigos/pestanas/colores.md#paleta-de-colores) de la tabla de códigos.

Si por el contrario es un valor en de color HTML como por ejemplo `#221345` se extraerán las componentes R, G y B del color HTML.





