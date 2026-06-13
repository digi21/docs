# S

Indica si _Digi3D.AI_ suavizará automáticamente la línea que está digitalizando al finalizarla.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| No |


## Observaciones

Al finalizar una línea \(independientemente del método utilizado para finalizarla como pulsar el botón de _Reset_, ejecutar la orden [FIN\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin-ent.md), si está activada la variable booleana **S**, la línea se suavizará antes de ser almacenada en el archivo de dibujo.

## Características de la orden

| Tipo de orden | [Variable booleana](s.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Al finalizar la línea actual.../Suavizar |
| Barra de herramientas en la que aparece la orden | Acción al finalizar línea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {E108CB63-71BE-4f3d-AFA0-BF1D9D59BE96} |

