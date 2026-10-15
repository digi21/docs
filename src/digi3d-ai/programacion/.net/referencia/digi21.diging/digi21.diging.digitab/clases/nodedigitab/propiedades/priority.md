# Priority
<!-- id: priority -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Prioridad del código.

```csharp
public int Priority { get; set; }
```

## Valor de la propiedad

`int` con la [prioridad](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md) del código.

## Excepciones

Si el objeto es de solo lectura (tabla de códigos no modificable o código ya añadido con `AddCode`), la asignación lanza `InvalidOperationException`.
