# TRIANGULAR
<!-- id: triangular -->

Calcula la triangulación de un Modelo Digital del Terreno \(MDT\) a partir de las geometrías de la ventana de dibujo.

## Parámetros

No admite parámetros.

## Observaciones

Antes ejecutar esta orden es necesario dibujar una línea a modo de límite.

1. Selecciona la línea límite con el pulsador de datos o con el pulsador de tentativo.
2. La orden toma las entidades visibles, no borradas y dentro de la zona de interés que están dentro del límite, recorta las que lo cruzan y descarta los textos.
3. La orden calcula la triangulación y la carga como un nuevo archivo de dibujo MDT llamado «Triangulación creada a las hh:mm:ss».

La orden también admite selección múltiple: si se le envían entidades con una orden de selección (por ejemplo [SELECCIONA\_VENTANA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md)), triangula esas entidades sin límite.

## Características de la orden

| Tipo de orden | [Orden interactiva](triangular.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | MDT/Modelo Digital del Terreno basado en geometrías existentes |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesMDT.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CREA\_DEM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crea-dem.md)<br>[CURVAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/curvar.md)<br>[TRIANGULAR\_LINEAS\_EXCEPTO\_PUNTOS\_CON\_CODIGO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-lineas-excepto-puntos-con-codigo.md)<br>[TRIANGULAR\_PUNTOS\_TOPOLOGIA\_EXCEPTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-puntos-topologia-excepto.md) |
| Nombre interno | {CADBCBD9-31D0-4072-B935-47609136331B} |

