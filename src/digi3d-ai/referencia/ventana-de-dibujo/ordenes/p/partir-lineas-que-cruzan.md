# PARTIR\_LINEAS\_QUE\_CRUZAN
<!-- id: partir-lineas-que-cruzan -->

Parte por los puntos de cruce todas las líneas que cruzan la geometría seleccionada.

## Funcionamiento

1. Selecciona la línea, abierta o cerrada, por la que se van a partir las demás.
2. Digi3D.AI parte en los puntos de cruce todas las líneas visibles que cruzan la línea seleccionada.
3. Selecciona otra línea para repetir la operación, o pulsa **Esc** para terminar.

La orden admite selección múltiple: si se seleccionan varias líneas (por ejemplo, con una selección por ventana o enviando a la **Orden activa** los resultados del panel [Buscar](/digi3d-ai/referencia/paneles/buscar.md)), cada una actúa como límite y una línea que cruza varias se parte por todas. Las líneas seleccionadas no se parten entre sí.

## Observaciones

* No se borra ningún tramo. Cada trozo conserva los códigos de la línea original.
* La línea seleccionada no se modifica.
* Se parten las líneas visibles y en la zona de interés del archivo de trabajo. Las líneas borradas no se parten.
* Si una línea cerrada cruza la línea seleccionada, sus trozos empiezan y terminan en los puntos de cruce: el vértice inicial de la línea cerrada no produce un corte adicional.
* Si ninguna línea cruza la seleccionada, suena el aviso de error.
* Para cortar y además borrar o recodificar los tramos interiores a una línea cerrada, usa [LIMPIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limpia.md).

## Parámetros

No admite parámetros.

## Características de la orden

| Tipo de orden | [Orden interactiva](partir-lineas-que-cruzan.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Análisis geométricos/Partir líneas por el punto de cruce/Líneas que cruzan la geometría seleccionada |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [LIMPIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limpia.md)<br>[PARTIR\_LINEAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas.md)<br>[PARTIR\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas-visibles.md)<br>[TRIM\_LADO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/trim-lado.md) |
| Nombre interno | {27530311-1881-405A-BD49-F18FE94A957B} |
