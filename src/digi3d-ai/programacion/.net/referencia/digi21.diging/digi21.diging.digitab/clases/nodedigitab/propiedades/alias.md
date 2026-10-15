# Alias
<!-- id: alias -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Alias del código.

```csharp
public IEnumerable<string> Alias { get; set; }
```

## Valor de la propiedad

`IEnumerable<string>` con los [alias](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md) del código. `HasCode` y el indizador de [DigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) encuentran el código también por sus alias. La lectura devuelve una matriz nueva: modificarla no cambia el código. La asignación sustituye todos los alias por los de la enumeración.

## Excepciones

Si el objeto es de solo lectura (tabla de códigos no modificable o código ya añadido con `AddCode`), la asignación lanza `InvalidOperationException`. Si el valor asignado es `null`, lanza `NullReferenceException`.
