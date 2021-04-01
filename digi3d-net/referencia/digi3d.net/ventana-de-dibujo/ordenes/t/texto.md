# TEXTO

Inserta un texto en el archivo de dibujo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código texto \([COD](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/COD.html)\) | Identificador del código | Si |
| 2 | Ángulo activo \([AA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/AUTONUM.html)\) | Número real | Si |
| 3 | Altura de texto \([AT](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/AUTONUM.html)\) | Número real | Si |
| 4 | Justificación de texto \([JT](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/AUTONUM.html)\) | Número real | Si |

Si no se introducen parámetros, la orden solicita el texto a insertar en la barra de mensajes. Una vez digitalizado el texto, ésta vuelve a solicitar otro texto a insertar y así sucesivamente hasta cancelar la orden mediante la tecla _Esc_.

Si se introduce un parámetro, la orden inserta el texto repetidamente sin solicitar el texto a insertar hasta que se cancele la orden mediante la tecla _Esc_.

### Ejemplo:

`texto=Tc`

## Observaciones

Si se introduce como parámetro un número y está activa la variable [AUTONUM](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/AUTONUM.html), el texto insertado variará en función del valor indicado en la variable _AUTONUM_. Por ejemplo, si queremos insertar textos pares \(2, 4, 6, ...\) ejecutaríamos la siguiente sucesión de ordenes:

`autonum=2    
texto=2`

Si queremos insertar texto impares\(1, 3, 5, ...\) ejecutaríamos la siguiente sucesión de órdenes:

`autonum=2    
texto=1`

Podemos modificar el formato de los parámetros de auto numeración mediante la variable [FORMATO\_AUTONUM](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/FORMATO_AUTONUM.html).

Por ejemplo, si queremos introducir sucesivamente textos con el valor _Parcela 1, Parcela 2, Parcela 3,..._ ejecutaríamos la siguiente sucesión de órdenes:

`formato_autonum=Parcela %d    
autonum=1    
texto`

Podemos insertar un símbolo \(cuya definición se extraerá del archivo de dibujo correspondiente en el directorio de símbolos\) si indicamos que texto a insertar es @\[número de símbolo\], siempre y cuando el código activo no utilice como fuente una fuente TrueType.

Por ejemplo, si queremos introducir el símbolo 169 de nuestro directorio de símbolos, ejecutaremos la siguiente orden:

`texto=@169`

## Características de la orden

| Tipo de orden | [Orden interactiva](texto.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Texto con ángulo activo |
| Barra de herramientas en la que aparece la orden | Textos |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | [AA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/AA.html), [AT](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/AT.html), [AUTONUM](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/AUTONUM.html), [FORMATO\_AUTONUM](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/FORMATO_AUTONUM.html), [JT](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/JT.html), [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/t/REPITE.html) |

