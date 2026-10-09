# ORI\_INTERNA\_D
<!-- id: ori-interna-d -->

Realiza la **orientación interna** de la imagen derecha del modelo cargado en la ventana fotogramétrica.

## Parámetros

No admite parámetros.

## Observaciones

La orden muestra el panel **Orientación interna**, el mismo que [ORI\_INTERNA\_I](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-i.md#panel-orientación-interna), con las marcas fiduciales de la imagen derecha. Los requisitos, los controles y el cálculo son los descritos en esa página.

Si la imagen derecha no tiene orientación interna y la izquierda sí, Digi3D.AI busca por correlación cada marca de la imagen derecha a partir de la misma marca medida en la izquierda. Las marcas que la correlación no encuentra se miden a mano.

## Características de la orden

| Tipo de orden | Orden interactiva |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Orientaciones/Orientación interna (derecha) (opción que añade el sensor de cámara cónica) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.ConicSensor.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ORI\_ABSOLUTA](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-absoluta.md)<br>[ORI\_INTERNA\_I](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-i.md)<br>[ORI\_RELATIVA](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori_relativa.md) |
| Nombre interno | {1A62F9F4-BE47-4279-8E7A-13C49514B9A3} |
