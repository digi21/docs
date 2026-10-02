# PARALELA\_DINAMICA\_CON\_EJE\_Z

Dibuja una paralela dinámica con el código/s activo/s y un eje entre las dos paralelas con el código/s pasado/s por parámetros. Se calcula la diferencia de Z entre el punto seleccionado y el digitalizado.

![Las órdenes de paralelas: PARALELA con distancia escrita y punto de lado, PARALELA_DA a la distancia activa a la derecha del sentido de digitalización, PARALELA_DINAMICA con la distancia del cursor, las variantes con eje a mitad de distancia, y en alzado la Z que toma la paralela en cada variante](../../../../../images/paralelas.svg)

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 y siguientes | Códigos del eje. | Sí |

## Observaciones

Funciona como la paralela dinámica: seleccionas la línea y la paralela sigue al cursor hasta que pinchas. Además, la orden dibuja un eje a mitad de distancia entre la línea original y la paralela, con los códigos pasados como parámetros. La paralela se genera con el código activo.
A la Z de la paralela y del eje se le suma la diferencia de Z entre el punto con el que seleccionaste la línea y el punto digitalizado.

## Características de la orden

| Tipo de orden | [Orden inmediata](paralela-dinamica-con-eje-z.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Más/Paralela dinámica con eje en XYZ |
| Barra de herramientas en la que aparece la orden | Paralelas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {123956F1-100D-429D-A709-D340047C9932} |
