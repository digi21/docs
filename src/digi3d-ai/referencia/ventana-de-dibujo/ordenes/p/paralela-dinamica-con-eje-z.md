# PARALELA\_DINAMICA\_CON\_EJE\_Z
<!-- id: paralela-dinamica-con-eje-z -->

Dibuja una paralela dinámica con los códigos activos y, entre la línea original y la paralela, un eje con los códigos indicados como parámetros. La orden calcula la diferencia de Z entre el punto con el que seleccionas la línea y el punto digitalizado.

![PARALELA_DINAMICA_CON_EJE_Z: en planta, la paralela a la distancia d del cursor y el eje a d/2; en alzado, la paralela y el eje con la Z original más la diferencia de Z entre el punto de selección y el punto digitalizado](../../../../../images/orden-paralela-dinamica-con-eje-z.svg)

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 y siguientes | Códigos del eje. | Sí |

## Observaciones

Selecciona la línea y haz clic para fijar la posición de la paralela; hasta que hagas clic, la posición de la paralela cambia al mover el cursor. Además, la orden dibuja un eje a mitad de distancia entre la línea original y la paralela, con los códigos pasados como parámetros. La paralela se genera con el código activo.
A la Z de la paralela y del eje se le suma la diferencia de Z entre el punto con el que seleccionaste la línea y el punto digitalizado.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Dibujar/Más/Paralela dinámica con eje en XYZ |
| Barra de herramientas en la que aparece la orden | Paralelas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [PARALELA\_DINAMICA\_CON\_EJE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje.md)<br>[PARALELA\_DINAMICA\_CON\_EJE\_Z\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje-z-activa.md)<br>[PARALELA\_DINÁMICA\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-xyz.md) |
| Nombre interno | {123956F1-100D-429D-A709-D340047C9932} |
