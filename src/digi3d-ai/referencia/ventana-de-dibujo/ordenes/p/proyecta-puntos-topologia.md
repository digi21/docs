# PROYECTA\_PUNTOS\_TOPOLOGIA

Proyecta sobre los MDT cargados las entidades que forman los recintos de una topología.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre de la topología | No |
| 2 … N | Código o códigos (uno o más) de las entidades a proyectar | No |

## Observaciones

La orden recorre los recintos válidos de la topología indicada en el archivo de dibujo activo. Cada entidad que forma un recinto y tiene alguno de los códigos indicados se proyecta una sola vez: cada vértice toma la Z del primer MDT que lo contiene, y los vértices fuera de todos los MDT conservan su Z.

La orden muestra un aviso y termina si faltan parámetros, si no hay ningún MDT cargado, si no hay ninguna topología cargada o si la topología indicada no existe.

## Características de la orden

| Tipo de orden | [Orden inmediata](proyecta-puntos-topologia.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesMDT.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [PROYECTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta.md)<br>[PROYECTA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod.md)<br>[PROYECTA\_COD\_ETIQUETA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod-etiqueta.md)<br>[PROYECTA\_POR\_CONDICION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-por-condicion.md) |
| Nombre interno | {466C85ED-6F47-4012-A761-E7787E261241} |
