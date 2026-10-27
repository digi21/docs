# ASIGNAR\_DISTANCIA\_ATRIBUTO
<!-- id: asignar-distancia-atributo -->

Solicita que digitalices dos puntos y asigna el valor de la distancia entre los dos puntos al campo de base de datos indicado mediante los parámetros.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código | No |
| 2 | Nombre del campo | No |

## Observaciones

La orden asigna el valor al campo en la lista de atributos activos del código, igual que [ASIGNA\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md). No modifica ninguna entidad existente.

Mientras mueves el cursor después de introducir el primer punto, la orden muestra en la barra de mensajes la distancia tridimensional entre el primer punto y la posición del cursor. El valor almacenado es la distancia tridimensional entre los dos puntos, con el número de decimales de la ventana de dibujo.

Si el sistema de referencia de coordenadas horizontal de la ventana de dibujo es geográfico, la orden interpreta la longitud y la latitud de los puntos en la unidad angular del sistema. La distancia tridimensional es la raíz cuadrada de la suma del cuadrado de la distancia geodésica sobre el elipsoide, en metros, y del cuadrado de la diferencia entre las cotas Z almacenadas de ambos puntos, calculada sin convertir la unidad de esas cotas. Para más información, consulta [Coordenadas, distancias, ángulos y áreas para las órdenes que se ejecutan en la ventana de dibujo](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-dibujo/coordenadas-distancias-angulos-ventana-dibujo.md).

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
| Órdenes relacionadas | [ASIGNA\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md)<br>[ASIGNA\_ATRIBUTO\_BBDD\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo-bbdd-entidad.md)<br>[ASIGNAR\_ANGULO\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md)<br>[ASIGNAR\_AZIMUT\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-azimut-atributo.md)<br>[COPIA\_ATRIBUTO\_BBDD\_ENTIDAD\_EN\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-atributo-bbdd-entidad-en-entidad.md) |
| Nombre interno | {7FBAEDDF-62A4-41BF-AE3D-543EB8E0784F} |
