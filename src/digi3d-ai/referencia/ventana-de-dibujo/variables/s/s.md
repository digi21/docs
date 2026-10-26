# S
<!-- id: s-3 -->

Indica si _Digi3D.AI_ suavizará automáticamente la línea que digitalizas cuando termines de digitalizarla.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no se especifica ningún parámetro, el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo que indica si la variable booleana está activada o desactivada.| Sí |


## Observaciones

Si la variable booleana **S** está activada, al finalizar una línea, el programa suavizará la línea antes de almacenarla en el archivo de dibujo, independientemente del método que utilices para finalizarla \(por ejemplo, pulsar el botón de _Reset_ o ejecutar la orden [FIN\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin-ent.md)\).

El suavizado usa como separación entre puntos el valor de la variable [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md).

## Características de la orden

| Tipo de orden | [Variable booleana](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Al finalizar la línea actual.../Suavizarla |
| Barra de herramientas en la que aparece la orden | Acción al finalizar línea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) |
| Nombre interno | {E108CB63-71BE-4f3d-AFA0-BF1D9D59BE96} |

