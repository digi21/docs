# MOD\_MÚLTIPLE
<!-- id: mod-multiple -->

Modifica el trazado geométrico de varias entidades en XY.

## Parámetros

No admite parámetros.

## Observaciones.

Dibuja una entidad que represente el nuevo trazado de los elementos que quieres modificar y, sin finalizar la entidad que estás dibujando, ejecuta la orden MOD\_MÚLTIPLE. Dibuja el nuevo tramo de modo que enlace con los puntos de la entidad que quieres modificar.

Digi3D.AI busca, en la entidad que quieres modificar, los puntos más próximos al primer y al último punto de la entidad modificadora y sustituye el tramo comprendido entre los dos puntos encontrados por los puntos de la entidad modificadora.

En este proceso, la cota de los puntos de la entidad modificadora se ajusta a la de la entidad modificada. Si no deseas modificar las cotas utiliza la orden [MOD\_Z\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z-multiple.md).

El código de la entidad modificadora se sustituye por el código de la entidad modificada, independientemente del código que hayas utilizado al dibujar la entidad modificadora.

La orden sigue pidiendo entidades a modificar con el mismo trazado hasta que pulses la tecla Esc.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Modificar en XY múltiples polilíneas existentes con la que estás registrando |
| Barra de herramientas en la que aparece la orden | Modifica |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [MOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md)<br>[MOD\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z.md)<br>[MOD\_Z\_MÚLTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z-multiple.md) |
| Nombre interno | {8F810FF6-B3F4-4080-9572-84554E9F33AE} |

