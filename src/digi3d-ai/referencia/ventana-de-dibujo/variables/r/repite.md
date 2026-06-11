# REPITE

Si está activa, repite la última orden que se ha ejecutado para las órdenes que admiten repetición.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Repetir | Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.; **0**: Para desactivar la variable booleana.; **1**: Para activar la variable booleana.; **?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada. | Si |


## Observaciones

Algunas órdenes tienen la capacidad de auto-ejecutarse cada vez que finalizan. Podemos controlar si queremos o no que se auto-ejecuten estas órdenes al finalizarse mediante esta orden.

Esta orden es de tipo booleano, lo que significa que puede estar activa o desactiva.

* Si la orden está activa y ejecutamos una orden que admite repetición, como por ejemplo [CIRCR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/circr.md), cuando se digitalice un círculo, la orden CIRCR se auto-destruirá, pero al estar activa la orden _REPITE_, _DigiNG_ volverá a ejecutar la orden _CIRCR_.
* Si la orden no está activa y ejecutamos una orden que admite repetición, cuando ésta se destruya no se volverá a ejecutar automáticamente.

Algunas órdenes no admiten auto-repetición, como por ejemplo la orden [BORRA\_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-ultimo.md), pues si esta orden admitiese repetición, si se ejecuta con el valor de REPITE activado, se borraría todo el modelo al ejecutarla.

## Características de la orden

| Tipo de orden | [Variable booleana](repite.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inmediato/Variables booleanas/Repetir la última orden |
| Barra de herramientas en la que aparece la orden | Órdenes automáticas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {AB7E2B12-8E22-42d1-AE7B-E7236E062D58} |

## Vídeo

