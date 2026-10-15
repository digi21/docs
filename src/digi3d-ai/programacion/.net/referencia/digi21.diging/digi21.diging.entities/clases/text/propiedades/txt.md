# Txt
<!-- id: txt-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve o asigna la cadena del [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/).

```csharp
public new string Txt { get; set; }
```

## Valor de la propiedad

Cadena del texto. En un `Text` nuevo es una cadena vacía. La propiedad nunca devuelve `null`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | Se asigna el valor y el texto es de solo lectura (`ReadOnly` es `true`). |
