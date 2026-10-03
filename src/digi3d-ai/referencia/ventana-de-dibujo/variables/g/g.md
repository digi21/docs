# G

Activa o desactiva la función de [generalización](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md).

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo de finalización generalizando la línea |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |

## Observaciones

Si está activada, las líneas que crean las órdenes [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) (al finalizarlas) e [INTER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/inter.md) se generalizan con las tolerancias [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) y [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) antes de almacenarse.

Por defecto está desactivada.

## Características de la orden

| Tipo de orden | [Variable booleana](../../../ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Al finalizar la línea actual.../Generalizar \(eliminar puntos superfluos\) |
| Barra de herramientas en la que aparece la orden | Acción al finalizar línea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md), [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) |
| Nombre interno | {F0D74387-1158-4e57-BFF0-FDC2D07B518A} |

