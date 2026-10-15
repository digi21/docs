# Color
<!-- id: color-2 -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Color del código en la ventana de dibujo.

```csharp
public string Color { get; set; }
```

## Valor de la propiedad

`string` con uno de estos formatos:

| Formato | Ejemplo | Color |
| :--- | :--- | :--- |
| Número | `122` | Color con ese índice en la [paleta de colores](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/colores.md) de la tabla de códigos. Se usa el valor absoluto, y los valores mayores que 255 se tratan como 255. |
| `#RRGGBBAA` | `#FF0000FF` | Componentes rojo, verde, azul y alfa (opacidad) en hexadecimal, de `00` a `FF`. |

La propiedad lee y escribe la primera representación del código.

## Excepciones

Si el objeto es de solo lectura (tabla de códigos no modificable o código ya añadido con `AddCode`), la asignación lanza `InvalidOperationException`.
