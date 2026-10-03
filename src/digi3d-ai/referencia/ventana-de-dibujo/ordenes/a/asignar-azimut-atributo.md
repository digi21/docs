# ASIGNAR\_AZIMUT\_ATRIBUTO

Solicita al usuario que digitalice dos puntos y asigna el valor del azimut en el campo de base de datos pasado por parámetros

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código | No |
| 2 | Nombre del campo | No |

## Observaciones

La orden asigna el valor al campo en la lista de atributos activos del código, igual que [ASIGNA\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md). No modifica ninguna entidad existente.

Mientras mueves el cursor después del primer punto, la orden muestra el valor en la barra de mensajes. El valor almacenado es el ángulo trigonométrico (medido desde el eje X en sentido antihorario) del segundo punto respecto al primero, en grados sexagesimales, con el número de decimales de la ventana de dibujo.

Si falta alguno de los dos parámetros, la orden emite un sonido de error y termina.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesBaseDatos.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {0FDBA0D4-71F6-4520-8E77-4FE4077536EC} |
