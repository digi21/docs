# REPITE
<!-- id: repite -->

Si la variable está activa, el programa repite la última orden ejecutada, siempre que la orden admita repetición.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Repetir |Si no se especifica ningún parámetro, el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo que indica si la variable booleana está activada o desactivada.| Sí |


## Observaciones

La variable REPITE permite activar o desactivar la repetición automática de las órdenes que admiten repetición cuando esas órdenes finalizan.

La variable REPITE puede estar activa o desactivada y se activa cada vez que se abre un archivo de dibujo.

* Si la variable está activa y ejecutas una orden que admite repetición, como [2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/2/2p.md), al digitalizar el cuadrado, la orden 2P finalizará y _DigiNG_ volverá a ejecutar la orden _2P_ con los mismos parámetros.
* Si la variable no está activa y ejecutas una orden que admite repetición, esa orden no se volverá a ejecutar automáticamente cuando finalice.

Algunas órdenes no admiten repetición automática, como la orden [BORRA\_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-ultimo.md), pues, si esta orden admitiera repetición y la ejecutaras con REPITE activada, se borraría todo el modelo.

## Características de la orden

| Tipo de orden | [Variable booleana](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Variables booleanas/Repetir la última orden |
| Barra de herramientas en la que aparece la orden | Órdenes automáticas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {AB7E2B12-8E22-42d1-AE7B-E7236E062D58} |

## Vídeo

