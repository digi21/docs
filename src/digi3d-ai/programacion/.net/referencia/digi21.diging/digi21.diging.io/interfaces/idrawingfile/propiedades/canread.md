# CanRead
<!-- id: canread -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si el formato del archivo de dibujo permite leer entidades.

```csharp
bool CanRead { get; }
```

## Valor de la propiedad

`bool`: `true` si las entidades del archivo se pueden recorrer con `foreach`. El valor depende del formato, no de cómo se abrió el archivo: un archivo abierto en solo lectura tiene `CanRead` a `true` y `CanWrite` a `false`.
