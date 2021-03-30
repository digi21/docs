# De manera automática si el programa está en modo preparado

Digi3D.NET ejecutará órdenes de manera automática si se cumplen las siguientes condiciones:

* Está en [modo preparado](modo-preparado.md).
* La variable booleana [AUTOMATICO ](../../../ventana-de-dibujo/variables/a/automatico.md)tiene asignado el valor _Verdadero_.

Si se cumplen estas dos condiciones, el programa ejecutará automáticamente una o varias órdenes al pulsar el botón/pedal de _Dato_ y enviará las coordenadas del dato a dicha orden.

Las órdenes que se ejecutarán dependerán de si el código activo tiene asignados o no órdenes en el campo [**Ordenes \(pulsar dato\)**](../../../../editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md#ordenes-pulsar-dato) en la tabla de códigos.

* Si el código activo tiene asignadas órdenes, se ejecutarán dichas órdenes al pulsar el botón de Dato.
* Si el código activo no tiene asignadas órdenes, el programa ejecutará la orden [LINEA ](../../../ventana-de-dibujo/ordenes/l/linea.md)si el código activo es _Lineal_ o _Virtual_ o la orden [PUNTO ](../../../ventana-de-dibujo/ordenes/p/punto.md)si el código activo es de tipo _Puntual_.
* Si el código activo es el asignado en la orden [COD\_COTAS](../../../ventana-de-dibujo/ordenes/c/cod-cotas.md) se ejecutará de manera automática la orden [COTA](../../../ventana-de-dibujo/ordenes/c/cota.md).

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/ejecutando\_ordenes\_manera\_automatica.mp4" %}





