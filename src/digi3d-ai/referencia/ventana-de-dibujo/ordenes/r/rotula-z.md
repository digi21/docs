# ROTULA\_Z

Rotula un punto o varios puntos con su Z correspondiente.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 … N | Código o códigos de los puntos a rotular | Identificador del código | Si |

## Observaciones

Si no indicas parámetros, la orden muestra un cuadro de diálogo para seleccionar los códigos.

La orden crea un texto con la Z de cada punto visible, dentro de la zona de interés, que tiene alguno de los códigos. El texto se sitúa en el punto desplazado en X el valor de la [distancia activa](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) principal y en Y el valor de la distancia activa secundaria \(DA2\). Si DA2 no tiene valor, la orden utiliza DA también en Y.

El texto tiene la altura, la justificación y la rotación de [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), el número de decimales de [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md) y el código activo.

## Características de la orden

| Tipo de orden | [Orden inmediata](rotula-z.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Rotula Z de puntos por código... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto |
| Nombre interno | {C0859A31-1DBC-4a5f-A13A-65260F5C5318} |

