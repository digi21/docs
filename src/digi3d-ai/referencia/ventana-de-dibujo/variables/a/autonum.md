# AUTONUM
<!-- id: autonum -->

Establece el _incremento de autonumeración_.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Incremento de autonumeración | Número entero, o **?** para consultar el valor actual en un globo | Sí |

Si se ejecuta sin parámetros, la orden muestra un cuadro de diálogo para introducir el valor.

## Observaciones

AUTONUM vale 0 al iniciar Digi3D.AI, y 0 desactiva la autonumeración. El valor de AUTONUM no se guarda entre sesiones. Un valor negativo hace que la numeración decrezca.

Si AUTONUM tiene un valor distinto de 0 y ejecutas la orden [TEXTO](../../ordenes/t/texto.md) sin parámetros, la orden propone como texto que se insertará el último número insertado más el valor de AUTONUM, con el formato indicado en [FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md). Al digitalizar el texto, el programa extrae el número del texto insertado y registra ese número como último número insertado. El valor de esta variable no cambia. Si FORMATO\_AUTONUM no es un formato válido para un número entero, se usa `%d`.

La orden [AGREGA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrega.md) también utiliza esta variable para proponer el nombre del punto. En AGREGA, el último número se extrae del nombre del punto aceptado.

## Ejemplos

Ejecuta las siguientes órdenes para digitalizar los textos 1, 2, 3, 4, 5,...:

```text
AUTONUM=1
TEXTO
```

Teclea el valor 1 cuando la orden _TEXTO_ te solicite un número para reiniciar la numeración desde 1. El contador se reiniciará en 1.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/AUTONUM.mp4" caption="" type="video/mp4"></video>

## Características de la orden

| Tipo de variable | [Numérica](../../../ordenes/variables/variables-numericas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) |
| Nombre interno | {3C350BC2-A34D-4dea-ADB7-4DDBFA9E1475} |

