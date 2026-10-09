# CAMB\_SEN
<!-- id: camb-sen -->

Modifica el sentido en que se han registrado los puntos después de haber digitalizado un elemento gráfico.

![CAMB_SEN: la línea pasa de ir del vértice 1 al n a ir en sentido contrario, y las marcas laterales quedan al otro lado](../../../../../images/orden-camb-sen.svg)

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

Sin parámetros, la orden pide que selecciones la línea o las líneas. Con códigos, cambia el sentido de todas las líneas visibles de esos códigos y termina:

`CAMB_SEN=<código>`

## Observaciones

En caso de líneas con patrón, como puede ser el código para masa de árboles, al cambiar el sentido cambiará el lado hacia el que está dirigido el patrón.

Si el control de calidad descarta la entidad modificada, la entidad original se conserva sin cambios. Con varias entidades, cada una se trata de forma independiente: solo se conserva el original de cada entidad descartada y las demás se modifican.

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-sen.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Cambiar el sentido de una línea |
| Barra de herramientas en la que aparece la orden | Sentido de la polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [CAMB\_SEN\_BAJA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen-baja.md)<br>[CAMB\_SEN\_SUBE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen-sube.md)<br>[DETECTAR\_INTERSECCION\_SENTIDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-interseccion-sentido.md) |
| Nombre interno | {B3B49658-61EF-4884-82F7-AD8FE6A7512E} |

