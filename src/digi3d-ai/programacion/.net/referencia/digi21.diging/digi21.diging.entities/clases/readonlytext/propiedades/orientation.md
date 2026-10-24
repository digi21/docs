# Orientation
<!-- id: orientation -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve la orientación en el espacio del [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/).

```csharp
public Quaternion Orientation { get; }
```

## Valor de la propiedad

Un [Quaternion](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/quaternion.md) que se aplica al texto antes de [Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/rotation.md), en el sistema local del texto. En el sistema local del texto, el eje X sigue la línea base (la línea sobre la que se apoyan los caracteres), el eje Y apunta hacia la parte superior de los caracteres y el eje Z apunta hacia el lector.

La rotación completa del texto es Rz(`Rotation`) · `Orientation`, donde Rz(`Rotation`) es un giro de `Rotation` grados alrededor del eje Z del mundo. `Orientation` se aplica primero, en el sistema local del texto, y Rz(`Rotation`) se aplica a continuación sobre el resultado de `Orientation`.

| `Orientation` | Posición del texto |
| :--- | :--- |
| [Quaternion.Identity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/quaternion.md), (1, 0, 0, 0) | Plano XY. La rotación completa es solo el giro `Rotation`. |
| (cos 45°, sin 45°, 0, 0) | Plano vertical, con la línea base horizontal: es la rotación de 90° alrededor del eje X. Con `Rotation` = 0, la línea base sigue el eje X del mundo, la parte superior de los caracteres apunta hacia el semieje Z positivo y la cara legible del texto está orientada hacia el semieje Y negativo. Con otro valor de `Rotation`, la línea base forma ese ángulo con el eje X en planta. |

El texto normaliza la orientación cuando se le asigna, así que el cuaternión devuelto tiene norma 1, con una tolerancia de 10⁻¹². Los cuaterniones `q` y `-q` representan la misma rotación, y la propiedad devuelve el cuaternión con el signo con el que se asignó.

Con la variable [TEXTO\_ORIENTADO\_CON\_CAMARA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) activa, las órdenes TEXTO, 1TEXTO, TEXTO\_EDITABLE, TEXTO\_R y TEXTO\_R\_EDITABLE asignan una orientación a los textos que insertan.

La propiedad devuelve una copia: `Quaternion` es un tipo de valor. [ReadOnlyText.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/metodos/clone.md) devuelve un `Text` con la misma orientación que el original.

[Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) oculta esta propiedad con una versión que también se puede asignar: [Text.Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/orientation.md).
