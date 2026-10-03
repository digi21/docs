# OND\_TIPO

Activa códigos en la pantalla fotogramétrica y la de dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Pares de código y tipo de geometría (uno o más), separados por espacios: `OND_TIPO=020101 L 030201 PT` | Si |

## Observaciones

El tipo de geometría es una combinación de las letras siguientes:

| Letra | Tipo de geometría |
| :--- | :--- |
| L | Líneas |
| P | Puntos |
| T | Textos |
| C | Complejos |
| H | Polígonos |
| \* | Todos los tipos |

La orden muestra las geometrías del código de los tipos indicados. Las geometrías de los demás tipos conservan su estado. Un código que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

Sin parámetros, la orden muestra un cuadro de diálogo con la lista de códigos y una casilla por tipo de geometría.

## Características de la orden

| Tipo de orden | [Orden inmediata](ond-tipo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ver/Activar visualización de códigos (por código y tipo)... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {9D4AB57F-589B-4157-A772-B3EAED0C8253} |
