# COTA

Digitaliza una cota altimétrica.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código con el que se digitalizará el punto de la cota altimétrica. | Algún código de la tabla de códigos activa como 020401 | Si. Si no se especifica este parámetro se digitalizará el punto con el conjunto de códigos activos en el momento de ejecutar la orden |
| 2 | Código con el que se digitalizará el texto de la cota altimétrica. | Algún código de la tabla de códigos activa como 020401 | Si. Si no se indica este parámetro se le asignará al texto el mismo código que al punto de la cota altimétrica |

## Observaciones

La distancia entre el punto y el texto es la mitad del valor almacenado en la variable [AT](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/AT.html) \(altura de texto\).  
El texto digitalizado tendrá la rotación especificada en la variable [AA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/AA.html) \(ángulo activo\).  
El texto digitalizado tendrá la justificación especificada en la variable [JT](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/JT.html) \(justificación de textos\).  
El texto digitalizado tendrá tantos decimales como los especificados en la variable [NDEC](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/NDEC.html).

## Características de la orden

| Tipo de orden | [Orden interactiva](cota.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Cota altimétrica |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/REPITE.html), [AA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/AA.html), [AT](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/AT.html), [DA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/DA.html), [JT](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/JT.html) |

