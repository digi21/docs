# Tags
<!-- id: tags -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Etiquetas del código.

```csharp
public IEnumerable<string> Tags { get; set; }
```

## Valor de la propiedad

`IEnumerable<string>` con las [etiquetas](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md) del código. La lectura devuelve una matriz nueva: modificarla no cambia el código. La asignación sustituye todas las etiquetas por las de la enumeración.

## Excepciones

Si el objeto es de solo lectura (tabla de códigos no modificable o código ya añadido con `AddCode`), la asignación lanza `InvalidOperationException`. Si el valor asignado es `null`, lanza `NullReferenceException`.
