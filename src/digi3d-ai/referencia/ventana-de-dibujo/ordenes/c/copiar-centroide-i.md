# COPIAR\_CENTROIDE\_I

Copia el centroide de un recinto de la topología temporal en otros recintos que no tienen centroide.

## Parámetros

No admite parámetros.

## Observaciones

Requiere que exista una topología por inundación (topología temporal); en caso contrario, la orden muestra un aviso y termina.

1. Pulsa el botón de datos dentro de un recinto que tenga centroide y pulsa la barra espaciadora. La orden toma el centroide de ese recinto.
2. Pulsa el botón de datos dentro de un recinto sin centroide y pulsa la barra espaciadora. La orden añade una copia del centroide en el punto central calculado por la topología para ese recinto.
3. Repite el paso 2 para copiar el mismo centroide en otros recintos.
4. Pulsa **Esc** para terminar la orden.

Si el recinto seleccionado en el paso 1 no tiene centroide, o el del paso 2 ya tiene uno, la orden emite un sonido de error.

## Características de la orden

| Tipo de orden | [Orden interactiva](copiar-centroide-i.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Copiar centroide |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {415D4B3E-68C0-43C4-B8D8-D8EF42C288C6} |
