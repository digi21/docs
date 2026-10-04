# RENOMCOD
<!-- id: renomcod -->

Cambia el código correspondiente a una serie de entidades por otro código, ya sea el activo o el código que se especifique en la llamada a la orden.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código antiguo | Código | Si |
| 2 | Código nuevo | Código | Si |
| 3 | [Tipo de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) | Cadena de letras. En esta orden `*` incluye todos los tipos de geometría, también los que no tienen letra, como los objetos OLE | Si |

## Observaciones

Si no indicas los tres parámetros, la orden muestra un cuadro de diálogo.

Con los tres parámetros, la orden trata las entidades de los tipos indicados que están visibles y dentro de la zona de interés. Las entidades borradas solo se tratan si la variable [BORRADOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md) está activada.

Los dos códigos admiten los comodines `*` y `?`. El código nuevo se combina con cada código que coincide con el antiguo, posición a posición:

* Un carácter del código nuevo sustituye al del código de la entidad en esa posición.
* `?` conserva el carácter del código de la entidad.
* `*` conserva el resto del código de la entidad.
* Si el código nuevo no termina en `*`, el resultado tiene su longitud: `020124` con `02?` da `020`.
* Si un `?` cae en una posición que el código de la entidad no tiene, el resultado termina ahí: `A` con `A?C` da `A`.

Por ejemplo, `RENOMCOD=02* 0211* *` cambia `020124` por `021124`.

## Características de la orden

| Tipo de orden | [Orden interactiva](renomcod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Renombrar el código de las entidades ... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [RENOMBRAR\_CODIGOS\_DESCONOCIDOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renombrar-codigos-desconocidos.md)<br>[RENOMCOD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-r.md)<br>[RENOMCOD\_SEL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-sel.md) |
| Nombre interno | {9B7F40E2-E8FD-4e5b-8186-E5EB07294B2A} |

