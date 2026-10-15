# Codes
<!-- id: codes-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Códigos de la entidad.

```csharp
public IList<Code> Codes { get; }
```

## Valor de la propiedad

Una [CodeCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/codecollection/), siempre la misma instancia para cada entidad. Los cambios en la colección se aplican a la entidad. Si la entidad es de solo lectura, los métodos que modifican la colección lanzan `InvalidOperationException`.

Cada elemento es una copia del [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/). Para cambiar un código, modifica la copia y asígnala con el indexador.

## Ejemplo

```csharp
var código = línea.Codes[0];
código.Visible = 0;
línea.Codes[0] = código;
```
