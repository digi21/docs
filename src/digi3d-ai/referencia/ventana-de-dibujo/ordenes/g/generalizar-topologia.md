# GENERALIZAR\_TOPOLOGIA

Elimina centroides y líneas para agrupar polígonos vecinos con el mismo centroide en la topología pasada por parámetros.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre de la topología | No |

## Observaciones

La topología tiene que estar cargada. Si no hay ninguna topología cargada, la orden muestra el aviso «No hay ninguna topología cargada». Si no se indica el parámetro o la topología indicada no está cargada, suena el aviso de error.

Dos polígonos vecinos se agrupan cuando sus centroides tienen el mismo texto y los mismos códigos. La orden borra las líneas que comparten los dos polígonos y uno de los dos centroides.

## Características de la orden

| Tipo de orden | [Orden inmediata](generalizar-topologia.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DETECTAR\_POLIGONOS\_VECINOS\_MISMO\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-poligonos-vecinos-mismo-centroide.md) |
| Nombre interno | {19B35B1D-F4BB-4F3E-B2C8-A0E281A82577} |
