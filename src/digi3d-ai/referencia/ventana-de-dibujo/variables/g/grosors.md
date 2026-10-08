# GROSORS
<!-- id: grosors -->

Suma un grosor adicional a los vectores que se muestran en la ventana fotogramétrica.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Grosor adicional en píxeles | Número entero, o **?** para consultar el valor actual en un globo | Si |

Si se ejecuta sin parámetros, la orden muestra el cuadro de diálogo **Introduce valor**:

![Cuadro de diálogo Introduce valor](../../../../../images/introduce-valor.png)

El cuadro se cierra y acepta el valor al pulsar **Intro** o **Escape**, o al confirmar el cambio en el campo.

## Observaciones

El grosor de cada vector en la ventana fotogramétrica es el grosor estéreo de su código en la tabla de códigos más el valor de esta variable. El grosor propio de la entidad no interviene. El grosor resultante nunca es inferior a 1 píxel, así que un valor negativo adelgaza los vectores hasta ese mínimo.

Al cambiar el valor se regeneran los vectores de todas las ventanas fotogramétricas abiertas. Consultar el valor con `GROSORS=?` no regenera nada.

El valor vale 0 al iniciar Digi3D.AI y no se guarda entre sesiones.

Un parámetro que no es un número se interpreta como 0.

Para cambiar el grosor en la ventana de dibujo, utiliza [GROSOR](grosor.md).

### Ejemplos

`GROSORS=2`

Suma 2 píxeles al grosor de los vectores en la ventana fotogramétrica.

`GROSORS=?`

Muestra el valor actual en un globo.

## Características de la orden

| Tipo de orden | [Variable numérica](../../../ordenes/variables/variables-numericas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [GROSOR](grosor.md) |
| Nombre interno | {0D98E9B2-1EA9-45bc-B450-25905BDED0AE} |
