# FORMAR\_POLIGONOS

Crea/modifica polígonos mediante inundaciones y eliminando segmentos comunes

## Parámetros

No admite parámetros.

## Observaciones

1. Selecciona las líneas y polígonos con los que se van a formar los polígonos y pulsa la barra espaciadora. La orden parte las líneas por sus cruces, descarta las duplicadas y forma una topología temporal. Cada recinto toma los códigos de la línea cerrada o del polígono seleccionado más pequeño que lo contiene.
2. Selecciona dos polígonos contiguos para localizar sus caras comunes. Pulsa Suprimir para eliminar las caras comunes y unir los dos polígonos, o Esc para deseleccionarlas. Si los dos polígonos tienen códigos o atributos distintos, la orden pregunta cuál de los dos conservar o si no se unen.
3. Pulsa la barra espaciadora para aceptar. La orden crea un polígono, con sus huecos, por cada recinto. Si un recinto no tiene códigos asignados, la orden pide el código; si se cancela, ese recinto no se crea. Las entidades seleccionadas en el paso 1 se borran.

## Características de la orden

| Tipo de orden | [Orden interactiva](formar-poligonos.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Polígono mediante inundaciones |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CREAR\_POLÍGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-poligono.md)<br>[POL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pol.md) |
| Nombre interno | {F3F9E21F-BC9A-432E-B9D2-4DCBB070CCE4} |
