# Table
<!-- id: table -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Tabla de base de datos vinculada al código.

```csharp
public string Table { get; set; }
```

## Valor de la propiedad

`string` con el nombre de la tabla de base de datos, o una cadena vacía si el código no está vinculado a ninguna. Los campos de cada tabla están en [DigiTab.Tables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/tables.md).

## Excepciones

Si el objeto es de solo lectura (tabla de códigos no modificable o código ya añadido con `AddCode`), la asignación lanza `InvalidOperationException`.
