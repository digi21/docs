# EXPLOTAR\_POLIGONO
<!-- id: explotar-poligono -->

Divide el polígono en todas las entidades que lo forman.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicita que selecciones un polígono del modelo actual. También admite una selección múltiple, en la que solo procesa los polígonos. Cada polígono se convierte en una línea con el contorno exterior y los códigos del polígono, y en una línea por cada hueco con los códigos del hueco.

Si Digi3D.AI descarta alguna de las entidades resultantes, la orden no explota el polígono y el polígono original se conserva. Con selección múltiple, si descarta alguna, se conservan todos los polígonos originales y no se explota ninguno.

## Características de la orden

| Tipo de orden | [Orden interactiva](explotar-poligono.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Polígonos/Descomponer polígono |
| Barra de herramientas en la que aparece la orden | Polígonos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CREAR\_POLÍGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-poligono.md)<br>[EXPLOTAR\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejo.md)<br>[EXPLOTAR\_POLIGONOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligonos-cod.md)<br>[EXPLOTAR\_PUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md) |
| Nombre interno | {F4F7C7C1-5C1E-4412-91F7-B9CF1C24D9C3} |
