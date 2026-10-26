# MOD\_Z\_MÚLTIPLE
<!-- id: mod-z-multiple -->

Modifica el trazado geométrico de varias entidades en XYZ.

## Parámetros

No admite parámetros.

## Observaciones

Dibuja una entidad que represente el nuevo trazado del elemento que quieres modificar y, sin finalizar la entidad que estás dibujando, ejecuta la orden MOD\_Z\_MÚLTIPLE. Dibuja el nuevo tramo de modo que enlace con los puntos de la entidad que quieres modificar.

Digi3D.AI busca, en la entidad que quieres modificar, los puntos más próximos al primer y al último punto de la entidad modificadora y sustituye el tramo comprendido entre los dos puntos encontrados por los puntos de la entidad modificadora.

En este proceso, la cota de los puntos de la entidad modificadora no se ajusta a la de la entidad modificada. Si no deseas modificar las cotas utiliza la orden [MOD\_MÚLTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-multiple.md).

La orden sigue pidiendo entidades a modificar con el mismo trazado hasta que pulses la tecla Esc, que termina también la orden LINEA.

El código de la entidad modificadora se sustituye por el código de la entidad modificada, independientemente del código que hayas utilizado al dibujar la entidad modificadora.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Modificar en XYZ múltiples polilíneas existentes con la que estás registrando |
| Barra de herramientas en la que aparece la orden | Modifica |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [MOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md)<br>[MOD\_MÚLTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-multiple.md)<br>[MOD\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z.md) |
| Nombre interno | {FF2FD567-1A64-4B9F-82F1-4D2379EBBBDA} |

