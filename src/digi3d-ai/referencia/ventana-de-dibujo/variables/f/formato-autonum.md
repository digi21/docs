# FORMATO\_AUTONUM
<!-- id: formato-autonum -->

Permite especificar el formato de la cadena de texto a dibujar cuando se utiliza la orden [AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Cadena de formato | Texto con una conversión de número entero de tipo `printf` (por ejemplo `%d` o `%05d`), o **?** para consultar el valor actual en un globo | Si |

Si la cadena de formato contiene espacios, escríbela entre comillas; sin comillas solo se toma la primera palabra.

### Ejemplos

`AUTONUM=1`, con `FORMATO_AUTONUM="%d"`

DigiNG iría insertando los siguientes textos:

1

2

3

`AUTONUM=1`, con `FORMATO_AUTONUM="%5d"`

El formato "%5d" establece un ancho mínimo de 5 caracteres y completa el número con espacios a la izquierda. DigiNG insertaría los siguientes textos:

```text
    1

    2

    3
```

`AUTONUM=1`, con `FORMATO_AUTONUM="%05d"`

El formato "%05d" establece un ancho mínimo de 5 caracteres y completa el número con ceros a la izquierda para obtener, por ejemplo, "00001" en vez de "1". DigiNG insertaría los siguientes textos:

00001

00002

00003

AUTONUM=1, con FORMATO\_AUTONUM="PK %05d de P11"

PK 00001 de P11

PK 00002 de P11

PK 00003 de P11

## Observaciones

El valor por defecto es "%d" \(Inserta el número en esa posición\). Sin parámetros, la orden solicita el formato en la barra de estado mostrando el valor actual. Si se introduce una cadena vacía, se asigna "%d".

Si la cadena de formato tiene más de una conversión, o una conversión que no es de número entero, las órdenes [TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md) y [AGREGA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrega.md) utilizan "%d".

## Características de la orden

| Tipo de orden | [Variable de tipo texto](../../../ordenes/variables/variables-de-tipo-texto.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) |
| Nombre interno | {7E76B285-DABD-4265-88D7-4FCA2F35DA73} |

