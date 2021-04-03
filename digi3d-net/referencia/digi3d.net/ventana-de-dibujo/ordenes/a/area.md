# AREA

Calcula la superficie de entidades gráficas cerradas y sitúa en la pantalla un texto con este valor, en la posición indicada por el usuario.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código texto \([COD](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/a/COD.html)\) | Identificador del código | Si |
| 2 | Ángulo activo \([AA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/a/AA.html)\) | Número real | Si |
| 3 | Altura de texto \([AT](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/a/AT.html)\) | Número real | Si |
| 3 | Justificación de texto \([JT](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/a/JT.html)\) | Número real | Si |
| 3 | Número de decimales \([NDEC](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/a/NDEC.html)\) | Número real | Si |

## Observaciones

* Si devuelve un valor positivo, indica que los elementos de la entidad cerrada han sido creados en el sentido de las agujas del reloj.
* Si devuelve un valor negativo, indica que los elementos de la entidad cerrada han sido creados en el sentido contrario al del avance de las agujas del reloj.

Una vez ejecutada la orden, el programa pedirá seleccionar la entidad cerrada a la cual se quiere rotular con el área.

A continuación aparece en la Barra de Estado el sufijo para el área. Este sufijo es opcional, por defecto aparece la cadena m2. El usuario puede introducir el texto que desee y una vez que el usuario está de acuerdo con el sufijo, deberá dar el punto de destino para ubicar el texto del área.

## Características de la orden

| Tipo de orden | [Variable real](area.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Área de un polígono seleccionado |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/a/REPITE.html) |

