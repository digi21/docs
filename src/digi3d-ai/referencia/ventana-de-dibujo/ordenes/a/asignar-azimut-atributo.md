# ASIGNAR\_AZIMUT\_ATRIBUTO
<!-- id: asignar-azimut-atributo -->

Solicita que digitalices dos puntos y asigna el valor del azimut al campo de base de datos indicado mediante los parámetros.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código | No |
| 2 | Nombre del campo | No |

## Observaciones

La orden asigna el valor al campo en la lista de atributos activos del código, igual que [ASIGNA\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md). No modifica ninguna entidad existente.

Mientras mueves el cursor después de introducir el primer punto, la orden muestra en la barra de mensajes el azimut de la posición del cursor respecto al primer punto. El valor almacenado es el azimut del segundo punto respecto al primero (medido desde el norte en sentido horario, desde 0 grados inclusive hasta 360 grados exclusive), en grados sexagesimales, con el número de decimales de la ventana de dibujo. Para almacenar el ángulo trigonométrico (medido desde el eje X en sentido antihorario) usa [ASIGNAR\_ANGULO\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md).

Si el sistema de referencia de coordenadas horizontal de la ventana de dibujo es geográfico, la orden interpreta la longitud y la latitud de los puntos en la unidad angular del sistema y calcula el azimut con la geodésica sobre el elipsoide, medido en el primer punto. Para más información, consulta [Coordenadas, distancias, ángulos y áreas para las órdenes que se ejecutan en la ventana de dibujo](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-dibujo/coordenadas-distancias-angulos-ventana-dibujo.md).

Si falta alguno de los dos parámetros, la orden emite un sonido de error y termina.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesBaseDatos.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ASIGNA\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md)<br>[ASIGNA\_ATRIBUTO\_BBDD\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo-bbdd-entidad.md)<br>[ASIGNAR\_ANGULO\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md)<br>[ASIGNAR\_DISTANCIA\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-distancia-atributo.md)<br>[COPIA\_ATRIBUTO\_BBDD\_ENTIDAD\_EN\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-atributo-bbdd-entidad-en-entidad.md) |
| Nombre interno | {0FDBA0D4-71F6-4520-8E77-4FE4077536EC} |
