# PARALELA\_Z

Dibuja una paralela a una línea existente asignando la Z activa a todos los vértices de la paralela generada.

![Las órdenes de paralelas: PARALELA con distancia escrita y punto de lado, PARALELA_DA a la distancia activa a la derecha del sentido de digitalización, PARALELA_DINAMICA con la distancia del cursor, las variantes con eje a mitad de distancia, y en alzado la Z que toma la paralela en cada variante](../../../../../images/paralelas.svg)

## Parámetros

No admite parámetros.

## Observaciones

Funciona como [PARALELA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela.md): seleccionas la línea, das la distancia y pinchas en el lado. La diferencia es que todos los vértices de la paralela toman la Z del punto con el que eliges el lado.

## Características de la orden

| Tipo de orden | [Orden inmediata](paralela-z.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Más/Paralela clásica (selección/distancia/lado) con Z activa |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {351A5010-8CDA-4DDA-AB3A-A0DA6E9631EE} |
