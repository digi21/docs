# ANADIR\_CODIGOS\_BORDES\_POLIGONOS\_TOPOLOGIA
<!-- id: anadir-codigos-bordes-poligonos-topologia -->

Añade los códigos activos a las líneas que forman el borde de los polígonos que tengan un determinado centroide para una determinada topología.

## Parámetros

No admite parámetros.

## Observaciones

La orden necesita al menos una topología cargada; si no la hay, muestra el aviso «No hay ninguna topología cargada» y termina.

La orden muestra un cuadro de diálogo en el que eliges:

* La topología.
* Los polígonos a procesar: todos, los que tienen cualquier centroide o los que tienen un centroide concreto.
* El centroide, si has elegido polígonos con un centroide concreto.

Al aceptar, la orden añade los códigos activos a las líneas del borde exterior y de los huecos de los polígonos elegidos. Solo procesa la topología del archivo de dibujo activo.

## Características de la orden

| Tipo de orden | [Orden inmediata](anadir-codigos-bordes-poligonos-topologia.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Añadir códigos activos a bordes de polígonos topológicos... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CAMBIA\_CODIGO\_LINEAS\_DENTRO\_POLIGONOS\_TOPOLOGIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-codigo-lineas-dentro-poligonos-topologia.md) |
| Nombre interno | {99A1A919-D4B5-4491-B171-C0585C429F47} |
